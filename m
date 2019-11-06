Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E957F0B60
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 02:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpnyVM/N3r/1QzZnCNmhuKQEdIpiXAcvcTjN5e6CIGI=; b=ErZRhYV//2qXBg
	nbOk7+VPHwfhdWGOqD2LxFh+YHwGx8yCZuIvDro89nMtiJcoCb7x6h+qrkAVsmHLkFrLuRZuWsCTY
	n93P1Qu5lEuF27bNq51JOYDOVy+5mcxxdzrn2Y1v62/5RcWOxIHWzDnEC35Erh/9q/erOC2TjvFuR
	oFp4iL5TnKPwyOFOii1dtpkRP1T5wt8u8cYqm89393Wqgbm6kL8MwCpE9JJMQ4uZ6a68COCjC/Q3n
	hdPrs0HHmxVQkl2jNDDBAVm/80kCIdDjdny422SPuOQGLd0HddXQqogbbwMq1kScu4X1Vwfaimpzk
	cIlfMdb7pBYJ8uOwpdtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS9i4-0000x3-Le; Wed, 06 Nov 2019 01:02:08 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS9hu-0000w1-AQ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 01:01:59 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA610Ht2028491; Tue, 5 Nov 2019 17:01:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=62qZ8dp4yETtehOHhsfTfrkuKzaCvVKHesIgkhEWyDk=;
 b=o4B5CVfOXB+u7mr0+3vou7zLdVXpiVlcAzLjTLqqhhARrdDk3OLB0ROHvomJmS6jYmlH
 tSWOVglaLdh68YOIW1Ij2qepcsqXwE+42o8nR2+5nb5bj64o8l4jHz3v3Mu/ZbDyoeBv
 f+oJH6eiDIF5k/6vWUafFIV4lZ4b0M29sGnBhWufERAGRklWI0fHHC0SYivLaxpjmOlI
 YkSgPNrYXwYKcaEABCialP3UyAD+WN2XCcRky3ce9GShhK+ZUha2l/ElGucRbpfLWmVU
 HgBAf6m0QtTi4VsDSrwg0oYy/6vSOcBM+6zkeQMx3np03zMFfCP4W82G5wEqvO9kV4pi 2g== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2w3eud17ed-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 17:01:42 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 5 Nov
 2019 17:01:41 -0800
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.59) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 5 Nov 2019 17:01:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gM2TGTiCA5xwejyp0RK19g+J0WFWI521Hc69/w+T8VwEFlSZILDyjh4gT6qnQYR599KDyopE6zyhs53kqo4Y+DeS4WO4hbmsn9Bfig21R5TaTYb0kj4lz29GwDGDh0EZliSwsTTb0om67y8bbH8CNtI2/N3rkNjgitqeFufFdCT+dmPMVFoM6qgLQYOKUB+jtkCkdbEeSa8q5Kg2SJNRBlmSmkVw967Aa3Liae3XcGiJpDgEwjIvU6viJ+xNbT16x8CeJZfgREy1bSvg6lmJa0Oul8Cx2NuBAw3VhNSreJh5lGCK53tbok6q6z/niILk3VJkAMLbpXdxjExKon7yWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=62qZ8dp4yETtehOHhsfTfrkuKzaCvVKHesIgkhEWyDk=;
 b=kpeEjj8Cjlqsg9IQTuKRQJHdLzJhpWJ2DqU5Em9dDAHwllORev8MP+Gqberz+1xDg/n1rI4ydBJwztNnKjtxJ/ajFsBvI4fvXCuasW+oz/5ACDbBZyXg5icVMywHyjNAyMdomZUVW2ZwUxU1izQeXfucQLWDRcm4cykfD15PdPT8w0qHqnhB2azjQxpSJCcRLAKrEeU8BLkbFeLzxq7vr9soqL+8ukIQirw/xtOvDF6fMScUCJ74oPStq7HMjuGKtLZvMYD4w1NYGBublkrGf4hlzCN9BLEwE6ewp7N2n/Z/4MuNORDcfby2Bzfvchmq3MFWchXO3YeX6iivpRJuZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=62qZ8dp4yETtehOHhsfTfrkuKzaCvVKHesIgkhEWyDk=;
 b=bSS2CSToMz3gkufQ7Ul7G0a9HRO+rvKnLLwU4jxyk7fcGvjZ0kR/vXJ+yL3UftELxK87AzsBq9Sa+kdfXe3ZLi8NCZPxEypGymMC4qul8DN2WYxaCQsW7bCJDhBoLbiy+VV9SGyDo9hHzz9LKBZlqIMD9NVpYiggNUBNFIgcdp0=
Received: from BN8PR18MB2868.namprd18.prod.outlook.com (20.179.74.155) by
 BN8PR18MB3058.namprd18.prod.outlook.com (20.179.72.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 01:01:40 +0000
Received: from BN8PR18MB2868.namprd18.prod.outlook.com
 ([fe80::431:e92e:ca76:f241]) by BN8PR18MB2868.namprd18.prod.outlook.com
 ([fe80::431:e92e:ca76:f241%5]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 01:01:40 +0000
From: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Thread-Topic: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Thread-Index: AQHVlD2/iZKAhmDmiEmnYqFl7ZfEnQ==
Date: Wed, 6 Nov 2019 01:01:40 +0000
Message-ID: <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR11CA0087.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::28) To BN8PR18MB2868.namprd18.prod.outlook.com
 (2603:10b6:408:a2::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37a916a5-e55a-4432-b72b-08d76254e1c6
x-ms-traffictypediagnostic: BN8PR18MB3058:
x-microsoft-antispam-prvs: <BN8PR18MB3058FF1A1CE082E2CD3A99FAB2790@BN8PR18MB3058.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(66476007)(66066001)(50226002)(25786009)(3846002)(186003)(6116002)(2906002)(305945005)(6506007)(26005)(5660300002)(386003)(4720700003)(8676002)(8936002)(52116002)(81166006)(81156014)(76176011)(6486002)(14454004)(6436002)(66446008)(64756008)(66556008)(99286004)(478600001)(2201001)(4326008)(102836004)(7736002)(66946007)(6512007)(86362001)(256004)(14444005)(2616005)(486006)(446003)(11346002)(476003)(71200400001)(54906003)(36756003)(71190400001)(316002)(2501003)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR18MB3058;
 H:BN8PR18MB2868.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vhj8sVThlZ1CZNU8xzLhmSFypz2M6gdr2TJVhGNkc7eYxwkMuyf75zXwtx4Sx2dFDti1Fb2Y3TozO0AupT1WVv0VgSoUrPzrl3hJHFdiH1Tt7vyeXgnybRSHANSEzdM11mf4R1DQxZmm849x6VvV6GC8tU6Ij9Pip3w9Et1lAztjSKfpvVuWjE/ZjiK3jKY3OQDJlzjfDmRRS7zsBxG2jufGY1bhjuJr9A3dY+7H+N/8W/WT167FTzbZDu6hVy4dK4zHeyWxIZA4PA21/i1euweDXQkR6ka6S1bPUu6mN49fSb1bh9FSNsdH6iK8ZQBd814VtIXwcC33sMlrFttSl44l7d7Y/CmYZr3W7SoulDyViGu/EL/XebVNly/J3nWWB6NXynZ/LTNJgVGxn0rVxPmQ+MLdcXJB2PiJJr1moacOSynefpwm2p/AqR01g+4T
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a916a5-e55a-4432-b72b-08d76254e1c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 01:01:40.2705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Fs3QPT7lW8ATWwmiX1fU+7Fgxmtnn90dVv9MIuWWpBA4xLkcpEud1hrHq8yFdoJcmG7lYPTCiE6xFTLAMZgTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR18MB3058
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_09:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_170158_423060_F08A6C39 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "corbet@lwn.net" <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When PMUs are registered, perf core enables event multiplexing
support by default. There is no provision for PMUs to disable
event multiplexing, if PMUs want to disable due to unavoidable
circumstances like hardware errata etc.

Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
to allow PMUs to explicitly disable event multiplexing.

Signed-off-by: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
---
 include/linux/perf_event.h | 1 +
 kernel/events/core.c       | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index 61448c19a132..9e18d841daf7 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -247,6 +247,7 @@ struct perf_event;
 #define PERF_PMU_CAP_HETEROGENEOUS_CPUS		0x40
 #define PERF_PMU_CAP_NO_EXCLUDE			0x80
 #define PERF_PMU_CAP_AUX_OUTPUT			0x100
+#define PERF_PMU_CAP_NO_MUX_EVENTS		0x200
 
 /**
  * struct pmu - generic performance monitoring unit
diff --git a/kernel/events/core.c b/kernel/events/core.c
index 4655adbbae10..65452784f81c 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -1092,6 +1092,10 @@ static void __perf_mux_hrtimer_init(struct perf_cpu_context *cpuctx, int cpu)
 	if (pmu->task_ctx_nr == perf_sw_context)
 		return;
 
+	/* No PMU support */
+	if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
+		return 0;
+
 	/*
 	 * check default is sane, if not set then force to
 	 * default interval (1/tick)
@@ -1117,6 +1121,10 @@ static int perf_mux_hrtimer_restart(struct perf_cpu_context *cpuctx)
 	if (pmu->task_ctx_nr == perf_sw_context)
 		return 0;
 
+	/* No PMU support */
+	if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
+		return 0;
+
 	raw_spin_lock_irqsave(&cpuctx->hrtimer_lock, flags);
 	if (!cpuctx->hrtimer_active) {
 		cpuctx->hrtimer_active = 1;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
