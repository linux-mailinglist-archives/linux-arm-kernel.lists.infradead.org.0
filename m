Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CB0D1572
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=/f6//ijVv7FhHDWphLW+xp21tiW4rcrkm2LGX5FTs3s=; b=u+p
	1yG/qE6A8LfCEJdhfv4ACfSIogykkyhoGLeO3d/S2XdnIBwTPWmeoOz3Wais6BF3Rm7DAPC28O4ie
	v+Mb/Qm9xPLWpfVU4HWMumGkm5b14KHtEnhlCffbODEfbpt/JgKTMPc26cAYRuYvIJmqc1xc+RuwP
	To634KuuSmZ9PQfyzLDnsqcv3JtbKAkN5+IgNQopza5XhA87whcVZGpoD8Igpz66B33toYAYmAyYN
	miCGEAcs30FgCSegrmYxNjdy+sVQtyXv+KOXh3zkNRsNqE9jF2YYq1IcGTB9USvKJYWa6kHKYgQDz
	5IVigR8dnV494Kv+psowaPglxJ/QhuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFfM-0003Mh-DR; Wed, 09 Oct 2019 17:22:24 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFfC-0003LT-G0
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ZqoRPUiivC6EpdSad1Ty+09CGENkeEfQlMO3yMsb9R8=; b=VshWyjC8OQXd
 pZ7klgvUITEzZKn8bmo2GI9g1276VVYg9qmw3A/yk4Hvj5UCqItQPkn36yn+m1j22qY1Z4ZwwZByx
 0msQxA87c1WkdzT+IKV3qZc3f5YmM7ofIGzN9lvFOHmfRPqkZymKOsXRkrsJN8F7v26GQ2jsGR2sS
 +m0xs=;
Received: from 188.31.199.195.threembb.co.uk ([188.31.199.195]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iIFf5-0005KP-3i; Wed, 09 Oct 2019 17:22:07 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 96F10D03ED3; Wed,  9 Oct 2019 18:22:00 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "regulator: uniphier: use devm_platform_ioremap_resource() to
 simplify code" to the regulator tree
In-Reply-To: <20191009150203.8052-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20191009172200.96F10D03ED3@fitzroy.sirena.org.uk>
Date: Wed,  9 Oct 2019 18:22:00 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_102214_544595_874F24A7 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: yamada.masahiro@socionext.com, Mark Brown <broonie@kernel.org>,
 lgirdwood@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: uniphier: use devm_platform_ioremap_resource() to simplify code

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.5

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

From 907becb2638df95b78581381bed225c4f3e35799 Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Wed, 9 Oct 2019 23:02:03 +0800
Subject: [PATCH] regulator: uniphier: use devm_platform_ioremap_resource() to
 simplify code

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20191009150203.8052-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/uniphier-regulator.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/regulator/uniphier-regulator.c b/drivers/regulator/uniphier-regulator.c
index 2311924c3103..2e02e26b516c 100644
--- a/drivers/regulator/uniphier-regulator.c
+++ b/drivers/regulator/uniphier-regulator.c
@@ -45,7 +45,6 @@ static int uniphier_regulator_probe(struct platform_device *pdev)
 	struct regulator_config config = { };
 	struct regulator_dev *rdev;
 	struct regmap *regmap;
-	struct resource *res;
 	void __iomem *base;
 	const char *name;
 	int i, ret, nr;
@@ -58,8 +57,7 @@ static int uniphier_regulator_probe(struct platform_device *pdev)
 	if (WARN_ON(!priv->data))
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
