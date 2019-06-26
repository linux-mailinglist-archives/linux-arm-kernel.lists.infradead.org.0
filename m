Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD72567AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 13:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Md9ghXk4EHCYn88N+FgHWeQNXRhiP+B8FMaciVMhTJ8=; b=ZgY
	M6H6OzRbDrScOx1Z4H7LLWe7Ay/RuOPQjqqOkPQaWcFThihHkPFq9D6ahWJpWwvATCpHBm6XGLoVl
	E5wXM3QuSZ6MPKdL3xIafm6bnzHoI5FmjSykfSsRqt2gk5rtgXBsYh66TjPcLT1Of4oVq9qyqpofz
	Uo4vq5kF3wmTwTCEhBhiMFKoHbQxlPOnPL0+HWPwZ0OWLJ35MhRFPdKfYP/ACDXet0eWd4qaztIHv
	Ymyn4RC1MCvv8qqNcSb2sHcdpzwODfu1tV3E1Amd3eJwiwxbxQ1DToOHhutstcwsFlEpVdR9Z+vRL
	tLm9ihRez88g1CyMamtB3RbI2MQxPSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6B7-0005XT-95; Wed, 26 Jun 2019 11:33:29 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6Ah-0005Nt-BQ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 11:33:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=pmKiTP/UH0LuMJK3IPEv8DYClPZZJDCF1B6gxlNM18U=; b=lxNqeI03NvnJ
 5Iy7XhJi0Sw4kNMzUjy3AdWTeLB0RfZd/gaCkSHPEa4JXNH8wLUcigG/COWKd+tnT7UCmq81F7dq0
 qoTd4kxJnMuXe8xUVXCLug4Q2Q6yhD9m0L47QCx6nEXbQmlDnLOgKcd1h18UT3AKYPqpiVeLkArmj
 qoEDU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hg6Ad-0007od-Ab; Wed, 26 Jun 2019 11:32:59 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id D7724440049; Wed, 26 Jun 2019 12:32:58 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Subject: Applied "spi: uniphier: fix timeout error" to the spi tree
In-Reply-To: <1561509708-4175-2-git-send-email-hayashibara.keiji@socionext.com>
X-Patchwork-Hint: ignore
Message-Id: <20190626113258.D7724440049@finisterre.sirena.org.uk>
Date: Wed, 26 Jun 2019 12:32:58 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_043303_547511_A314720B 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

   spi: uniphier: fix timeout error

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

From e4671df0bfd67d4864de014fa1751d5e2a56c7a6 Mon Sep 17 00:00:00 2001
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Date: Wed, 26 Jun 2019 09:41:47 +0900
Subject: [PATCH] spi: uniphier: fix timeout error

Timeout error was silently ignored.
This commit adds timeout error handling and modifies return type of
wait_for_completion_timeout().

Signed-off-by: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-uniphier.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 5a6137fe172d..c3c35c041ef1 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -328,7 +328,8 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 				     struct spi_transfer *t)
 {
 	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
-	int status;
+	struct device *dev = master->dev.parent;
+	unsigned long time_left;
 
 	uniphier_spi_setup_transfer(spi, t);
 
@@ -338,13 +339,15 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 
 	uniphier_spi_irq_enable(spi, SSI_IE_RCIE | SSI_IE_RORIE);
 
-	status = wait_for_completion_timeout(&priv->xfer_done,
-					     msecs_to_jiffies(SSI_TIMEOUT_MS));
+	time_left = wait_for_completion_timeout(&priv->xfer_done,
+					msecs_to_jiffies(SSI_TIMEOUT_MS));
 
 	uniphier_spi_irq_disable(spi, SSI_IE_RCIE | SSI_IE_RORIE);
 
-	if (status < 0)
-		return status;
+	if (!time_left) {
+		dev_err(dev, "transfer timeout.\n");
+		return -ETIMEDOUT;
+	}
 
 	return priv->error;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
