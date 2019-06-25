Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D088055521
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mh6hsNbJ14ORaCw+E/cF9xjatpBh4ZHfJTqEV3c1hD8=; b=XxORewWRRgXido
	UxqRg3pcWL/QLK6SEKQ90ER7vi8jG/hBuLUN6At8ZIoEBUqxEcezBphg6jIBXqWexjOjxRVrZq8Gk
	kmz0M5IOEq/DQ5cESzvyO6C6wprfn46xlYxyf8C4VcW/k7KD9XZocHDeRNKj1X/BlPPx6ww0fMh73
	rzhaAvnF1V1pl4aCyHqmRPheWEB8slCbfMiYsmDxpzKvSyEVa61tS8AUbYbFUVYkgJNDQBh/GoM/7
	LO8BwumhwEq2bndwI3HJjxz3BhAtHKNwrCzNbHQRIhQb5cRnWdP1YTf28c1ox0b0XRkGlTHxlc88S
	TzpDeQBJZ8/+ympOruGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfofZ-0006LW-Ac; Tue, 25 Jun 2019 16:51:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobl-0002Gn-Jc
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so18658430wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7eEjWytHo14d2wy5W+tNOY0jTfYkPmqHS9SlIMebT7c=;
 b=IxyUGn+UrZ+bnbjJipqX8Tqr/n5Yw6lxFKwRmp2JnOX2l2ltpJwYjzdfcGcgWUJN9F
 WNLe0y0I++0SHoHm8xeEyfqzAlOioa4k0z2moHs9hrOg6RwJ//dJQV1Ee2OGRe/3j5Hp
 62fpJ3/UXSAor4BUpfnIej1/cuQE+ztaAJxvjNBHIuh5iBR8yJTizPh0Zp9RoaX9la45
 AWR/0bwRoG2+sRvo9HyVfH2OPDFOOqIWZNy+o9PQBCWR1GehhyJndZbaLo/DZ5YJV0+1
 cfHb4PtMG78DUKmH0BG6bnNrDdfmVTQNqtRcghH86R5fGo6RpffmFD9aLff+DYw58R3E
 6JcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7eEjWytHo14d2wy5W+tNOY0jTfYkPmqHS9SlIMebT7c=;
 b=kaEUkzD60FBUzaOmLcNG4PyL/VKGf0WGXwJQVKcRynva6pgOGSuDzK9n1G3IKUTGTu
 WDNvqggStJYSzMsU3QCbOG0tkRS56P7Ga5msXis1rZm9AgqAtBCsPqTPAflrOPZRvhQM
 quKXq8NmrxuaXQOPtJJjqPQ5WEn30WFORbozqIWoNtnewAyxK6mcoQ+qp2mjKWAfKg0t
 N50EW+WlCbN+nJuA48wLUwxLJOwOr4rp7qM87bTHF6mgyrsWDBqsFWffcaamgdr550vD
 xYghvH6SvjVrSrIpVitrlREkeL8tXpJIlsgu1qiD39hx+cxj3Fz4QVroJeoTsMwHvTAR
 imzg==
X-Gm-Message-State: APjAAAUfTlDDiSdlrggxvUoEhiUB874Atzlj38fkwpHl6U5C2aHZwwoo
 2SMD/X23bHTVMAY/p1Oi6E7Tug==
X-Google-Smtp-Source: APXvYqy2Usw9GKw00Bg4lc9/CCqNSi0YvbljOkEbw/xyGvesb5SsyGkFWWx+viRnUehPAPaizW+rCg==
X-Received: by 2002:a5d:5189:: with SMTP id k9mr112089wrv.45.1561481267921;
 Tue, 25 Jun 2019 09:47:47 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:47 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 06/14] clk: qcom: hfpll: get parent clock names from DT
Date: Tue, 25 Jun 2019 18:47:25 +0200
Message-Id: <20190625164733.11091-7-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094749_652115_44A7A691 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Allow accessing the parent clock name required for the driver
operation using the device tree node.

This permits extending the driver to other platforms without having to
modify its source code.

For backwards compatibility leave the previous value as default.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
