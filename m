Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3851FBF08F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0hUZ2CT+z399OV+vqoczJd4E6FTG6OOy2Q78v7luAM=; b=LMfqxs3eiarFIU
	I++1ms4bg7gw5ZHjNcuWFVY/vpZ9udFpAn6w03aIcZQARvWplBVLfALQ5LMxr549z8WpKH8zTv4yL
	Oy+w82hAoAM2/1ajSdNDAzllOFVksDDMPlyDAn4gd0ABm4hEMdt9ayAVLM0gUFMZqZEMP3uHRQJbQ
	D6/pmsBVWarWofYA3ZJpmpaBSyQ7kbxBL1TyLD8GbdE61Qw9xKSAquK78dL72ZuPeIHUeLnmsrBw5
	+Hm8io4zyQzN3LfxDwXez4mvLcjLBpNGv3Sl3PA+84nyP2qZ/1R/cB6KL5AzHkcFvxrFEh7EiWQG+
	oXA8dKZgwL+WSoGevlrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRQ0-0000TR-Si; Thu, 26 Sep 2019 10:54:40 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRNz-0006pM-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:41 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqQVD030649; Thu, 26 Sep 2019 06:52:32 -0400
Received: from nam05-co1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2058.outbound.protection.outlook.com [104.47.48.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 2v6hjwy806-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:32 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D7IulQTIYHTudY0wcQfSs9t66Hb0z6Dd+1k3kiY8bIletInBaAmNtQhP5luhdeZIRUlSd8U54HM0pBgJx3QfBmYvzQp1QYz5z03usT8bfSJFph/UzZ5u5u1IIuL+sEFMjluHQr3J/QGeTA1C8Xie2DOaSvQL2gkUGNcJUQ9kY57R7qB2pw7k7SVIkoa5noC0H0P1W5UhSGo6PRHBNX184P0OqxZqDI1LXr0eEF5WYoLfTBLnM4pSmcHBeY8WGH+dwPIZ/0lJi961jTy1zTdQNR5EyfD/ZkhnYvDuPiBqnnRfRFhlwb5J9XPIJVLCEQEH2U9lv/VnsFXhvBW51u+y+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9CWvHi3MVOMNti6mf1Jdx+KB+lbj6H+wU8H+9trT/bw=;
 b=lie9FEhDCWOD6yhUJlYn+4s8hQtSBqrDOcQbFoBezhCDsgh8Kmb8v7oltEq1qFyDwHnsdtGNrhrPeSbgA0Gs49lw+qvs1aiuqvPsWtIYeEdianYkFT71NZ2mAzGrB5M9IueMWLk8UWaRHmyKUDwFoXDsN+lUWSARtd+Ck6WoCe+E1G+UbvtEQPAnTgxjDqhxs8JlFGxVN57mjJe9yplYbC2FcHuKQHOVfuVbEDjoWB7j8sT6zxDM6XNRPxWfcoa+QOXHf4QV4SAu6VlNUU8NW08qoISI9huhPE3PZb0SWgfIPXGnqITGnaSYUAeEPLiy0jG15DOBfHpu78/VpayLxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9CWvHi3MVOMNti6mf1Jdx+KB+lbj6H+wU8H+9trT/bw=;
 b=EdjAJCQq4dzkEGM7hxrshiRwwIyElYOb6cyHpNBXE2jmjnq79eTSScSM2ibs7aHw4mHgAA82cowKWKd8jyRXnL0an1ThvTVJnM8gdLDf2IOjZLlpzMsVWelf3+S0IDDqNOm7WP/Z4qn6P9aw/TbB/jvnIazzvaeWQDmHqx8BSMY=
Received: from BN3PR03CA0091.namprd03.prod.outlook.com
 (2a01:111:e400:7a4d::51) by SN6PR03MB4576.namprd03.prod.outlook.com
 (2603:10b6:805:102::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Thu, 26 Sep
 2019 10:52:30 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BN3PR03CA0091.outlook.office365.com
 (2a01:111:e400:7a4d::51) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.15 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:30 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:30 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqUBl014790
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:30 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:29 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 08/19] spi: introduce `delay` field for `spi_transfer` +
 spi_transfer_delay_exec()
Date: Thu, 26 Sep 2019 13:51:36 +0300
Message-ID: <20190926105147.7839-9-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(346002)(199004)(189003)(48376002)(476003)(2616005)(50466002)(7416002)(50226002)(26005)(7696005)(446003)(426003)(11346002)(7636002)(486006)(126002)(51416003)(44832011)(76176011)(47776003)(8676002)(186003)(336012)(246002)(86362001)(305945005)(8936002)(2201001)(4326008)(316002)(70586007)(70206006)(54906003)(106002)(110136005)(5660300002)(36756003)(1076003)(356004)(6666004)(2906002)(107886003)(2870700001)(478600001)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR03MB4576; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 09268031-e77d-4fd7-a3b0-08d7426fa0fa
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:SN6PR03MB4576; 
X-MS-TrafficTypeDiagnostic: SN6PR03MB4576:
X-Microsoft-Antispam-PRVS: <SN6PR03MB4576E14C0615BDD48105DC63F9860@SN6PR03MB4576.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: oW47sOtv14BqCWXczt5YE4mV7B1/+7MZU/WrNXicUO/0SUvXR/wo5i6Z5pGG3ZOezc69mbzZ1CY4MCRA0E5JA3XWkUciH++qk6u8Eclmzqw0nV04zGNacOcPKnQkfuhri5MH64Cd9MHlXl8Tw+26QpZenYW5xZhkXRYIkneiKP3N0S8xESBR0IEqDneR9a9U+am1VK/00vrAjhWOVOr4NTex0z8VkGFz2iYng4O5nJ0yjUoIlBINW2wzzGtP4pH4jxDMczynvdCsrvDmPG+PbUHJHBVXmOXGoeWUyCcYY6fotDZEji+zKycBnv9wSoFWK45ueMxOtPTFPwtb1meaHiXbV7J8Hngab9qncq4YEihZmiOK7h9Buq5/rO/JvYgD7eLIhw2V/XR303LSm1KSinhsWSHudYAiOsD5QY4Y7P4=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:30.5007 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 09268031-e77d-4fd7-a3b0-08d7426fa0fa
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR03MB4576
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 mlxlogscore=999 mlxscore=0 adultscore=0 spamscore=0
 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035235_947839_3D5A756D 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, zhang.lyra@gmail.com,
 linus.walleij@linaro.org, broonie@kernel.org, orsonzhai@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The change introduces the `delay` field to the `spi_transfer` struct as an
`struct spi_delay` type.
This intends to eventually replace `delay_usecs`.

But, since there are many users of `delay_usecs`, this needs some
intermediate work.
A helper called `spi_transfer_delay_exec()` is also added, which maintains
backwards compatibility with `delay_usecs`, by assigning the value to
`delay` if non-zero.
This should maintain backwards compatibility with current users of
`udelay_usecs`.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi.c       |  6 +++---
 include/linux/spi/spi.h | 18 ++++++++++++++++++
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index ba8731b77753..489eb64d9ee0 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1238,8 +1238,7 @@ static int spi_transfer_one_message(struct spi_controller *ctlr,
 		if (msg->status != -EINPROGRESS)
 			goto out;
 
-		if (xfer->delay_usecs)
-			_spi_transfer_delay_ns(xfer->delay_usecs * 1000);
+		spi_transfer_delay_exec(xfer);
 
 		if (xfer->cs_change) {
 			if (list_is_last(&xfer->transfer_list,
@@ -2904,10 +2903,11 @@ struct spi_replaced_transfers *spi_replace_transfers(
 		/* add to list */
 		list_add(&xfer->transfer_list, rxfer->replaced_after);
 
-		/* clear cs_change and delay_usecs for all but the last */
+		/* clear cs_change and delay for all but the last */
 		if (i) {
 			xfer->cs_change = false;
 			xfer->delay_usecs = 0;
+			xfer->delay.value = 0;
 		}
 	}
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index e7ec0be16a82..2cee9ac35737 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -754,6 +754,9 @@ extern void spi_res_release(struct spi_controller *ctlr,
  * @cs_change: affects chipselect after this transfer completes
  * @cs_change_delay: delay between cs deassert and assert when
  *      @cs_change is set and @spi_transfer is not the last in @spi_message
+ * @delay: delay to be introduced after this transfer before
+ *	(optionally) changing the chipselect status, then starting
+ *	the next transfer or completing this @spi_message.
  * @delay_usecs: microseconds to delay after this transfer before
  *	(optionally) changing the chipselect status, then starting
  *	the next transfer or completing this @spi_message.
@@ -843,6 +846,7 @@ struct spi_transfer {
 #define	SPI_NBITS_QUAD		0x04 /* 4bits transfer */
 	u8		bits_per_word;
 	u16		delay_usecs;
+	struct spi_delay	delay;
 	struct spi_delay	cs_change_delay;
 	struct spi_delay	word_delay;
 	u32		speed_hz;
@@ -942,6 +946,20 @@ spi_transfer_del(struct spi_transfer *t)
 	list_del(&t->transfer_list);
 }
 
+static inline int
+spi_transfer_delay_exec(struct spi_transfer *t)
+{
+	struct spi_delay d;
+
+	if (t->delay_usecs) {
+		d.value = t->delay_usecs;
+		d.unit = SPI_DELAY_UNIT_USECS;
+		return spi_delay_exec(&d, NULL);
+	}
+
+	return spi_delay_exec(&t->delay, t);
+}
+
 /**
  * spi_message_init_with_transfers - Initialize spi_message and append transfers
  * @m: spi_message to be initialized
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
