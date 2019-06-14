Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49918465FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpbYgkDAosftxc+OJwnJZQNCuP307Q32jd309edO1n4=; b=fFIYBS2kguZOZu
	getRxH1ycdXQzzV9NOTwglWpPDuqBpedA1c+vyn3sXNSZhEFWIRRYeju8Xrdor2mGP6P6iVov0WPy
	fVpuQnJ0xeE5tDhmxTIWDmggADTH8TfRi6ZJt7ZE0zbsbaaLS7AhFhwnI/PnhHg+e8wEHwpVXCD9K
	dOpzG1GpFCFKz0z3eaCNs68HNBPRqRwd9a/VtgeY4DAo1rtt74NM0ZlL0joL+gAnTyIlBepYErjld
	WuVXNHdTM1yusRJsY4cSMoic17Tt+MCFOJaHMVtc/gC9yesPOGiwPR7DtAZT1G3rOUmM0wewZ+tDt
	NqBeYoJBx7Tu+43vITMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqF2-0003uX-4d; Fri, 14 Jun 2019 17:43:56 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqE7-0003Kw-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:43:01 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5EHeWZQ023707; Fri, 14 Jun 2019 10:42:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=vpkHhvh8wBhAOPzxRgsYfzrwgXDeaEiF9/+fPDKhCvU=;
 b=eXOUrpG1TiuEiNpGTmvLpto+mSGauL7jwawnsVmeO1pGbmByULxK+hP/4HBkpcnUQAaI
 Vx+W29lmmxR5mPkXD0xLpa23hAoTDgeJqyt4GnuVvpnJS4F3gey+5ZKCTGbqFTW/I88V
 lXdsCihPLjcqBSTJ4sSj+VvrqOe7fNLAsjqXJ3KQcYyt+slnE6J3p9qZnkD8cyxZ0maG
 4khwHiUn29obXw14LWC8/xsHxk7eDBJ7QCkdF8Sm+8Vn+d2puDdATpfRu/4tXQ+6ovqq
 ZjyqH9pISBGDnJELGyyXTO7Ehtw2ZmS6+MLu2ROPj5Qnvn2VRh+z78/Z/3X95lzj4iTn eA== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2t3hvpy5gt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 14 Jun 2019 10:42:53 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 14 Jun
 2019 10:42:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.58) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 14 Jun 2019 10:42:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vpkHhvh8wBhAOPzxRgsYfzrwgXDeaEiF9/+fPDKhCvU=;
 b=kTU5n83cDZAFxwKhQBwAx6q91yOQxyjdqMb4IuE95aqQYRPdVekpr+KDJrtVw/pbY9mv56Z+DAF4GVDXZFgLV+NjKOa5ZlQLLSnSEe49wzquJjWbMYWh9fmmcWnX2qKvC8uGgxGLYERVEiXI3WEPjT05xJl/hxfWMHQwhhGdrnI=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1936.namprd18.prod.outlook.com (10.164.204.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 14 Jun 2019 17:42:46 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::7c5a:e2f5:64e0:5b70]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::7c5a:e2f5:64e0:5b70%7]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 17:42:46 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/2] Documentation: perf: Update documentation for ThunderX2
 PMU uncore driver
Thread-Topic: [PATCH 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Index: AQHVItiT5TVHcomozEC71pshr7ncRA==
Date: Fri, 14 Jun 2019 17:42:45 +0000
Message-ID: <1560534144-13896-2-git-send-email-gkulkarni@marvell.com>
References: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae792e24-945f-4219-4495-08d6f0efb5bd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1936; 
x-ms-traffictypediagnostic: MWHPR1801MB1936:
x-microsoft-antispam-prvs: <MWHPR1801MB1936FE23B233BD5450D3F2CDB2EE0@MWHPR1801MB1936.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39850400004)(396003)(376002)(366004)(199004)(189003)(66946007)(6116002)(71200400001)(76176011)(2501003)(102836004)(3846002)(7416002)(4720700003)(52116002)(66066001)(99286004)(6512007)(14454004)(6506007)(446003)(71190400001)(4326008)(386003)(478600001)(6436002)(2906002)(54906003)(110136005)(68736007)(5660300002)(256004)(8936002)(2616005)(305945005)(2201001)(476003)(36756003)(7736002)(53936002)(11346002)(81166006)(66556008)(66476007)(26005)(50226002)(25786009)(186003)(64756008)(66446008)(73956011)(486006)(81156014)(316002)(86362001)(8676002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1936;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Lp8faelQsa9Q2Ve7y9CdtjqIFnaF9fG1dPZgVIG3bxcbQXSZ/U6fGEnbCmZ+UkIyq3swOCZz6Z8x41ToXWBSead7O3J/Z/5wQ8DErb/47oSYJe5U7ZT0O6VXR+sNNvZntU3dcE79G6dbI8VUMF4fp+VGDmjMQhTq+KpD80S8Y0yDe0hZUi8Xw+SrPqVrss3B6/gYLsagOmeLTYO1EB2A0HYByBqUZUQQXMGLFbMt1L4e+9zW18UykJm+S9H2hEo3F7A4r1xa1QcwENJmNOic07t0hJ+QC5BNIKrNGPUilWN/ROeY3cg480KjsrClGb0XaBlD/SBM1XMIwCMDSWmFu3dGFNSDtU4DhO8+e1pO751dJnVpgVzPac5iRvdcksYmEpqbklnZo5h1o2oqTP0GVmptWmK4OISgonnt5LpSIlA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ae792e24-945f-4219-4495-08d6f0efb5bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 17:42:45.9771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1936
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_104259_816118_8202228E 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "Jan.Glauber@cavium.com" <Jan.Glauber@cavium.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "Robert.Richter@cavium.com" <Robert.Richter@cavium.com>,
 "jnair@caviumnetworks.com" <jnair@caviumnetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ganapatrao Kulkarni <ganapatrao.kulkarni@marvell.com>

Add documentation for Cavium Coherent Processor Interconnect (CCPI2) PMU.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 Documentation/perf/thunderx2-pmu.txt | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/Documentation/perf/thunderx2-pmu.txt b/Documentation/perf/thunderx2-pmu.txt
index dffc57143736..62243230abc3 100644
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
+The DMC, L3C support up to 4 counters and CCPI2 support up to 8 counters.
+Counters are independently programmable and can be started and stopped
+individually. Each counter can be set to a different event. DMC and L3C
+Counters are 32-bit and do not support an overflow interrupt; they are read
+every 2 seconds. CCPI2 counters are 64-bit.
 
 PMU UNCORE (perf) driver:
 
 The thunderx2_pmu driver registers per-socket perf PMUs for the DMC and
-L3C devices.  Each PMU can be used to count up to 4 events
-simultaneously. The PMUs provide a description of their available events
-and configuration options under sysfs, see
-/sys/devices/uncore_<l3c_S/dmc_S/>; S is the socket id.
+L3C devices.  Each PMU can be used to count up to 4(DMC/L3C) or up to 8
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
