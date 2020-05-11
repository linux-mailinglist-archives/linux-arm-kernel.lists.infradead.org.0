Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E9C1CD406
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v3PwXtmCxg/QxQjiqNWPUo0uH0zMMBQ+r5CmkNuilKc=; b=KcT
	FagAbICieQ5qRMhRoFgB9+LHZAWu8JrIsRs2sLGEwnuV5uK3J6UGt/+meuBf2ciBaA+JqP4yqcSje
	X2FrrKTunU9GFc//WLmuFRGEVYhEKAZSQ7VjdwVE+F8PDigRtm9Xl3WDAvcrH1v5oToMtpO4/jbrQ
	TkJFBRUknnmXczhyAnRG78ISmuGCLeEuexEP2TUCCa03sHAHd7aAfgOCoHsbW/9hh2FdKm7aNgI91
	NJC4dA/JMtI75JkQjmxbswNaKtn2bq0qOOTOzMR4U4BY3YI4K4fKVPQHicSz5uJJBk/qcBPa1hhW/
	AedCu4NxY2WnN+IMNEioodR27ROfL9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3t6-0001K9-U5; Mon, 11 May 2020 08:34:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3sy-0001Ji-BK
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:34:05 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62D2120720;
 Mon, 11 May 2020 08:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589186043;
 bh=HK8Ij0xiNrB/Gl8FM5rFEArqdCz320rGYDH4m1F1yqo=;
 h=From:To:Cc:Subject:Date:From;
 b=VaCZI3/hNdtc35fu2VhsYjcpUUQrspf1hVeygY0z3HbMsD0jF7bNNgLEbKdMOXshM
 p0r/wmmO4EZRVgfAV6HDb9GVBnLgtYb3O8Z9hbnDSCSrGmzPd6gSF3P9wsqYIO7Olb
 xdC0yU09Tsp0pZ4YNvsOR42tbAdYaqmlI0ePseOQ=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: exynos: Simplify Exynos7-specific init
Date: Mon, 11 May 2020 10:33:48 +0200
Message-Id: <20200511083348.7577-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013404_410528_B4020F26 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alim Akhtar <alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Exynos7-specific code bits in ADC driver do not play with PHY:
the field exynos_adc_data.needs_adc_phy is not set in exynos7_adc_data
instance.  Therefore the initialization code does not have to check if
it is true.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Only build tested.
---
 drivers/iio/adc/exynos_adc.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
index 22131a677445..219c8eb32d16 100644
--- a/drivers/iio/adc/exynos_adc.c
+++ b/drivers/iio/adc/exynos_adc.c
@@ -449,9 +449,6 @@ static void exynos_adc_exynos7_init_hw(struct exynos_adc *info)
 {
 	u32 con1, con2;
 
-	if (info->data->needs_adc_phy)
-		regmap_write(info->pmu_map, info->data->phy_offset, 1);
-
 	con1 = ADC_V2_CON1_SOFT_RESET;
 	writel(con1, ADC_V2_CON1(info->regs));
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
