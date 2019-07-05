Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBBF60986
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjbvyTbhN5vNZ+vHflzRwMZoJR9lhdRQvdQb3JFm/9w=; b=aLoMwJ458jbUtl
	p7bhdq7M8MtP3w1YYVb0C7fciJDqYh5UNYqqUYDLvEmAyl1dcl86fAC9msPFYjwQ/ESaXDlo4xjm0
	fTvISwsjZg3AYClwgXbSE84LeGv83pd+BVjKLVqjBUpuvon8P1kOWnjKO1BAPGZSv7jOCiblvDskj
	pN5/3y/qQtW5FSkjTVdkjU7HeEvpAEzkb/d3VndWTpzEkh7LWPauwmlh2bA2dlU8YvlZncVdnxGx/
	0QhwloKKPmkQwqk6o3nNzebtKil8wCeplZg+UtAmuufu1y0jwkEUISjH3e8qbGJivao+wA6dt8mJx
	OGK1C36MHwUsp2UUHQVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQOF-00068d-Bc; Fri, 05 Jul 2019 15:44:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQN8-0005Gf-7r
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KwH/OINbTUYVnpgVsceuqKTMNjd10YJe0r/22W6naU=; b=Ly5k1P7waICweJuRd6A8CuX6j7
 CKY5OZjIPpj5CI5gTR5sSQb+9ESXXMHv7foj498WQ8L5tdINiSXaCELeUPa9Hm9TycHVxfMcKgOzC
 bdb+rdBPMzdso01ObW0BAbnETrvAAYfjOl1N9tr1nsBhcCGlH8+00IGiS6cRhUCRzqElQwn1VEO6f
 IqQ75dzEKhP/3TwdVbGSQaWI+cVx7t8ck9PnovlTOruYmFnWww0OvWW/xyBlJ/jzTC9wfzfU4ygjA
 v6JDXyr/+jOQnRW75uCnoWr15u5ZBGXJ48/saFPqUmD/Y7w3Shq93C5UW6GNcEZTof2ANBrxcbHqw
 rBpxFtZA==;
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKIK-0000nE-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:14:18 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x659Cjbr027270; Fri, 5 Jul 2019 02:13:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=6KwH/OINbTUYVnpgVsceuqKTMNjd10YJe0r/22W6naU=;
 b=CA8nMCpbJkY8FSWVm66WZot2Nw4PgW+HpEVdvqZp1mjHZ2FS3Mos1LjpUPwWudKtgEqH
 oXxWbVjNJwl6vSiN2ePqv9Y1ft+9BkULtUoXw1FnCWi7q4cSzx0zzpWgx3245Q8/ilIJ
 WRaNiv3C7UlTnToEgoSYFKpIjRhPDLmVuommW2tq7jP0gcOGRJDPTAjustoxtS/R+8Dj
 ux8gxgjLwN/mUVKEeNT2FHxKPo0ni1Kl35bZrh/xS/hJPKdDqtFKbMaiUUN/k30nsbcc
 8+hcpsL2kbvxpkidIPl+WIFVbjtQLXh/icEd9rwLU/4hKvfsJ7Gd2/ko+fT//vgduEBn vg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2thv9p1gjd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 05 Jul 2019 02:13:02 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 5 Jul
 2019 02:13:02 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.50) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 5 Jul 2019 02:13:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6KwH/OINbTUYVnpgVsceuqKTMNjd10YJe0r/22W6naU=;
 b=WlSWzzg5YnBLGM5zkEspglKN9nZwj92PrbhblXKA+0EUmUh+IxCKA7PJYbj+VSLCANN8mNprcZF9OBpYxzQhsXkBhBWSkf0vEVpNO39JG0K+lCtWJ4FmIMOlCm9xBfTAJTwITCLWYdNkgQ9/SuFUE2snTrcw7IXCJhyPiUlMOBs=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1982.namprd18.prod.outlook.com (10.164.205.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 5 Jul 2019 09:12:56 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20%7]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 09:12:56 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Topic: [PATCH v2 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Index: AQHVMxHVvOrB1kmigkmS21Hupx9VJQ==
Date: Fri, 5 Jul 2019 09:12:56 +0000
Message-ID: <1562317967-16329-2-git-send-email-gkulkarni@marvell.com>
References: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
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
x-ms-office365-filtering-correlation-id: 22f3a508-f177-4cdb-b2ac-08d70128f77f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1982; 
x-ms-traffictypediagnostic: MWHPR1801MB1982:
x-microsoft-antispam-prvs: <MWHPR1801MB1982A22D4DD27DA4F70BB0C8B2F50@MWHPR1801MB1982.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39850400004)(396003)(346002)(136003)(189003)(199004)(14454004)(2616005)(446003)(11346002)(6436002)(66066001)(2501003)(4720700003)(36756003)(4326008)(50226002)(256004)(478600001)(3846002)(6116002)(76176011)(52116002)(7736002)(99286004)(486006)(476003)(186003)(6512007)(305945005)(25786009)(26005)(386003)(6506007)(6486002)(102836004)(54906003)(110136005)(71200400001)(71190400001)(5660300002)(53936002)(8936002)(68736007)(316002)(81166006)(86362001)(2201001)(81156014)(73956011)(8676002)(64756008)(66946007)(66556008)(66446008)(2906002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1982;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: de/ra3hEI8vGu31soMslUETblUaz3Qq5GMjHhsQ/auVVqcikRHJ2e5rPG8Tq/SbYzHQoiybLryHlYhIcKwMMZv/YlqIbBnwMkl3pSeMciXV176q/Am95lN+9tY4aZCGR9mWp4D9pa63/Nac2FaE19IvJduH+rixZotcUbiXtVa1dNSpaIILRqUVT2SKMdcZZx5Mrr114oBl7D5BTqL5XAOlJ2sJOC4D32dwOxbj4kW0F+eF6xMg+0OWsmJhlHwalVwfrNIMcMVSXXd9IKMa66Makcjz4PB40Kq2nm0OIB1FRhScvlMPglFfcPQ6wvwtdBZCD/c/T7nfdrIRBiF3/+72bd/YC6JKmU+UZV5zqewNhdH99atL8B7yy6vS7mw/2g17Y/tc8haPFxPzE684PhfoIHstlPIMD0MHT5xIET5Q=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 22f3a508-f177-4cdb-b2ac-08d70128f77f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 09:12:56.1583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1982
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_04:, , signatures=0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add documentation for Cavium Coherent Processor Interconnect (CCPI2) PMU.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 Documentation/perf/thunderx2-pmu.txt | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/Documentation/perf/thunderx2-pmu.txt b/Documentation/perf/thunderx2-pmu.txt
index dffc57143736..01315b3d4ad9 100644
--- a/Documentation/perf/thunderx2-pmu.txt
+++ b/Documentation/perf/thunderx2-pmu.txt
@@ -2,24 +2,26 @@ Cavium ThunderX2 SoC Performance Monitoring Unit (PMU UNCORE)
 =============================================================
 
 The ThunderX2 SoC PMU consists of independent, system-wide, per-socket
-PMUs such as the Level 3 Cache (L3C) and DDR4 Memory Controller (DMC).
+PMUs such as the Level 3 Cache (L3C), DDR4 Memory Controller (DMC) and
+Cavium Coherent Processor Interconnect (CCPI2).
 
 The DMC has 8 interleaved channels and the L3C has 16 interleaved tiles.
 Events are counted for the default channel (i.e. channel 0) and prorated
 to the total number of channels/tiles.
 
-The DMC and L3C support up to 4 counters. Counters are independently
-programmable and can be started and stopped individually. Each counter
-can be set to a different event. Counters are 32-bit and do not support
-an overflow interrupt; they are read every 2 seconds.
+The DMC and L3C support up to 4 counters, while the CCPI2 supports up to 8
+counters. Counters are independently programmable to different events and
+can be started and stopped individually. None of the counters support an
+overflow interrupt. DMC and L3C counters are 32-bit and read every 2 seconds.
+The CCPI2 counters are 64-bit and assumed not to overflow in normal operation.
 
 PMU UNCORE (perf) driver:
 
 The thunderx2_pmu driver registers per-socket perf PMUs for the DMC and
-L3C devices.  Each PMU can be used to count up to 4 events
-simultaneously. The PMUs provide a description of their available events
-and configuration options under sysfs, see
-/sys/devices/uncore_<l3c_S/dmc_S/>; S is the socket id.
+L3C devices.  Each PMU can be used to count up to 4 (DMC/L3C) or up to 8
+(CCPI2) events simultaneously. The PMUs provide a description of their
+available events and configuration options under sysfs, see
+/sys/devices/uncore_<l3c_S/dmc_S/ccpi2_S/>; S is the socket id.
 
 The driver does not support sampling, therefore "perf record" will not
 work. Per-task perf sessions are also not supported.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
