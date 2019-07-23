Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C95714D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0J9CdDW2Dw0+n8pg4L74Il8fLl5lr2MM3tnDu+db74=; b=RSghUYo2GVmvIi
	EQkx66H7YWeRmIrvxngXOuXHo0CJNMfFw8ib46OQHmyLXB7Ys5O7aYHU1EhGH2dLudiwRUzD0a+pE
	mS7mSbd+nVwr0QTsms/0AnO7SGYBbUZ2Ka37r9wqGyu3qyy0GOwhmLtvSP+fBBZDx24t4ahUxhfCD
	qUIi0c1FCifu8AKY2Oe7mfOIRgO7AQ/3GJjd9tXB/PhqyDjdF0khgH2RLUpbWPgZkgJxeNKG2yfe7
	7RD05YhGmQ+zOBS9md66VC7YFv7yNMQMQaocWnEYjxMxO763uswUBJQ0Dt5EzajMBABLMZ2es6zXe
	eXl0sTWZfmb3wGIDPraw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqus-0004jB-3i; Tue, 23 Jul 2019 09:17:02 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpquT-0004iS-7a
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:16:41 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6N9G56d008776; Tue, 23 Jul 2019 02:16:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=ootOdHAvtqQH4GwYY6kk7ctFqiK4JGyKzRkUe0LXTY4=;
 b=RTNw3fqNagKMtJ/RGBsV4gtBgz0wF2F+UGwd3eM5lmPmxLa0MIIz429Ro3hn/tuwfDRj
 ICf8KbWXHDhTjwv+yl+NSn3XSkaVTIrDsSTDPg25qioMTWh7cE1apqLm2cywm2IJF8TY
 wTLa32z1U4nhwB1ElAQMFMOLVr0L9RxAA1/PLAXdXXWRIv/SKp807aaXJRHYTSu56E0B
 LX/w97HgAftNWGiuQG1IH6RaEkf66Sts2ZB75xvvbhKD4Q9JHTs8X6e9GwVXfuGodH3z
 Oy+fanyaIA9dMPz/f6cuO3+YzsPkmD2ges8Mibn0rBu9rm/dXQ+OmbJjhpazIQZobtMw Cw== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tv0ap31k9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 23 Jul 2019 02:16:32 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 23 Jul
 2019 02:16:30 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 23 Jul 2019 02:16:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hsQyMFMvMie164hNO+lUhEWz1GU61v0YIEPfombIEbam1pl4HFy9NA+ZYgoYDWqpiZuN03jXsaJ23CRQl+61qXPSOwUGJqE13l3P+sD5T38ZtP5Jsi/DziCZuZRKFB7jzpC5wyq7v0ANGlNuhpMEAqgl5V4dZLVeFV+W8HF0QU2mU7UnJS77HcXH6YBGfsGSPncHPEU5M2RVWzn7v2v1yQGcKsfOL+8eCUO9fb+tYOXRf71V6rfV2liv78Ztu/LxfokdHHvSKUzY+d5VH+Y91xrrms8bVwDKcOBMtYU8hzxNhBKV+08A88jNMyL+IMUtYAIZRMP10368FN2Jde2FaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ootOdHAvtqQH4GwYY6kk7ctFqiK4JGyKzRkUe0LXTY4=;
 b=ipjf+PurbEIAmswMLFLE51i9oCdhekq7EslZpzLh/vIJZzCWCQ+9DrKudkyTtGXoqywrl7h+l6mwzv4sOLZboRlbDfjC864OX+JijgetbOepgIr//dv67WvIxc5tV3jxeer7pH8nlrUBSFdGG2qlZ+a6tliA3lmS1sJmjz7LWy90VGWPObEp3OoqkGtMrbEmBg6t0k+LA53oW70ndlrOlj0Nzxo6cTKaVmDfDa+5HWAtea8nruwWPhHwkFEfThl0M1NJbe6Wv+m7J0AqO7wvhJJ9qRp7iS7utP6jBrDPlNIBySOVWuj8DAy3f6CkzK67e+s6OXk/d5bCOfSgeiZ1qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ootOdHAvtqQH4GwYY6kk7ctFqiK4JGyKzRkUe0LXTY4=;
 b=fP82T/zNQzo/NcOYk0JUu2BmepaatNQTKw0lE85wFtJiwuDRZEyK2V+hPnfig4YLakqr82I8vHfbJclgiy/zKx6YUwEfTM4wbHtv9zKHv5esvckN6Qip+DdYBNBHdKUIJCFJOHi40Lo6gZJeZhHPNhwYz1cKGqV+PSXM3Uf2kIM=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1824.namprd18.prod.outlook.com (10.164.206.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Tue, 23 Jul 2019 09:16:28 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20%7]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 09:16:28 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Topic: [PATCH v3 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Index: AQHVQTdOPdNX23W8pEOAf16rOKwoAg==
Date: Tue, 23 Jul 2019 09:16:28 +0000
Message-ID: <1563873380-2003-2-git-send-email-gkulkarni@marvell.com>
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
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
x-ms-office365-filtering-correlation-id: 7f964b23-1742-4566-2f20-08d70f4e715a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1824; 
x-ms-traffictypediagnostic: MWHPR1801MB1824:
x-microsoft-antispam-prvs: <MWHPR1801MB182413B7ADA84525FF2D85FEB2C70@MWHPR1801MB1824.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(199004)(189003)(2616005)(36756003)(6436002)(8676002)(11346002)(446003)(476003)(6486002)(6506007)(5660300002)(68736007)(102836004)(2906002)(7736002)(6116002)(2501003)(66946007)(3846002)(66476007)(66556008)(8936002)(305945005)(64756008)(76176011)(66446008)(186003)(26005)(386003)(52116002)(81166006)(81156014)(50226002)(71200400001)(71190400001)(256004)(2201001)(99286004)(486006)(478600001)(54906003)(110136005)(316002)(14454004)(4720700003)(66066001)(53936002)(86362001)(25786009)(6512007)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1824;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2fhMOOwp1YOzsNlueXvwJ1nxTn6HsaqAqtiSx0x+yYnnrgLlJlD62mboNPFYV+Amztl1N5HL5n6UzxIatV4c2UeYXrciVIAUBX9+JGgkpqqTtkyUUh4epJSGCySApknH/NXr3Z3K45gSvfqEjGdHja6oYC9XSm+1GFZDRVUPx5C71mTiROlRAtXHtHafko1A1PLThtrk44n2HZCM7cGvht6nEQKaMjjWStr/dcs6XMD9Tc2+4DNdTCkgfeN2DfyKbKNmO4qluUAiYHRa3ymtDZ4IgwNQB/1v5OsFXyngSdvnmKuvIvCLe8jS705ffrJhvIguNIUkvma7NoHAdvsZL9aBStik9Z+IFie2YPdgH+rwnDJswMS4bvubJJKmUOGZ04SN1GtIil6XGH6w//lwnSzj4NXuWiWXjjr6gRF2Mnw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f964b23-1742-4566-2f20-08d70f4e715a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 09:16:28.2610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1824
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-23_05:2019-07-23,2019-07-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_021637_654830_50F86B0A 
X-CRM114-Status: GOOD (  13.63  )
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

From: Ganapatrao Kulkarni <ganapatrao.kulkarni@marvell.com>

Add documentation for Cavium Coherent Processor Interconnect (CCPI2) PMU.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 .../admin-guide/perf/thunderx2-pmu.rst        | 20 ++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/Documentation/admin-guide/perf/thunderx2-pmu.rst b/Documentation/admin-guide/perf/thunderx2-pmu.rst
index 08e33675853a..01f158238ae1 100644
--- a/Documentation/admin-guide/perf/thunderx2-pmu.rst
+++ b/Documentation/admin-guide/perf/thunderx2-pmu.rst
@@ -3,24 +3,26 @@ Cavium ThunderX2 SoC Performance Monitoring Unit (PMU UNCORE)
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
