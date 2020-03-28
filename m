Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8EF19650B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 11:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iPNisPxH60M7oJ39CxPuzwbv7WS/sHFxtiOVAXKnww4=; b=ZOCsIsX4A2E07M
	Mrph3d2bb7f4lW6phEEetbLlFzWQy7YD1lidE+/I2P53+z5JVcKa5/5QBxsoB19i4stEDuDcP8DKj
	/xr8ZMRktdDZHSRxzWmNq34UEz8D6mJ+24Rc3Ex9U8Ke5do//GHO4hko89GYazBJxObtbb4qfZb/L
	3Gk1lfpWf9q2M2TOFMOg16LsX8jXVr9UwW+xQRAwDcVdiKmtku09fsctb7AL0riJ3ZZDwak8hvExS
	jpnBztFhmn6j9X//ripBSLQpGyDiwDPj3Q5p5k3QpNM7mz3QbyQFDqsOzLMBRu7EAT5nOmauvYmIP
	0G1AKHCupJgW7Ik5edGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI8gl-0001CR-7a; Sat, 28 Mar 2020 10:27:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI8gc-00019b-KH; Sat, 28 Mar 2020 10:27:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5AC13AF0E;
 Sat, 28 Mar 2020 10:27:25 +0000 (UTC)
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] MIPS: ralink: mt7621: Fix soc_device introduction
Date: Sat, 28 Mar 2020 11:27:13 +0100
Message-Id: <20200328102715.8309-1-tsbogend@alpha.franken.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_032730_817401_2F7B7C2A 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Depending on selected SMP config options soc_device didn't get
initialised at all. With UP config vmlinux didn't link because
of missing soc bus.

Fixes: 71b9b5e0130d ("MIPS: ralink: mt7621: introduce 'soc_device' initialization")
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
---
 arch/mips/ralink/Kconfig  | 1 +
 arch/mips/ralink/mt7621.c | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/mips/ralink/Kconfig b/arch/mips/ralink/Kconfig
index 94e9ce994494..35c2ebd8f094 100644
--- a/arch/mips/ralink/Kconfig
+++ b/arch/mips/ralink/Kconfig
@@ -52,6 +52,7 @@ choice
 		select COMMON_CLK
 		select CLKSRC_MIPS_GIC
 		select HAVE_PCI if PCI_MT7621
+		select SOC_BUS
 endchoice
 
 choice
diff --git a/arch/mips/ralink/mt7621.c b/arch/mips/ralink/mt7621.c
index 905460aeeb1f..0accb80db709 100644
--- a/arch/mips/ralink/mt7621.c
+++ b/arch/mips/ralink/mt7621.c
@@ -243,12 +243,12 @@ void prom_soc_init(struct ralink_soc_info *soc_info)
 
 	rt2880_pinmux_data = mt7621_pinmux_data;
 
+	soc_dev_init(soc_info, rev);
+
 	if (!register_cps_smp_ops())
 		return;
 	if (!register_cmp_smp_ops())
 		return;
 	if (!register_vsmp_smp_ops())
 		return;
-
-	soc_dev_init(soc_info, rev);
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
