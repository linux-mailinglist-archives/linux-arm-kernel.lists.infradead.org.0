Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68859E522
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0J9CdDW2Dw0+n8pg4L74Il8fLl5lr2MM3tnDu+db74=; b=u3i3BdHPNu95em
	5NZT3ExbpksGmkgOpdBK/SwsIwq9XxYAALy0uml+w24Hov8JzSPEAOcdgC4HYBCa/ilu1wAk5Hqxb
	SlMfWcT+Get9ZCKIuZRd/upzlECGWxnKas1PiffhIDPojUxVhZ0mzQ6FCfaoPNICzB+MOtfaVb5Hg
	00LWFav4tyEhhJvsJ54eBx5VIOdXtRVFsGllE4KDUcvDD8Rf+1Nyjp4GvlE+vAK8sKzbVoI3Qy6pC
	WkwZJdj1VN7NzqnApThJaQ4Ug5nTEhCNUhQcm7e2CyPT/B/zN3uS4Snd6h4w/4QGXqtUlW1gI0khR
	iJOC76JHj0ECj8JIUlQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YHp-0003aN-U2; Tue, 27 Aug 2019 10:01:14 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YH1-0003Jz-Ie
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:00:28 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7R9oE5L000447; Tue, 27 Aug 2019 03:00:17 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=ootOdHAvtqQH4GwYY6kk7ctFqiK4JGyKzRkUe0LXTY4=;
 b=dA4u89+vU1OIztLa79p8DF7rnaoo/antx8fRj0bFAsF3bCTMjvp3D85jG4laNtOnfBN6
 AEHULvgguIrtxZXpZs2jgJ0czbuzgD0tZ85wjr+ke7AxUzdL/6D58AIsqly2yqnS/PN6
 3QYzi1/hwhx/Y5bpK5PtiBqCwvXH71sby9/OXFmNjy7qJ6YaB4OIdUvEleRMUV/im3x/
 Mv7kid7jg+tf9yI26hqDLSNeNV8RdAYlhDyrGvOd59NCh2XMDQpg5hdPCNZTkYatSTZE
 A8zWGpgyznKPfY13FnYxUxUkePjl6u1XhVHAUGHIVxg2jJe9RA6xDqmkdwtutW0k7OuY Mg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2uk2kq2xsa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 03:00:17 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 27 Aug
 2019 03:00:16 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.55) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 27 Aug 2019 03:00:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NK6O4b46POtR4c7kvukrspjmPaDziSY8/Dfpvae/FcUKcxoIp6lmgDWVaAclF6tYU03qNh+WN2b/9N83xuUtHxbmXeyjH7mIUiNEvONFdjFhXpCeLXcSzRSAuYdPR0VhAgkRmaNwxXBwJ5kTSKOgMoWpzOw3GOzLcycQSPoZPwBhCYdvXCa0HwD7Q62jL/10s77iEP2ys0eXuj7YvHviUnQWmtBgqcjbjKLSIxfHcN3EpR7h36yCskLMrh6ayLVUB9L0YWwMNTwLZO9eYvbSQb8eKfEwtR2DX9nnB2eRhsj1VcnBcyoPYKRZmXajpvpFOQCfrSAbInqdLrZWGKUf4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ootOdHAvtqQH4GwYY6kk7ctFqiK4JGyKzRkUe0LXTY4=;
 b=RVmXzprd8IkDnhjTOY/C9MXjIDpdgO3OKv05ufjEehp+104bfXwFPhYdiXE8kDDSxfNlsKMxKMYsClQBLPV96HRCuDjCEM+4CswXRIRbDeVTstwQQ+Obwa7hmc8hDLLaSlIZbjbzd+Sq/mEMEqcHm85hj9GKu5XgQT7BcUcwKXKOU/ZUkwXyRzjSyZuqyFURAE7i3MglrLA3UiLsRXTWQpzxRwTIVVd5pJenbVdv3Au9lCGCCDXnNcEMt167LepYJ7ARFSwqxme6WuJF55Qbom4B2clwTXpIb9b/HNAwVAqmIKK5bQH2tX9fw1Yvcv3rdcnrVG2b0L0S67xSFj2mYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ootOdHAvtqQH4GwYY6kk7ctFqiK4JGyKzRkUe0LXTY4=;
 b=c7ktWF73BAseUfBBW4dA8Ye2abXA/Sv0O2XGSK8hPwDkngbE2belcItL1Xm6xPg7eAxifqLTFYqW0fwlN5BdJqBOhUnYJd6ILb6aZlZNOQR1MmWPgEpUtbs14LXCsQAUSLfx7lPTDdgwevG/re1YSu4csiK1JXAkYu5SmwPMhYo=
Received: from DM5PR18MB1355.namprd18.prod.outlook.com (10.175.223.16) by
 DM5PR18MB1675.namprd18.prod.outlook.com (10.175.224.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 10:00:14 +0000
Received: from DM5PR18MB1355.namprd18.prod.outlook.com
 ([fe80::3cbf:34d2:5b36:e127]) by DM5PR18MB1355.namprd18.prod.outlook.com
 ([fe80::3cbf:34d2:5b36:e127%12]) with mapi id 15.20.2199.021; Tue, 27 Aug
 2019 10:00:14 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v4 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Topic: [PATCH v4 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Thread-Index: AQHVXL44aHI36qxaXUaCNM2ViMjXSQ==
Date: Tue, 27 Aug 2019 10:00:14 +0000
Message-ID: <1566899990-18277-2-git-send-email-gkulkarni@marvell.com>
References: <1566899990-18277-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1566899990-18277-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::18) To DM5PR18MB1355.namprd18.prod.outlook.com
 (2603:10b6:3:14a::16)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfbde55b-84dc-4d15-16d6-08d72ad55b18
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1675; 
x-ms-traffictypediagnostic: DM5PR18MB1675:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB1675CA61246D1BC3456102A8B2A00@DM5PR18MB1675.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(199004)(189003)(7736002)(8936002)(305945005)(4720700003)(8676002)(50226002)(81166006)(81156014)(66476007)(66446008)(5660300002)(64756008)(66556008)(6486002)(4326008)(2501003)(102836004)(14454004)(386003)(6506007)(26005)(186003)(6436002)(76176011)(99286004)(6512007)(52116002)(86362001)(2201001)(110136005)(53936002)(256004)(486006)(54906003)(316002)(6116002)(3846002)(66946007)(25786009)(476003)(71190400001)(71200400001)(11346002)(446003)(36756003)(66066001)(478600001)(2616005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1675;
 H:DM5PR18MB1355.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MsTrubtRLqk/n7RSzSYHbIoD2aISMHIWvzVCFaQJ8/UDQNBdYCbRvczUvWG/gHbrEEpaIAvHQkUtv4It5rV+7RwEPjVMmzt8yE7a8ljBhCpoBxpYMK71pzAPDDYlRMyp5rOSYQaNxPApfZF3dWujKCansipE68lOAT8FlMv7tbEvC8TN24OfMVL29/qGxhk34PQB2VgRLoFJ5xp/yKxJ1CzkZvNknKb6oEhO/RmmUHiB8KPR9xaL2be5wWYeuBKlLgI6ZQTRl35gjhLpuqsQkiuL8DH9cKZZtsKrs/WKlFNpkVErdjTgi+O15xA+LKLVEEWv2evAOc3LXB8wmdIdHzTAOF0d/PQUNKzPxTx+ZdTV+cdGbqaD3Z/A9tyf5xb/9t74O1OL9f2klD5BmVtVTOhj5kFCzF8gPb3r7iD/nRE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbde55b-84dc-4d15-16d6-08d72ad55b18
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 10:00:14.4988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SXtboQ0YaeyC9qqFCib1IDLlrMDiVnHFWaQD7VP2N/E7aOlP4s4P7MO4MvQQjUlWrzLkzWAdHROT2EWGBddHdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1675
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-27_01:2019-08-26,2019-08-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030024_492037_661C4745 
X-CRM114-Status: GOOD (  13.57  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
