Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3817BB1AFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=JzfHy5UXmbgVZHRoN7Jeqh0eFxsmAxCUUYDqcpJK1V8=; b=NIt
	D2jcmUFkdeu8fDVpNAyH31tG3Vw6qx+GgzhhJS/5fyYJvYBfnwGi4dRDhyYUEn7CowJOSbUiw3EFW
	cou6Ku0cxPN+U7bTjrYv+O2LckaCkv7wVg9llyptBObZq/qnH2OUcvHTJf/mwIcqN0GIv5X8003MT
	IxxN53m57YJgLf2wFZOsodmSX10TvtIuej1zXZpqXWGpBtARnOprZW/a0K+2bhIWJczfDrIPZ4ghi
	hSEK8HXG8nIKc6saH4VvG5ekCLMjQkW3neMVJEMW1jS1L0y3RL6stOFAblqqNhHftEkokn9YZ2pHB
	8Vu/LTG2HrYioJNJR06cnE1KvRFyodQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8i6Z-0006gj-Ru; Fri, 13 Sep 2019 09:43:03 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8i5y-0006So-Do; Fri, 13 Sep 2019 09:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ttrYaGS9n7C4xeGWRUPimbew5scuwgQuTmXv7RAtL8o=; b=III1RmYYMc/w
 Lb//bsfOQicbYRax89MFkyecI+sqxYAKuo6JJNPMO4PySIqXY313I3ajQaXaVpNmxZ+h/E/4wYgqI
 3r5KLQ6B2xatE5/ALT+/EMvPV/OO2ft+vYEPqdMp3IOkvSIK/44JG3FXaWxz0LEPfTGv6iXmoo6yK
 fYJNg=;
Received: from 195-23-252-136.net.novis.pt ([195.23.252.136]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8i5u-0003TJ-A7; Fri, 13 Sep 2019 09:42:22 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id B131BD0116A; Fri, 13 Sep 2019 10:42:21 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: luhua.xu <luhua.xu@mediatek.com>
Subject: Applied "dt-bindings: spi: update bindings for MT6765 SoC" to the spi
 tree
In-Reply-To: <1568195731-3239-2-git-send-email-luhua.xu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190913094221.B131BD0116A@fitzroy.sirena.org.uk>
Date: Fri, 13 Sep 2019 10:42:21 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_024226_747199_5E33BB1F 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: spi: update bindings for MT6765 SoC

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.4

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

From 7359d108d44b823d5da049ee12302125a08f2216 Mon Sep 17 00:00:00 2001
From: "luhua.xu" <luhua.xu@mediatek.com>
Date: Wed, 11 Sep 2019 05:55:29 -0400
Subject: [PATCH] dt-bindings: spi: update bindings for MT6765 SoC

Add a DT binding documentation for the MT6765 soc.

Signed-off-by: luhua.xu <luhua.xu@mediatek.com>
Link: https://lore.kernel.org/r/1568195731-3239-2-git-send-email-luhua.xu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/spi/spi-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-mt65xx.txt b/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
index c0f6c8ecfa2e..3a8079eb18c8 100644
--- a/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
+++ b/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
@@ -5,6 +5,7 @@ Required properties:
     - mediatek,mt2701-spi: for mt2701 platforms
     - mediatek,mt2712-spi: for mt2712 platforms
     - mediatek,mt6589-spi: for mt6589 platforms
+    - mediatek,mt6765-spi: for mt6765 platforms
     - mediatek,mt7622-spi: for mt7622 platforms
     - "mediatek,mt7629-spi", "mediatek,mt7622-spi": for mt7629 platforms
     - mediatek,mt8135-spi: for mt8135 platforms
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
