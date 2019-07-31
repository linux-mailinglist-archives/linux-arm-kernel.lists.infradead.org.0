Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62827CE98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1K1s5lQRD6KqzSaQf7RUI0dWULoCYtoWLDQUMkm3iPE=; b=XFP4jUmct0PiAw
	gi4WBJ52yRKHwaIwn0zjI5NurY+uDI5KdWKbBppAwI0Iiw3raRLyFMA0JBCRLho6/hf0Toy+XRc3R
	B8suvuEM9+AZxBTC0lm8pUn8mMpVLPCldnmIAwnEymIZWNWEj0OsBE51fWl1eSO/+wvW6J5riXpCA
	Pz3YQmyROh5Nu701WmsyeaivTrCE4UMCjuBl/LW3OnM3wSmY337h/sNFTTOvnLw5nRe6AIWSH5jZI
	/3I+OC4oEv3MA3cUx2UXhGyZCMIjPaJYogqC5jf0g5SpTINfu5PdMT803dF6/BmlGMQGPfSv395x3
	QSYKQp3lhJ/DsCJFFGjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvFz-00061T-TP; Wed, 31 Jul 2019 20:31:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEJ-0002yJ-1Z
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id f9so71056071wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BoMlESuV3B6tPWN9XWP2L6fpdT8XV6yqfKxT2xNxK2o=;
 b=n6sHKkfaAZlka5CATr3XtZRARQ3pNoD6Mf1sXo2WWw8trtUv/46OA3woHnhBMu0b0E
 6b/b/Mt+v3BxRwqJeBaAfR4dXduuxA/gGaZDNGnwJDnYsQDkRBImyl8xD0eYnPo+yxQ0
 jBT/Pi0Zfg9u4jQoFELZbrv8WqznsZuz5aa/ykhC6JiyiEK74G4O0cvTMGLdKpqvOBTQ
 tA9D56Ag6WUbe6fuL75YnPpHQItr6F7A4lcd/PmjTlUSnOlmJXhua5N7P5eFsOkVJ7zC
 t0POw5bAvNfWz2eiMONKgBWktBxCeUV2NMKlOuupDWYmfCz8YKl16g1UYi5xdIoRKuBQ
 8lBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BoMlESuV3B6tPWN9XWP2L6fpdT8XV6yqfKxT2xNxK2o=;
 b=Grs0kcZH+42cwtYQSPMNgu6LYrweWHZCWutCdje+v8tC00YHys5ZRYfxmJpaHoy05S
 REHsn0NbbMcG/I0z5aDQkZFMDD6Jkbfz/14IgzT8xdhDmbtasq36QdBO3V4jhAaqDcXQ
 wT9idUFSCUowkBVPF29sDX/8Ud+mfAvtht5jZucbuO3rNBB5cpQc9iIdK12lsJZ1MkAa
 buDAlZvqsccV3DZIzqBvDcGDLWMsStUqzmGRj1sI0tOpqRBORNwbWiSE7/DGvqbbQ0xM
 9zs9vIuF1DPeemYFztGpY8SCA02YycSNyBPzslkxLtVuGIb/+LblkRNpUmZSJCqwwLQ7
 F+ng==
X-Gm-Message-State: APjAAAWVubaMZOWcvulH8Z/nW2E9l7q7GxTxmmAgcydbX3+8D2ps8ep+
 tt6zx8VaA4m5R15X/D7DNXrasw==
X-Google-Smtp-Source: APXvYqwpQEfh6lRzSLC7qveHzHmaJHjlrp6uAR1UHcFOtEzkTfXHHYUkxxhDNW/ynLeN4Zqrid8yeg==
X-Received: by 2002:adf:fa42:: with SMTP id y2mr54956154wrr.170.1564604985426; 
 Wed, 31 Jul 2019 13:29:45 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:44 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 06/13] clk: qcom: hfpll: get parent clock names from DT
Date: Wed, 31 Jul 2019 22:29:22 +0200
Message-Id: <20190731202929.16443-7-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132947_108140_DF899E64 
X-CRM114-Status: GOOD (  12.59  )
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

Allow accessing the parent clock name required for the driver
operation using the device tree node.

This permits extending the driver to other platforms without having to
modify its source code.

For backwards compatibility leave the previous value as default.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/clk/qcom/hfpll.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
index a6de7101430c..87b7f46d27e0 100644
--- a/drivers/clk/qcom/hfpll.c
+++ b/drivers/clk/qcom/hfpll.c
@@ -52,6 +52,7 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
 	void __iomem *base;
 	struct regmap *regmap;
 	struct clk_hfpll *h;
+	struct clk *pclk;
 	struct clk_init_data init = {
 		.parent_names = (const char *[]){ "xo" },
 		.num_parents = 1,
@@ -75,6 +76,13 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
 					  0, &init.name))
 		return -ENODEV;
 
+	/* get parent clock from device tree (optional) */
+	pclk = devm_clk_get(dev, "xo");
+	if (!IS_ERR(pclk))
+		init.parent_names = (const char *[]){ __clk_get_name(pclk) };
+	else if (PTR_ERR(pclk) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
 	h->d = &hdata;
 	h->clkr.hw.init = &init;
 	spin_lock_init(&h->lock);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
