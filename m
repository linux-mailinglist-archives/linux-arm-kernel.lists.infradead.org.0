Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6518211161
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=iWkCtCgWhK8c5l0dK3CVCus+y8ghDfN6Rm017HxU5VM=; b=Wna
	bqzfXQOCPLIS0L4m+PxlvPJFowHBVPlJsfr5XkGpVbUe98j/ymIXnffQQYeHNJ7Ib7+OIo6NUtBUY
	RKVclA+u/nKhMYtwNd/6/1NM37o83zQnxcgs2l3OGyCWTNWiQgruXetCJZL56D9HgwH8AdQQaw1FJ
	1PZBK0Mnw7udDYg7lryxH0f3jVLRLUD4xJmt3K95C20HybOtKXQOAAyncJ9YmMCKJggmKhOl+WxSk
	tDLoak+y6tIPYqHxLowjn/bkyZW809tI/ZfHdia5Koog+lm9NBoew3DBXZCd523MB0fiFlatB0UfU
	paQguBWFkICSHrKCUHJX0v1WD6gqVKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1Ky-0007aI-1r; Thu, 02 May 2019 02:20:40 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Jf-0004wM-Ug; Thu, 02 May 2019 02:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=MS1QOIzunXomYID48sunfBjS80NfFtkOyiO7X8198WQ=; b=hmeOarK2EAp+
 OrRY0LIZ1San+orD97cOS0mkWrykbTDCwIm3C0m6V/kbRkD5LiOtnGtCW0OedzN245qlKnloW6C61
 1AJ0OHH7V1gBDDqQSTAD5EydATm55hK7tIvdpRpMAtyynHVS1oH08J4apHVJO5E/M617S+oFZwfqa
 fBSLI=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1JW-0005wV-W3; Thu, 02 May 2019 02:19:11 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id C4AF8441D3D; Thu,  2 May 2019 03:19:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Leilk Liu <leilk.liu@mediatek.com>
Subject: Applied "dt-bindings: spi: spi-mt65xx: add support for MT8516" to the
 spi tree
In-Reply-To: <1555490836-13382-1-git-send-email-leilk.liu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021907.C4AF8441D3D@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:19:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191920_730077_89B845C0 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, fparent@baylibre.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: spi: spi-mt65xx: add support for MT8516

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

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

From bf6e839657598b77e40eb18225f8660c4778cb19 Mon Sep 17 00:00:00 2001
From: Leilk Liu <leilk.liu@mediatek.com>
Date: Wed, 17 Apr 2019 16:47:16 +0800
Subject: [PATCH] dt-bindings: spi: spi-mt65xx: add support for MT8516

Add binding documentation of spi-mt65xx for MT8516 SOC.

Signed-off-by: Leilk Liu <leilk.liu@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/spi/spi-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-mt65xx.txt b/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
index 69c356767cf8..c0f6c8ecfa2e 100644
--- a/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
+++ b/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
@@ -10,6 +10,7 @@ Required properties:
     - mediatek,mt8135-spi: for mt8135 platforms
     - mediatek,mt8173-spi: for mt8173 platforms
     - mediatek,mt8183-spi: for mt8183 platforms
+    - "mediatek,mt8516-spi", "mediatek,mt2712-spi": for mt8516 platforms
 
 - #address-cells: should be 1.
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
