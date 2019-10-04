Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD4BCB3FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 06:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pxLmRNSAXFwGk6IX0Q5MbhY2heezFz9YFjjn4yKZ2ec=; b=tgG
	jIMu/y4JPlTOdpRtjQEcBuyGV0QYLlGBTW3hS7NUmrnGpN5gdeFco+ssNCSyN9aI5veRk/0J5qOpP
	WGOshhL07/u7Wa96QeTQdGn64F1GQWMnu3QgNPO/bEL2+Li0lQACe5VLZXzv5Q8KdZthZ1dHMvYfo
	GiAVDi+SNGnbKvAx8fC+BWJLdiphlyHDFEX0m7/0qE0mYIuSrcYC1gBbGrmOJ8wT7d2xv/NgtPz+c
	+WqJpAPa5s6YVJCom81grVRVM9F0m4dJsVdcINoaJqzvv3+6A6lDU94BLzzKeANTXhWg2ck7erQ3Z
	8bEdp3SMzMVMj2oFSLNb9MrlWw0GIQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGFU5-000820-LX; Fri, 04 Oct 2019 04:46:29 +0000
Received: from mx3.ucr.edu ([138.23.248.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGFTt-00080t-Cu
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 04:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1570164378; x=1601700378;
 h=from:to:cc:subject:date:message-id;
 bh=jWL5W27uUFoqE45P9aToaJkEZWCPur2rRlOPC00wtwM=;
 b=cUh1/bdi7ekVBYumGOzOw+/zGAbRkxXHs1k8Q/sJ8aE044pgcEdoLfKs
 QcDkk/zAIzoecWC4i0SwYvDW5fp/AnNsNMJyExts9XL1XcywJxtTrgxxz
 ic88Q/+gLRPetGrVmNfTfix0YGCCPrU8+nbt3IxpYoSOAp7dK5KV4b1up
 Hj2v8S3V+nfUo2SPh9odDBjSM82zKqz5Sq0x3esreNu3HusZb8Swhgafo
 ySHU6Vq8KvcYpYKBJXlAHNePEKpsznkJL/NlZ/JxTUphEjK0Bx+jCfeDH
 DfiDPdNRcQrmuWlZNnT8Iuy5PSrthzPefP/xoFqc01cVVMpSKwdX4QqSJ A==;
IronPort-SDR: p17WN1EDKbl5xRgryA4//BovBv4VBGCdKfye1MhKIXNyTnhiyTlOhY29y/hvLNsstfLLqxoMGb
 zB5tQatV+NG0c1OOpyexj9OF4C/C4DZFIJIaAjNcmkpDIQsAfCou8F/PdrUYPfo8tWIZMQC4jC
 CxqDYc6PLfIeq0DltIr7LStxj60QJWs0DSVnGAXnFq5ArbErSTiI+1wBkMahVEVQDeJA7Xpccn
 2sHH9IM6tQCE+ZETTDhdYy2ZoWvg3O7o1SxVg4k0KmzdVzkM6eaQN79ODlO8BZYZTAlyTauYs9
 Jj0=
IronPort-PHdr: =?us-ascii?q?9a23=3Ae37D1xJba2kEoTTpFtmcpTZWNBhigK39O0sv0r?=
 =?us-ascii?q?FitYgeKfnxwZ3uMQTl6Ol3ixeRBMOHsqkC1rKd6fqocFdDyK7JiGoFfp1IWk?=
 =?us-ascii?q?1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBA?=
 =?us-ascii?q?j0OxZrKeTpAI7SiNm82/yv95HJbAhEmTSwbalyIRmqogndqNcaipZ+J6gszR?=
 =?us-ascii?q?fEvmFGcPlMy2NyIlKTkRf85sOu85Nm7i9dpfEv+dNeXKvjZ6g3QqBWAzogM2?=
 =?us-ascii?q?Au+c3krgLDQheV5nsdSWoZjBxFCBXY4R7gX5fxtiz6tvdh2CSfIMb7Q6w4VS?=
 =?us-ascii?q?ik4qx2UxLjljsJOCAl/2HWksxwjbxUoBS9pxxk3oXYZJiZOOdicq/BeN8XQ2?=
 =?us-ascii?q?9BXsdKVyxaA4O8aYQPBPcfM+hBsoL9qVoOogW6BQaxGejjzjFFimPz0aA81O?=
 =?us-ascii?q?ssDQ/L0BA9E94XrHjYscj+OKMPXe21yaXFyyjIYfFL1jfn8IXGcg4vr+yCU7?=
 =?us-ascii?q?xzdsTc0lUjGx/fg1mMs4HpIy+Z2+IQuGab9epgUuevhnYlpAFwozmvxtosio?=
 =?us-ascii?q?7UjY8SylHF9CV5z5w0JdGkVEJ2b8WpEIZMuCGALYd5XN4tQ3xxtSs817YIuo?=
 =?us-ascii?q?a7cTAUxJg7wxPTcf+KfoiS7h79SeqcIS10iG9hdb+8nxq+7Emtx+nmWsWq3l?=
 =?us-ascii?q?tHrjBJnsfNu3wX1RHe5c6KQeZn8Ei7wzaAzQXT5/lBIUAziKXUNYYswqU1lp?=
 =?us-ascii?q?oPqUTDGTL2mFnugK+WaEok/u+o5vziYrr8p5+cM5Z4ihnxMqgzg8C/D/k0Pw?=
 =?us-ascii?q?wNUmSB9uS807rj/UL9QLpUlPE5jq7ZsJXCKcQaoK62HRNV35495xqjCzqqyt?=
 =?us-ascii?q?cVkHkdIF5bZR6Kj5LlN0zKLf37Ffu/hk6jkDZvx/DIJL3hBZDNI2DDkbbgfb?=
 =?us-ascii?q?Zy8U9cxBYvwd1R/J9UF60OIOjpVkDvqdPYEwc1MxaozOb/FNV9yoQeVHqLAq?=
 =?us-ascii?q?+YNqPSrFCJ6vs1LOmWYY8ZoTX9JOY/5/7ok3A5nUQQfa2o3ZsMdHC4Be5qI0?=
 =?us-ascii?q?SfYXrimNcOC3oFsRQkQ+P3klGCViRTZ3nhF4wm4TRuOYO0DZrEDtS8kryI3X?=
 =?us-ascii?q?/jRbVLbXoAB1yRRyS7P76YUusBPXrBavRqlSYJAP38FoI=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FFIgDKzZZdgMbXVdFlHgEGEoFpg1x?=
 =?us-ascii?q?MEI0khV1QAQEBBosmGHGFeoMLhyMBCAEBAQwBAS0CAQGEQIJIIzgTAgMJAQE?=
 =?us-ascii?q?FAQEBAQEFBAEBAhABAQkNCQgnhUJCAQwBgWopgzULFhVSgRUBBQE1IjmCRwG?=
 =?us-ascii?q?BdhShXIEDPIwlM4hlAQkNgUgJAQiBIgGHNIRZgRCBB4NuB2yHZYJEBIE3AQE?=
 =?us-ascii?q?BjXaHNZZSAQYCghEUgXiTFCeEPIk/i0QBLacvAgoHBg8jgUaBe00lgWwKgUR?=
 =?us-ascii?q?QEBSBWxcVji4hM4EIgmmNWgE?=
X-IPAS-Result: =?us-ascii?q?A2FFIgDKzZZdgMbXVdFlHgEGEoFpg1xMEI0khV1QAQEBB?=
 =?us-ascii?q?osmGHGFeoMLhyMBCAEBAQwBAS0CAQGEQIJIIzgTAgMJAQEFAQEBAQEFBAEBA?=
 =?us-ascii?q?hABAQkNCQgnhUJCAQwBgWopgzULFhVSgRUBBQE1IjmCRwGBdhShXIEDPIwlM?=
 =?us-ascii?q?4hlAQkNgUgJAQiBIgGHNIRZgRCBB4NuB2yHZYJEBIE3AQEBjXaHNZZSAQYCg?=
 =?us-ascii?q?hEUgXiTFCeEPIk/i0QBLacvAgoHBg8jgUaBe00lgWwKgURQEBSBWxcVji4hM?=
 =?us-ascii?q?4EIgmmNWgE?=
X-IronPort-AV: E=Sophos;i="5.67,254,1566889200"; d="scan'208";a="84998062"
Received: from mail-pg1-f198.google.com ([209.85.215.198])
 by smtp3.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 03 Oct 2019 21:46:04 -0700
Received: by mail-pg1-f198.google.com with SMTP id e15so3495064pgh.19
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 21:46:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=psYXa8mIT1FkAshfcFCubEkA00yN3VjYG8rNmfjs5/o=;
 b=OT8QRKSTJj2Dean3EupD4Iyr5RDPqqRc488hDthhmtXRvooFcQuIkefcouuMOwlQK9
 2pgYCKOczow7EMlEd0cEGSTN9dlgZcyY6sEZ0AhSFvrkbm5KnklATJeRGE7KQKNoLdZL
 uUBUN1xiVrbbQd6tNTcPyoGKidGEBHDclK0jHl/dki+LcfJaYBnW6mIzDvgukRczcQif
 siD2/L1wz/tjP+dUwYxM3PLYotF+r4y0iZ3wnzUGDBAeBS3PC1HQuJFQ642PKbNHiNMk
 N8TxCE+0leqDtuYOMXCEagJfzzAZyT3gpPguflyDYiwoi6lPnLomw0vo5YoWRqRChyuP
 UGRg==
X-Gm-Message-State: APjAAAXXWVUz1Bszc20nnBN/0krAGgDRZUavE5XWkZJ/6vt4HCkEvf7k
 5BxZfa/Njxt2Oue+Dtvi1h+iMRxoEVzik4wv64fI88jTZ+5p9dGfh1EjjpoVrxDUsL7C1E4V8Go
 DOXtHvErpdrrfHMkXJi8CFiAq/DxpYH37tXdI
X-Received: by 2002:a17:90a:22b0:: with SMTP id
 s45mr14621629pjc.22.1570164362693; 
 Thu, 03 Oct 2019 21:46:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyGjRTgwnhlo2KZICWhErm2QBBJwJvYEziM2d39vj6xXurXwJPnB9wMG3PeWPQZzN2CBEQCIQ==
X-Received: by 2002:a17:90a:22b0:: with SMTP id
 s45mr14621596pjc.22.1570164362245; 
 Thu, 03 Oct 2019 21:46:02 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id p88sm3786036pjp.22.2019.10.03.21.46.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 21:46:01 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] pwm: stm32: Fix the usage of uninitialized variable in
 stm32_pwm_config()
Date: Thu,  3 Oct 2019 21:46:49 -0700
Message-Id: <20191004044649.2405-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_214620_468129_D885A94F 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.248.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [138.23.248.64 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
 Thierry Reding <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Inside function stm32_pwm_config(), variable "psc" and " arr"
could be uninitialized if regmap_read() returns -EINVALs.
However, they are used later in the if statement to decide
the return value which is potentially unsafe.

The same case happens in function stm32_pwm_detect_channels()
with variable "ccer", but we cannot just return -EINVAL because
the error code is not acceptable by the caller. Aslo, the variable
"ccer" in functionstm32_pwm_detect_complementary() could also be
uninitialized, since stm32_pwm_detect_complementary() returns void,
the patch is not easy.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/pwm/pwm-stm32.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 359b08596d9e..22c54df52977 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -346,9 +346,15 @@ static int stm32_pwm_config(struct stm32_pwm *priv, int ch,
 	 */
 	if (active_channels(priv) & ~(1 << ch * 4)) {
 		u32 psc, arr;
+		int ret;
 
-		regmap_read(priv->regmap, TIM_PSC, &psc);
-		regmap_read(priv->regmap, TIM_ARR, &arr);
+		ret = regmap_read(priv->regmap, TIM_PSC, &psc);
+		if (ret)
+			return ret;
+
+		ret = regmap_read(priv->regmap, TIM_ARR, &arr);
+		if (ret)
+			return ret;
 
 		if ((psc != prescaler) || (arr != prd - 1))
 			return -EBUSY;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
