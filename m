Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A771C5A191
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=+8Q2Rh8Bd24dkE7YiSf74Rjsy/dbqCj6we9RrGh9DTs=; b=n9A
	Ti3ydch5scen3qfzHldvAqdqCrCaH2k30i6nSx541o6sLYS1e+eCNRcTmcVTpm3ytdWrJGjes5Lby
	wFLlf4SOcdnbF8OIvGNJZ9TS+Qe4oISsNBzWKLD/RR7pYnww2j4TBofB3TmTNHsOdL9auTpqMKf2J
	y0OEWwKZ46TVzK+0qbFxU38kIk1NQnFAbxxFgzl1u5hNdbz+vOkLjwy30tLenmlipufwrM7K/6URW
	vZMzS3hQU9KbmH3kdJFK0oauTAXw58rX+2pXHzr17J4xbzw6nVBah7Wh/lOmr3Vhv1ZvcsOIJrE/R
	Rf0LiXeySFQvpvoKHrYDQFBsAaFDllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hguBX-0004Q3-9K; Fri, 28 Jun 2019 16:57:15 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hguAv-00043B-7A; Fri, 28 Jun 2019 16:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=iDKc40FydAHvdXLFNwmMjAx1GM+vsXmu1CM9PROUYY4=; b=sTFFxXe07FaF
 /Vb6DqwLJZ3Ir44c5J+ZPxdRp2YdrODpWMdm3ZaPBdOodXjmH+b7g2lEHhHmUejekBnxya3cNAE9L
 oYov+sWXYLdeMONNCYO1M7xn7s35IeUmIkdqnKmMyhfAh4qJ8ceEH05oYf2sA+4ldLSJIb4MW2kjb
 IGK+4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hguAs-0007D4-E1; Fri, 28 Jun 2019 16:56:34 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 0A62C440049; Fri, 28 Jun 2019 17:56:34 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Ludovic Barre <ludovic.barre@st.com>
Subject: Applied "dt-bindings: spi: stm32-qspi: add dma properties" to the spi
 tree
In-Reply-To: <1561621439-7305-1-git-send-email-ludovic.Barre@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190628165634.0A62C440049@finisterre.sirena.org.uk>
Date: Fri, 28 Jun 2019 17:56:34 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_095637_639145_BEA40428 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: spi: stm32-qspi: add dma properties

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

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

From cae86eac98cd90934f94072028c362550338e084 Mon Sep 17 00:00:00 2001
From: Ludovic Barre <ludovic.barre@st.com>
Date: Thu, 27 Jun 2019 09:43:58 +0200
Subject: [PATCH] dt-bindings: spi: stm32-qspi: add dma properties

This patch adds description of dma properties (optional).

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt b/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
index adeeb63e84b9..bfc038b9478d 100644
--- a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
@@ -19,8 +19,11 @@ Required properties:
 - reg: chip-Select number (QSPI controller may connect 2 flashes)
 - spi-max-frequency: max frequency of spi bus
 
-Optional property:
+Optional properties:
 - spi-rx-bus-width: see ./spi-bus.txt for the description
+- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
+Documentation/devicetree/bindings/dma/dma.txt.
+- dma-names: DMA request names should include "tx" and "rx" if present.
 
 Example:
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
