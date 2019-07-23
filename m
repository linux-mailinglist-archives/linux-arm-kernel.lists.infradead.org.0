Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8670714D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1hinKNCOonX22ptJ2Xyzc3CaYH5FthXFu7oo96EWWuI=; b=ioRSOooa99GJ5u
	9UiTr1nYAx7pMwwXSyuogIXNzpFoiEE/9ssGZtMmr89ej8FFJfJNlW/AAWaHNEoMuqo2UghEdsjz6
	/QzIfnXyKuKxCk+XYa/hkQwuP0JX4KKBv542+WvmsYhfR3Q4KPVVsNdwT8g4h7j86qLeuXaAraHix
	VKvI35H3JUwYYZUUMEmeE582q+18sF6oLbvHGUFYGdoojrqOKIqS1QnHPRl/PqXTk5+eH88EQpN5f
	fG8VC7X5fwPCgcctaMf7oGa++eG+Io7ecpwbTPsNmstVLmRY5DlZjAFGHLf2XNCFEBNFPpVj0Xh49
	to7pW69iKXJldKZ/6YnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqvK-0004x1-P0; Tue, 23 Jul 2019 09:17:30 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpquT-0004iR-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:16:41 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6N9G1Sp008728; Tue, 23 Jul 2019 02:16:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=qt8c3ElhlGngqt0QiopqkG6QiD7qwns2bpsje14B8To=;
 b=w95q/KPVhtJF4NAp+Zoq6MLrwBvrapQmoE6NPPbuWsS6PARP4MDbpLbP4w8VdS5qGOjg
 HpzBWYTHGWuwYArMFMs+anK8cuFLSih3HxW+AW9eNFti3ToEXLePPo34XyS7U8iRKt4H
 Dym9GyS+e3xvuWZEA7UGDLf6mRGP6bOzt/04jOI2frz8bmeSTpXJ6MSd7pH2Fa1QL3/H
 Bpw1RRLbs2z7Z2T9SfZ5smZN+OoPwxb2+NKAScIeIjZeFcKl1pZbQRnIUk649yX6dx30
 4iZFhy2NsfJhEGGIqMAcBQR6g2skpE8BjPAwuOPFH9K9+U3Jc5QULqLY1HMvGlY7FcXv 4Q== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tv0ap31k6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 23 Jul 2019 02:16:30 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 23 Jul
 2019 02:16:29 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 23 Jul 2019 02:16:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crwgaoNOivTI8Tg69Qv+sFIBnSM3GRb3TipoZZtYtZNZhzYjxTKRC1CebQUpf7Tb0hIHDdJs7hK3IVYaPt2/q+hhhwCdA94EoVxmR0LaV+Pe9e/zthZNvKY0bWBooxToQ86s5cXR5JygBEQENolbZke9f+BpLh0A0Iu6AO4xIcgnWbrjJNVWnw7KMc4pFcxPhh+aYrN+kPjU8lM1LtXMgRKpeSEyt06fizcfF4uGhYwC2TmiOzZ5P2h3+hZ9O1U5qvyrETV5r9Ui6QQPuf0bdUT1K9md9KqIXvBswBi7r7HmDNmPFTSt2cXBNYh/dFoQ7LvUQQkkTMoUBXaI7k5K/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qt8c3ElhlGngqt0QiopqkG6QiD7qwns2bpsje14B8To=;
 b=hnh0iRW3zfMP1zuaoMR1RaSkapnJXIsLgN4+I1Io13ehN5RG5kggIZ0YM2K4vqIrf/mSkIRF33d9n/FZshgbSJb+jjKbKMPE3L+P8slbdr+CuKONS4P9WUon/chj8uDFG2N0Ps05UOrrSYkquKTjHe8Y18iIRxxHN2KJr1Z6FrHbpS1HWgecA7+k1V0uHEQRvPVkDgBHqFeG4cpd8Nndejtbbef88hj7F+AMrad9MUjKK6d1g8A7ZXdvjim8bydSbLKkb2HvHkI/rmyQyTMRMMuoDnGhduL6fYur9RIPiJHBuQA9mx5l3VzYbw1TsPaTD3kRqzGpbRSFHIGrfX47cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qt8c3ElhlGngqt0QiopqkG6QiD7qwns2bpsje14B8To=;
 b=HQDCxY3uZ8Qg1fWyazuk3e54DcbGxO5XrVQZVRLh6+s36mGviDbpa7suhQ4b5W8Lg2ERmBWAWCqqsX6WpZipW2IRpdWvGPQS/akJlTQeqGbYGqktq+kxzfCMz+j00qgc2EI/A5DDQmv7hsuoQxDBVRgQXUTINnMbFWAwG5CXWNc=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1824.namprd18.prod.outlook.com (10.164.206.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Tue, 23 Jul 2019 09:16:27 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20%7]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 09:16:27 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 0/2] Add CCPI2 PMU support
Thread-Topic: [PATCH v3 0/2] Add CCPI2 PMU support
Thread-Index: AQHVQTdOEmxlzAzPyk6oJIT2KNx3fg==
Date: Tue, 23 Jul 2019 09:16:27 +0000
Message-ID: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::36) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07582b69-399d-4b05-1f49-08d70f4e70df
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1824; 
x-ms-traffictypediagnostic: MWHPR1801MB1824:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR1801MB1824801D5978E4A4EC95C931B2C70@MWHPR1801MB1824.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(199004)(189003)(2616005)(36756003)(6436002)(8676002)(476003)(6486002)(6506007)(5660300002)(68736007)(102836004)(2906002)(7736002)(6116002)(2501003)(66946007)(3846002)(66476007)(66556008)(8936002)(305945005)(64756008)(66446008)(186003)(26005)(386003)(52116002)(81166006)(81156014)(50226002)(966005)(6306002)(71200400001)(71190400001)(4744005)(256004)(2201001)(99286004)(14444005)(486006)(478600001)(54906003)(110136005)(316002)(14454004)(4720700003)(66066001)(53936002)(86362001)(25786009)(6512007)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1824;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k180eUyD83aMxP6evTKZNRSN8rvfQFdx0Mseq2pg6C7z5FXpLqVd7xvZ2bzkfuqfjGHCfOsWYyXbpabJfiNj/mxPI8Tx/9vzdtlFJnvgd8CKlaGhTFnn+OWLDyoTwpa0ybbDjjEkf0coYq2xoqPno3G1L0jvqiRKPKB8xP3Ttfnk5KZIcR5Zu4sgMa7iteUlZsMi1Zp4H0zW+Fi+F6QVjBTvb3DwwXHpEl5Eih73+MbmF1AQalYQdLIml8jY21WpY1B1iPTghAUKRXo+H/xoW8JZ5tJ2NpSiexB3EKWG3hvQcKi8lT5zYhltfVMajG1sqArMqzzQhQRJ1XvwwGgVje+R88nCFaKmWlKNKaIDYojRkfScw7gXI9ExqaClRofYpajc77QqdBBZsrodtArE7RmVkYXuDL+xYG1XpmaQpOs=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 07582b69-399d-4b05-1f49-08d70f4e70df
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 09:16:27.5159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1824
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-23_05:2019-07-23,2019-07-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_021637_656490_EA2F10DF 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 Robert Richter <rrichter@marvell.com>, "will@kernel.org" <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Cavium Coherent Processor Interconnect (CCPI2) PMU
support in ThunderX2 Uncore driver.

v3: Rebased to 5.3-rc1

v2: Updated with review comments [1]

[1] https://lkml.org/lkml/2019/6/14/965

v1: initial patch

Ganapatrao Kulkarni (2):
  Documentation: perf: Update documentation for ThunderX2 PMU uncore
    driver
  drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.

 .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
 drivers/perf/thunderx2_pmu.c                  | 248 +++++++++++++++---
 2 files changed, 225 insertions(+), 43 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
