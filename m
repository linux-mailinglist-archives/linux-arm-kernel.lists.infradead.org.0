Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7125ABF03D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0Qd2wf3whEYWqP7rLryfJ1joFUEa96+SEIcFtkIUGM=; b=NN9OysvQ9KgA8o
	Wz4xeunkB6hidNRSCAOR1Sum6W0FwD3dafFTZxMevt6Fa9IzrLZIj2CVPPFKTkHJA5olAlaz3EKCR
	E3ljjP0doIvfX6jVCaLVX5smQMPCv7ziu3KP7etVbVss775UkPoOhpBZ1o5YDfDGWSdKYyUPslEPy
	zkBsP2MbifdCsDlkRJ/jbWpBeCpMGXGKYz3TbSAWyARpwEAHLCPhgROBupJJobtSXqbdcP+pWqzKj
	NsVbGznj/wFAK4dw8mY72E6aKSmi7dJU+l27l8qPYgmTfpy8xFXewj9bupFWi4G3r9LpraMjoTPS+
	BnDweAofMhG/OuBZ2AZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDROz-0007kx-E0; Thu, 26 Sep 2019 10:53:37 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRNr-0006ds-3I
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:28 +0000
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqOMk018153; Thu, 26 Sep 2019 06:52:24 -0400
Received: from nam05-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2057.outbound.protection.outlook.com [104.47.49.57])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hkcq42n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gR8zBNS0wbljdByvXEakEGRty63II+RZq2/KQE2Cd22XARWP+xtFam1t4k837lJvYsw7S/hoCjkHUJmkQrO37Kj091fPMYtd8pW0Nfgey2gGDlZlbKKhnd4kZNnbrLeVRNN55CpEF8RY79ZbYxCmQIk6t8/7auk7ac9XwxsA9yROchG6f7c4UTqc4nnLftY7ugvssJe28npLcBC7RR2C+xQrhIyaYy4roSpATaVBBPJ71gWJouM0ZG/ff+C/CN4ZYP5xZLXhpHhs8zOsbbnRj7S8Ry0NAPGLU6ddKzCVvl7gQm+1DzgMuxrSg0FTNW5oKMZuSkbqh+eRs/SbfjvOIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tAthPJJ00Md+QA2VffHOABt3RVqF/+sx3EiB52xHYc=;
 b=NhNCQXHOXiAzkKIjcza33fSbEtYNX/wuMIh2U/lA1ZSqUzestapjUk8fqT0eNAV2zpiWamfse7Webdg3ftt0fpF9AaaRun6T94MFMqBFHNhwpz8DMTzzc7x1LBFjqGEvXrvC17IZRdvBHE1JH9Ox5DbjQqkzlrBOaMK9UcizqGB4RvcYhiWcF5bi7yKTJ3i+FEywI2UKnaCIrsuMNZc6E/KGa0xBAPplEFoOMJw13xH2xL3CI+IecjIHUX5FX7UiZsqdXEipXydyxvLsfeDgxhqU6n159eplvnNFLw7vyVAgcJJb//yUi7uf3SMqbIEyvn/A3G1evjb7cal1wBz5Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tAthPJJ00Md+QA2VffHOABt3RVqF/+sx3EiB52xHYc=;
 b=GiAG1xXzfAAGZWwS2CyyRhpjH3rrMgkYfFXtYttpzIUYM4jMxQRBsNOG01w0hjA2MNj1SvUHIaRCVXDCXn7RBZ8SlhnB1iKzbWcwOCDqak3INA/VvFtZg4Kt+dVnoilRuS/2Q5DeWGQ4r5tPXz1dlZ/aJsbWZzRlS+GxXz1KONY=
Received: from BN6PR03CA0062.namprd03.prod.outlook.com (2603:10b6:404:4c::24)
 by DM6PR03MB4060.namprd03.prod.outlook.com (2603:10b6:5:58::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Thu, 26 Sep
 2019 10:52:22 +0000
Received: from BL2NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by BN6PR03CA0062.outlook.office365.com
 (2603:10b6:404:4c::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.17 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:22 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT006.mail.protection.outlook.com (10.152.76.239) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:22 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqMua014780
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:22 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:21 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 05/19] spi: orion: use new `word_delay` field for SPI
 transfers
Date: Thu, 26 Sep 2019 13:51:33 +0300
Message-ID: <20190926105147.7839-6-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(39860400002)(376002)(396003)(199004)(189003)(7696005)(4326008)(6666004)(2870700001)(8936002)(426003)(47776003)(50226002)(336012)(356004)(8676002)(478600001)(246002)(26005)(50466002)(106002)(54906003)(1076003)(110136005)(36756003)(7416002)(316002)(305945005)(107886003)(186003)(70206006)(70586007)(7636002)(11346002)(446003)(5660300002)(2616005)(48376002)(476003)(2906002)(76176011)(86362001)(51416003)(44832011)(486006)(2201001)(126002)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB4060; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2bcd76e0-d2ef-4d25-ce3e-08d7426f9c17
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:DM6PR03MB4060; 
X-MS-TrafficTypeDiagnostic: DM6PR03MB4060:
X-Microsoft-Antispam-PRVS: <DM6PR03MB406099E9C929D167171CC22FF9860@DM6PR03MB4060.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 1OpzoA/edLOxmzdA6HaYRvqMt+AdjAuHaf1Wo9pE/7s6BSHpEE6gjpkdbi4YTOwp6YCNldkig8xenRErpwgJHZLzVnPLtuY885zLnKJ9HiRizMCZza/9v3ghV+a7mcvkf0/Zyfq7AGseddy6d7LeG1FTerIPbXACigxSS3MZHCIJVDar/CEVhaepbpP92VeNqOAS6HPvvtZGd1VgRU05vrA/tkJcEyHtyHWcU6Hg0xeDObiRcBHYmPNH2B/1+03Bg/1jPwfhheyR9eSItvHBZFroWJZNxc+udFgpkzryaTSKaEfD52hk3cLjTykdgb1GnhtMKy1lgcuVQzpHTD4XM6Rweeil4Rbtxg1/mQQss0okN9AcIwpVGYUukzsCQNTbRVs4/jao1onxR+DuSp5DB1YbNvhYt6MaplKuHy/f+T8=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:22.3242 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bcd76e0-d2ef-4d25-ce3e-08d7426f9c17
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4060
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=844 clxscore=1015 mlxscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035227_267568_3A9CED82 
X-CRM114-Status: GOOD (  10.68  )
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

Converting to use `word_delay` is straightforward: it just uses the new
`spi_delay_exec()` routine, that handles the `unit` part.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-orion.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-orion.c b/drivers/spi/spi-orion.c
index 6643ccdc2508..756c37e32dfe 100644
--- a/drivers/spi/spi-orion.c
+++ b/drivers/spi/spi-orion.c
@@ -467,8 +467,7 @@ orion_spi_write_read(struct spi_device *spi, struct spi_transfer *xfer)
 			if (orion_spi_write_read_8bit(spi, &tx, &rx) < 0)
 				goto out;
 			count--;
-			if (xfer->word_delay_usecs)
-				udelay(xfer->word_delay_usecs);
+			spi_delay_exec(&xfer->word_delay, xfer);
 		} while (count);
 	} else if (word_len == 16) {
 		const u16 *tx = xfer->tx_buf;
@@ -478,8 +477,7 @@ orion_spi_write_read(struct spi_device *spi, struct spi_transfer *xfer)
 			if (orion_spi_write_read_16bit(spi, &tx, &rx) < 0)
 				goto out;
 			count -= 2;
-			if (xfer->word_delay_usecs)
-				udelay(xfer->word_delay_usecs);
+			spi_delay_exec(&xfer->word_delay, xfer);
 		} while (count);
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
