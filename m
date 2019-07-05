Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA99460725
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fBWRe5kLQeDYYXZynGUnJiSs2nInODihBJenQ7C0iKY=; b=HGM3iQLrd0g4XW
	2HB8kYe+nOhqHzmeBKROFJLGKHUJALjR5bopPxmtnwf2aQhOuzblhM1BxLXMiM0OmLOLQg/a5TvV0
	qlFb/lLPKvZUuCFirv+PrJGTibpxTZeFdn+i516aCd/I1hT7qs7lNUuF7AuVSdxIyQCHap8mTcu4x
	/xNHYWppK2CNJpAfldkru06QEGdzudCXBzK/HhOxbd48T8lqgGMnLT7K2njvuf/g5ocTSjfiKQ8DV
	3/7VtSvW9r2BlXJf1yvnr0p4azmv+F1H6pead/8dfeL+4GxiRPcJZIWtMiwh3Iw40M1ZQ6tA3CacC
	WXvJwwz52QfyZSnOKGgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOoy-00088s-0q; Fri, 05 Jul 2019 14:04:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOgB-0005qa-Vz
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1fvGHigX+JPbD17m06eLJdyTZyDdNNkwbNVO9U/U+Uw=; b=jgayNaEKeUXLRQlTc/2quE+KTG
 CuJnYMNFcexT1dEwMElQxwSFCnEGJ+Ml4hMuF6LIDX0S9JxIUf6t0cNVJkRXJvkbziTT0XX/zFrpc
 5f33qxmpEa5D4OerXX9X1eMUbLB5d/5pBJUK5CnD89+R5J9fc8vP2UaRoEZzfrXiY9gsVxcQoJjDJ
 6wtZxLBhYj9n/3nEUEkiKaZwUrd9ixrShgg1HUGoYUEXD/G49FHjIuzxrxyRmZq7RmDXulf7Qf7dp
 v1OGSv5+61A2ml5k45AxI6ROauDRQbYc3gEjENJV2WlR9q0O+tulXIn7bROwk/RzMBHTx7ZfbvnD1
 sk1b0CsA==;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKIb-0007o9-Q7
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:14:36 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6596Al2025365; Fri, 5 Jul 2019 02:13:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=1fvGHigX+JPbD17m06eLJdyTZyDdNNkwbNVO9U/U+Uw=;
 b=SqOzIjS8/YV+997kE368ssNutPLoKWBKmGBrn6R7KbjR3sU3qQTALlINnYLaDQ7bCA3Q
 U0KvSWlnMMY4B4Tz8Zfc7kcTFifoQNbCH+K0Ji3eMmhLoaLy87t/ivXoVRrHygt6OXUh
 kP9mFelqvLgP1/d8d062FLp5UrySUasMGssW0RR8DtDN4608BSA1SUfjmKHzI9BHTCC7
 YLu6eGIDSvSIJPKfXteromWlJ1H3W7592micSVRHqzVZKNJbBnuDPq8DZImNcwpA66Cl
 7OTE8G3BMWAsJFM0uIr2n5KlfEXB0JUPz7b6G1bugidjBfyewhM8ZCqevMT2BlQB7Bm6 Xg== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2thjyrb616-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 05 Jul 2019 02:13:03 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 5 Jul
 2019 02:13:01 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.50) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 5 Jul 2019 02:13:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1fvGHigX+JPbD17m06eLJdyTZyDdNNkwbNVO9U/U+Uw=;
 b=j7h9ExJglelgMPdnu2pQ1STeeEG92SJC2PwoXPW/PcYQkhsQAkzqPg0bbr5yf4nPoEwHVsgbFfrJQ3LwQxe+LpL+0CQ2n7efxXfm7lk3m3Fm4mDQZOb96Cu85qICWTOrF6BRS1eRGSZf3hNzg1gjRnsZ4o+McwwdG04njV102sY=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1982.namprd18.prod.outlook.com (10.164.205.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 5 Jul 2019 09:12:55 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20%7]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 09:12:55 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2 0/2] Add CCPI2 PMU support
Thread-Topic: [PATCH v2 0/2] Add CCPI2 PMU support
Thread-Index: AQHVMxHU8ANznhvUkUSheWYP9y2KJA==
Date: Fri, 5 Jul 2019 09:12:55 +0000
Message-ID: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:74::44) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0bc1f7d-7a41-4620-fc48-08d70128f707
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1982; 
x-ms-traffictypediagnostic: MWHPR1801MB1982:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR1801MB1982735BFCD59BD8C48ECF87B2F50@MWHPR1801MB1982.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39850400004)(396003)(346002)(136003)(189003)(199004)(14454004)(2616005)(4744005)(6436002)(66066001)(2501003)(4720700003)(36756003)(4326008)(50226002)(256004)(14444005)(478600001)(3846002)(6116002)(966005)(52116002)(7736002)(99286004)(486006)(476003)(6306002)(186003)(6512007)(305945005)(25786009)(26005)(386003)(6506007)(6486002)(102836004)(54906003)(110136005)(71200400001)(71190400001)(5660300002)(53936002)(8936002)(68736007)(316002)(81166006)(86362001)(2201001)(81156014)(73956011)(8676002)(64756008)(66946007)(66556008)(66446008)(2906002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1982;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KiBH4Ki+SBNtSwq6lQoG3/ZbGpsFbjZoocvMqzn7iU+91du0WrvpQICSSiFeaWrXtzQ571/56BBwAu6ZmONdo+AR1w/qMnDI6ZCu4KV1JJayRnpczpntPKvlK1EccDaa2zRRRQi3BJski2K16zDsw4Yp4e8br/p6l42FOh2Wd7tBldfvxQCu2o65BI56ONnu9CHUjQtC7xNZ99gRVZW/HZrMSCw2JPZzKyvGqW/FAZHgn+gEj6fZ4P2kRu16A7NHZff8qREDCYGK0IwIdIaOLuy1vbHKy+MsrtESa1Hu80nmSrkqxdeuWSHwYEjez87fIJ0H6Sg5hoTM0SwdkzC6BpcHfD464ULBR6VaaKvNrKX2Vcpt90oPXEJZK7Kw8BXtgnRjJ/Ap9l0osqcw27ftuEaeCN83AQsDWW95rmAyZm4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bc1f7d-7a41-4620-fc48-08d70128f707
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 09:12:55.3988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1982
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_101434_105484_6DF8B200 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "rrichter@marvell.coma" <rrichter@marvell.coma>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>, Jayachandran
 Chandrasekharan Nair <jnair@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Cavium Coherent Processor Interconnect (CCPI2) PMU
support in ThunderX2 Uncore driver.

v2: Updated with review comments [1]

[1] https://lkml.org/lkml/2019/6/14/965

v1: initial patch

Ganapatrao Kulkarni (2):
  Documentation: perf: Update documentation for ThunderX2 PMU uncore
    driver
  drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.

 Documentation/perf/thunderx2-pmu.txt |  20 ++-
 drivers/perf/thunderx2_pmu.c         | 248 +++++++++++++++++++++++----
 2 files changed, 225 insertions(+), 43 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
