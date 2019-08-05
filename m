Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D466D821B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5JLjmTjEBo3L00UBcYVy0cZpgDVJ+/uczk/6iPSfVMs=; b=IAU
	qFc0hmxAQ75dHXQDQZbCysRN2M/E9jjUeUNmovc9ACJu6OzdxNI7YV2fgBUDmK9hb2valJcSkJ1GS
	lYzm8p4tq/gvIbOEr4rHgtNSNQiIZbOGzuvj9QCdlyz6PDzzKjAGUZl9j91kzjva6MzixnMmrQuiD
	lyec9DAVpgkXXZmZxlv5kG5mDw9GZGSFMDKaVs2cSCONJvnuKffBp5fAoXgMN9NHeq6rdCx21i832
	ZgD3XZjevETLbQE5dsWRZCQltsp+kpHi5d5ITvBCjAPDr+HmmCDiwQsvq8lsv0+ZJZVVHig6bh9uX
	ES5v7KmbU/qWS912NJa0zNnA3QScEsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufpg-0007QM-B5; Mon, 05 Aug 2019 16:27:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufpR-0007Q0-Uz
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:27:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE5372086D;
 Mon,  5 Aug 2019 16:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565022441;
 bh=BF81nBIoEOTLmRx1WDuhjfa7Ltb4DYluwOsPRykfpe4=;
 h=From:To:Cc:Subject:Date:From;
 b=jC2iVxlu92APDr0+Xi8gKJPJMwjsI4nzUSXhX7rjZNPBBUEuZCL+uqiZZHU/zrapa
 CmYSSzImurT99vghvoPbHDhxEZyv2OhqxtIt1Y4wYg2p7D/w3KZnujhVK8LNEqCGpP
 qIQ49Bge/Hw1fNdsXHFwGY7x1v7m9RVOMP9s4nB8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] pinctrl: samsung: Fix device node refcount leaks in
 Exynos wakeup controller init
Date: Mon,  5 Aug 2019 18:27:07 +0200
Message-Id: <20190805162710.7789-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_092722_026877_76407BF1 
X-CRM114-Status: GOOD (  12.59  )
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

In exynos_eint_wkup_init() the for_each_child_of_node() loop is used
with a break to find a matching child node.  Although each iteration of
for_each_child_of_node puts the previous node, but early exit from loop
misses it.  This leads to leak of device node.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pinctrl/samsung/pinctrl-exynos.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-exynos.c b/drivers/pinctrl/samsung/pinctrl-exynos.c
index ebc27b06718c..8d2c33bba13e 100644
--- a/drivers/pinctrl/samsung/pinctrl-exynos.c
+++ b/drivers/pinctrl/samsung/pinctrl-exynos.c
@@ -504,6 +504,7 @@ int exynos_eint_wkup_init(struct samsung_pinctrl_drv_data *d)
 				bank->nr_pins, &exynos_eint_irqd_ops, bank);
 		if (!bank->irq_domain) {
 			dev_err(dev, "wkup irq domain add failed\n");
+			of_node_put(wkup_np);
 			return -ENXIO;
 		}
 
@@ -518,8 +519,10 @@ int exynos_eint_wkup_init(struct samsung_pinctrl_drv_data *d)
 		weint_data = devm_kcalloc(dev,
 					  bank->nr_pins, sizeof(*weint_data),
 					  GFP_KERNEL);
-		if (!weint_data)
+		if (!weint_data) {
+			of_node_put(wkup_np);
 			return -ENOMEM;
+		}
 
 		for (idx = 0; idx < bank->nr_pins; ++idx) {
 			irq = irq_of_parse_and_map(bank->of_node, idx);
@@ -536,10 +539,13 @@ int exynos_eint_wkup_init(struct samsung_pinctrl_drv_data *d)
 		}
 	}
 
-	if (!muxed_banks)
+	if (!muxed_banks) {
+		of_node_put(wkup_np);
 		return 0;
+	}
 
 	irq = irq_of_parse_and_map(wkup_np, 0);
+	of_node_put(wkup_np);
 	if (!irq) {
 		dev_err(dev, "irq number for muxed EINTs not found\n");
 		return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
