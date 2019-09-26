Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C06BF073
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogRIh0B4dJT4ulfP//rrxImsBa7IXy5TbAwSbiCaXbQ=; b=ag9t7v0Wm7GIIY
	XXvKYLb3MxLOIynOuhk8qYNpTqwEuHojS8oA7R0kRwu2mecBMAM8FE0aR+VqouvqjzMw0/ht+///d
	QStR/Tutz71p0QKwYbI9hSoaKdokcvmuXTbcSa8R5/rm0kAaie/BZmDZ+wiKeLppKqtsaNEnrgPhZ
	Qpeq+FHa7D8sRhqONRX9iSHznBcoNvtsmDJ5tiAzGQI2nX9sAV7chOjibXAzP50a0k0hPWmqfYHHV
	W6OlanaFtsI/IPesQ7IDme0BQN7TCcKNmwq1Str0qFWxFLBF2clpFmUWGI3JNy4kZoVqB+EWaucxG
	zbmGs2r/KKxPFSXp/BKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRPO-00089y-Eu; Thu, 26 Sep 2019 10:54:02 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRNu-0006iT-1i
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:31 +0000
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqK8w018025; Thu, 26 Sep 2019 06:52:27 -0400
Received: from nam04-co1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2051.outbound.protection.outlook.com [104.47.45.51])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hkcq42r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VuiObLVFWIH8R+zPSXWYQTaB/IS6BTeVLQfwDz/Uw5dF/Ky1axR9tb0HBdobg9jn2d8Lm3x3kCRPFiZqWGeizN3hHUfcUNO6JpFWJ1kuemLAmk9GNnZpcaZETIlnFYFe8H6g7kCIU23R+Gqt5nBKJF0F1UKuOeU6/GzUHG4jXzVSQx9QEe0WavgdpEVe9cJEAqKerNqTb6RFKzT2NiW+nZx/t1KxTRXMaaQCUI9+Dq3ss68Wi5Fam1hu9FVnPoeuOoTM5Ew0tiIeSKRZGcjWa6YDpcf7fF66cJCKt2xVFnIz7V6QeEsSt47T7nSZrhQThOGfNnt8dXUo8QDlJSFpRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZSDTjpFf1yZc16/IDU9rKofLB8/ySMkTzgyv2YEtVU=;
 b=ILhWqc7/I//UxjXMhmx25943O+u0JUQXD32he69xBgvy6tEnN08QorUT8VERVyI43Di8Rb7Vf27z2cxy9Cx96uONTQI2b1vrJGLKfdwJVuvUU8+qW4R30qGWVlFsWAvg+svnEarewQM02RL5R8coUAZVAZkN2rj8yMQ3ec37VpNkJxIq09X0/fnTMM6xU9ylECLaP278dtGv0bhJpJezlAekpIkuiAMpB56xuzz5/Q4QOYZr6ET3vI15LgxtfAvKzTkHOqtK/xJRM2OvAnrE47umrNPZoSNzJmyoyriScWPy0x5HJlUimVGa1tyI4zz2sP4yhQBzbUTMLPj5Z2zPjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZSDTjpFf1yZc16/IDU9rKofLB8/ySMkTzgyv2YEtVU=;
 b=AU6fKjkKbLy4QQlyboEYZfdDek4Atj5xRo0308bLyckSBzGk6/ZBSRLudYK5h/BT4UxPMiLsIdKFepaz/5fbCa+CrGlMf9VYADK1gBhPDMavN/OXJcAtYIvnWPiOJbNtsETnK3XPrp3jWyE22Eq8JlMFzTIZcR6Gt7r+eeEttmk=
Received: from BY5PR03CA0006.namprd03.prod.outlook.com (2603:10b6:a03:1e0::16)
 by DM6PR03MB4586.namprd03.prod.outlook.com (2603:10b6:5:10d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.16; Thu, 26 Sep
 2019 10:52:25 +0000
Received: from BL2NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by BY5PR03CA0006.outlook.office365.com
 (2603:10b6:a03:1e0::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.16 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:25 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT063.mail.protection.outlook.com (10.152.77.121) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:25 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqO36014783
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:24 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:24 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 06/19] spi: spidev: use new `word_delay` field for spi
 transfers
Date: Thu, 26 Sep 2019 13:51:34 +0300
Message-ID: <20190926105147.7839-7-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(7636002)(486006)(316002)(446003)(54906003)(110136005)(4326008)(107886003)(47776003)(5660300002)(6666004)(70586007)(14444005)(1076003)(106002)(356004)(8676002)(86362001)(246002)(70206006)(478600001)(50226002)(186003)(36756003)(76176011)(7696005)(476003)(8936002)(2201001)(26005)(44832011)(7416002)(48376002)(2616005)(336012)(426003)(51416003)(11346002)(2906002)(305945005)(2870700001)(126002)(50466002)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB4586; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17d4d245-1810-453e-f709-08d7426f9dca
X-MS-TrafficTypeDiagnostic: DM6PR03MB4586:
X-Microsoft-Antispam-PRVS: <DM6PR03MB4586C21150B02A1B8C06C3D8F9860@DM6PR03MB4586.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4qMMVN+5h7/8qNcUAsVm+uWzMw8tFPuL6L5ti0nKyORksrCX6oeHwITN1XMyL/b8YKREkY0TIx467Z950EDJyVK8tTMZt3mfHYKB8X1mm/V55z9lgBxk14qn0yx95WeU88gf77gJFM2Z+IR0ont/twN3V1zDuPNu0xHtO28gdr30KBudn9s3WRGLUwjrlCM+ka1a0ZyB+3KZEiGwG7Uf51KXWAXUY8nw+b7H6CfbNHCEHm+I5BHHteTov0lnuEUOqQRlHtwi5rwrAjWs4AJV7uehy+hdTviXaUWL7cNAdBJAj62+Cq9ug2CC+xTAMSlDlMKa62g0uCCIANwnT6I/B1nFqTQ8VrgUj1MmVCr6YIvUP3n4fufq7e+jF4YV8ZiqduO+fiYNMYLClVRPeZMCGS03nAKI0FZQ0HRaTGqNdr4=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:25.1781 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d4d245-1810-453e-f709-08d7426f9dca
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4586
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=808 clxscore=1015 mlxscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035230_243492_F6E51C38 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
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
