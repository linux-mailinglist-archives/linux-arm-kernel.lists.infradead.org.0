Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8A6821BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w9lwKX+4U23ood4JWRaceVHruW8VsmgX+DQULMKMf5o=; b=oy0dBjN6C5oog+019LSSkpj/kT
	YTWjk/txk5I4ygeKssLdTx2Xhw3KEblO4jy7yIhSb0A2EResz9ec96dcFyvoMOr1XoAIVVv4mSkUL
	GXiFkEqZpZFa6Pk3CRVTTlGN1loAt78E5vF0h3LDiFTVKBypgf9y60BWcuDm7Ef4QuiFPQRkqUapu
	4ogY4bdzMoG0OlYUftKAkaPasA9ntzeCBOCmrAb8r3ZSKHqZAd8UrLxU74FmPUap/vY7RfO0kQVtR
	+RulzdC0tYIC8fmRcyT826gWa1nZsk2txZD//qqyuo8LPu0R/+LXgmzDve8VPmipKG+EnBr/uYLHN
	p77ZZyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufq0-0007dz-1R; Mon, 05 Aug 2019 16:27:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufpU-0007Qe-GN
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:27:25 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C69442173C;
 Mon,  5 Aug 2019 16:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565022444;
 bh=r3J2uJ3DeELKcuAEJzIBaysAZ2UpTcn1ONNqrTuza0U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RzWRgOHgLBILkakJwBcTZTNjFT7iwjWPTSJz/BNrzM38g3cge4HGGfWwiLRcKF1Mm
 pG/5Mm5+qhLu3zNv/hK/yTHTw4Ul861TGHqQOEksg8vbbGIWNAMP1bBCg6ixJphVRo
 hzjB7ZFsGkV9HrUgt2m2UDVyJqXJUMizXq1iK4as=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] pinctrl: samsung: Fix device node refcount leaks in
 S3C24xx wakeup controller init
Date: Mon,  5 Aug 2019 18:27:08 +0200
Message-Id: <20190805162710.7789-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805162710.7789-1-krzk@kernel.org>
References: <20190805162710.7789-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_092724_649457_FEC39D14 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>, notify@kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In s3c24xx_eint_init() the for_each_child_of_node() loop is used with a
break to find a matching child node.  Although each iteration of
for_each_child_of_node puts the previous node, but early exit from loop
misses it.  This leads to leak of device node.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pinctrl/samsung/pinctrl-s3c24xx.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-s3c24xx.c b/drivers/pinctrl/samsung/pinctrl-s3c24xx.c
index 7e824e4d20f4..9bd0a3de101d 100644
--- a/drivers/pinctrl/samsung/pinctrl-s3c24xx.c
+++ b/drivers/pinctrl/samsung/pinctrl-s3c24xx.c
@@ -490,8 +490,10 @@ static int s3c24xx_eint_init(struct samsung_pinctrl_drv_data *d)
 		return -ENODEV;
 
 	eint_data = devm_kzalloc(dev, sizeof(*eint_data), GFP_KERNEL);
-	if (!eint_data)
+	if (!eint_data) {
+		of_node_put(eint_np);
 		return -ENOMEM;
+	}
 
 	eint_data->drvdata = d;
 
@@ -503,12 +505,14 @@ static int s3c24xx_eint_init(struct samsung_pinctrl_drv_data *d)
 		irq = irq_of_parse_and_map(eint_np, i);
 		if (!irq) {
 			dev_err(dev, "failed to get wakeup EINT IRQ %d\n", i);
+			of_node_put(eint_np);
 			return -ENXIO;
 		}
 
 		eint_data->parents[i] = irq;
 		irq_set_chained_handler_and_data(irq, handlers[i], eint_data);
 	}
+	of_node_put(eint_np);
 
 	bank = d->pin_banks;
 	for (i = 0; i < d->nr_banks; ++i, ++bank) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
