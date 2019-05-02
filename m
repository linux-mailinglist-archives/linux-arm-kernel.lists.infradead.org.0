Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478A811147
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=zabZWIDFfFdvH5VwUajFy5nKJjjIt4W+1HvJk+uJpIQ=; b=EFA
	3CWSSWpTWsB4dMBw8b4zgBgvm9CTflR+w3IVQsnwiDum4BSo6CPGNB6pkbjaM2kh3N/w1/nS0Nu3z
	vfaU6H41Nb/futHyrBup+sO3I1OiS8GSDJGTwtj6OnadqEyj2zVDAfjFHKAp7HldNfkYG9bNjVtKU
	N/6N3CXc+ka+017nd2RxVWI00SA8bBc5ur2uJgemxD8oUeOxoCtGlMK/bj4VPkHxXNvzC0Mkwz8pO
	7Hq+gkrqFliizMxcRRrPOaqVBzbq8arDXmOF6MwTLktuhLuKevxYVMd/R7wpDfCg8zOKN7nzN61eY
	9yM+EoDkOZGHV+jhFvNMUGoN5olZVTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1KE-0005V3-Hd; Thu, 02 May 2019 02:19:54 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1JU-0004g5-8D
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 02:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=kubXXWC5hG9Tf1ZSHpSxNXJFgzmFjFMboy4IdHsOOYE=; b=Eu4Z2dQK2d5s
 7+OPZea8vdm5txFIQ3PXmk2cFESM+o/bLD/y0Y2GZ4yWVnh+BCMG2J8wGq1+nK+v81wtpJ3It4n2g
 ZU8rdxq++CEIysOxPTqpcdvevSj9kMWV8xpzeW2IGFs6OzMwMpzesxpa9y9EqvusxgkcJEIaIwVa/
 jR7wU=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1JQ-0005va-TA; Thu, 02 May 2019 02:19:05 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 7345A441D56; Thu,  2 May 2019 03:19:01 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Applied "spi: stm32-qspi: manage the get_irq error case" to the spi
 tree
In-Reply-To: <1556119140-3319-1-git-send-email-fabien.dessenne@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021901.7345A441D56@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:19:01 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191908_877011_FCFEA095 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: Christophe KERELLO <christophe.kerello@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32-qspi: manage the get_irq error case

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.2

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

From 4b562de4e227dbc2267c367b0a1ec83051c364f6 Mon Sep 17 00:00:00 2001
From: Fabien Dessenne <fabien.dessenne@st.com>
Date: Wed, 24 Apr 2019 17:19:00 +0200
Subject: [PATCH] spi: stm32-qspi: manage the get_irq error case

During probe, check the "get_irq" error value.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
Acked-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 11a89aa15d56..42f8e3c6aa1f 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -574,6 +574,12 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	}
 
 	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		if (irq != -EPROBE_DEFER)
+			dev_err(dev, "IRQ error missing or invalid\n");
+		return irq;
+	}
+
 	ret = devm_request_irq(dev, irq, stm32_qspi_irq, 0,
 			       dev_name(dev), qspi);
 	if (ret) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
