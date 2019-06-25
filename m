Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEB95551E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzfU3WJDk4ms80uIODDhptRNRnkWlGsCnd9rmS+8U84=; b=iq9D68gZpWLPyK
	MOd1Tyy/Cc3h5FBEWHuHG12QUjNWmvLsIXlm9RC7LG9+vcjSeEKogZN2GBQfoS9PIIGz5zcaXxPtK
	bH6vx2ZjDuSFoxpjqF7VUnr8GcmHr5cmJMRs4aA8nqmzf+fwFzuj1Nk69XheDBNdxAh1xzYXCJmXk
	g+LBfIOtlssDTMlBPFQoyJjtyMXC7Xw295hgLN6TFbS6rbauAzx7AiSBjKPiwmYkkT9josHC9Zn1z
	ZqCezy7zz68m772Kk8Exb1MdA8+WrbzlL32e3xR7/OqwCyTT41OaDxSl3TABO2YjFqO3KI9ry1TDc
	44srLq+CmgK4u7Ob8FMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoeb-0005cR-5O; Tue, 25 Jun 2019 16:50:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobm-0002Hc-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so18709312wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hb0DqlkBsrvPKyzItQugKJEv/KIpj1AeWcG12Ck6UPE=;
 b=iVQI7uw+9TJW1LUgkZIdU1khMT6YRAAAPFeP5xoXOMCjxxssCK6FX5y45dwYFhuBZf
 ad3dkl4ahiYiMS4+ngzduIaDly+kPD09FVDHnAs0RoGCnyMn1o+50xfWF+XX+a1Li4Nh
 4OQO3uDVRwDEbuJPELgvTWKDROygls1JdxY4iB0FNAZfd2rwmUKGzr5YA7wOq6SCJIms
 5GV8aV3fa5LB5VSXLFvr2r7hpHzE0ckwCLsXV1Cw5Q4aazezsX5eWUunXfNfMjw2hHO+
 OP3fvGC6HYSIkBSgfs1509UnyTeAyHKTzn1OnT/2JXW2GlGQyinlzjw1F9T1uymYEvmw
 xRDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hb0DqlkBsrvPKyzItQugKJEv/KIpj1AeWcG12Ck6UPE=;
 b=G8S/gTpkzD5sfvJWgtK1ad3073PifVXnJuX83vVDum1Plmfa9pQbVtRn/jO7fxxz7K
 VH6yZWGSy/QqtK729/lUE5EYf7wKGzNfE2m6A8I4bLc7YES12MGpTMJnvoEc/sxlhLFl
 i/QVTNWUMT1iCN2KC16OGOEborUF9pzNZ/HGfWtTF7+yBgPvmFO008+p3rAv2HnIJnC+
 dIqUdc5ITYSa4cOdaSzC0O6pM8XI0721wFCGhFuz/tR+DuYRYFNl7iUFnzCYrS+9oHxd
 harxIX8w2qhR6rmYN5wcB80ij+Gch86lZMZRvy/dMDaehNUw4z6Z7JmCuVV7pHkd8ikW
 55xw==
X-Gm-Message-State: APjAAAUIZ26xzPm8I6VGVIR8s+2zam5SfPhujEXgHkOzTA8HygbxmjLA
 0Y2RXT4VGVH0GtyVimEnzzycvw==
X-Google-Smtp-Source: APXvYqz8+v1c8nAuEU127PL7q6EUv4iK4qRsCJaWUaXoCqhPm/o+SmElE/RNDaRh0QSWCS9bF3xtZQ==
X-Received: by 2002:adf:f8cf:: with SMTP id
 f15mr100970085wrq.333.1561481269628; 
 Tue, 25 Jun 2019 09:47:49 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:49 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 07/14] clk: qcom: hfpll: register as clock provider
Date: Tue, 25 Jun 2019 18:47:26 +0200
Message-Id: <20190625164733.11091-8-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094750_929641_C42AB619 
X-CRM114-Status: GOOD (  12.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
