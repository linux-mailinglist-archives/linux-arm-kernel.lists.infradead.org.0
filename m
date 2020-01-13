Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A57139B34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0+1jAuHB7GdFcsD/e81gwFFizUMbAM3scx+m1Sdqfyc=; b=JNeLXQ8WnAIhAQUhVfXgnOrF0S
	oVMMvlt6LqyC1Hs3atfGOf7IaI/8UlubJHoUOQX1PnAuAwcKYZOPFfXJvcvWW2vR2eF9Sz66gY8+7
	lix7ab/XlvOf5WAMWB0D4sQCovHO10dAHkUFq8HByIreNYTITGiZh3iOLWKgaKb1vxnG2FHcNfbHL
	+HW+k8jpNROsvXC+88ysiuW+FjzfZPOzoCPLiG4S2b2iiqZUUpqZfahTKrB1BrqnFPNiQGsjPNmz0
	XirRtlQIeuHkH33C0vubK/vOIDFQVpJagn+mvahW/vFNMi9kSRKADp3dKKp1oj9Rm6YUrJ3iRi0hA
	avVauXNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6xH-0007nN-UI; Mon, 13 Jan 2020 21:08:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6wG-00070o-4a
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:07:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so5468470pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c4EwOwGyRZn732m62F/bmkLNPBHupsvQnM8EZTJTEOU=;
 b=TvNq4fxIGcMuRSTocpaToEWweIJ2INFcSGkfkTb2PGFYP4PexLnpNWn0jgZYGYkBrv
 VcgNEUh9ux0x752QjnvpckLrBNTTBhvRbXKtk3vwZq8JrI/K3L+8JDPweSfGXHyj/NDp
 SvdW6n05jJp7R3pUNZSHm0PkJ2hw1hb2HhRkTO/XwdTOK6H3f1xhiznskz7KsLuroa/l
 9xL/gQ8ciwMwcwuf7vlBvbai/qoolqJVhLzDwQXYFaAQUJloAe5eBq1QOfzWp/0ZmigB
 FnOcocIKY7rYAWBeSySjqqTjLIRtFhGBdyrIyskrV6zXFmRPVx0TZeQbIzuOaZttRLWi
 WKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c4EwOwGyRZn732m62F/bmkLNPBHupsvQnM8EZTJTEOU=;
 b=pqJTWj4fLwqNtASSWBz44CrTF3+E/DommHLABe+3f1R8juM7Z8kzpDk5gpzeoLXwFp
 WvhBWUdw7cR+71O/zt1z3kORnNjhQpy2cyF9cvpruS+xnPlcef0PKiZWnIQBho8F85TS
 xrsQO/xDndX+vn6x1oMW6PWOPtKKg612e1yGirdH5ykcc0qcvMwhfOJMlTyjKfn3MrCk
 /v+Yc2TTvQfY9XR3S8fMQWg6ZNiv1xrSkoxnTEnR36v+qXelCSnh6VvB7IdTkSUeflCI
 SVSxIPH6pJjWG92fk7dz32Z6B1b1nbC+gDDfA+Vxo7h/zGHxLighwT6QjD/gnD685oLb
 xXnw==
X-Gm-Message-State: APjAAAU1UXOr1AAXnngoTlj/Kmz0nFxY3tmuyZihdfZJjTMenoWOxnbE
 AZHG9AxPBSGdxGGAQiIDjf0=
X-Google-Smtp-Source: APXvYqx1R7S8pIV0K8TV9qoZ4dBSE0XGBn6qp4kgOM11WVqKY4FU4nvS/xhY19oqkjyQfl1iY2QsUg==
X-Received: by 2002:a63:a43:: with SMTP id z3mr22981828pgk.232.1578949674958; 
 Mon, 13 Jan 2020 13:07:54 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:07:54 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] mmc: sdhci-brcmstb: Fix driver to defer on clk_get defer
Date: Mon, 13 Jan 2020 16:07:03 -0500
Message-Id: <20200113210706.11972-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
References: <20200113210706.11972-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130756_205879_3286243E 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Takao Orito <orito.takao@socionext.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Al Cooper <alcooperx@gmail.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new SCMI clock protocol driver does not get probed that early in
boot. Brcmstb drivers typically have the following code when getting
a clock:

        priv->clk = devm_clk_get(&pdev->dev, NULL);
        if (IS_ERR(priv->clk)) {
                dev_err(&pdev->dev, "Clock not found in Device Tree\n");
                priv->clk = NULL;
        }

This commit changes the driver to do what is below.

        priv->clk = devm_clk_get(&pdev->dev, NULL);
        if (IS_ERR(priv->clk)) {
                if (PTR_ERR(priv->clk) == -EPROBE_DEFER)
                        return -EPROBE_DEFER;
                dev_err(&pdev->dev, "Clock not found in Device Tree\n");
                priv->clk = NULL;
        }

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index daa89ca232a2..218176b79b6a 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -91,6 +91,8 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 
 	clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(clk)) {
+		if (PTR_ERR(clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_err(&pdev->dev, "Clock not found in Device Tree\n");
 		clk = NULL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
