Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CB0FE808
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4JsuhbnQc6LeP92E4P+0A1erB43bf4rVh7Pjz41h7M0=; b=BN7e0Wd/1x7V9u/ax+0T9BeTWv
	t5NO59xHaMKRl1/ShnyAqK+mvSOrskSVh2H8b892WwDwrlGjTc+TRtuIi1JVltTiebUWe654wbAS5
	QE0yRnbnpD83t0S7+84dP1uOA/JCpQ2RVzXxwwNNwndOrT6E6w++0VW7ohOZJewBE+b1P/xoy1D4B
	aPiSzvcMEoBqpXBik4a7PMWzDB3hH59wUsK+wBwzLPTR4eXueT9b5vVsSDgxJWQi+lvDSlBfTspY2
	V1pbF/8A30IjLqSvrBsSn58OAcR7VmenLrXSLvPLCReNW5FucsfRHUA8iHM8/SFHDY02l/6JyoEEu
	xUB1ugOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkC9-0001EG-To; Fri, 15 Nov 2019 22:36:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAG-00078X-7k
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id l24so6604472pgh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I8DYLlgbe7crhAhNbwNPqGy2McaZWO3AECdzJYJCCco=;
 b=uq0Rvs0KPR5i9HtlAfbqJ09ftst7366sxovqlgQSCdSMlx7zsOEFlsXzxIZ/RFJepW
 +xNmN50KWjZEmZ4ahwYGYncO2oNSlvlk9+bSZ0uJj5KwnzYGnYwwpJh3Z0U0CVVPUgeF
 WBek2r2DnpcVe5urx/INF76BoO8wqFwuN86lGWJuCvpErfOgoUCoWWPI37s5pI2Uuw9X
 OEj1WNleT7NOb7K1+oFm34vXUlCdixUaNsyhZrrKKyzZ34tRHBi5jpoqITPilNH4uc3A
 cG9Aay+Ra1kWvl+WOeF5ifVv++jVQtvf2AnAcuQ92MtUnevyPsRG5Pf0brxRmVhP9TbT
 u6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I8DYLlgbe7crhAhNbwNPqGy2McaZWO3AECdzJYJCCco=;
 b=HDiPq44u/39K+NBZ6eWAwMPr7aEk0xMJgaR+hEHwJXLM6zRyQ3AoWNcA/Qjz8D0Hlz
 3tApJmjr7SbiuaPJNDzV5gUrfIEZ1e5Cxm6AZv+vTQP/HZrNS+xt4YL1xmTJVuwQFnjt
 5fLE3xXfNMBZFMn7Bv+mXc2ip+oK0MDgz9GfDCBivhsFH+VPMPgWKPu+9Uqrojnr4Y27
 AQyF7C8fbT8k0GPyPe0pjWdLgezZcA2nzxpAfbMQHScKAXJ7mgVBbLyOXkRSuAkQj/WK
 rnoOuofCYgYsAVrJKRa2RtGJXe6gFdSjy8peKOMOHaFkhJpNvGYnG2i4M85vZwGTD9lb
 mhyQ==
X-Gm-Message-State: APjAAAWipS2Va1f9Cdd+3VEIrS6spcAvrr9maSjAd8Yl6PfLebeSr4PO
 hFPUC8QgPWvLS1clAjUDJGbzRhfe86c=
X-Google-Smtp-Source: APXvYqytHqdgYw+McewKp6L1IK0RR+uPnytQnNFy3RGnQfrkQ+RNzORO54L3aq41JZ6v3SKIJheJ4A==
X-Received: by 2002:a63:2e01:: with SMTP id u1mr19770443pgu.25.1573857243342; 
 Fri, 15 Nov 2019 14:34:03 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:02 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 07/20] hwrng: stm32 - fix unbalanced
 pm_runtime_enable
Date: Fri, 15 Nov 2019 15:33:43 -0700
Message-Id: <20191115223356.27675-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143404_283102_A945F629 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lionel Debieve <lionel.debieve@st.com>

commit af0d4442dd6813de6e77309063beb064fa8e89ae upstream

No remove function implemented yet in the driver.
Without remove function, the pm_runtime implementation
complains when removing and probing again the driver.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/char/hw_random/stm32-rng.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
index 042860d97b15..37b338a76ba4 100644
--- a/drivers/char/hw_random/stm32-rng.c
+++ b/drivers/char/hw_random/stm32-rng.c
@@ -169,6 +169,13 @@ static int stm32_rng_probe(struct platform_device *ofdev)
 	return devm_hwrng_register(dev, &priv->rng);
 }
 
+static int stm32_rng_remove(struct platform_device *ofdev)
+{
+	pm_runtime_disable(&ofdev->dev);
+
+	return 0;
+}
+
 #ifdef CONFIG_PM
 static int stm32_rng_runtime_suspend(struct device *dev)
 {
@@ -210,6 +217,7 @@ static struct platform_driver stm32_rng_driver = {
 		.of_match_table = stm32_rng_match,
 	},
 	.probe = stm32_rng_probe,
+	.remove = stm32_rng_remove,
 };
 
 module_platform_driver(stm32_rng_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
