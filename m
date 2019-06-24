Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B66250CD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UYnWElDJndz7z8NXsLd0A7RBqcLyY0WAV0Vudz62UeI=; b=l0Pb6UAbmY1ctL
	GnvV4vtBQQafpNdrwsHv4UUrOHdUTW0qIhv0krcqc+zmgyW00EIAFl2Tv2aCObawn+DSc3T/F59XI
	3pv6yphChpzFQS2PgLCaUpxh8CABFj4MfO+lWvSHaO2wBn/lZbmpFD19ZW89ZvXEv+ZbV0Jo8qwd+
	hipt83Z8jw8S9oPS6sz8+XEezVGSxLeoCWqJP/6YvljKgh7ecitK6u0eesuM4xjuGHvAN9SH5otKN
	8Ko0gk9ST1Weroz+b81DEakDQpwbZufQg7IGrs/+KgDh2Cs9NTsbQNI9s3yH6HdytEX7mEtJW/KUX
	4e/RBvHaF5kJ7CyU2OhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPRz-0005Aw-HG; Mon, 24 Jun 2019 13:56:03 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPRj-000591-Sd
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:55:49 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 5.5.0) with ESMTP id SG003966016.MSG 
 for <linux-arm-kernel@lists.infradead.org>; Mon, 24 Jun 2019 15:55:42 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1261.35; Mon, 24
 Jun 2019 15:55:42 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1261.35 via Frontend
 Transport; Mon, 24 Jun 2019 15:55:42 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Russell King <linux@armlinux.org.uk>, Alexios Zavras
 <alexios.zavras@intel.com>, Allison Randal <allison@lohutok.net>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Gleixner
 <tglx@linutronix.de>
Subject: [PATCH] ARM: mm: print L310 cache controller version
Date: Mon, 24 Jun 2019 15:54:49 +0200
Message-ID: <1561384489-29906-1-git-send-email-f.suligoi@asem.it>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A0B0202.5D10D65F.0004, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_065548_106686_6ED57EE0 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [151.1.184.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Flavio Suligoi <f.suligoi@asem.it>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The knowledge of the cache controller version
is very useful during the comparison of the performances
of similar boards, with similar CPU but different versions
of the L310 controller.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 arch/arm/mm/cache-l2x0.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
index 5b251c8..e5ac670 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -590,6 +590,34 @@ static void l2c310_configure(void __iomem *base)
 	if (revision >= L310_CACHE_ID_RTL_R3P0)
 		l2c_write_sec(l2x0_saved_regs.pwr_ctrl, base,
 			      L310_POWER_CTRL);
+
+	/* Display L310 cache controller version */
+	switch (revision) {
+	case L310_CACHE_ID_RTL_R0P0:
+		pr_info("L2C-310 revision: r0p0\n");
+		break;
+	case L310_CACHE_ID_RTL_R1P0:
+		pr_info("L2C-310 revision: r1p0\n");
+		break;
+	case L310_CACHE_ID_RTL_R2P0:
+		pr_info("L2C-310 revision: r2p0\n");
+		break;
+	case L310_CACHE_ID_RTL_R3P0:
+		pr_info("L2C-310 revision: r3p0\n");
+		break;
+	case L310_CACHE_ID_RTL_R3P1:
+		pr_info("L2C-310 revision: r3p1\n");
+		break;
+	case L310_CACHE_ID_RTL_R3P1_50REL0:
+		pr_info("L2C-310 revision: r3p1 50 rel0\n");
+		break;
+	case L310_CACHE_ID_RTL_R3P2:
+		pr_info("L2C-310 revision: r3p2\n");
+		break;
+	case L310_CACHE_ID_RTL_R3P3:
+		pr_info("L2C-310 revision: r3p3\n");
+		break;
+	}
 }
 
 static int l2c310_starting_cpu(unsigned int cpu)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
