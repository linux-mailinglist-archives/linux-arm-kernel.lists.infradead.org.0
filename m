Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F21A10DDEC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5IRATfTdTZlrBTLsbA22q+bHsDst+XRHE4Wmd9rz88=; b=FDzK+EkxXtVGAC
	tx6bJZDNsrm9aSygQ/ZX2NnqCAfIgXmpW03kZ/aqKBd5FrnkoieMnxOFGdvH4yGyPAF/Iub5NvMTa
	5sKHHwpOnU1pl5iqHfRGj6p67T2Answkr2EPEZmCfbCeRSAS1UP5DW2yoA7di6OssOa/Z0xju5a0U
	cJxJhgfQvl+coUIpI7Sh2yYZ6Gl55H5bqynzBfUPSz6RBTaDcJe2FPSiGPYqYYHEYi/MF8f4/bct6
	c7dIqrkQhLD4aMu3JB8lh40ViY288hnuT5OfRv5WdurL2lTzI34JciGzYbDKO5humYDYUBtFuzKjL
	KVgfEk1xzmB1HxITxITQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4BM-00079w-Gw; Sat, 30 Nov 2019 14:57:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4Ak-0006mk-Lc
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 14:56:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id s14so11222593wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 06:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bUD5FdR6g2ASiBzE14YJrcmNzasb1Y2tz62iUE7N/xc=;
 b=s7ea9GwcwXaGeE9Wx+YTpW6GFKPJtcTUDmn4vfvKpYbOTbO0B0BTxuDACSZONQsI8J
 kEemZNTf1R6rM5ldMhPomsojlD+CxfdNT8vJvnv6ln561hn3pAbegdsOy8LDsT9Hil4F
 sXtViNhlKDK5kMeAoVGCZXrG3tj6xIgV7TrhwL48kCm5SzjDVFd8GBP61HiM6NJno9Um
 1LW1S7s27cLhoOCsAf5vPf97LqucJAgpFYblLhCmOZ1ZldJL1tci5rn1PdxNl2/WAY67
 Obz6uRyDkzNCGYtzbBL6qn5cYFaU6e31xp7IW+oKZlNba4G8BltluLy8W29jz0Xgb3k4
 WORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bUD5FdR6g2ASiBzE14YJrcmNzasb1Y2tz62iUE7N/xc=;
 b=qMo9eGwTO5OwCan/y2nchR+O89BNm/hzM9saht9mC9mrQecuWMPspiPF1DM+tccsvZ
 HUQf2pa+lEcjm7Pub9Jp93Y25rHo8GRnhDMO0m/6AfEKeU24zYHxlQsP3D7fSZ41Vq0L
 HdnfCIn2M/Z8fkIQVoBg7QzKr/vKXQToCYGh1qXygv3xAYteQrF5U1640ivGqlj90Urd
 P/whOOHTtkNGkBLzjYiLzPsts14NLjCl0lZtJLyGA9yjIz4zDtRCLmJlzJ2+0cMExFoE
 vT+4MwJNfNGgzE9jnehQ/lgd162elfuHdV2NJahYQ9POu1DoWuEdbQ1N5nLgOFAgWt3k
 izmg==
X-Gm-Message-State: APjAAAWTNfIULQTgaaQLyuBBnlmiCi9bHNh0E9BQ/crVzMqfmegb7kFr
 gHf3U6MBH6WjIRtrXq/0O4o=
X-Google-Smtp-Source: APXvYqzZpWOgXW1gfWbWJi9PlT3GB5ebe5QB4uNaaCBAKAQTzRs1WcrUniu8FDKqrcNFkMMqjeVG2Q==
X-Received: by 2002:a1c:40c1:: with SMTP id
 n184mr20991135wma.116.1575125792804; 
 Sat, 30 Nov 2019 06:56:32 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b17sm7163391wrx.15.2019.11.30.06.56.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 06:56:32 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	narmstrong@baylibre.com
Subject: [PATCH 2/2] soc: amlogic: meson-ee-pwrc: propagate errors from
 pm_genpd_init()
Date: Sat, 30 Nov 2019 15:56:17 +0100
Message-Id: <20191130145617.1490233-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130145617.1490233-1-martin.blumenstingl@googlemail.com>
References: <20191130145617.1490233-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_065634_709368_5F531A28 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pm_genpd_init() can return an error. Propagate the error code to prevent
the driver from indicating that it successfully probed while there were
errors during pm_genpd_init().

Fixes: eef3c2ba0a42a6 ("soc: amlogic: Add support for Everything-Else power domains controller")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index df734a45da56..3f0261d53ad9 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -323,6 +323,8 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
 				     struct meson_ee_pwrc *pwrc,
 				     struct meson_ee_pwrc_domain *dom)
 {
+	int ret;
+
 	dom->pwrc = pwrc;
 	dom->num_rstc = dom->desc.reset_names_count;
 	dom->num_clks = dom->desc.clk_names_count;
@@ -368,15 +370,21 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
          * prepare/enable counters won't be in sync.
          */
 	if (dom->num_clks && dom->desc.get_power && !dom->desc.get_power(dom)) {
-		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
+		ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
 		if (ret)
 			return ret;
 
-		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
-	} else
-		pm_genpd_init(&dom->base, NULL,
-			      (dom->desc.get_power ?
-			       dom->desc.get_power(dom) : true));
+		ret = pm_genpd_init(&dom->base, &pm_domain_always_on_gov,
+				    false);
+		if (ret)
+			return ret;
+	} else {
+		ret = pm_genpd_init(&dom->base, NULL,
+				    (dom->desc.get_power ?
+				     dom->desc.get_power(dom) : true));
+		if (ret)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
