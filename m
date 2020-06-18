Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2751FE1FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bcxef4pd23bfZdjmsocSfdNFgc118iCZsG5qCpcuGDA=; b=XBXDwnYHUBF/J+
	8uKoB4LssfAz9w0XeI39d5/6fOvKdZmeJpxcZSQvGG27mASjhvc8V7NgEeBn/GeBVI7X7nPGYY6+T
	B4Yh0t6V1cmpl4VmLj4qD24B3WpfjxQLZK9ZVOfmiWK80ZMsyyJOzw+vfJrKCbEyooL4n3Enj+Iu+
	vVT8OT3m/Lm+qPnd+iOFdsUyXvyHl+pgvewHPm+UAGDqmPWZZZ+YBe/pkr8l2BgHqQDDlVHZr9RU+
	YQal70HIWBfUcz+3wuAlSig4iYkPvr9ucpccRD4VBjpbRKAk1deTSAXSLwEXZ5q7o+GJ6qLa4hwa9
	tSm2fIDre4yUZOveFg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljpL-0003DR-Tz; Thu, 18 Jun 2020 01:58:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljIt-0001Wq-3K
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:25:22 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 748D12083B;
 Thu, 18 Jun 2020 01:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443518;
 bh=pWp5whErmJ4Ic7w6wL0o19Xjfyw0DXak7LVcI12+LI8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cRSo04dZkrWUWYCJ8v6fttMdaECQUl1+OvNnsbX3L8Rfh5pWEEE3BMCt1YSx8VJAb
 riKWXLpUQSFufPEv+4SIpR0Tbw48f/CnwxaAbocurjv1wCrhvhUnuYNIy6NZtOkRPJ
 8qDROkUx/TRxrhcmlUh9TUV0GpIwKGzBYFNOr5cQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 141/172] pinctrl: imxl: Fix an error handling
 path in 'imx1_pinctrl_core_probe()'
Date: Wed, 17 Jun 2020 21:21:47 -0400
Message-Id: <20200618012218.607130-141-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182519_390852_65E0E08C 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

[ Upstream commit 9eb728321286c4b31e964d2377fca2368526d408 ]

When 'pinctrl_register()' has been turned into 'devm_pinctrl_register()',
an error handling path has not been updated.

Axe a now unneeded 'pinctrl_unregister()'.

Fixes: e55e025d1687 ("pinctrl: imxl: Use devm_pinctrl_register() for pinctrl registration")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Link: https://lore.kernel.org/r/20200530201952.585798-1-christophe.jaillet@wanadoo.fr
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/freescale/pinctrl-imx1-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pinctrl/freescale/pinctrl-imx1-core.c b/drivers/pinctrl/freescale/pinctrl-imx1-core.c
index deb7870b3d1a..961c24e0cc8f 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx1-core.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx1-core.c
@@ -638,7 +638,6 @@ int imx1_pinctrl_core_probe(struct platform_device *pdev,
 
 	ret = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
 	if (ret) {
-		pinctrl_unregister(ipctl->pctl);
 		dev_err(&pdev->dev, "Failed to populate subdevices\n");
 		return ret;
 	}
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
