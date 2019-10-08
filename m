Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D59CFA7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=8ZzMb9u0GYwamxgi7PMsdEKpnkNYe8v4ncWidHpf9YU=; b=Q62
	G7zdQDL6LR2E4q+FYpExDjxHhoAzA6cHy1cBIm8k7goNnqdm1pviR7N0rXoUoekZFYCImG36LBNSA
	t4fsbiQTYBWz7UJg7eGeUCt3e28pLPV/kPhdFGoSXzFpqxnFu52Tf7wEICwgxUEcVr/JRDQu/SspX
	/+h3cjxLLNpmQxPiuHz+4D48q98AeGUQXFGxot8RJ5fghRhrVfS8JeFtZPeY6rcLoZ2EVSmwIqJPn
	SmqfOxNb9deJXPLQXKJd4f/g4gzowca9N/58ssSt/kqzq7/zSeyi8Lct3Fes+n0nC1toF/b7Lp5EY
	3OLePkquq/MfNhChqgs24Lb4obVSLRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp0E-0003Gp-Lp; Tue, 08 Oct 2019 12:54:10 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHozk-00035c-A1; Tue, 08 Oct 2019 12:53:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=xN0L1YScEecIyFUIxb8q+rh8vnFHGS6oLYCHYCaipws=; b=vYr26ruWcI++
 X7bErmRt5OFrwfxpHf231YHSeI1gJAECrzkKK9MXbb3JHfl+ZakZ2sXWL8MItni9DC+4sKnDlVKAm
 pfWzs3MTKbkDgRfGlQ2LqvXnKRIHkyKGnWDq6BVlPrcwdik5cUuTKj/EXpJD1MyuR3LqQWRk7omfl
 4ZqHc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iHozf-0008Q4-OU; Tue, 08 Oct 2019 12:53:35 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 35CED2740D4B; Tue,  8 Oct 2019 13:53:35 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Applied "dt-bindings: medaitek: mt8183: add property "resets" &&
 "reset-names"" to the asoc tree
In-Reply-To: <1569580317-21181-4-git-send-email-jiaxin.yu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20191008125335.35CED2740D4B@ypsilon.sirena.org.uk>
Date: Tue,  8 Oct 2019 13:53:35 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055340_343509_44B0354E 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, tzungbi@google.com,
 yong.liang@mediatek.com, lgirdwood@gmail.com, jiaxin.yu@mediatek.com,
 perex@perex.cz, robh+dt@kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, linux@roeck-us.net, eason.yen@mediatek.com,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: medaitek: mt8183: add property "resets" && "reset-names"

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

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

From 8d6aa1367a7df44bb5939c4bb2727b8d8f7d01b3 Mon Sep 17 00:00:00 2001
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Fri, 27 Sep 2019 18:31:56 +0800
Subject: [PATCH] dt-bindings: medaitek: mt8183: add property "resets" &&
 "reset-names"

This patch add property "resets" && "reset-names" in examples so that we can
use reset controller to reset audio domain regs.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Link: https://lore.kernel.org/r/1569580317-21181-4-git-send-email-jiaxin.yu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
index 396ba38619f6..1f1cba4152ce 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
@@ -4,6 +4,10 @@ Required properties:
 - compatible = "mediatek,mt68183-audio";
 - reg: register location and size
 - interrupts: should contain AFE interrupt
+- resets: Must contain an entry for each entry in reset-names
+  See ../reset/reset.txt for details.
+- reset-names: should have these reset names:
+		"audiosys";
 - power-domains: should define the power domain
 - clocks: Must contain an entry for each entry in clock-names
 - clock-names: should have these clock names:
@@ -20,6 +24,8 @@ Example:
 		compatible = "mediatek,mt8183-audio";
 		reg = <0 0x11220000 0 0x1000>;
 		interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_LOW>;
+		resets = <&watchdog MT8183_TOPRGU_AUDIO_SW_RST>;
+		reset-names = "audiosys";
 		power-domains = <&scpsys MT8183_POWER_DOMAIN_AUDIO>;
 		clocks = <&infrasys CLK_INFRA_AUDIO>,
 			 <&infrasys CLK_INFRA_AUDIO_26M_BCLK>,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
