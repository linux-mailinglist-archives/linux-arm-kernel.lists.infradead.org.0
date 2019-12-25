Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B6E12A528
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 01:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=3sh91tjQ2VCiEMPCwS+wgHILBUU1puB7eT7ZgGqiez0=; b=shg
	+67MQLcxNjMEkAHnbNEsjj/7P3uJRh3GNxnUKQvAuj1Kw5tFAGLkydQPyUYpcHsfMyCm+Q2EhNPF1
	bUXn/mMax/4Wcop18zazwnUS8F6lQjqZBwLcr0PaYSQzAy5lwOBkx+D38BF74EQMTsxWhUdQj3U+Z
	eagBwh+99wLpGtbHkkH2b+l0QMHFJuf89hWkBVZqeVBINkm4GIqq5nPyCJHaJYQvAL4ZoMK8+O/um
	vyT19VPPMFfiIYR5feyu70wRBmIIQFEU8nmZk4/wQRTuqG0x3U/dzyotZPwR/CQ6AMqfqkuUsfsSG
	UBnuq/KY2uc2fsV9KbuLlFve4cFCv0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijuGi-0007HZ-Sm; Wed, 25 Dec 2019 00:11:16 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijuEs-0004pD-9n
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 00:09:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=GUJdf/ACw1h6vNsMgaiSztgePla3xUya9eRu6bc4itI=; b=KnnQl599gDI9
 T8itH2oIzonwBjm1/YrLKb7JJAvDvQd7JXcYwdPA7RxlZvOVSCyg6blvnycrW+wtMmsiwg9i26ck6
 kPy9A1BhFFh63ej535mU9DbkUq+veJF54d6TnvVgF4mkM8N5SzLTp4WfT1fHg5AJgRdjWscxBIjCQ
 +uPws=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ijuEp-0007N1-CE; Wed, 25 Dec 2019 00:09:19 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id DB0FBD01957; Wed, 25 Dec 2019 00:09:18 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Applied "spi: uniphier: Add handle_err callback function" to the spi
 tree
In-Reply-To: <1577149107-30670-4-git-send-email-hayashi.kunihiko@socionext.com>
Message-Id: <applied-1577149107-30670-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Patchwork-Hint: ignore
Date: Wed, 25 Dec 2019 00:09:18 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_160922_387585_94E3DBB6 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: uniphier: Add handle_err callback function

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.6

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

From 11299c5cd8868479e9acfc525ba3c2e882c7ba0c Mon Sep 17 00:00:00 2001
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 24 Dec 2019 09:58:25 +0900
Subject: [PATCH] spi: uniphier: Add handle_err callback function

This adds master->handle_err() callback function to stop transfer due to
error. The function also resets FIFOs and disables interrupt.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Link: https://lore.kernel.org/r/1577149107-30670-4-git-send-email-hayashi.kunihiko@socionext.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-uniphier.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index a44a1a5fb7b0..0b255597fdcb 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -425,6 +425,22 @@ static int uniphier_spi_unprepare_transfer_hardware(struct spi_master *master)
 	return 0;
 }
 
+static void uniphier_spi_handle_err(struct spi_master *master,
+				    struct spi_message *msg)
+{
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	u32 val;
+
+	/* stop running spi transfer */
+	writel(0, priv->base + SSI_CTL);
+
+	/* reset FIFOs */
+	val = SSI_FC_TXFFL | SSI_FC_RXFFL;
+	writel(val, priv->base + SSI_FC);
+
+	uniphier_spi_irq_disable(priv, SSI_IE_RCIE | SSI_IE_RORIE);
+}
+
 static irqreturn_t uniphier_spi_handler(int irq, void *dev_id)
 {
 	struct uniphier_spi_priv *priv = dev_id;
@@ -531,6 +547,7 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 				= uniphier_spi_prepare_transfer_hardware;
 	master->unprepare_transfer_hardware
 				= uniphier_spi_unprepare_transfer_hardware;
+	master->handle_err = uniphier_spi_handle_err;
 	master->num_chipselect = 1;
 
 	ret = devm_spi_register_master(&pdev->dev, master);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
