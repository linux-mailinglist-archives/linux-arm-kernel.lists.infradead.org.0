Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F7BF09F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVS6diVqGaxtDcNPtUqG0V2SPQE+oQ9nNsIBjRKqVPY=; b=fxnUux1kC6ci76
	0bZ0gtCwEXnjo7WxIEgy23zL5ipa0uZDnCnaRESU354poDxI561XydhgDbQ6swJqFaA7gwEAN3roT
	XT/TW7U0q+jMg+Zet+XRFbzpN2bfp09HhOMcvkAa3kEhdRgJX8X/HrDN6QyNONeSAMu7Qy0mRteVB
	AzfDYtefU5RAuxhEOU5f0qKjAG81gfnPY7tyIQ8pH2L0olt3S4TYJKcbN+Ydl0wh+fTBhGYOmuX4F
	nEmG4k/csq5D6Y5JFxPcUxsWxdHH9+Bv1FFg5tGS9zDpzicxIC6/j1ThS4GU4BQbExl8yTkEolAdn
	Y83aCkzqA8E4SMGMnQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRRb-0003qL-Lg; Thu, 26 Sep 2019 10:56:19 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDROP-0007Ib-5g
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:53:03 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqQVI030649; Thu, 26 Sep 2019 06:52:58 -0400
Received: from nam05-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2050.outbound.protection.outlook.com [104.47.49.50])
 by mx0a-00128a01.pphosted.com with ESMTP id 2v6hjwy81d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vc8wJnKFPXus7ru8slLpkicgVv3DnDF//aPeWAVbB/WAWbISB9TMiinZLdfwbqTMas+dJe+mzTrgXbLogXDC0nFv0bur+Zlh3mFh16aFPhEoWbK/IRrQvqP1aLPazFH4Y6oShShMdU3XwGFYuxXGvodhNMujQOZ7+p5Rdet5o7NFVpvyO9YUvPVl1V3g73GiDYxwsKPJOtRAR6LzB04Nv7Bdhntg7taBxyhhq9soJUY4iumgXqKVroB4J2vLKHZjDUv402JJOJSsDLBvCVXNeokIbGEMTmclm+6Ja0Mu9snnGM9BF5cbqyHKwYL8PFo8B39nMR/7KMbhAdDtGN4R3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gaq6GJvrfAbArqIKMG6ZTPuXJwHsd+6DYuWvpf67NJ0=;
 b=XqjS5SC3bWy37iPXayunkvGaV/ahWd5nL43Ug3U8Q2IAKbgSp1aOPXRhnVkTaYweDo9LqqAwdriwiDIG4zrroFU7jv3zXTx1tqQFovPngy6ZR4zvXqRxywhU/qUcGRjDqK1ROe33mPkzBz/g7jA823fS0ongxkD6Vcl4MQ7Tr2qR/6tGXvuviPvw3NhTUNJQCNslCtfrobgxuF94kS+OaKwYKBaut/9V8LtPJP2Z3G2Yx/J4kbpg+LpRBk2ML4b0oM/K9hSFBx3PVVHVPXFLcA8EY7ZSJ9DI3b2pXrrT8XW6jTi0JcMW/jnZknvYpQUGNz/E1fkjE31KlFMSgG3rVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gaq6GJvrfAbArqIKMG6ZTPuXJwHsd+6DYuWvpf67NJ0=;
 b=8A1QXtNgvs9PPTcCp2JWej2TDlEu/c7Cw6JKY5OxFO6fVwFV5Gi791fwK4K4m4hR9QMrf/vm3JW0uNO99UiBT9QPpE79A3wBfSBlnO4M9nWV4QMzLe4j7y0poRDellFke1Z4Pgx18PoOCA8CONdnLq0w7aigaFP2S4ExVQIE/XI=
Received: from DM6PR03CA0001.namprd03.prod.outlook.com (2603:10b6:5:40::14) by
 CY1PR03MB2186.namprd03.prod.outlook.com (2a01:111:e400:c61a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.25; Thu, 26 Sep
 2019 10:52:55 +0000
Received: from BL2NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by DM6PR03CA0001.outlook.office365.com
 (2603:10b6:5:40::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:55 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT062.mail.protection.outlook.com (10.152.77.57) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:55 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqsj4015019
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:54 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:54 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 17/19] spi: spi-falcon: extend warning to `delay` as well
Date: Thu, 26 Sep 2019 13:51:45 +0300
Message-ID: <20190926105147.7839-18-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(136003)(39860400002)(199004)(189003)(186003)(305945005)(1076003)(4326008)(356004)(6666004)(50466002)(2616005)(48376002)(476003)(5660300002)(7416002)(50226002)(7636002)(14444005)(76176011)(486006)(70586007)(246002)(44832011)(336012)(107886003)(36756003)(54906003)(51416003)(110136005)(47776003)(8676002)(2201001)(70206006)(86362001)(446003)(2906002)(2870700001)(11346002)(426003)(8936002)(126002)(26005)(7696005)(4744005)(106002)(478600001)(316002)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR03MB2186; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d6a6781-a876-4aef-3236-08d7426fafb5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:CY1PR03MB2186; 
X-MS-TrafficTypeDiagnostic: CY1PR03MB2186:
X-Microsoft-Antispam-PRVS: <CY1PR03MB21863485BA2C1BCAB3F4B500F9860@CY1PR03MB2186.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: E9nvNEsDhwSVt2ElO3T1lc5nRRqzW14bUeiCw4RJETlcYyj7C5BDjI4qPlX4CQwcY7ai3BMG68KIL7fikyhGy1Y4FuhIQG9GIC8Jqks+hbOu6kOzEzVcEyRQQ4c2Z68V5dmBgqG1kosMnqGuzsxnyHU0EM2YL4yWC0F8PkRanZuLjKC7Jgn05yYoUe5fxqOpMVsqQh38mciwd2rdfMFa2IuLCmML09km3zAbQzhdnVM9ea9xfLoKRuWDcl42TQSsdnQ3HU28RVSUTQ+/o1QsVMBG3uZNufHWnRXkxs5MZGtU0IPFgk1YAMn32S7K/VVxp5DY+F03Gdydom0904Oclkl0sYa6lWfN2MwyH+Ot2RjE14+l/Wjlg1zXsNireaP9883qiPg7al6cqFXP3qAXquxg9UTfsbEVgyLDFDt2yeA=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:55.2334 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d6a6781-a876-4aef-3236-08d7426fafb5
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR03MB2186
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 mlxlogscore=864 mlxscore=0 adultscore=0 spamscore=0
 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035301_344091_A17E9743 
X-CRM114-Status: GOOD (  11.22  )
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

The WARN_ON macro prints a warning in syslog if `delay_usecs` is non-zero.
However, with the new intermediate `delay`, the warning should also be
printed.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-falcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-falcon.c b/drivers/spi/spi-falcon.c
index 00f46c816a56..d3336a63f462 100644
--- a/drivers/spi/spi-falcon.c
+++ b/drivers/spi/spi-falcon.c
@@ -377,7 +377,7 @@ static int falcon_sflash_xfer_one(struct spi_master *master,
 
 		m->actual_length += t->len;
 
-		WARN_ON(t->delay_usecs || t->cs_change);
+		WARN_ON(t->delay_usecs || t->delay.value || t->cs_change);
 		spi_flags = 0;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
