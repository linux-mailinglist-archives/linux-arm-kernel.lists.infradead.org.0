Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1794B95F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAEgVM2JPSf5WtivcKOS9uK/svV44106ab1sRiNbfk8=; b=E2+PajfdS8iJXj
	+BaUluzHTpDbIe5yohSUrBsINM87rgs/gMLJXPsKI57kmRT75Kqea1qeY/mdspFb1EKA2k5tIoY2x
	BqNA08/BaKpGqLhJIQula8HZNbGGjsoIp8pIeaOxBAlfTCl2KaaMCUZ6IcdqL2zBwyT9i5tFG9vV3
	6oqNrgNRFaj5w7aLFJqEu5ywrI7VkkoRgCxOTj9rEzovkDaj0oaVjO53yCIg+YKVF+RwUf6wfcf/N
	m/zqI4XXRKHBSwONhl+OXdQUTOAwt/zGYkS5zUkzugEqAsjPJYzlxajjTTBKf5r2XopQGtadmL1sr
	26czxC4Uo13oxfxoKIUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaHS-0002Uz-UB; Wed, 19 Jun 2019 13:05:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaFy-0000F1-JX
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:04:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCuBJM023659; Wed, 19 Jun 2019 15:04:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=C0tl/h814D0dle+nbGO9SjbYs9XOpojrEDl6X9DrGZk=;
 b=C+5wGk3MVghtvj2ZPqHqBd879zWEVlGy1+cHcWHfZJLamn5UpaeJmy76ZytA6VbsysO2
 wux/QZZQWvad9ncNuWbKycEIZ5VTNtlIFpHb8NROBbs3Ef+n8EDgmBUKzijO7FMDYNXo
 Ung3f4qZmquXtoya/lHjHlSpRujkcTr46nF97aXbZxZHqA2GGS0hgsI5NYGgNrCleTPI
 SVl8lSHSfHlivocxiKtIooseqkw+O+q1JGnhjoO6CS9xLVljcSwPSrVA9b432Uufh087
 Avjl83tOnvAbxtkEisTzNd+H/gXMapOHcAh9FSEWdIHCOJ9089S5SyfW6Vhr9kA7WnBi /A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7813c0ah-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 15:04:01 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3BE8938;
 Wed, 19 Jun 2019 13:03:59 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1D6B92835;
 Wed, 19 Jun 2019 13:03:59 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun
 2019 15:03:59 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun 2019 15:03:58
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 3/5] iio: adc: stm32-dfsdm: manage data resolution in trigger
 mode
Date: Wed, 19 Jun 2019 15:03:49 +0200
Message-ID: <1560949431-22948-4-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_060407_042203_E1B8009E 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Add output sample resolution management in scan mode.
Add stm32_dfsdm_process_data() function to share sample
processing between continuous and trigger modes.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 41 ++++++++++++++++++++++++++-------------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 6b90a40882f2..5b19a88412a6 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -779,6 +779,30 @@ static unsigned int stm32_dfsdm_adc_dma_residue(struct stm32_dfsdm_adc *adc)
 	return 0;
 }
 
+static inline void stm32_dfsdm_process_data(struct stm32_dfsdm_adc *adc,
+					    s32 *buffer)
+{
+	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
+	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
+	unsigned int i = adc->nconv;
+	s32 *ptr = buffer;
+
+	while (i--) {
+		/* Mask 8 LSB that contains the channel ID */
+		*ptr &= 0xFFFFFF00;
+		/* Convert 2^(n-1) sample to 2^(n-1)-1 to avoid wrap-around */
+		if (*ptr > flo->max)
+			*ptr -= 1;
+		/*
+		 * Samples from filter are retrieved with 23 bits resolution
+		 * or less. Shift left to align MSB on 24 bits.
+		 */
+		*ptr <<= flo->lshift;
+
+		ptr++;
+	}
+}
+
 static irqreturn_t stm32_dfsdm_adc_trigger_handler(int irq, void *p)
 {
 	struct iio_poll_func *pf = p;
@@ -787,7 +811,9 @@ static irqreturn_t stm32_dfsdm_adc_trigger_handler(int irq, void *p)
 	int available = stm32_dfsdm_adc_dma_residue(adc);
 
 	while (available >= indio_dev->scan_bytes) {
-		u32 *buffer = (u32 *)&adc->rx_buf[adc->bufi];
+		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];
+
+		stm32_dfsdm_process_data(adc, buffer);
 
 		iio_push_to_buffers_with_timestamp(indio_dev, buffer,
 						   pf->timestamp);
@@ -806,8 +832,6 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
 {
 	struct iio_dev *indio_dev = data;
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
-	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
-	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
 	int available = stm32_dfsdm_adc_dma_residue(adc);
 	size_t old_pos;
 
@@ -832,16 +856,7 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
 	while (available >= indio_dev->scan_bytes) {
 		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];
 
-		/* Mask 8 LSB that contains the channel ID */
-		*buffer &= 0xFFFFFF00;
-		/* Convert 2^(n-1) sample to 2^(n-1)-1 to avoid wrap-around */
-		if (*buffer > flo->max)
-			*buffer -= 1;
-		/*
-		 * Samples from filter are retrieved with 23 bits resolution
-		 * or less. Shift left to align MSB on 24 bits.
-		 */
-		*buffer <<= flo->lshift;
+		stm32_dfsdm_process_data(adc, buffer);
 
 		available -= indio_dev->scan_bytes;
 		adc->bufi += indio_dev->scan_bytes;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
