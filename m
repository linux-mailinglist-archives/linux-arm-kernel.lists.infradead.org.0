Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C00E1391F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:16:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgApGx2w7qiEmE/wxu5k9Ry+4vTNKQBnLbZiiimSmzw=; b=fs/3Ex+KXU/X6O
	5/8w4VxJDmHK308Ma1d+669StgsfYdaEPKktpJDt1qkcMH//8C8DDhxAo/BN1TbkJijmNJI/UTM82
	gcSwLC9teUWUSS6CE+LjSnAI3AbaOqDnwJKaUYdn+xSY41EG14InOmi8eq7+G4MQcA+MxpcvkZbpB
	JvrUQnliL02wG2XfSQvb4Z/6dpVFO+yNk1M6DUxiWweUeTwgMFEwTKxe6qA38hh9sBXhKGAbhS6ZV
	3+izSjY0YES2K4HB+pk1acOMbTmM/phWwAolLqMGnm2JZotYrUmJQjMQm5IrbvhGA7NAnsmiIkP6h
	Qao6X0XpxlkkLkwsjT8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzZj-0000p5-FD; Mon, 13 Jan 2020 13:16:11 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzZG-0000YZ-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:15:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00DDCXEO025692; Mon, 13 Jan 2020 14:15:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=yDCgA3kxJZEHgyyrr5sS+bbWlkEZUo6bKQ+58eLac0k=;
 b=lTniZJLMvQIj8q/BxA4i4Ud7OigTIqXbjMed/ApdxbjFueGhHOt0hPhUK/ZOSZrrOLrX
 J6icXbKNNUTtLvUGB+rG93hmTQP8m9jxNcxSaGWeoxBxya5OF2U79nKj1kmt+RG9ACBb
 UaBQmJWZuxUhulm7srRgUOLGG9pnmjxTPdZ3P9XkBWBi7T05t6D+fBL2NXYnKPqWN2LA
 ikQEfkta0JjeZfaosrK7ui7jVNDMbsn9bPTDiQo0M/MmonISuHTg9pp+2QB2v4DMo1k8
 JYQQTkZX5JL3GQk6hvDxYkcTtp8+/r+HcedtoBL58TH34AHvFNefgFToQ4yQvUsv0m3y cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf78s07dt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2020 14:15:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0A9C6100034;
 Mon, 13 Jan 2020 14:15:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E96E42B8212;
 Mon, 13 Jan 2020 14:15:33 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 14:15:33 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH 1/2] iio: dac: stm32-dac: use reset controller only at probe
 time
Date: Mon, 13 Jan 2020 14:14:25 +0100
Message-ID: <1578921266-6025-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
References: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_03:2020-01-13,
 2020-01-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051542_920909_92E7CCBB 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: etienne.carriere@st.com, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

This change removes the reset controller reference from the local
DAC instance since it is used only at probe time.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/dac/stm32-dac-core.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/dac/stm32-dac-core.c b/drivers/iio/dac/stm32-dac-core.c
index 9e6b4cd..4d93446 100644
--- a/drivers/iio/dac/stm32-dac-core.c
+++ b/drivers/iio/dac/stm32-dac-core.c
@@ -20,13 +20,11 @@
 /**
  * struct stm32_dac_priv - stm32 DAC core private data
  * @pclk:		peripheral clock common for all DACs
- * @rst:		peripheral reset control
  * @vref:		regulator reference
  * @common:		Common data for all DAC instances
  */
 struct stm32_dac_priv {
 	struct clk *pclk;
-	struct reset_control *rst;
 	struct regulator *vref;
 	struct stm32_dac_common common;
 };
@@ -94,6 +92,7 @@ static int stm32_dac_probe(struct platform_device *pdev)
 	struct regmap *regmap;
 	struct resource *res;
 	void __iomem *mmio;
+	struct reset_control *rst;
 	int ret;
 
 	if (!dev->of_node)
@@ -148,11 +147,11 @@ static int stm32_dac_probe(struct platform_device *pdev)
 	priv->common.vref_mv = ret / 1000;
 	dev_dbg(dev, "vref+=%dmV\n", priv->common.vref_mv);
 
-	priv->rst = devm_reset_control_get_exclusive(dev, NULL);
-	if (!IS_ERR(priv->rst)) {
-		reset_control_assert(priv->rst);
+	rst = devm_reset_control_get_exclusive(dev, NULL);
+	if (!IS_ERR(rst)) {
+		reset_control_assert(rst);
 		udelay(2);
-		reset_control_deassert(priv->rst);
+		reset_control_deassert(rst);
 	}
 
 	if (cfg && cfg->has_hfsel) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
