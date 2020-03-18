Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E06C189E1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSIC6A64L6ME774DPn/yBTwsKJma/9Am6OvKPj8ZFS8=; b=qa/HmWjwfrXg/n
	CWPws7C0f2yKnwbwK30o0HAt/7PQlHxnCOny+gmJeJLH8H7w8B2JctUDy1R6h96gqIFMDurCQIXoY
	HpXAK55aYvNMvsS04ugPwoo5tkDK9WEmPZZK9LJlWSJ0X5EHdLUgjCJZ6Ux/J8qFWNnx3nU6t4fqb
	e11GJ/8/GSIQ5A9CZj/GzxDb8FIXXM2oK84KXXl6DqAVQz6ScWXLJUKzpaIzPPDmXnQPgwgknpaMg
	rOwmYidske4SrQX/43YBEcJaLPxrV5c83pOIVMn1tDDFFJvhlJ9XRT2z1aU4rZP33DzKrSEqnUS6L
	vRRD4ZFanzynzuXVzucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEZu9-00076U-DF; Wed, 18 Mar 2020 14:42:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEZti-0006z7-Qd
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:42:20 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02IEcs7x022643; Wed, 18 Mar 2020 15:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=QTa6yBpqVGgt45GTluYI/eRrleTl6RJHDyZ3CT3e6vg=;
 b=vFnqipNDCO8RvFORxZr1QV/qakKFVK+9ZXQpNKbsOVEXO7zKH2sLj/kslxM2Bm7w8P+M
 mR/88I4duFxwTEcKyt48ylD4/iP/b+/1DTuKhrvQJWOUYu6/Ajq+yukcwHc+Lt9j0Vbq
 qrYyECQjA+w4ssFqGbSStyMZayFNr2VguzSNn1nRBu5mkNvhbm3CqYNANpwQuNod+xcF
 wACTx6PASZ2BlwGZ6qkzdNTcWtnkooZACSEGKd8ivmgDLG4CfVOpd7rncYH8qP6VtMp3
 zwwQJuNFHKcdJM8miAb6tLFk0amUxYzjWtvOY0PZ09XqVvElC6eGimEjgPsQHGjU8R5u DA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu6xdckn8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Mar 2020 15:42:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8A41910003A;
 Wed, 18 Mar 2020 15:42:07 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7EB3D2AE6CC;
 Wed, 18 Mar 2020 15:42:07 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Wed, 18 Mar 2020 15:42:05 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <alexandre.torgue@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 1/3] ASoC: stm32: spdifrx: fix regmap status check
Date: Wed, 18 Mar 2020 15:41:23 +0100
Message-ID: <20200318144125.9163-2-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318144125.9163-1-olivier.moysan@st.com>
References: <20200318144125.9163-1-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-18_06:2020-03-18,
 2020-03-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_074219_153516_3C0F3E81 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Release resources when exiting on error.

Fixes: 1a5c0b28fc56 ("ASoC: stm32: spdifrx: manage identification registers")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_spdifrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index 49766afdae61..301f8463390f 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -1020,6 +1020,8 @@ static int stm32_spdifrx_probe(struct platform_device *pdev)
 
 	if (idr == SPDIFRX_IPIDR_NUMBER) {
 		ret = regmap_read(spdifrx->regmap, STM32_SPDIFRX_VERR, &ver);
+		if (ret)
+			goto error;
 
 		dev_dbg(&pdev->dev, "SPDIFRX version: %lu.%lu registered\n",
 			FIELD_GET(SPDIFRX_VERR_MAJ_MASK, ver),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
