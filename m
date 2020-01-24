Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A158014795D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 09:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yyJmG2kJQKer3+uZXRGgPV3m3R3PaD/GOvQGnQfvs7A=; b=peo3QC57QpdgC/
	9xPwP6GlNLOpPdz/I9pGYwSrrK2RM2ls1+HJaHB7CfpefBerGYCCEIFgO7S6ynk0uMLVZA0Jfgirf
	ga5+vjMLxSzrLGiD2SPzO7rN398buFOMU0YZh3FTxBkesHmpVm20mCmv7lh9Rg6P/J88XSoTgskas
	ILCz1KFfk6+WvX5ZxjD0MjIK2t1E/F5/t3OyLacpaICB43HG4a6zwSIujdq0FQn9vbIWyDesN19C6
	a8p+FRdbnYgZUPj9bW5J3ph2nTCaHtRbGg1Xx5IiSef2OPH+mM6Ae/PA58Sa5kRkFU6Hpd1zI7+Ix
	bR2zKjyreOhwMe9ctM1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuuIa-00010p-LL; Fri, 24 Jan 2020 08:26:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuuIO-0000zw-14
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 08:26:29 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00O8OTl2014122; Fri, 24 Jan 2020 09:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=3JYauW1ZnMoc3P4fm4vLggKu8VcPTT/FhM8tD56QD7Q=;
 b=bBs5zpcroZYlUe3fzeRIsQQ1gXtFsdFgq9HGnU5Qghc627kb+6mSZOljVJt9Yz3fZiTg
 Hxt7SFgdwq8eVBFEp1TomOLUNcKRTralUEt9kuN+WdhX/Iy6PuW4MRs8Wy4J1gP51ISc
 pqnBfmpfs59QYoyJ+FBkHkK6W+rMGhCg38Tqv7XVXf+BVFEgDoNSfOBl+ywieQASo20N
 dM8lXnTsyKmbEoFxB6XeMYjQgEBx+qW7yoB8H6c70M/r1MiflBKxlcBdIJLslNfv3X2T
 inqPSFfEFn//Nj4XAJh4orjlXmJs15OQvebp8cRqRp06N4qDqeSKWHW+GhYsxRHtV4ec PQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrc5erw7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Jan 2020 09:26:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4A92B100034;
 Fri, 24 Jan 2020 09:26:15 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3203A20EB92;
 Fri, 24 Jan 2020 09:26:15 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 24 Jan 2020 09:26:14 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH] iio: adc: stm32-adc: fix runtime autosuspend delay when slow
 polling
Date: Fri, 24 Jan 2020 09:26:09 +0100
Message-ID: <1579854369-7972-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_02:2020-01-24,
 2020-01-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_002628_523839_2DFBFD9A 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the ADC is runtime suspended and starting a conversion, the stm32-adc
driver calls pm_runtime_get_sync() that gets cascaded to the parent
(e.g. runtime resume of stm32-adc-core driver). This also kicks the
autosuspend delay (e.g. 2s) of the parent.
Once the ADC is active, calling pm_runtime_get_sync() again (upon a new
capture) won't kick the autosuspend delay for the parent (stm32-adc-core
driver) as already active.

Currently, this makes the stm32-adc-core driver go in suspend state
every 2s when doing slow polling. As an example, doing a capture, e.g.
cat in_voltageY_raw at a 0.2s rate, the auto suspend delay for the parent
isn't refreshed. Once it expires, the parent immediately falls into
runtime suspended state, in between two captures, as soon as the child
driver falls into runtime suspend state:
- e.g. after 2s, + child calls pm_runtime_put_autosuspend() + 100ms
  autosuspend delay of the child.
- stm32-adc-core switches off regulators, clocks and so on.
- They get switched on back again 100ms later in this example (at 2.2s).

So, add an explicit call to pm_runtime_mark_last_busy() for the parent
driver (stm32-adc-core), synchronously with the child driver (stm32-adc),
to avoid this.

Fixes: 9bdbb1139ca1 ("iio: adc: stm32-adc: add power management support")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/adc/stm32-adc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
index 3b291d7..670157e 100644
--- a/drivers/iio/adc/stm32-adc.c
+++ b/drivers/iio/adc/stm32-adc.c
@@ -1157,6 +1157,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
 
 	stm32_adc_conv_irq_disable(adc);
 
+	pm_runtime_mark_last_busy(dev->parent);
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
@@ -1278,6 +1279,7 @@ static int stm32_adc_update_scan_mode(struct iio_dev *indio_dev,
 	adc->num_conv = bitmap_weight(scan_mask, indio_dev->masklength);
 
 	ret = stm32_adc_conf_scan_seq(indio_dev, scan_mask);
+	pm_runtime_mark_last_busy(dev->parent);
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
@@ -1329,6 +1331,7 @@ static int stm32_adc_debugfs_reg_access(struct iio_dev *indio_dev,
 	else
 		*readval = stm32_adc_readl(adc, reg);
 
+	pm_runtime_mark_last_busy(dev->parent);
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
@@ -1451,6 +1454,7 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
 err_clr_trig:
 	stm32_adc_set_trig(indio_dev, NULL);
 err_pm_put:
+	pm_runtime_mark_last_busy(dev->parent);
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
@@ -1487,6 +1491,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
 	if (stm32_adc_set_trig(indio_dev, NULL))
 		dev_err(&indio_dev->dev, "Can't clear trigger\n");
 
+	pm_runtime_mark_last_busy(dev->parent);
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 }
@@ -1874,6 +1879,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
 		goto err_hw_stop;
 	}
 
+	pm_runtime_mark_last_busy(dev->parent);
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
