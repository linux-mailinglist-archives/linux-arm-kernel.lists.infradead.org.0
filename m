Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02299108DCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIRAEZuB5CkazaciUwS0Ko1oYSeIAXnF0EO2scADUPc=; b=oweQS9nnIjRgHS
	V3VgZThKrXxyd/H2f/OyTOk/Sb68in8+/LRsdJO2Joyg9nlrTHHl9f9Z1CiRkYWSdbnxliFn/oupB
	qXuYCDCuZnIHhSziPDRQoXIg8mEzJv05gTlMeqdzTeHeED1PJyYtmxxESKd0GB8IWXme6tY8mnb0d
	4BWmapXQoJCtKKmdhQSBqNBUcKwAKE8SD8yvtL44cgqEGNGH2QJ1Eq/x3bI/dDuBZxBaN92Jicu4n
	t7AbCdokBklYImdGFJGTk+udRvhEm1wq5I2ekCbNyY0Q/+swKBYjQmQPxwFXdEkQ7Qmt0bdErsXce
	aZA7VdHok9onwFRqLJFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDSI-0008Ta-Cj; Mon, 25 Nov 2019 12:27:02 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDS6-0008Rh-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574684805;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=slzL0wEBERMw+r5ZllRQGIEHa9MDUC2QNWePkvo5OGQ=;
 b=rLWigHYWCrC7LCbsRWph3CQYtdobCIQLyJb7m36UbZ3iFRmJqlTtivr2yV0Q3m8bF1
 MtjJY645SS7fI9wWKRVoREDPxRZhPuq0a8vHoA8MnUtGPF0qSnOqznT37rgSPa5fyCeX
 3xGC9zJAcfLXxcInYkDet79wX+rcTSiPrwmCtRv8DDDqeSPzTeB9X29zZmwSFs+lanAt
 plb7kNp/y4jsPhgrikrlTaMvtgUTvFUVNulOJ4nJuXnV1fQSQZ2RxMhlWzSNL0CjuEpj
 9E7Oii+czlwOAxl7bK4nziKiv3S3K6qWvgDfg9nQTqUkGdrgWqDn9cWYZ5fav9acs3Rn
 +Vmg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPCQh0FR
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 13:26:43 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 4/5] ARM: dts: ux500: Add pin configs for UART1 CTS/RTS pins
Date: Mon, 25 Nov 2019 13:22:55 +0100
Message-Id: <20191125122256.53482-4-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125122256.53482-1-stephan@gerhold.net>
References: <20191125122256.53482-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_042651_518386_6CD491F3 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:2 listed in]
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

UART1 an be optionally used with additional CTS/RTS pins.
The pinctrl driver has an extra "u1ctsrts_a_1" pin group for them.

Add a new pin configuration to configure them correctly if needed.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
index b6d0a60e9aed..e85a08ad2ea7 100644
--- a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
@@ -65,6 +65,32 @@
 				ste,config = <&slpm_out_wkup_pdis>;
 			};
 		};
+
+		u1ctsrts_a_1_default: u1ctsrts_a_1_default {
+			default_mux {
+				function = "u1";
+				groups = "u1ctsrts_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO6_AF6"; /* CTS */
+				ste,config = <&in_pu>;
+			};
+			default_cfg2 {
+				pins = "GPIO7_AG5"; /* RTS */
+				ste,config = <&out_hi>;
+			};
+		};
+
+		u1ctsrts_a_1_sleep: u1ctsrts_a_1_sleep {
+			sleep_cfg1 {
+				pins = "GPIO6_AF6"; /* CTS */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins = "GPIO7_AG5"; /* RTS */
+				ste,config = <&slpm_out_hi_wkup_pdis>;
+			};
+		};
 	};
 
 	uart2 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
