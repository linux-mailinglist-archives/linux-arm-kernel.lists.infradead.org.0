Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A29E4969
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8BBiV/mJiplSFRHj3f+/89+5YAxRw5QcwX56bG29PRI=; b=hPByPNI7CcuX6EtrGiYOBAoW/5
	4Aq1PVHsQ/oqXX6QT+QM4tVRBpCNq1T6WE8vTWFA28a17nnA4NDUSIAX30KDTPRVBNqZxTQOCr2RV
	ZIIB8zvXFzHcKP41EmMxDOAafhFG5H3qmEmU8Fug0ZXCgIG1AvczfV1+V5J/c52/Wr4TW1BxndwoL
	nm83dkUqW8XXWy/8+E+0yejknF9Whf2mJvhmVbypmmJipGoJYK4b8nt2YRpuMKr6/VKo/MNvsljPV
	Mi1CdT8IW+NWAHvTKQ2th+hg2dwn/b2znbY/rOMj0wP+qnWi/gj6naf4PPvK2S/bIzf8/Q3dY5sgQ
	+cqE126Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxTR-0004gc-5S; Fri, 25 Oct 2019 11:09:41 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxSZ-000488-TD
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:08:50 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id Hn8b210045USYZQ01n8bm6; Fri, 25 Oct 2019 13:08:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNxSM-0003rD-VJ; Fri, 25 Oct 2019 13:08:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNw6A-0006n4-NF; Fri, 25 Oct 2019 11:41:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH v2 5/7] mmc: atmel-mci: Remove superfluous cast in
 debugfs_create_u32() call
Date: Fri, 25 Oct 2019 11:41:28 +0200
Message-Id: <20191025094130.26033-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025094130.26033-1-geert+renesas@glider.be>
References: <20191025094130.26033-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_040848_117968_58843F8D 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"atmel_mci.state" is an enum, which is compatible with u32, so there is
no need to cast its address, preventing further compiler checks.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Ulf Hansson <ulf.hansson@linaro.org>
---
v2:
  - Add Acked-by.
---
 drivers/mmc/host/atmel-mci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/atmel-mci.c b/drivers/mmc/host/atmel-mci.c
index ef2eb9e7c75a32a1..34c992d875298932 100644
--- a/drivers/mmc/host/atmel-mci.c
+++ b/drivers/mmc/host/atmel-mci.c
@@ -583,7 +583,7 @@ static void atmci_init_debugfs(struct atmel_mci_slot *slot)
 
 	debugfs_create_file("regs", S_IRUSR, root, host, &atmci_regs_fops);
 	debugfs_create_file("req", S_IRUSR, root, slot, &atmci_req_fops);
-	debugfs_create_u32("state", S_IRUSR, root, (u32 *)&host->state);
+	debugfs_create_u32("state", S_IRUSR, root, &host->state);
 	debugfs_create_xul("pending_events", S_IRUSR, root,
 			   &host->pending_events);
 	debugfs_create_xul("completed_events", S_IRUSR, root,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
