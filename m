Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048481791D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 14:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=t/+q0SKFpLjv2n042h6sRyhmbE6eemaDfqmkDjaQXXY=; b=jjv
	h0B3w5prjoA/LP8NQnzv99vOPhHFcnCqJb3XO8r4cJY1eyPOuYYffgo66lns/Y/rOEjeagDIISeNt
	/YZjrW1TleIMN/76BxbiLM9HWXJwCEKs3KNwV4WOPozsm4TEr54m2vbLoeQKBaX61CG+K69IFk7cP
	gvwTO8+7O7QdEh464/rTWZYM04NPSl095CoBODgwPwzWfFdQItvYAz0ZmQFb66wlXqHpEdYCMANcx
	BdOfhrPXShYZlNxLtHlzjOLj2nkrxY3D3mO7Oozu2bk6x8z37M5AHGnTRyAU6BRhXhmrDA9HLX+l6
	6WC6w5w77BozIYrJ3704XQO83BJvX4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9UX3-0001ya-As; Wed, 04 Mar 2020 13:57:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9UWw-0001xo-JM
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 13:57:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FFEA31B;
 Wed,  4 Mar 2020 05:57:41 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B61B03F6CF;
 Wed,  4 Mar 2020 05:57:40 -0800 (PST)
Date: Wed, 04 Mar 2020 13:57:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Applied "regulator: stm32-vrefbuf: fix a possible overshoot when
 re-enabling" to the regulator tree
In-Reply-To: <1583312132-20932-1-git-send-email-fabrice.gasnier@st.com>
Message-Id: <applied-1583312132-20932-1-git-send-email-fabrice.gasnier@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_055746_680652_33E31FD5 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: stm32-vrefbuf: fix a possible overshoot when re-enabling

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git 

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

From 02fbabd5f4ed182d2c616e49309f5a3efd9ec671 Mon Sep 17 00:00:00 2001
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Date: Wed, 4 Mar 2020 09:55:32 +0100
Subject: [PATCH] regulator: stm32-vrefbuf: fix a possible overshoot when
 re-enabling

There maybe an overshoot, when disabling, then re-enabling vrefbuf
too quickly. VREFBUF is used by ADC/DAC on some boards. When re-enabling
too quickly, an overshoot on the reference voltage make the conversions
inaccurate for a short period of time.
- Don't put the VREFBUF in HiZ when disabling, to force an active
discharge.
- Enforce a 1ms OFF/ON delay

Fixes: 0cdbf481e927 ("regulator: Add support for stm32-vrefbuf")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-Id: <1583312132-20932-1-git-send-email-fabrice.gasnier@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/stm32-vrefbuf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index bdfaf7edb75a..992bc18101ef 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -88,7 +88,7 @@ static int stm32_vrefbuf_disable(struct regulator_dev *rdev)
 	}
 
 	val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
-	val = (val & ~STM32_ENVR) | STM32_HIZ;
+	val &= ~STM32_ENVR;
 	writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
 
 	pm_runtime_mark_last_busy(priv->dev);
@@ -175,6 +175,7 @@ static const struct regulator_desc stm32_vrefbuf_regu = {
 	.volt_table = stm32_vrefbuf_voltages,
 	.n_voltages = ARRAY_SIZE(stm32_vrefbuf_voltages),
 	.ops = &stm32_vrefbuf_volt_ops,
+	.off_on_delay = 1000,
 	.type = REGULATOR_VOLTAGE,
 	.owner = THIS_MODULE,
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
