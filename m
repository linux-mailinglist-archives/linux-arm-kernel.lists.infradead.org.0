Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2D310AFF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 14:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bk2YIBVVc24CLyCaLHE/945eVOupTyM+9XwLbpJEVvw=; b=rYLsjIhFysbWl7
	qXoXVl0orw/UineknTjvJV3i80X7cHLBHgst97nQEJzEKI7ST9GkNMf9NRFEW2kZY/UOZZc6OaPCE
	eJBM12Ii0tq/idoGX+FcKCHzI1wBjfumHvQSe5yl+QfKhtbGr4ADFOI0Xe/NAoLPJFI1fSLWFA2Yc
	PWJNi3wwe4cZ5oUVUggd7V809zsTCLwL9IJgXWMm6qh0udCZX6MXrPT+05c6tYpNak8Hpwj7Jxbpr
	mWTR8+UmhJlPFhLWFOV2yH9/w/siYyH/gWC6ioz147nrxCJl+Y61FIQfOQDyF6F3hi4jKYsko6+bB
	7gM0jetLoIIMl7JdVQmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZx5a-0005zr-Ke; Wed, 27 Nov 2019 13:10:38 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZx5P-0005zT-Sb
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 13:10:29 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARD7OtN030867; Wed, 27 Nov 2019 14:10:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=igm3D/p5FLqgRVPoSI6/qpaaV5+h4X7oZSLPmG0YbEs=;
 b=Pl4afNHN1aK10wyyNGAR27PgIqU77ofhi97vGCRs4bix8f9y69Qpw3uz/P9pac/RAulQ
 bblmjkI5VI7Asio9kHK7jCtpAhQTvDygYIq6FKSI5ud3AIBJ+/hPAjX6Lxenj2yLgJ7O
 Lj2897qrdAo4t2Y4GEl/UPr9sq1/H3eVBqmQvU6BmdgMWR3HG5aPAFSWvDqwSLQhPlXW
 kegyo5tXrfG8McywOXcQ5Imi1kxzGBJvjyIjym7e/HTjA7sKESKhCYhlD181KUmcfrmb
 urksOvSikTwc/mBeKMB+bWOIwpCOPEzcMBTkDOojhyJOdM9e0Uvv/Oa5Xm1KS145YXX8 HQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxybt1q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 14:10:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 76DC5100034;
 Wed, 27 Nov 2019 14:10:22 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 58DA82B8B2C;
 Wed, 27 Nov 2019 14:10:22 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Wed, 27 Nov 2019 14:10:21 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH v2] iio: adc: stm32-dfsdm: adapt sampling rate to oversampling
 ratio
Date: Wed, 27 Nov 2019 14:10:08 +0100
Message-ID: <20191127131008.18896-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_051028_205776_33C721EF 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update sampling rate when oversampling ratio is changed
through the IIO ABI.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
changes in version 2:
- correct title
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 32 ++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 0339ecdd06bd..87a842507509 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -1221,14 +1221,32 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
 	unsigned int spi_freq;
 	int ret = -EINVAL;
 
+	switch (ch->src) {
+	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
+		spi_freq = adc->dfsdm->spi_master_freq;
+		break;
+	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
+	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
+		spi_freq = adc->dfsdm->spi_master_freq / 2;
+		break;
+	default:
+		spi_freq = adc->spi_freq;
+	}
+
 	switch (mask) {
 	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
 		ret = iio_device_claim_direct_mode(indio_dev);
 		if (ret)
 			return ret;
+
 		ret = stm32_dfsdm_compute_all_osrs(indio_dev, val);
-		if (!ret)
+		if (!ret) {
+			dev_dbg(&indio_dev->dev,
+				"Sampling rate changed from (%u) to (%u)\n",
+				adc->sample_freq, spi_freq / val);
 			adc->oversamp = val;
+			adc->sample_freq = spi_freq / val;
+		}
 		iio_device_release_direct_mode(indio_dev);
 		return ret;
 
@@ -1240,18 +1258,6 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
 		if (ret)
 			return ret;
 
-		switch (ch->src) {
-		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
-			spi_freq = adc->dfsdm->spi_master_freq;
-			break;
-		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
-		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
-			spi_freq = adc->dfsdm->spi_master_freq / 2;
-			break;
-		default:
-			spi_freq = adc->spi_freq;
-		}
-
 		ret = dfsdm_adc_set_samp_freq(indio_dev, val, spi_freq);
 		iio_device_release_direct_mode(indio_dev);
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
