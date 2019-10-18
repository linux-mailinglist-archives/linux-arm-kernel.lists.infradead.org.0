Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D66DCA55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFqnTZ0BbUbhvs6SNNYFcbWdX/LxxtzJGvGW0CyFIFM=; b=tZhEOqM1ljFiAp
	NPQxYPGJGAnZ2SNim56bsPrGIrAkO7ddetbYzHwdktVnquQMq6PYmjW2fzjf+CtfuElajOdTSLatC
	YBYskRZrZW6B2sPWZkVGWjKPJWSiOmtORGBKAiycE/0eY0J24IOZ/aIrkeTma7vs8GsRaGKref39S
	MRpozZz/bxpkPP1dbYKA+kVuMnzWcXVIeM4An4yZ1SvF8vFBZgGmaltGZE75vWNvtxU78vQsgBuYS
	GxpdmnpODYuG+aI92SNz2+bgj/xNaNVAT9Drm8c/5JE16VlsVMNzWKJEc38zi02m3xrUxQiSW8vK/
	6ggq0zBeiDxnKN1iaoBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUnr-000706-7B; Fri, 18 Oct 2019 16:08:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUn4-0006Ne-1V
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:07:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1iLUmx-0002BW-RK; Fri, 18 Oct 2019 18:07:39 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1iLUmw-0004Ar-70; Fri, 18 Oct 2019 18:07:38 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 devicetree@vger.kernel.org
Subject: [PATCH 5/5] arm64: zynqmp: Add data cells to access efuse
Date: Fri, 18 Oct 2019 18:07:35 +0200
Message-Id: <20191018160735.15658-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018160735.15658-1-m.tretter@pengutronix.de>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090746_124393_A6BBA8BA 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Durga Challa <vnsl.durga.challa@xilinx.com>,
 linux-arm-kernel@lists.infradead.org,
 Michael Tretter <m.tretter@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Durga Challa <vnsl.durga.challa@xilinx.com>

This patch adds data cells under nvmem node to
read efuse memory

Signed-off-by: Durga Challa <vnsl.durga.challa@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 48 ++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 3c731e73903a..73d26177eb96 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -128,6 +128,54 @@
 				soc_revision: soc_revision@0 {
 					reg = <0x0 0x4>;
 				};
+				efuse_dna: efuse_dna@c {
+					reg = <0xc 0xc>;
+				};
+				efuse_usr0: efuse_usr0@20 {
+					reg = <0x20 0x4>;
+				};
+				efuse_usr1: efuse_usr1@24 {
+					reg = <0x24 0x4>;
+				};
+				efuse_usr2: efuse_usr2@28 {
+					reg = <0x28 0x4>;
+				};
+				efuse_usr3: efuse_usr3@2c {
+					reg = <0x2c 0x4>;
+				};
+				efuse_usr4: efuse_usr4@30 {
+					reg = <0x30 0x4>;
+				};
+				efuse_usr5: efuse_usr5@34 {
+					reg = <0x34 0x4>;
+				};
+				efuse_usr6: efuse_usr6@38 {
+					reg = <0x38 0x4>;
+				};
+				efuse_usr7: efuse_usr7@3c {
+					reg = <0x3c 0x4>;
+				};
+				efuse_miscusr: efuse_miscusr@40 {
+					reg = <0x40 0x4>;
+				};
+				efuse_chash: efuse_chash@50 {
+					reg = <0x50 0x4>;
+				};
+				efuse_pufmisc: efuse_pufmisc@54 {
+					reg = <0x54 0x4>;
+				};
+				efuse_sec: efuse_sec@58 {
+					reg = <0x58 0x4>;
+				};
+				efuse_spkid: efuse_spkid@5c {
+					reg = <0x5c 0x4>;
+				};
+				efuse_ppk0hash: efuse_ppk0hash@a0 {
+					reg = <0xa0 0x30>;
+				};
+				efuse_ppk1hash: efuse_ppk1hash@d0 {
+					reg = <0xd0 0x30>;
+				};
 			};
 
 			zynqmp_pcap: pcap {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
