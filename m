Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51D38ED84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/W8Chw0gk+luuugXhK4xBVfCovWZ7X7C6/vifC+h8/o=; b=Z5AwNgp0HQ4gk3
	nt4ZfU7alov1mPJZ+XtFgxcMu/OJ4rLrDDR97VBgK24NRwwKf2W6NeV1aZTocFZbD7Ah2f6tmBOnw
	6S76a5qn9TXruY6klcyTgn7pnemV0dxmvSt1OE/rBxjcLh6PccZ9czxG8pCo94i6Zp/SwqmPijoj5
	ci1Xv2aytoSZBqLM7W26Cz/V4djhePHLn3tTSYEOKfuW51HuzGuvbe/p6035ZPtKluNE1M7wVCBfo
	y/mLKZC7D7kaU5lUprnQSTED6GsIIZn3KrWuCnDH7DFz34jWSRJM/5O+UwOUtR2464KxdDt+LjGFl
	N7AARd6QOqw2wpOJTKhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGH8-0000bd-Fs; Thu, 15 Aug 2019 13:58:46 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGGr-0000bG-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:58:31 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7FDtBEN004658; Thu, 15 Aug 2019 06:58:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=JcjXqQBVec2sl0ADADkEv4lDpU//pRjj6kQs3TslTlY=;
 b=qau9oA8/86wfrJWPsNGi5lB51qhE4nh71jzoGYliffYU1nNW49jhudbK1lLecNzBgZmE
 lrGihjGP82xX+go8PHcrzZufiuoWc6l/4exVpVeHrzusQ6pRfL5W8x5c3tSg2UWiighj
 bPMqP7Qpt70qbgV9xX7vgNzIFwOYtNG96d+tDOv+OWiaTeScwfAtA6OnoDGn6KCmenlY
 dKVBFyyEPaX9SAu1b85BppS4FHdcFB+iv0ozrYYWNXT1aP1/lgaX0027mnp4owG658C8
 HVeOGfdiRdTRatzPiyHlDoq3Bfwgb7zMLc3lVylrGKQsDqp9IWwVtE1FkuCTh0kiun2T sA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ubfad4nya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 15 Aug 2019 06:58:24 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 15 Aug
 2019 06:58:23 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (104.47.50.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 15 Aug 2019 06:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmtPb/gl6AZra6GMHQ+B/Q9DlLUPfvsausQv4ZW1eHcBSkMn1+gIIPgeQIS4zGVrb3iSAayOdYIEaAk/U1ik0rt+7TqIVwQGaJZ5b96yPFaF71Lmx5/6wr8sczhuBPnKDdKNVJZZHQVD/xvKEEM0A2UrS2uRhuTtbmkgELZxIZ1cfPOZgV4jhJuVPB+GIe/qDeDAfH3dxjFn+qZ2I6RTm+xMit7uPhgCk9v7ZeWove2yFQTPCaJ4MPj2t9r1piKMcbuLsW5bmYAVnL9sNqmhjjJGHNw21w0QSJWXn5j0QaWXbdZZcXdGk0NDCQ1IQIm8oR/UTeQ5D0OSABsNst0LVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JcjXqQBVec2sl0ADADkEv4lDpU//pRjj6kQs3TslTlY=;
 b=Z6n4H7pbRLLODzU5VHaQHrhZxCx1MRyRm1URm0EsetSHwDlr3XYA+xIaybz65YQxzt9a3v8NTXLjf2Gz4HAWd5pWFIBI6wY1EUK02fsGU87NP+8d5QEtsHLb5f66r4SsioZeST37s6qj2jOnHsBo+vfGGLgvU8JyJ0LdsEywzmel+T3wpKlqc/Zf/bqsJrLRKDYkOKmY7QPlHLvgzKSL4J6luRuOhcrDpFi1xCBxmazY+XR5YTKN/YyDK9i3gHMmCC3gZgChGMXQxEWknzDMkgGhc2kPGTfLFpNMTZZFX8fxwu+8DTseDJ9cebrFbqFr+NdobgVgB+qD+3Bp11vClA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JcjXqQBVec2sl0ADADkEv4lDpU//pRjj6kQs3TslTlY=;
 b=HE74mSD/Z1axy7NcWeUPGXhrmoiY0uxIb6LcgTq9ZxBh/I8kxdbbhKNsRqiAZ1Jxxxlz1idctnUZLRQBj23+DchclRiLEU1z+crRl/Q7lqqpV5nn7k6QygfmFsvL/qQMkXRTFisga5rSb6n+W834iLPvkWpp4C6F6AqQJsI0Mo4=
Received: from DM5PR18MB2184.namprd18.prod.outlook.com (52.132.143.143) by
 DM5PR18MB1371.namprd18.prod.outlook.com (10.175.223.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 13:58:21 +0000
Received: from DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::c1ba:ac0b:df8d:b5b2]) by DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::c1ba:ac0b:df8d:b5b2%7]) with mapi id 15.20.2178.016; Thu, 15 Aug 2019
 13:58:21 +0000
From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
To: "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>
Subject: coresight: ACPI hook for funnel on ThunderX2
Thread-Topic: coresight: ACPI hook for funnel on ThunderX2
Thread-Index: AQHVU3F/vhcvmFRs5kmamy5J7HYa2g==
Date: Thu, 15 Aug 2019 13:58:21 +0000
Message-ID: <1565877479-1583-1-git-send-email-tanmay@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::40) To DM5PR18MB2184.namprd18.prod.outlook.com
 (2603:10b6:4:b9::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbe09f61-82c6-4b44-564e-08d72188a224
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1371; 
x-ms-traffictypediagnostic: DM5PR18MB1371:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB13714BBC8CF96FABD5177C91D6AC0@DM5PR18MB1371.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(366004)(136003)(199004)(189003)(86362001)(2351001)(66556008)(4326008)(316002)(6916009)(6116002)(8936002)(66476007)(2501003)(14454004)(478600001)(66446008)(3846002)(25786009)(66066001)(50226002)(4720700003)(64756008)(71190400001)(71200400001)(99286004)(66946007)(256004)(486006)(81156014)(107886003)(53936002)(81166006)(5640700003)(54906003)(26005)(186003)(7736002)(36756003)(6436002)(8676002)(476003)(6506007)(52116002)(2906002)(305945005)(6512007)(102836004)(6486002)(5660300002)(386003)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1371;
 H:DM5PR18MB2184.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sJzCoQ4wxFVbTj2ZOHTL/qRcnsElk1BsusUmrCpBXkPBZ31bw4NxVNAKH2X51uabP4kMZbLUUqqJ+qUadGv0LGcuLQTsiRlVrpt1fIKU1qT0qjmL8ElvKBn8LB8gHQbnP4bqSJIKAdIOIPwHU22VLsG/ySPATmySyC3nRE5iM5Ki6XDPzLftzvORbQjcA/jbJU0vVV+1mK6RJzHHkL1whqwKP70+d7ibNWRkeNkTYw0BewXEL88X5AUiS+4x6eeCYX6sY+XTxHYRoEcqKoHFmipFkxM4oMcRIx10l0ztPOly1RWzroRVJ+kSnGap9LrwiKMq9mpB2tI4IZCLjKXN8ZqM7F01Jkg0AuCpjSAjp5s4YRWHPd663z//Lpa82/AfUdxN6ozpHumUH8JUAWJXXFIEVa/FON++I9lsFmQuVAc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dbe09f61-82c6-4b44-564e-08d72188a224
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 13:58:21.7422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3e5pCB3Vix4DQIYYfHJZdrPqOeYid0/n+k/RN87BynHKvFlV/sIxuFcCKDtlgolhjLcaunpHe54gs8vq8eC7Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1371
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-15_05:2019-08-14,2019-08-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_065829_370241_1B106321 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>, Tomasz
 Nowicki <tnowicki@marvell.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Coresight topology on Marvell's ThunderX2 Processor is as follows:

 ETM0 _                                                   _ TPIU
 ...   \    Static      Dynamic                          /
 ...    --> FUNNEL0 --> FUNNEL1 --> ETF --> REPLICATOR --
ETM127_/            |                                    \_ ETR
                    |
            ETM128--|
                    /
           Others--/

To support this topology add ACPI hook for Static Funnel0.

Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index fa97cb9ab4f9..315691fd6f4b 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -5,6 +5,7 @@
  * Description: CoreSight Funnel driver
  */
 
+#include <linux/acpi.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -297,6 +298,11 @@ static int static_funnel_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static const struct acpi_device_id static_funnel_acpi_ids[] = {
+	{ "CAV901A" },
+	{},
+};
+
 static const struct of_device_id static_funnel_match[] = {
 	{.compatible = "arm,coresight-static-funnel"},
 	{}
@@ -306,6 +312,7 @@ static struct platform_driver static_funnel_driver = {
 	.probe          = static_funnel_probe,
 	.driver         = {
 		.name   = "coresight-static-funnel",
+		.acpi_match_table = ACPI_PTR(static_funnel_acpi_ids),
 		.of_match_table = static_funnel_match,
 		.pm	= &funnel_dev_pm_ops,
 		.suppress_bind_attrs = true,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
