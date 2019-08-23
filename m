Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAF29B23E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zfv+mOJESqoaTMPVJ8kdJ4t7Z0FARpyOD90EZ/aJxeI=; b=sIdcq3xAJCWwaaOqbTgJRq9H88
	tiNcCBhyiiix6hPdkmppEw1GUAUBehHeC5w94NK0k38TOXzk3Y9IJdFIMZryaI+0zUGfYrlyQNgTd
	5V+KJRJCax5b/pgs9Bvmo1gR/ovZkYoG1xUHcJ6jrhcVAjznL6r9LFrAyoR5diSxWA5d5L/PANqCh
	Cxu4qb14ToFZvxMlJjOYagWauOuHhQIAdbxNuSdY9SH6mspj7a1bdeBr+cuuWf+F/wWLU1avrFbNn
	6y97ANCHkS20YxpdQKqPpzx7hOj1AydsuidQVEIhFp4DwPhi8NerK4tEgR98I449k5PfPDd33xJ+t
	47R7My5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ahs-0003Ko-C5; Fri, 23 Aug 2019 14:38:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Agg-0001tX-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:37:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 948681A06D1;
 Fri, 23 Aug 2019 16:37:09 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 87C8B1A0130;
 Fri, 23 Aug 2019 16:37:09 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A9873205D9;
 Fri, 23 Aug 2019 16:37:08 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [RFCv4 6/7] soc: imx8mm: Register interconnect platform device
Date: Fri, 23 Aug 2019 17:36:59 +0300
Message-Id: <d900252a824b9a5f34fa6d2b49343bc359e62a14.1566570260.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566570260.git.leonard.crestez@nxp.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1566570260.git.leonard.crestez@nxp.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073711_072645_86D86F01 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since there is no virtual devicetree node representing the interconnect
we need to probe the icc device externally. Probing this from the SOC
driver allows the interconnect device to be built as a module.

This is very similar to imx-cpufreq-dt.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index b9831576dd25..24d515a9fdb2 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -22,10 +22,11 @@
 /* Same as ANADIG_DIGPROG_IMX7D */
 #define ANADIG_DIGPROG_IMX8MM	0x800
 
 struct imx8_soc_data {
 	char *name;
+	char *icc_driver;
 	u32 (*soc_revision)(void);
 };
 
 static u64 soc_uid;
 
@@ -115,10 +116,11 @@ static const struct imx8_soc_data imx8mq_soc_data = {
 };
 
 static const struct imx8_soc_data imx8mm_soc_data = {
 	.name = "i.MX8MM",
 	.soc_revision = imx8mm_soc_revision,
+	.icc_driver = "imx8mm-interconnect",
 };
 
 static const struct imx8_soc_data imx8mn_soc_data = {
 	.name = "i.MX8MN",
 	.soc_revision = imx8mm_soc_revision,
@@ -185,10 +187,12 @@ static int __init imx8_soc_init(void)
 	if (ret)
 		goto free_rev;
 
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
+	if (IS_ENABLED(CONFIG_INTERCONNECT_IMX))
+		platform_device_register_simple(data->icc_driver, -1, NULL, 0);
 
 	return 0;
 
 free_rev:
 	if (strcmp(soc_dev_attr->revision, "unknown"))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
