Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B014B952
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcu3fnunVgEAbfOdh5BVltuPd2BaU+zdt9YB1FOwb5E=; b=njEV87rk0nlIuZ
	x5lp9u1QM6VZbmQEmbV/aOU8hQpyMosMm/pnG+Erq9VJ6y8sp3j+0RpcnYqwy/LIVnAE7rf8/ZoGp
	mAnHPxW0DPrL7UjkSQQ292b21iNJt5NSQ67gmRG+b3dYDJO7Vw86sDD013UxJ1li7eqkCYiXlWvby
	nc2tt//Qaw8QCnipCHKafG0kDBtumRU+YxvRrGa9QHNC97rhrlQFYcyAkZZEyiDO6uaXtaYHqPmAp
	IOSeYMCRfSioCtvdsjMuRLUQc5j+fYAJ3CHU4MKJvSbPjbuQ6pLdfe0IVMBJ3HlY7b6MLPcz1UhxH
	3kL0yzjIfh8cl9FpyAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaGy-0000lt-LQ; Wed, 19 Jun 2019 13:05:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaFx-0000DV-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:04:06 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCu4JD023632; Wed, 19 Jun 2019 15:03:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Snd2JSaEu7Z6XLdmFflA+YpQRWPbEmDirJH8rOIN+Hg=;
 b=gC2g+F4FLTf8VKpowhrkPjLvh3D1Z8GAwMlQcrwkCJqInZztHxLKi7EiFOGIcoW/A0cL
 8qsClG8aWxwyaxd89UcdM43p0QwEZiFKeuAqzkvXm/7AX7654e6Oi3VztmklY/ptDJ+Z
 ON680YGi/YAgsylciwmqJxfMhGQl+Zcujqu5qegb6YZNYEaJW9zSpAI00nCPkTc4WgVs
 JjSH9/rKKd4mn3knLbjuJfJPNAHl9H6OYJYKQstqcgim0+rMWdMXFBrGcDnYmfDH60dh
 yXu4eSrkGkzxLufxNpNl4FCKC1B1kzHH4X+XNHxz7QZivq5DI7HLCL+SwW583U7btRVG /A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7813c0a8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 15:03:57 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 639B631;
 Wed, 19 Jun 2019 13:03:57 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 42B362831;
 Wed, 19 Jun 2019 13:03:57 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun
 2019 15:03:57 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun 2019 15:03:56
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 2/5] iio: adc: stm32-dfsdm: fix data type
Date: Wed, 19 Jun 2019 15:03:48 +0200
Message-ID: <1560949431-22948-3-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_060405_537846_CF1FF26E 
X-CRM114-Status: GOOD (  14.34  )
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

Fix the data type as DFSDM raw output is complements 2,
24bits left aligned in a 32-bit register.
This change does not affect AUDIO path
- Set data as signed for IIO (as for AUDIO)
- Set 8 bit right shift for IIO.
The 8 LSBs bits of data contains channel info and are masked.

Fixes: e2e6771c6462 ("IIO: ADC: add STM32 DFSDM sigma delta ADC support")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index cb596f104919..6b90a40882f2 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -1365,11 +1365,11 @@ static int stm32_dfsdm_adc_chan_init_one(struct iio_dev *indio_dev,
 					BIT(IIO_CHAN_INFO_SAMP_FREQ);
 
 	if (adc->dev_data->type == DFSDM_AUDIO) {
-		ch->scan_type.sign = 's';
 		ch->ext_info = dfsdm_adc_audio_ext_info;
 	} else {
-		ch->scan_type.sign = 'u';
+		ch->scan_type.shift = 8;
 	}
+	ch->scan_type.sign = 's';
 	ch->scan_type.realbits = 24;
 	ch->scan_type.storagebits = 32;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
