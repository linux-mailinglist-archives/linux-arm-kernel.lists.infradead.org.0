Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662CDB1A1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogRIh0B4dJT4ulfP//rrxImsBa7IXy5TbAwSbiCaXbQ=; b=m9+3af1YMMjDkO
	CRsC8Xa06dDpuzQ03gbcnMdbzM5jVDnjuyQ72FeXOI+M3ztY44kLlsZHsjSt90PbfU/959VJozAiw
	gJHfXNufu6M1UT04qfKSs9NRQsCYPl8MWTPs17zwjfTKHjf7Ky1bqXjr97ndKqqTefL699JxcW8op
	kl0sgHPep5wmctmVxHDvW84jAXa4egH5qjIOLj+Te4haHmh03JY2mTBb87OahI6lrYrzbgfwyjwV+
	sRl33/hsG4pkyytOV72ilkg7aoDw8OSn3Cq8lI1mzngSP3xFOM+F+Bt+UYg9JrtMZ5wzFQ7PDHfgK
	D6gilopuqOMHa9A66stg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hGw-0005B2-UY; Fri, 13 Sep 2019 08:49:43 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hDt-0002jC-GC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:46:36 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8D8gaAe015972; Fri, 13 Sep 2019 04:46:31 -0400
Received: from nam03-co1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2052.outbound.protection.outlook.com [104.47.40.52])
 by mx0a-00128a01.pphosted.com with ESMTP id 2uytdksa6f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 13 Sep 2019 04:46:31 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GU0bJwiEo2gLUAlSjbI0/SV8Q94Dn8AYc6NL+7MlXoZ4UtCOJ3vNoLaXSHukye8xJ1/2Y6ojk4uwYwuOLidHq9NmqZy4k18ko8oDiSbtK9zOkOL2gujo865HilWXg18UovWAwx7I+vZ9UtV81PCzmXNGQmXWOGhEC2eWgH0Wan42Ra6Tqc0YjiiADbZDMXBnkCdgceeLPuhv6jfZ85i1nW1XKpL3zoMUvTr+lw1t/XyF22l/xQqaiz+aCH77q/85nspnmqrcEOlgWSP9X2OZCUDf2JxWjxG03wvMRq0A7BoCunET534xjj/VKEgVRoyWwb2XeNo8bYuL5ox4bGiBjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZSDTjpFf1yZc16/IDU9rKofLB8/ySMkTzgyv2YEtVU=;
 b=fmqdr89Pys4zAwQ+l8WzDY1Zj3UJMglpgqLiSnbi9B5cRWiFenKMTAY2w7CP7ajG8n0ERE9aOROIUyzuC7j+opboyHDVzXA9TNkW6JpeOYPoYRh4GAxJHF2NPfUqXUM+91hBktRC6PzrwO3nQ5pHLjMSs5zNERoBkl93mfDH9bMnwiDUkg/zvUUUBF1UeMUE0V2kq6qKG3ynRtq1BG/3FXQE5pDC/Pd1Ee+nZYpNW4DEgWCLx3YJUsGDbe3r62BNimd+1znMb/kBnfNNb8GtsyHADWCK7Pp8OoCxJwf+tKip8rSxgL6kT0rfCTOAdoZiuggX260BBJhbRmZ9UDSoZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZSDTjpFf1yZc16/IDU9rKofLB8/ySMkTzgyv2YEtVU=;
 b=zQZu59kf//DDNYsEcv1ThQzjxknwdaZZDdH97quPqqBAuC6jMIVnYvaS+pxv/pMVDmi1YQJwKzmpkXsOwm3y4GTYsZ0lVvAQfJyHG6zTAB0Mbin4gnM3+2+1ZYthebkETdAMkUCFv8mUYHGjN6QB1YjtBMwugrs7eCxshkb6x8k=
Received: from DM5PR03CA0049.namprd03.prod.outlook.com (2603:10b6:4:3b::38) by
 DM6PR03MB3611.namprd03.prod.outlook.com (2603:10b6:5:b6::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 13 Sep 2019 08:46:29 +0000
Received: from CY1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by DM5PR03CA0049.outlook.office365.com
 (2603:10b6:4:3b::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16 via Frontend
 Transport; Fri, 13 Sep 2019 08:46:29 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT008.mail.protection.outlook.com (10.152.75.59) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2263.17
 via Frontend Transport; Fri, 13 Sep 2019 08:46:28 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8D8kNKJ030677
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 13 Sep 2019 01:46:23 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Fri, 13 Sep 2019 04:46:27 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-spi@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bcm-kernel-feedback-list@broadcom.com>
Subject: [RFC PATCH 07/15] spi: spidev: use new `word_delay` field for spi
 transfers
Date: Fri, 13 Sep 2019 14:45:42 +0300
Message-ID: <20190913114550.956-8-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190913114550.956-1-alexandru.ardelean@analog.com>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(136003)(376002)(199004)(189003)(186003)(48376002)(8936002)(50226002)(336012)(426003)(126002)(446003)(476003)(86362001)(2201001)(2616005)(2870700001)(11346002)(7696005)(51416003)(76176011)(5660300002)(36756003)(6666004)(106002)(50466002)(486006)(26005)(54906003)(316002)(110136005)(1076003)(47776003)(70586007)(4326008)(44832011)(246002)(356004)(70206006)(8676002)(14444005)(2906002)(478600001)(305945005)(7636002)(7416002)(107886003)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB3611; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 392e077a-1c0d-483a-8f05-08d73826de8f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:DM6PR03MB3611; 
X-MS-TrafficTypeDiagnostic: DM6PR03MB3611:
X-Microsoft-Antispam-PRVS: <DM6PR03MB36119F85B67AEAF263FE65E9F9B30@DM6PR03MB3611.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0159AC2B97
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: MvMnJZpD4UA27SawFtG1rCdEBzPabJd69SyMjrwoaQxTUXwnAJM5MksW/gV2+HtN58VFoDk7L25JWxILcSa6z9D6sx8B5O0hHyCX+b3PAmxflgSbvBEmN9bLlu+Z4TpwewWbvampLgMnKATAtaLt4lauoOEDfqkF1CyeQ5M+lkfToO1n/4gpUwEESG2FC8Ekwa8U8tVItUVXMQQeO8wnb8CFJb6jFKDec5ms11ewWchEY5/QIzuEA4dEO1EMxkLib5PxyZYgMuf/bC5J1fiTRIE1IgxSBLSO8hfzthRplJnB8xo+BdYmzDE7QJPPxf/d/VW0kI7wWdjfKs/ZIJAAT+PxyPZaONtuqC8q6Kj5JrgzRkk4T1tRl06onMkutmzLe6gx0rr3mb7YbM5YYzFJmsqMhMUy+QJFTL6BdcoWQO8=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2019 08:46:28.8756 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 392e077a-1c0d-483a-8f05-08d73826de8f
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3611
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_05:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 bulkscore=0 mlxlogscore=769 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 mlxscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_014633_700023_2AC7697D 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The `word_delay` field had it's type changed to `struct spi_delay`.
This allows users to specify nano-second or clock-cycle delays (if needed).

Converting to use `word_delay` is straightforward: it's just assigning the
value to `word_delay.value` and hard-coding the `word_delay.unit` to
`SPI_DELAY_UNIT_USECS`

This keeps the uapi for spidev un-changed. Changing it can be part of
another changeset and discussion.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spidev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
index 255786f2e844..495319c2fa11 100644
--- a/drivers/spi/spidev.c
+++ b/drivers/spi/spidev.c
@@ -267,7 +267,8 @@ static int spidev_message(struct spidev_data *spidev,
 		k_tmp->bits_per_word = u_tmp->bits_per_word;
 		k_tmp->delay_usecs = u_tmp->delay_usecs;
 		k_tmp->speed_hz = u_tmp->speed_hz;
-		k_tmp->word_delay_usecs = u_tmp->word_delay_usecs;
+		k_tmp->word_delay.value = u_tmp->word_delay_usecs;
+		k_tmp->word_delay.unit = SPI_DELAY_UNIT_USECS;
 		if (!k_tmp->speed_hz)
 			k_tmp->speed_hz = spidev->speed_hz;
 #ifdef VERBOSE
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
