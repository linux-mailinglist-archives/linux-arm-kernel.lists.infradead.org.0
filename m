Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76577BF091
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3XwGGo0zxbGP+o2UBu6TZrzHTlQGvIjhwA5mHGqYKE=; b=c9e7TTSX9brlLn
	8/BVUxNVYbpJ5ld4NbQRUT8MtOBCNDvW1aWSVFH4w9thqCI5frRbWTQJAcsrOyOTKwY+nO9Kdghf9
	N6Ew4cXwpxeCUatCFdQgAunyxS1tk4E8G0KDbg9vb6lNCOFXWENJQuF88R/bOAOWUVwA2ukMy6FHH
	3UC0fQ0mg/hV51y7F2N6oPKb/gDSXs4Imhre91fZxW++7ywXkFQ4d5jZMVEJQw44rT502Slp9vYf6
	M/ivRxmBZ5/NIqT9njzrpFR2+RtNXLmlp6NhN4mIyJwOI3ZRpJuWfx7PwpA+K+qzegWbu84n3OZPS
	ofyH10486nbVaGg/fSOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRQN-0000wM-WB; Thu, 26 Sep 2019 10:55:04 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRO8-0006zH-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:46 +0000
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqbYg018188; Thu, 26 Sep 2019 06:52:41 -0400
Received: from nam03-co1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2054.outbound.protection.outlook.com [104.47.40.54])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hkcq434-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:41 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PnZTgvniy2TAyRo4p6Ffs4QNWURMQ78EYY283xmjr0+U2jTHmJX5jBh691W0FSilAddCJBwvXYDx68ssEHq+ZCL9Vd2mpyg8DOttLE5ibJUcyJdXHygwOWbG1ZgbwjvEAfO0hPgChJFcNx+JDPZPjQOfj3H9k/gL3IYhCMspmQh4QPMNW0mHOdvEzAwFSbhYy2Ztg8QQzbzfp+J0rxn28psIMJPJpnXPkb8rTIDcqRrNsRHpqGoC0itRzeKjpPLiVqre6qaIjkeO4AfqMblFT8o0205LHi6Dt4+dxLUtZpHPX1XWsrCyZwj1y4OvuDJISOT69AmcYR+ofMfIEXoxlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w05f36Wri849xiCzTE3iZCvCsD7YL9/WVdiYhFde67U=;
 b=hqsikHl2pUjBMRGE4ScjjgC6OeyUVXg8SqeHJ/yzOMIAeUuR8LNkowL1PGjHQe0VokDp7t69nxHnVlZjGVIkM4a61uPLqd640i7/M7AOsWmSgpZJAyr6uQqEaiytnlpB5IpFmPZ0zBWTZhyo3qdjt6HZ46tHjXkdTcbM2VBSUaw5q0G9sWd5nrxomr/gE+D8GInz+U1pBp08ziNiq6OYY6na4e0f9zj4RMk1A3aWEYcaYAod8Ncs/LN0Y0SwCg55o1OR3S53iX3Ktb1/nc7n1vLfqaPrACy4nYuzPP66PVSdmOqBj5DFbbbseOhZBQhPrAJKKRfCBAOWtem9DrHbLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w05f36Wri849xiCzTE3iZCvCsD7YL9/WVdiYhFde67U=;
 b=SFceQggewwmjjS+NFQPNar42HYkuNKq0ckzW+vOm71vdQWefv8t41Ey3soUDqXj6YIUNqWauMpvxZ303kIWNaeazfel+95FfmJQJmqtt+lsRNoMPI3dhmbNJ7FtGj4S4G/A6AFEwlsefY5vg5OvL1VMtyUdAa+t5WTRswD/AJ0w=
Received: from BY5PR03CA0011.namprd03.prod.outlook.com (2603:10b6:a03:1e0::21)
 by CH2PR03MB5176.namprd03.prod.outlook.com (2603:10b6:610:97::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.17; Thu, 26 Sep
 2019 10:52:39 +0000
Received: from CY1NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by BY5PR03CA0011.outlook.office365.com
 (2603:10b6:a03:1e0::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.17 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:39 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT060.mail.protection.outlook.com (10.152.74.252) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:38 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqcBE014819
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:38 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:37 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 11/19] spi: tegra20-sflash: use to new
 `spi_transfer_delay_exec`
Date: Thu, 26 Sep 2019 13:51:39 +0300
Message-ID: <20190926105147.7839-12-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(396003)(39860400002)(376002)(189003)(199004)(106002)(110136005)(54906003)(246002)(1076003)(8676002)(2870700001)(2906002)(356004)(316002)(4326008)(107886003)(7416002)(446003)(476003)(26005)(426003)(126002)(44832011)(478600001)(48376002)(86362001)(186003)(76176011)(336012)(50466002)(7696005)(36756003)(486006)(51416003)(305945005)(7636002)(2201001)(70206006)(8936002)(2616005)(11346002)(50226002)(47776003)(70586007)(5660300002)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5176; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d447ccc-1b0a-4503-925a-08d7426fa601
X-MS-TrafficTypeDiagnostic: CH2PR03MB5176:
X-Microsoft-Antispam-PRVS: <CH2PR03MB5176B1F133EA192D20A622C0F9860@CH2PR03MB5176.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o/vWeW8jf3g2DylBRygCIbbuFONlhFA5jOhue7SIyFpZHZlTJqOCC5AiIvsCG4L4414W8ALLDkyMKlHIPjrPnX6o2TD/DqfGHRCGwvScegDQ08mXawM4AJfMlcg8Nauwx+PTewcJ1yibydyFwfO0ecVSJyDhWtCC9vOuG82dYo4YmFad/3W6B/dBjxFypOMe9f2yabYt8X2lj3kMsIPcm2ybJV+436YtO38HiENxUqDE0x2bMhDUUmzIZ81+CwNSzGUszXSHwTNdJPZ6T13fG6U7IouXmoEjd1O10ifJBoo4UopmAp/+TBRWoiuUd1Jm0dCeUed3Me+yMxdewq3EYlOS4GXEO0Bne3WiaglKVx+mXgdaDkqG4EFMnwgtC+ICcsi9bR5AcYGprYuN2id9lfOxfgbz13jN2IGFUrrXIeA=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:38.8817 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d447ccc-1b0a-4503-925a-08d7426fa601
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5176
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=999 clxscore=1015 mlxscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035244_437288_2C471E4A 
X-CRM114-Status: GOOD (  13.82  )
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

This conversion to the spi_transfer_delay_exec() helper is not
straightforward, as it seems that when a delay is present, the controller
issues a command, and then a delay is followed.

This change adds support for the new `delay` field which is of type
`spi_delay` and keeps backwards compatibility with the old `delay_usecs`
field.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-tegra20-sflash.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-tegra20-sflash.c b/drivers/spi/spi-tegra20-sflash.c
index cd714a4f52c6..ff1933e55830 100644
--- a/drivers/spi/spi-tegra20-sflash.c
+++ b/drivers/spi/spi-tegra20-sflash.c
@@ -341,10 +341,11 @@ static int tegra_sflash_transfer_one_message(struct spi_master *master,
 			goto exit;
 		}
 		msg->actual_length += xfer->len;
-		if (xfer->cs_change && xfer->delay_usecs) {
+		if (xfer->cs_change &&
+		    (xfer->delay_usecs || xfer->delay.value)) {
 			tegra_sflash_writel(tsd, tsd->def_command_reg,
 					SPI_COMMAND);
-			udelay(xfer->delay_usecs);
+			spi_transfer_delay_exec(xfer);
 		}
 	}
 	ret = 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
