Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C298B1A36BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRHnqia6HEJqKymgbPOG6eYFCaL9THvsmkeqEoIlIPo=; b=PHIeKxmWaiGdF8
	yZSa4pNKB1sHe4E5pBeGPVX5OMult0nj/4KoZXe8XPanLW0mbl+Mzy2xI6h8/hd9zVXHDMGKUPw46
	HPS5jfM41aAmQ6xiabrEAI1QpaDB/MqyLBNOtzLZlbAQMRnVaZ33TbOazZNMzv4/pjlUvRUufguBg
	0SMTk0j1Sz0BWGB5Ay6cZ7zfXnZSMaHJon2Cz1Mb+PUwLTzQ8NTRoDV3FhnrFWHf3hZG7qkreiLM8
	/Iep6htcmDDhjY0T5F2L2gQhK4g6hOCKOrxCnpQsBl1wFKH9SUYYwA4yN1IdXpUu4k1qHrrWMuMbA
	oH1gvylrYjTWGvMUD2pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYuw-0005fC-Dk; Thu, 09 Apr 2020 15:16:34 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYup-0005eX-Gu
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:16:28 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FFXVk014764; Thu, 9 Apr 2020 08:15:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=QWu2M76m9hVSAXAAtmF1o1VVMW+6Oofv940UBtiP6Bs=;
 b=d7XLeGfUM1m7K618JK++g7W7UXJ+XWAvNSmd+pwohBeLpfKu+N7rnV5Fbr4vhfCK8SAz
 Zo17mHkKpWv6cuLKgK4w2Q7HJ4gkhC532bBb4mSu59OMS360vjKE/9ijNHKiep7XO0tK
 NsVjFrQsnu37+c1XBz/Kczs/4R0xglsx0YVGopfcndWPhVs2PtpCJAcmGZnPPv+GkVCG
 MIRvrATv8BrSKCIBbOz70uwVciuPMt/2O6Yh2ZzRYxJB2ohYh1X2OMT+Yd7oNjiqqkjB
 H9AdWBvhvSVtAfSSc3AbAGX1SACp6tQOss3619vUj1qRD9P4DuHNHjvaQtIQKYAC1SR6 Hg== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 3091jwh01r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:15:46 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:15:44 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:15:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:15:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ek5TuMsiUSRAlc7kJhdHLHK8nGltkIeB8G1xfCHP7jiLyj0iqCSWAKDg/i+lxv4+4+Bk8g06NvHIJNF/QuJ7mgAhGE/0axsKm/GdzlgCeJnT4zntONMUj2aKxSs8HUhRQa5nnHTclXZb1UQWg+Xw2QB5ZGzfsUIdy5kQAVVwIHnPxZ8V8HRtNS8OWSAYR/rJjBJnn5BI/wwaPdSD65OMPwkHpnDPLVRX3Ds/Fm2gsJ2GPc5wZ5QDPzoBWQr2DBw73y0KptA2nLRXUtZ7OAFcrTdnU5ed9d7r85AGm4ef3923uBGGpYTsQAT5hw4H/nmk35PcTDxCg7sruwQ43VXGdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QWu2M76m9hVSAXAAtmF1o1VVMW+6Oofv940UBtiP6Bs=;
 b=DBM/Sco5QhdOi1rNmPB85+rDn8IvPj3j3i8+kpiCtOhJYV3xScAlM+P1vVn3DLP55cznmAnFBTSyJkRMsBshj/15UFuvIgbrQJmoIVhjBCa/2ICwr3CUXXlG3s0SvlBC+g0K6T3iYXUlhPPAHhE+ytvVQYf4WDvCiXjcOdB0R0Vw+jvlN9MCSDOL4NtizhiM3o2/dukA6Ndqda9vRt4WDSfYpzdhcOcolJRILEInN6fEi7wwudqW451VzWw7x/i9qXbil2pq0xWGE4/w7Lhq4qC4HmZvFlZiu3fipj6S54x+xw5GPgWYW1f1VEVQ9n/9KFkR3NZzDKcDTNPt44SvDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QWu2M76m9hVSAXAAtmF1o1VVMW+6Oofv940UBtiP6Bs=;
 b=GgGRiAbg69eJwWEGUBUIjzwWmizNfoJ7v3f3Oq/jHK2/ajKL8IjdfkIlwIcT8klX/41xLCYu92d+K5l5K1CZl3wT+GRlYR2qcvXF5EbJjum9GgM+6t37ZHWQqx+emeHsXehUbkwyb7E73J2bByGMW2W16ytQeVs81FkUndGNdoQ=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2758.namprd18.prod.outlook.com (2603:10b6:a03:112::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.18; Thu, 9 Apr
 2020 15:15:42 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:15:42 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH 01/13] task_isolation: vmstat: add quiet_vmstat_sync function
Thread-Topic: [PATCH 01/13] task_isolation: vmstat: add quiet_vmstat_sync
 function
Thread-Index: AQHWDoG87dqkhBWgL0Cw8QsE6xEP5A==
Date: Thu, 9 Apr 2020 15:15:42 +0000
Message-ID: <bc58884986ec85418dda9bf629cb6b3c389de4f0.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
In-Reply-To: <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [173.228.7.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 283ce317-d806-4a32-2928-08d7dc98ded4
x-ms-traffictypediagnostic: BYAPR18MB2758:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2758EBC3B5D31A6370955CE0BCC10@BYAPR18MB2758.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(478600001)(36756003)(7416002)(71200400001)(2906002)(186003)(26005)(86362001)(2616005)(316002)(6506007)(110136005)(54906003)(64756008)(66556008)(6486002)(8936002)(66946007)(66476007)(4326008)(5660300002)(66446008)(6512007)(8676002)(81166007)(76116006)(81156014);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OkwhCHAY5goLA0fQmiM6TetQYIglVy7xWFOKhXivynbLClOQ3oSc7jUexvvEVtl0BeNMUB41/+QsbfTgSYd7yshdAKeK5N85vVL5Jz4ug0e1biHvEAbwPgnhLZ8nGMS54LHBIOmnuSn3h+eVtis6MZlSAkAntYISlagyHl0OmJXmymvHIwars335/uoVvT/7zxOSaMzSSigO8Y+z6jsVbj3Ha7DEdV1YprNmsh2YvhkYqqXFlraS+szYPkLuyO0lvSc6wN31hbXYojoUyquH7AkrQpnm5Z4kXOhwAbls8Ln/eYMJbzvdFrq9QlxfI/tKS4G0LmCPivYGE8STIReWGNMzUD5i3w+ceNaRHX0CCA/p/oQQVSv5jR27eFwbMa13mRIbaf+98kYODci+3xFaeNFayiCjGSrk62QjPDbvYIhiWyPrlEaf4ri9cdcBTqa4
x-ms-exchange-antispam-messagedata: rpSTL6Qw1A2IO3ff98dfyXjfnCGP0IVkVLdkFM/N3oqbIxV/UhcW5lwVJTs0FTV+UYhH8/IIp/6Uu07rPz9L2ziIn74rXXwnghxaev4hboLMbKqmjXfalsuCrlA+XlbgQLwFl1okGvVfIQzwYSLjNw==
Content-ID: <C996980330DF1341843865C54D056175@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 283ce317-d806-4a32-2928-08d7dc98ded4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:15:42.6311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8u8TVyVD7tNTSHD8Owz+u3APJ5DFMVfstqYsxbm9MB1J2iyaX7/ob1DIUJBgCwRHzy15Kow9OrQXcDuoxHmcfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2758
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_081627_577078_E790B3E7 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit f01f17d3705b ("mm, vmstat: make quiet_vmstat lighter")
the quiet_vmstat() function became asynchronous, in the sense that
the vmstat work was still scheduled to run on the core when the
function returned.  For task isolation, we need a synchronous
version of the function that guarantees that the vmstat worker
will not run on the core on return from the function.  Add a
quiet_vmstat_sync() function with that semantic.

Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com>
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 include/linux/vmstat.h | 2 ++
 mm/vmstat.c            | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/include/linux/vmstat.h b/include/linux/vmstat.h
index 292485f3d24d..2bc5e85f2514 100644
--- a/include/linux/vmstat.h
+++ b/include/linux/vmstat.h
@@ -270,6 +270,7 @@ extern void __dec_zone_state(struct zone *, enum zone_stat_item);
 extern void __dec_node_state(struct pglist_data *, enum node_stat_item);
 
 void quiet_vmstat(void);
+void quiet_vmstat_sync(void);
 void cpu_vm_stats_fold(int cpu);
 void refresh_zone_stat_thresholds(void);
 
@@ -372,6 +373,7 @@ static inline void __dec_node_page_state(struct page *page,
 static inline void refresh_zone_stat_thresholds(void) { }
 static inline void cpu_vm_stats_fold(int cpu) { }
 static inline void quiet_vmstat(void) { }
+static inline void quiet_vmstat_sync(void) { }
 
 static inline void drain_zonestat(struct zone *zone,
 			struct per_cpu_pageset *pset) { }
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 78d53378db99..1fa0b2d04afa 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1870,6 +1870,15 @@ void quiet_vmstat(void)
 	refresh_cpu_vm_stats(false);
 }
 
+/*
+ * Synchronously quiet vmstat so the work is guaranteed not to run on return.
+ */
+void quiet_vmstat_sync(void)
+{
+	cancel_delayed_work_sync(this_cpu_ptr(&vmstat_work));
+	refresh_cpu_vm_stats(false);
+}
+
 /*
  * Shepherd worker thread that checks the
  * differentials of processors that have their worker
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
