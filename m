Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D42EA67EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=uNwOHbdSkCND4utrfSjjUVh0CJHRRqCHbpO3w4lVY3k=; b=Bq5
	z9BqynTW1dMdjFiMmItDC2/jCsohMbwwBlbi511oewYZyJENmfwE9NXYyYiMqNt3YaA2a1a3kAGHc
	OS2C+X96vJlZGXibfdx27VkY56sALSQNds9pKtzJmXQHJSHyJ4CUolRvsFn96PNWzPaqplreKAQtx
	QNZ+MyZYGb5H6qrPPfE7isXOBneVQckV5PPp3zrPJ/RrKmNGgI87wuT7C9rBf05vKMg97jVmaaPPE
	zChpNa3Xo95e06g7Q08cmB7KSeq8aFkmuFJhkngnA7wpJfyGOBJqcMRsLR9iLNWYY9R3Ckek4wmwg
	ji1TmppfVLTeTpaVNtA+Nhoyxutqa+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57S6-0004io-Hn; Tue, 03 Sep 2019 11:58:26 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Rb-0004WB-83
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=cgxtaWs//pWcWZQdK/XoplWjvgqpaZGkl5enIyRVTjU=; b=B3tLuBNEB1du
 xHMinHE6b1SDBxOOXLbRMKvex5t9HBuTBpeXaU2gvU/W/0UPZOCtL7m41UYCxMURP3mP1EL3KtQBc
 xdi0KEVOdwHWHQfTFHe4lYSwqgd7eNToJdLZkFSfSwGcwE5i/QBMQIrij3jijFIcBF48p3SK9nXte
 edmqk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i57RV-0008M4-Qw; Tue, 03 Sep 2019 11:57:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 44CAB2742D32; Tue,  3 Sep 2019 12:57:49 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Subject: Applied "spi: uniphier: fix wrong register overwrite" to the spi tree
In-Reply-To: <1567488661-11428-2-git-send-email-hayashibara.keiji@socionext.com>
X-Patchwork-Hint: ignore
Message-Id: <20190903115749.44CAB2742D32@ypsilon.sirena.org.uk>
Date: Tue,  3 Sep 2019 12:57:49 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_045755_304862_A7E03122 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: masami.hiramatsu@linaro.org, hayashibara.keiji@socionext.com,
 yamada.masahiro@socionext.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, jaswinder.singh@linaro.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: uniphier: fix wrong register overwrite

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

From 3c633f9dbd824b2f8e5e1a3c1fd533c1b2801be5 Mon Sep 17 00:00:00 2001
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Date: Tue, 3 Sep 2019 14:30:59 +0900
Subject: [PATCH] spi: uniphier: fix wrong register overwrite

When it changes the spi mode, the register is overwritten incorrectly.
This commit fixes this register overwrite.

Signed-off-by: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Link: https://lore.kernel.org/r/1567488661-11428-2-git-send-email-hayashibara.keiji@socionext.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-uniphier.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 5a6137fe172d..50f12fb20403 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -214,6 +214,7 @@ static void uniphier_spi_setup_transfer(struct spi_device *spi,
 	if (!priv->is_save_param || priv->mode != spi->mode) {
 		uniphier_spi_set_mode(spi);
 		priv->mode = spi->mode;
+		priv->is_save_param = false;
 	}
 
 	if (!priv->is_save_param || priv->bits_per_word != t->bits_per_word) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
