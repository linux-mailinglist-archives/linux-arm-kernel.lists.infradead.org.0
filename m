Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB2A11168
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=ufl7qCgZMT8/oC6knGDItJJ8jAuu/H8GGwNTkX/oEMg=; b=Q00
	txGcqy6NMoc8NQtoLBVtXD6EonNaQZLgyDlryOo6f4kwRtbPGPswrUR8Ed2kKlEH3RstB5dIXp6UT
	Q8SYKicfS3S4ZIDgCK+r2ynMBpJfPCTabCAZD0/wI6Vh+NP8k7USBcnKdTClfOyauCCxHjyzh63Hr
	ivAlFEGtCXBfOI8Fy8Cp/mvsosQyz9iEIOocI45bb1DORIOH+bQGdqLHZ9aju9W8ekK38PmPYuzUW
	G3YuL2A91ORvW0JWQ7yiTEg9YmUYEQHbd8Etws3fWbC0VWb44G4XnMkte8dFwYAtwPl/8Vm47vILu
	BXzG4jmJlWUQuTaHBEDhHwE9oFD3jsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1L8-0007pG-QT; Thu, 02 May 2019 02:20:50 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Jq-0005Ao-I7
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 02:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=1PItEW2u0htZ2Dr52BH6AmRKT6du/eMXVYsUd1FUuoY=; b=Fsv0WVHf7s/A
 UkdR6WQPriRoSo64X227WZJIgjdSOIQ97Hk9Gye1hO+CA2qGfRoL6Zi//TUD3i965lLy/UnO+vMcl
 ks5BonoAnHqwt5fohxQFaHTEUjpuwDAinDDqhG5SezskWvWwT70QZ3BgGmXnDgh4i4gx7D9+9dVNR
 tE7Yg=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1Jl-0005xV-R3; Thu, 02 May 2019 02:19:26 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 725C7441D3C; Thu,  2 May 2019 03:19:22 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Subject: Applied "spi: pxa2xx: use a module softdep for dw_dmac" to the spi
 tree
In-Reply-To: <1554900696-28858-2-git-send-email-f.suligoi@asem.it>
X-Patchwork-Hint: ignore
Message-Id: <20190502021922.725C7441D3C@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:19:22 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191931_215098_E590BFD6 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pxa2xx: use a module softdep for dw_dmac

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

From 51ebf6acb00fa6f965e600f848bee5bddddd2054 Mon Sep 17 00:00:00 2001
From: Flavio Suligoi <f.suligoi@asem.it>
Date: Wed, 10 Apr 2019 14:51:36 +0200
Subject: [PATCH] spi: pxa2xx: use a module softdep for dw_dmac

With dw_dmac, sometimes the request of a DMA channel fails because
the DMA driver is not ready, so an explicit dependency request
is necessary.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index f7068ccfe7d2..3e6811ef37e8 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1957,3 +1957,5 @@ static void __exit pxa2xx_spi_exit(void)
 	platform_driver_unregister(&driver);
 }
 module_exit(pxa2xx_spi_exit);
+
+MODULE_SOFTDEP("pre: dw_dmac");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
