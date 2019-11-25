Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7944B108DD0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rLCNeL57Bbmgn9sze3hjdQGDb2CDyAnvdLzF3vJ9Wc=; b=AAHiuc8Ur72NjO
	nCrxZwvk9C9l77f1iKcVpLH56cXEh7El00a8ai0P5cqHwRWr3X/g01SwvkeNInbNWcZFbwQ71ap8K
	HggchXW8Dhor3rB4mYFzBvbBu23RAfcJ8WbhfZ6ERW76cN0U2hGcA153jhq3UDRq3NSV7Wz+AnWiN
	mNPB8yTU4bhSv8eQ3vL4xhnboU/v/49oa1X2tnhvlKgdjII3fuZx3nsh3mL13H/ffR2apHkFNlQnP
	ZOFRef9T69i1oX+XiZvwZtRdzEp9yHmcBBz9uO2ri7Ow2sdcnQu9OO63jhlPQhvezu5v2W9Gqo4rU
	PyD3DeKefNVE/oAhYqkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDSu-0000XC-21; Mon, 25 Nov 2019 12:27:40 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDS6-0008Rj-St
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574684805;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=qe7PGJv0jJ8/TYHTxQ8OIf3CAJK3fMrNQb5cSYH+wNM=;
 b=p2DS/9aMxDTASYNcMw1Bsx/BLwwTZi0CcR+lCRwW6D9Ozg/HsDHIurRV0bscMUseB7
 ssqPoa9p58hOYdn9LhDN54dt6G1ARuGxN+GX0j8yqWtfmau+YDgib9OBLy5MzBw2X4Ok
 pmRPQDjV1xz2TRp+dWqEjeiNBT/hI562R4dgZNLCEuMD/OgYGfhVn5NmHQIt5PGPeROE
 gTrJvWA2D7vogyDSdyJMIc3UN9Nbhd56m4S6AFfqonQR81qBPHKnfHI3YxGEE+G30SRb
 t4DkLLtIxR/+DxkxRp04zHOKcceAadMKplYpOG1IBbawxTJZmUlTXMFivLn3/k2AOuOK
 AXEA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPCQg0FP
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 13:26:42 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 3/5] ARM: dts: ux500: Add alternative SDI pin configs
Date: Mon, 25 Nov 2019 13:22:54 +0100
Message-Id: <20191125122256.53482-3-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125122256.53482-1-stephan@gerhold.net>
References: <20191125122256.53482-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_042651_520432_F00675B8 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SDI0/SDI1 can be used in configurations where some of the pins
(e.g. direction control) are not used. The pinctrl driver has
separate pin groups for them.

Add new pin configurations for:
  - mc0_a_2: like mc0_a_1, but without CMDDIR/DAT0DIR/DAT2DIR
  - mc1_a_2: like mc1_a_1, but without FBCLK

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi | 77 +++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
index b3ef91b98207..b6d0a60e9aed 100644
--- a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
@@ -257,6 +257,47 @@
 				ste,config = <&slpm_out_lo_wkup_pdis>;
 			};
 		};
+
+		mc0_a_2_default: mc0_a_2_default {
+			default_mux {
+				function = "mc0";
+				groups = "mc0_a_2";
+			};
+			default_cfg1 {
+				pins = "GPIO22_AA3"; /* FBCLK */
+				ste,config = <&in_nopull>;
+			};
+			default_cfg2 {
+				pins = "GPIO23_AA4"; /* CLK */
+				ste,config = <&out_lo>;
+			};
+			default_cfg3 {
+				pins =
+				"GPIO24_AB2", /* CMD */
+				"GPIO25_Y4", /* DAT0 */
+				"GPIO26_Y2", /* DAT1 */
+				"GPIO27_AA2", /* DAT2 */
+				"GPIO28_AA1"; /* DAT3 */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		mc0_a_2_sleep: mc0_a_2_sleep {
+			sleep_cfg1 {
+				pins =
+				"GPIO22_AA3", /* FBCLK */
+				"GPIO24_AB2", /* CMD */
+				"GPIO25_Y4", /* DAT0 */
+				"GPIO26_Y2", /* DAT1 */
+				"GPIO27_AA2", /* DAT2 */
+				"GPIO28_AA1"; /* DAT3 */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins = "GPIO23_AA4"; /* CLK */
+				ste,config = <&slpm_out_lo_wkup_pdis>;
+			};
+		};
 	};
 
 	sdi1 {
@@ -301,6 +342,42 @@
 				ste,config = <&slpm_in_wkup_pdis>;
 			};
 		};
+
+		mc1_a_2_default: mc1_a_2_default {
+			default_mux {
+				function = "mc1";
+				groups = "mc1_a_2";
+			};
+			default_cfg1 {
+				pins = "GPIO208_AH16"; /* CLK */
+				ste,config = <&out_lo>;
+			};
+			default_cfg2 {
+				pins =
+				"GPIO210_AJ15", /* CMD */
+				"GPIO211_AG14", /* DAT0 */
+				"GPIO212_AF13", /* DAT1 */
+				"GPIO213_AG13", /* DAT2 */
+				"GPIO214_AH15"; /* DAT3 */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		mc1_a_2_sleep: mc1_a_2_sleep {
+			sleep_cfg1 {
+				pins = "GPIO208_AH16"; /* CLK */
+				ste,config = <&slpm_out_lo_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins =
+				"GPIO210_AJ15", /* CMD */
+				"GPIO211_AG14", /* DAT0 */
+				"GPIO212_AF13", /* DAT1 */
+				"GPIO213_AG13", /* DAT2 */
+				"GPIO214_AH15"; /* DAT3 */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
 	};
 
 	sdi2 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
