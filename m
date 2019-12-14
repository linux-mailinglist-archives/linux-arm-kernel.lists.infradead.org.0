Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84BA11F330
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gzDbwJlzm1j5o7BXI0X+Ve46n5saAddfcql/GVqqiVc=; b=KmomXYm+o72vaiePMChgmCu0dr
	KLaIrkJ8kGdx8P2I98ZHLkEXHlMjCU+j7nL1S+AguSR9I69eWCnSPG0Mm0II3G0IGflTWFwOTruFW
	3ZxOi8h7GJeabO6vSl4qo2TaKoY5/4QjJf6ROCVEbXhXjj7YzpPAJsxUTVag/hGyVuMFQTtLfhyxR
	wYDDELkFBpOys/Bn4TrMptIwKpCHT8i63+aLUv5MFvaNvBX8/XnGAfgpaua/Mk2/CCsMkZrJVRxVo
	mataRxfsJf+tlWXlKOZ2vV9Rmha0fFH5qI7Vg3S7lc06aHhbBjo5pp6lowMmjQ6mDp0ix3RkVx2cH
	FxVRrrsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBfs-0006uX-KW; Sat, 14 Dec 2019 17:57:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBdL-0004p9-Kf; Sat, 14 Dec 2019 17:55:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id z3so1090724plk.6;
 Sat, 14 Dec 2019 09:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p464edzUa2iPp9uHgJjpc0nSudXprxPgj9c87WZ/a/8=;
 b=jwbTlKjUlgdBEVsfFGJ0AFRM27IrT+5/nGVpeqjmCQY8Pvog9nLbJEGs3BoJShCWcc
 HUCs/NcUJEbspXufkbpSOSgpcLjHI9uSC2uL8deL98KCPLdAycltVaMbDTSY7BfErs2r
 3jb+3au9m3HLLvo5IanTkhro0u+uMh+7QnL1Kmvn6n0zxgK8PqWxjbHB9UOlTP9lJERQ
 fRA0q2rQ0Mg0I4cJZ6oR/WvAPyLLemDcLzfJOfJwdMDJDyZj6sbgdurkJ9mbvF3rvF94
 qtAuTF6Xj2R2j2anoXaTjjEStkzmzXjXeUm9O3eCz5K6gXyVi95VvTd8QtE1eKhmZ/RZ
 FutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p464edzUa2iPp9uHgJjpc0nSudXprxPgj9c87WZ/a/8=;
 b=QkA9ulfNGFdcNSgMWEVXsFBJjHAUpev6D5ztoLksthkorOGb1R+y6Oj3oZcjZKJij6
 GyZfIZU9/P8ov4LwLWaVF319X7dOTKIt6/HD8grClMXLeVU/ZNFuhReG1Y8mFuMmDavU
 YdTTTCzlznvVzNa7SE38ckPVsGqVV0szwQ/zUk747WP0QC1zPPzaxT33I3WqDKjko7bw
 diBhpdzdBNQ+JvTn+mdHj+vofHkyHBwfc8ZbHYGdDBsuRd2ZXCCQqyvn2Xk3zQF7DgBR
 fhYo+iBNuffCimzrFBkgX2EVeLR6WPvX9TJanGIxKaE8mT8acE5RVjs/wW3x2MYYou67
 wN7Q==
X-Gm-Message-State: APjAAAXTTpyiwdaRnrpO5UQ3qycLmB5NjT6gI/UrgGbVJotdWaBFLtFt
 TvtsUBEvZMO+tUZ5uHW2bF8=
X-Google-Smtp-Source: APXvYqxG8GAI4f/vKneCzHJdyU3sDnTOcUKGttUJVG0Uipa0HZQ6CtNPSXlPYC7sJOX/nTAUj+QlEA==
X-Received: by 2002:a17:90a:374b:: with SMTP id
 u69mr6820565pjb.23.1576346114545; 
 Sat, 14 Dec 2019 09:55:14 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id z23sm14868517pgj.43.2019.12.14.09.55.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:55:13 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 08/10] soc: lantiq: convert to devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:45 +0000
Message-Id: <20191214175447.25482-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095515_698519_7D334AB8 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/soc/lantiq/fpi-bus.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/soc/lantiq/fpi-bus.c b/drivers/soc/lantiq/fpi-bus.c
index cb0303a0fe60..dff1375851cf 100644
--- a/drivers/soc/lantiq/fpi-bus.c
+++ b/drivers/soc/lantiq/fpi-bus.c
@@ -28,14 +28,12 @@ static int ltq_fpi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct resource *res_xbar;
 	struct regmap *rcu_regmap;
 	void __iomem *xbar_membase;
 	u32 rcu_ahb_endianness_reg_offset;
 	int ret;
 
-	res_xbar = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	xbar_membase = devm_ioremap_resource(dev, res_xbar);
+	xbar_membase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(xbar_membase))
 		return PTR_ERR(xbar_membase);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
