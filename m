Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C742F10060C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject
	:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=uVQPCLb7OPRmJp0CazYsThMRs2E457Si29mhwdW4Bjo=; b=WbZ7mqMpUow/f0fGIOWnbCmT+
	85cXkYRnw2G0njnMfVmF+ipEhQ3iA5alIgZViFr9yRt9IFiBuFQSpw4pHowOUa6tJ0Bk7TjDQoIU6
	91ziSdCiyZW/Vs2hhwX5qaIeHE/wZR2LYWc64F8LWCg1zZTqphoD5LLVoOs57GOgPLaFYjhzcyjxb
	Cgo10JJThiZZ8Tr1RefLxPPsz5Ogv1EEBOhLuM6uD92sIGk9848t7YfUgmpx8FsaSnJP4lvuOiBYa
	Ob0LFWgGbg6NND8IxG4w0EoU17D/qnxjbNi52aHrrPNWpPYaLc8jaUXf7bdEqBeek58Cn7qeNmpFw
	h0Ebm2Q7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgeT-00064a-FM; Mon, 18 Nov 2019 13:01:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgeJ-00063w-G8
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:01:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBD8411D4;
 Mon, 18 Nov 2019 05:00:56 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AA053F6C4;
 Mon, 18 Nov 2019 05:00:55 -0800 (PST)
Date: Mon, 18 Nov 2019 13:00:54 +0000
From: Mark Brown <broonie@kernel.org>
To: zhengbin <zhengbin13@huawei.com>
Subject: Applied "regulator: vexpress: Use PTR_ERR_OR_ZERO() to simplify code"
 to the regulator tree
In-Reply-To: <1574074762-34629-1-git-send-email-zhengbin13@huawei.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_050059_580006_595F0AD3 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 MISSING_MID            Missing Message-Id: header
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
Cc: liviu.dudau@arm.com, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 zhengbin13@huawei.com, Hulk Robot <hulkci@huawei.com>,
 Mark Brown <broonie@kernel.org>, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Message-ID: <E1iWgeT-00064a-FM@bombadil.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: vexpress: Use PTR_ERR_OR_ZERO() to simplify code

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

From 1d7c4c115f7a835fec387d7f61767781381db5db Mon Sep 17 00:00:00 2001
From: zhengbin <zhengbin13@huawei.com>
Date: Mon, 18 Nov 2019 18:59:22 +0800
Subject: [PATCH] regulator: vexpress: Use PTR_ERR_OR_ZERO() to simplify code

Fixes coccicheck warning:

drivers/regulator/vexpress-regulator.c:78:1-3: WARNING: PTR_ERR_OR_ZERO can be used

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
Link: https://lore.kernel.org/r/1574074762-34629-1-git-send-email-zhengbin13@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/vexpress-regulator.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/regulator/vexpress-regulator.c b/drivers/regulator/vexpress-regulator.c
index 1235f46e633e..5d39663efcaa 100644
--- a/drivers/regulator/vexpress-regulator.c
+++ b/drivers/regulator/vexpress-regulator.c
@@ -75,10 +75,7 @@ static int vexpress_regulator_probe(struct platform_device *pdev)
 	config.of_node = pdev->dev.of_node;
 
 	rdev = devm_regulator_register(&pdev->dev, desc, &config);
-	if (IS_ERR(rdev))
-		return PTR_ERR(rdev);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(rdev);
 }
 
 static const struct of_device_id vexpress_regulator_of_match[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
