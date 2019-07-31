Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7387CE96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtF3PP/0GEYOkWruAI+TQwLY2bl6cx6Mqc6zuJipDFo=; b=LjiqnDsNkrvPHi
	ZZP4PGac6w4IGfm7ZdgYEYMNobTkZlsrFSdjsUYEnv/xafBknG8wq9Oghz15nISBNiiz594OlgSWy
	TbrDZbW1A6zuuBlGrsrE8vN85wBHaUGxyZ9YvAMaRuMV14RBvYBVzI73z32xB8aTl1WSWuhPefbWF
	gAbW6pJKxnMfgoklS31pFD+DFiZBVGtdbPqD11E6QJvFPVXyEO7eSw8wDkRHPRKrVdLaplmmAjCRH
	3+3pqqh6KtXRhTXDsezkYbn/wNb88UAQh8s4DFAkJL34mQqgdfuS8ASEXhq63ihcdDs/gPsh50I5q
	DFBE6QoIEs22ocAX4xpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvFe-0005b8-1i; Wed, 31 Jul 2019 20:31:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEK-00030q-Da
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so71156349wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=onetUiZPcKYw43ltVy2pax5WwMNPrRMe/eAwSVGynt4=;
 b=hyDo5hAhRc4QzuIX2tUpIKbH3IelBuPVusXpwSvSNMh9tzz94z/m8CQjhd4r5uATJ5
 IwiBzZESkY4K2MTQFADxZhMygATszMtZhDOOdYS00mhRA+Ghk8oOiibymHRGzOU+Rq5B
 0kSFzaZLM6YrI5Dg311b3EyUCJyOYsL8cp3ImiXtGIQ86tI+ob9HD3LLh8VJqvSWbF1q
 djifVGZBkToBzRoVMRMciAwyXobYowv0eANNZz6d1ZX7+rOu96bPEEgOcSbZQbWbvbU7
 0LI+p7KwSWs2S6a7C2EvLNXer9Mdq7XrKPpzat4dc6i5iig7t30hKa+U+utmJxSzVKpY
 0D0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=onetUiZPcKYw43ltVy2pax5WwMNPrRMe/eAwSVGynt4=;
 b=JhWMwgncPM9v7wa2Df8I69wBedVNLi/GoknYouPl7CKPlvVequd7rIS4l0dmSajFE2
 XDIT7OzAnYc89rYWdF68Be0jI12c7hhPcCzZ6YbkWS+a7khpMZhYdN+7eds1RVKfmPU+
 BIGYZ/EhlDxh3DLv7v86QUYkhcIOViAjyJSO/hTTisp2dWtzYwsT64rWHp+QxkMR6q+9
 vJL2D6gfIgYYDWX/jFOdmf5V+Q3wCzhnPyTS0dJVpjKuY+dFDjDM5ZjkQE1PI/UbDNFb
 Yhkv4IX38K+q2GWivRc4/QnYWkQqpCUx5LUQq8UuDy7br8pXUqgZ9v3opn8Frg466a3z
 Nx9A==
X-Gm-Message-State: APjAAAU140TeLLRUTNsxX4y/YhVLg3hm935jIVNgtqv6oUr4qJSTyrav
 eJK77VO8RwdOTQFqVWk8j6I7lQ==
X-Google-Smtp-Source: APXvYqy6YgTYQC3Fho4PDvDZwRFPnMUj0vZ+AbVsH4vJvPB20hp2gbPmVYNLKolRigmcbxZyhR8AIA==
X-Received: by 2002:adf:f046:: with SMTP id t6mr19884717wro.307.1564604987154; 
 Wed, 31 Jul 2019 13:29:47 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:46 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 07/13] clk: qcom: hfpll: register as clock provider
Date: Wed, 31 Jul 2019 22:29:23 +0200
Message-Id: <20190731202929.16443-8-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132948_533517_0B1D2511 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the output of the high frequency pll a clock provider.
On the QCS404 this PLL controls cpu frequency scaling.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/qcom/hfpll.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
index 87b7f46d27e0..0ffed0d41c50 100644
--- a/drivers/clk/qcom/hfpll.c
+++ b/drivers/clk/qcom/hfpll.c
@@ -53,6 +53,7 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
 	struct regmap *regmap;
 	struct clk_hfpll *h;
 	struct clk *pclk;
+	int ret;
 	struct clk_init_data init = {
 		.parent_names = (const char *[]){ "xo" },
 		.num_parents = 1,
@@ -87,7 +88,14 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
 	h->clkr.hw.init = &init;
 	spin_lock_init(&h->lock);
 
-	return devm_clk_register_regmap(&pdev->dev, &h->clkr);
+	ret = devm_clk_register_regmap(dev, &h->clkr);
+	if (ret) {
+		dev_err(dev, "failed to register regmap clock: %d\n", ret);
+		return ret;
+	}
+
+	return devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+					   &h->clkr.hw);
 }
 
 static struct platform_driver qcom_hfpll_driver = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
