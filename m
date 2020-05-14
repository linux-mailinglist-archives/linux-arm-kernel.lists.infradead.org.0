Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0941D3115
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcHpjM6aq8YIL5OQCSvHVi6IhV4IYCsihNLNOhf7Un0=; b=gIZt1hStwxppDS
	X50PXrKoLLr0SRNYiwu1h/WQa04JyfZyReUYFVYx7eF04MgRx8qrtQ5XP1ULArCS2AyhFYmGn6yy7
	uqfXjb0fxfkmOD3JovEXkhN1rVc0BaMXu2MSlAXHsNjzexnEb6L1XclmDPTqZiU2A6Gc8eEpS+85H
	bLBgkME66V9xdLqos2RZ3s/bWrenDT0ODVj2bP7qL3tUBJ5XktC38XvDkUhrV78JRwsnGdkn4d9H4
	r6rNsiTuI9ECJNCf5y2TreTMteihJpSKkOgGGSWLfy/QELdOFpGfVImK0cLZLZ4I9MBYVnpOKllSs
	6ShJwtnFSIuYkplLezOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDl9-000299-FG; Thu, 14 May 2020 13:18:47 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDkE-0001Uf-HO
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:17:52 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04ED9YD5020380; Thu, 14 May 2020 09:17:44 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 3100x5yebe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 09:17:44 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04EDHheX059637
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Thu, 14 May 2020 09:17:43 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:42 -0700
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:26 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Thu, 14 May 2020 06:17:41 -0700
Received: from localhost.localdomain ([10.48.65.12])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04EDHUam017033;
 Thu, 14 May 2020 09:17:37 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 3/8] iio: at91_adc: pass ref to IIO device via param for
 int function
Date: Thu, 14 May 2020 16:17:05 +0300
Message-ID: <20200514131710.84201-4-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514131710.84201-1-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 cotscore=-2147483648 mlxscore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061750_644052_1B404830 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since there will be some changes to how iio_priv_to_dev() is implemented,
it could be that the helper becomes a bit slower, as it will be hidden away
in the IIO core.

For this driver, the IIO device can be passed directly as a parameter to
the at91_ts_sample() function, thus making it immune to the change of
iio_priv_to_dev().
The function gets called in an interrupt context.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/adc/at91_adc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
index 0368b6dc6d60..5999defe47cd 100644
--- a/drivers/iio/adc/at91_adc.c
+++ b/drivers/iio/adc/at91_adc.c
@@ -287,13 +287,12 @@ static void handle_adc_eoc_trigger(int irq, struct iio_dev *idev)
 	}
 }
 
-static int at91_ts_sample(struct at91_adc_state *st)
+static int at91_ts_sample(struct iio_dev *idev, struct at91_adc_state *st)
 {
 	unsigned int xscale, yscale, reg, z1, z2;
 	unsigned int x, y, pres, xpos, ypos;
 	unsigned int rxp = 1;
 	unsigned int factor = 1000;
-	struct iio_dev *idev = iio_priv_to_dev(st);
 
 	unsigned int xyz_mask_bits = st->res;
 	unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;
@@ -449,7 +448,7 @@ static irqreturn_t at91_adc_9x5_interrupt(int irq, void *private)
 
 		if (status & AT91_ADC_ISR_PENS) {
 			/* validate data by pen contact */
-			at91_ts_sample(st);
+			at91_ts_sample(idev, st);
 		} else {
 			/* triggered by event that is no pen contact, just read
 			 * them to clean the interrupt and discard all.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
