Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07B8164419
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LSyzloJHoPsqooM/MgRZJa51FDHG9Pd8ak9xEZXM9Wg=; b=ETL
	Zefv9wp7jgBGj6iP1Jjx10WQilAUYGfknJCQWPkCuNJ/xuPyY3ZHUTVeLlZG5WmhxXpts8GiCziXM
	GUpTA0uIzYldmDEM8QcNdP1e0UGSBTKd66k/IlnP99vO+YAKvAJxjh9pqKDN1ZbpvMFBLueIqux+A
	UQTUA/g7s2F2WCX6Yt9Dpwg1HKiaLIgc34ilCc0DBl1nQGjyLSPZce17tOYfAl0jGvC57byLfp28V
	OTTh6lPQ6fWeh1gBNTW5X2OrjCzlXxBVaoqCgMvAFpB9w6FuNyHPPaNY0DsFD3BDvsCqGxcRLQvXQ
	82r72rre2ndhVDHm4M0BmNmQ3ikeRdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OLi-0000Mm-AB; Wed, 19 Feb 2020 12:21:06 +0000
Received: from atl4mhob09.registeredsite.com ([209.17.115.47])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OLY-0000Lu-PN
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:20:59 +0000
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod0.registeredsite.com [10.30.71.204])
 by atl4mhob09.registeredsite.com (8.14.4/8.14.4) with ESMTP id 01JCKoM6018140
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 19 Feb 2020 07:20:51 -0500
Received: (qmail 9089 invoked by uid 0); 19 Feb 2020 12:20:50 -0000
X-TCPREMOTEIP: 81.173.50.109
X-Authenticated-UID: mike@milosoftware.com
Received: from unknown (HELO mikebuntu.TOPIC.LOCAL)
 (mike@milosoftware.com@81.173.50.109)
 by 0 with ESMTPA; 19 Feb 2020 12:20:50 -0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: robh+dt@kernel.org, michal.simek@xilinx.com, mark.rutland@arm.com,
 devicetree@vger.kernel.org
Subject: [PATCH] devicetree: zynqmp.dtsi: Add bootmode selection support
Date: Wed, 19 Feb 2020 13:20:36 +0100
Message-Id: <20200219122036.24575-1-mike.looijmans@topic.nl>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_042056_943307_70AA30DF 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.17.115.47 listed in list.dnswl.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=mike.looijmans%40topic.nl; ip=209.17.115.47; r=bombadil.infradead.org]
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
Cc: rajan.vaja@xilinx.com, Mike Looijmans <mike.looijmans@topic.nl>,
 nava.manne@xilinx.com, m.tretter@pengutronix.de, linux-kernel@vger.kernel.org,
 manish.narani@xilinx.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bootmode override support for ZynqMP devices. Allows one to select
a boot device by running "reboot qspi32" for example. Activate config
item CONFIG_SYSCON_REBOOT_MODE to make this work.

Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 26d926eb1431..4c38d77ecbba 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -246,6 +246,30 @@
 			};
 		};
 
+		/* Clock and Reset control registers for LPD */
+		lpd_apb: apb@ff5e0000 {
+			compatible = "syscon", "simple-mfd";
+			reg = <0x0 0xff5e0000 0x0 0x400>;
+			reboot-mode {
+				compatible = "syscon-reboot-mode";
+				offset = <0x200>;
+				mask = <0xf100>;
+				/* Bit(8) is the "force user" bit */
+				mode-normal = <0x0000>;
+				mode-psjtag = <0x0100>;
+				mode-qspi24 = <0x1100>;
+				mode-qspi32 = <0x2100>;
+				mode-sd0    = <0x3100>;
+				mode-nand   = <0x4100>;
+				mode-sd1    = <0x6100>;
+				mode-emmc   = <0x6100>;
+				mode-usb0   = <0x7100>;
+				mode-pjtag0 = <0x8100>;
+				mode-pjtag1 = <0x9100>;
+				mode-sd1ls  = <0xe100>;
+			};
+		};
+
 		/* GDMA */
 		fpd_dma_chan1: dma@fd500000 {
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
