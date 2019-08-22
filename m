Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14018991B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNyomN8QVk/RiWlzgPSOTeKJS2eINRmhOhmay7ghECo=; b=s4Pe62tr78kWHA
	PsFUam5CPsyko2FL+t0EpkE+wccrXe0kWU3Qa59YNmeOvPaxn2KCA3C5s8A38IgmAqx/cj8oK70T3
	P/QSSMQEqyeIopSithzlRfMuO5lHJnYfZVXwCHsrA96JkcakQL3rbQhL6wLopwK5HMil3/dcygIWj
	PctAaIIya8QeO5gZpwdQyyd6iBnMouGE0Z+szVWmSZLycohLyNBdb7geF5GeNaXsC+Tac5JkTm08b
	uoXlgZMqMn88qhzteNumvM9Xn7PvnFn9I1wp5iVUR2zqB/3iXHSYvEZHGIkQPhv0eIqtNGsRSjjoa
	/EUSoyo1XD8FttM0tK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kxk-0002tP-CF; Thu, 22 Aug 2019 11:09:04 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kxW-0002ri-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1566472127;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=yvf49CAu3fmg+P2WBBt8i91nERkxMMvX30Z/QFcWGDY=;
 b=FMp8lIQJJjPegzZdckZXD8BnEBoYlFyo2FZE8uf5URYSwZTG+/Ee5r5Tcul33dgXaT
 Jg/OrZRYazgel8ihf2bpYoh0OOs9SFSw6pobyAGni++D0WFVqbsYorbtLfOEA2GIuJTE
 qAr/3bou7q1wphyIa8UmC6Lxtk6zcO5BKYejyycBOTK3DJKdkXX1DcG/sbusHGE+Zwdm
 VN1Joi3A94s6thy6NfUecAGbHCHXYwbl1maVo3HkrxRfSBMVfo3SMoh3es/l5BrsdiU4
 0KuTS5DOlZ3W6yJhYufJLxwVJGDXAVxlDw51M0jgJGS6FoAdQ2goMP0SDX6AcmbHIv5A
 HdJg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1RgWArOaRE="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain
 by smtp.strato.de (RZmta 44.26.1 DYNA|AUTH)
 with ESMTPSA id g064fdv7MB8heHu
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 22 Aug 2019 13:08:43 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/2] ARM: dts: ux500: Remove ab8500_ldo_usb regulator from
 device tree
Date: Thu, 22 Aug 2019 13:07:20 +0200
Message-Id: <20190822110720.118828-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822110720.118828-1-stephan@gerhold.net>
References: <20190822110720.118828-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_040850_244015_2C716DDC 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Support for the USB regulator of AB8500 was removed in
commit 41a06aa738ad ("regulator: ab8500: Remove USB regulator").
However, the configuration was never removed from the device tree.

It does no longer have any effect, remove it from the device tree.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-ab8500.dtsi  | 4 ----
 arch/arm/boot/dts/ste-href.dtsi    | 4 ----
 arch/arm/boot/dts/ste-snowball.dts | 4 ----
 3 files changed, 12 deletions(-)

diff --git a/arch/arm/boot/dts/ste-ab8500.dtsi b/arch/arm/boot/dts/ste-ab8500.dtsi
index 3ef1906e375c..55fff4d44277 100644
--- a/arch/arm/boot/dts/ste-ab8500.dtsi
+++ b/arch/arm/boot/dts/ste-ab8500.dtsi
@@ -182,10 +182,6 @@
 					ab8500_ldo_tvout_reg: ab8500_ldo_tvout {
 					};
 
-					// supply for ab8500-usb; USB LDO
-					ab8500_ldo_usb_reg: ab8500_ldo_usb {
-					};
-
 					// supply for ab8500-vaudio; VAUDIO LDO
 					ab8500_ldo_audio_reg: ab8500_ldo_audio {
 					};
diff --git a/arch/arm/boot/dts/ste-href.dtsi b/arch/arm/boot/dts/ste-href.dtsi
index 6422c53f2046..4f6acbd8c040 100644
--- a/arch/arm/boot/dts/ste-href.dtsi
+++ b/arch/arm/boot/dts/ste-href.dtsi
@@ -234,10 +234,6 @@
 						regulator-name = "V-TVOUT";
 					};
 
-					ab8500_ldo_usb_reg: ab8500_ldo_usb {
-						regulator-name = "dummy";
-					};
-
 					ab8500_ldo_audio_reg: ab8500_ldo_audio {
 						regulator-name = "V-AUD";
 					};
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index 3428290644ba..c6074912c368 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -474,10 +474,6 @@
 						regulator-name = "V-TVOUT";
 					};
 
-					ab8500_ldo_usb_reg: ab8500_ldo_usb {
-						regulator-name = "dummy";
-					};
-
 					ab8500_ldo_audio_reg: ab8500_ldo_audio {
 						regulator-name = "V-AUD";
 					};
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
