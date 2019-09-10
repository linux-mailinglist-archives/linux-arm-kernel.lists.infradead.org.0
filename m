Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84732AE79D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 12:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=WueAoVCJRDLEoC3GkFuigFnkrt2i7qZjTwsmf+rUGMQ=; b=jq4
	s6G+n1etU7o7cetrywZ0o2aTCeRUv47TqkkMqmJh7UXJIzay7SZ8EjiGdnRRUA0a71Se7tcbmsGJm
	t1kE3nEMrW7rOmShZNZz3IjW+VTVeqRbuVaYkTL7xly7DpHWkYNP7SiONyeG7VOP4bEOmT2in9Ni9
	mqFXsJJNPRTpX+mPr9EIdkRqW+GMA4LPgpZ3MZoX8ovj7UxevvgFhIy3Q9ui0QXpvpMNXXJyHxl0u
	ZDJmYbIxaP7kqsiG/fi4A4iIY8EIUC6K8qjw0RcUYAOW28Dk4Aa0BnoBYqEpqKCcCquOES1MDiLmq
	3M0c3uk/HL2riYSghd+0TdOArBITgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7d3M-0001uO-UT; Tue, 10 Sep 2019 10:07:17 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7d3A-0001u2-Fu
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 10:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=TAVHKaWXI4BEycgQJrIFHO035PWGPpF60zavVSn6Qw4=; b=FX3kfwpO8H3z
 ZvMWbvzSvmJAITPgXUsPv4uK/PJ6gKEYzSGHIKKbESt7CQU5s/bVTeUfjdOy+NZBRkBm+iW1CZUJo
 2AFcAKECVnzGaonfq2Xe03dY3JAg96AlcWIaBkcf+2d0OIvy55fEAVx88CVrS3fQl+LQe/t8B159Y
 twKpA=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i7d36-0006j7-Io; Tue, 10 Sep 2019 10:07:00 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id E825CD02D5A; Tue, 10 Sep 2019 11:06:59 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Applied "regulator: uniphier: Add Pro5 USB3 VBUS support" to the
 regulator tree
In-Reply-To: <1568080304-1572-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Patchwork-Hint: ignore
Message-Id: <20190910100659.E825CD02D5A@fitzroy.sirena.org.uk>
Date: Tue, 10 Sep 2019 11:06:59 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_030704_550446_41E28212 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: uniphier: Add Pro5 USB3 VBUS support

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 3ba5368dc4e5947cb70287754960776c471eb23d Mon Sep 17 00:00:00 2001
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 10 Sep 2019 10:51:44 +0900
Subject: [PATCH] regulator: uniphier: Add Pro5 USB3 VBUS support

Pro5 SoC has same scheme of USB3 VBUS as Pro4, so the data for Pro5 is
equivalent to Pro4.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Link: https://lore.kernel.org/r/1568080304-1572-1-git-send-email-hayashi.kunihiko@socionext.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../devicetree/bindings/regulator/uniphier-regulator.txt     | 5 +++--
 drivers/regulator/uniphier-regulator.c                       | 4 ++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt b/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt
index c9919f4b92d2..94fd38b0d163 100644
--- a/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt
+++ b/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt
@@ -13,6 +13,7 @@ this layer. These clocks and resets should be described in each property.
 Required properties:
 - compatible: Should be
     "socionext,uniphier-pro4-usb3-regulator" - for Pro4 SoC
+    "socionext,uniphier-pro5-usb3-regulator" - for Pro5 SoC
     "socionext,uniphier-pxs2-usb3-regulator" - for PXs2 SoC
     "socionext,uniphier-ld20-usb3-regulator" - for LD20 SoC
     "socionext,uniphier-pxs3-usb3-regulator" - for PXs3 SoC
@@ -20,12 +21,12 @@ Required properties:
 - clocks: A list of phandles to the clock gate for USB3 glue layer.
 	According to the clock-names, appropriate clocks are required.
 - clock-names: Should contain
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro4 and Pro5 SoCs
     "link"        - for others
 - resets: A list of phandles to the reset control for USB3 glue layer.
 	According to the reset-names, appropriate resets are required.
 - reset-names: Should contain
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro4 and Pro5 SoCs
     "link"        - for others
 
 See Documentation/devicetree/bindings/regulator/regulator.txt
diff --git a/drivers/regulator/uniphier-regulator.c b/drivers/regulator/uniphier-regulator.c
index 9026d5a3e964..2311924c3103 100644
--- a/drivers/regulator/uniphier-regulator.c
+++ b/drivers/regulator/uniphier-regulator.c
@@ -185,6 +185,10 @@ static const struct of_device_id uniphier_regulator_match[] = {
 		.compatible = "socionext,uniphier-pro4-usb3-regulator",
 		.data = &uniphier_pro4_usb3_data,
 	},
+	{
+		.compatible = "socionext,uniphier-pro5-usb3-regulator",
+		.data = &uniphier_pro4_usb3_data,
+	},
 	{
 		.compatible = "socionext,uniphier-pxs2-usb3-regulator",
 		.data = &uniphier_pxs2_usb3_data,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
