Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE773F5133
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/37Bk/Zr2Oh1/Ssuh74RorjuWhPWxvj/rWqhwAWCggs=; b=B+PVURF4HAfVGR
	7AQh6yVsqQW0gwS5nsSYXF7ne/wWqJZ37a2ylAdfNSUkdhi+OXLZihSCg/HViO+4q7F3WRI3Atvi+
	4zwaw5LTLkUwrVHRsPCS5iOSN5knzaL1YjdFsS1po1iYjLMSIAdI7A1l+ubfdniKRDF4lpPw5af0D
	mfRlSqM45j2zOPRBE3uZKrTYzYw2vTTgtdmmAM4g8o3YYS0fPHIRx6yrIPXT2GPb4QbX/xzOqDEgW
	aWP2X2YaaPzmHmuFrRxFL/O90cMLS4SLHHha/2PXNMiD9h6oTQRmDs2E2wq88hW1MVCTWhUhHczKP
	+BBW3TKJFtCn7OJFu7jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7D2-0007Xc-Or; Fri, 08 Nov 2019 16:34:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7CW-0007Fb-W9
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:33:34 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A19021848;
 Fri,  8 Nov 2019 16:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573230812;
 bh=UeMscuwn+pcOaqcivEWoY6tTzZ4IfIrgBaezsSFhZeE=;
 h=From:To:Cc:Subject:Date:From;
 b=MsFmpA8UMcc4gCKXNcREaOAyWn7Xyz8toa0izII15ieUS7v8qRkcEIZnGv8zYgd/Z
 191w1SUiv6rdIOuSx5yYbYxvtjv75RlDu8lD+IBwjKQQ3ITYuVHcKXSy4EVZJvkCeh
 LwQ9Epsa6S6/weuqbLeXhZxNtOwlvpWr4hyAWx5U=
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: agilex: add NAND IP to base dts
Date: Fri,  8 Nov 2019 10:33:26 -0600
Message-Id: <20191108163327.2917-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_083333_057549_C7612CCC 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, dinguyen@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add NAND entry to base DTSI.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 94090c6fb946..f9565e76a9d1 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -249,6 +249,18 @@
 			status = "disabled";
 		};
 
+		nand: nand@ffb90000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "altr,socfpga-denali-nand";
+			reg = <0xffb90000 0x10000>,
+			      <0xffb80000 0x1000>;
+			reg-names = "nand_data", "denali_reg";
+			interrupts = <0 97 4>;
+			resets = <&rst NAND_RESET>, <&rst NAND_OCP_RESET>;
+			status = "disabled";
+		};
+
 		ocram: sram@ffe00000 {
 			compatible = "mmio-sram";
 			reg = <0xffe00000 0x40000>;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
