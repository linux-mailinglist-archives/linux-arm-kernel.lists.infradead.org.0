Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1660E133AB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9N2uDAbbtmdrUGcrMTgRxj2db4980cGLeO4Ms/IHL30=; b=ajcmR4j2Ku0+3W
	xfK72lcoqtlTLVBnKtW08pjbl4mmqzBKjt5Gt3TebH8PbFGG9+BYofIv/zKGWGd/AHpAQpTyY9THW
	VNbFQOyZTJT8gzMsNCccSL74d7QiG3IGnUPpoJO7RkrM0ac8T+/K/ofhaW0FlyNK1kWU3lF6wEFAJ
	ezisqHKUO2KOlVvSPIdlyyIAMn7CFBgqSrrVwVfp+IS2Z6MK9RTlbkC5SgcB55Lw/omOMjyw4yfxX
	0EFLCdtoJCLFxHjav1m80202rT9H0ymO2AUMyVWo8iJwuwA02CqqHlFjvE/2gABF26tcLwQLvAuo4
	8cTQ5nR4JqI9/JESrtRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3bh-0008BX-F1; Wed, 08 Jan 2020 05:10:13 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3bU-0007hB-VI
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:10:02 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00855DIg016143; Tue, 7 Jan 2020 21:09:08 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=xP5TTlhvxvHm65wI+CBWlDB8cS4RuC07YmpmecR9Kjg=;
 b=e870uq3rfwdwmzZvSbsffy/cJD9iVoIHFeoaqNsuUIqUJBzMGMmvUv6YDAUQxXoE11VT
 TlW/Rj6ENsxnEnrhriL+BgFfKO4u3TeN+l9JphOOXonlhHVENz51ftr3wOln4VdsGoX+
 wrbRwk4NxbhuIcXwSDaxyPACUFQeEfANMzopqASrbnFmO99xYg3NV/GEilfU+lTr3GCJ
 XUZ/JMnIKJ6p/ORfgxF31Z43q1fjBwHUWj7O2Mq30+gk375vBgiJse1oN/LGXGmBSSK6
 gUYEEIGgBVjwB3+jDY/rAEQ1gEtm4ph6G/MmnFVIk8tie2UvHHkaR9R9Zn/AZ01uhrek iA== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2xarxvdhe2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 21:09:08 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 7 Jan
 2020 21:09:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 7 Jan 2020 21:09:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pe5h1sgCntsLJ17gvtklpzCfxwh94Qi7f7K1BhNdTmhGzKqO5gt2olQD60dZp3uej+HKkVM/j0wIyD9JURoPTIK7F5IBEeWbjcLfdmWwsZmh753n5Uo4aeapJqvHylQLkE29428b0gI0CbFiyLAaG0PjFSZy3ZItgTNB+RlxI81Drn12a2jWgioahxWfap7+fTa24URUqbmJH7EAQ+jmuvjg8cuZC4hTsGIeo+zv0ARuFsmVYj4JK9Cg/0oJwMxBV+5VMQMTkFX62OGfNU2ggIXXx+z6shiOw36JZyS0R6+sIE35QpiyeAlEEQXFJe39KgimSl6fGcEIsvfDHPbu1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xP5TTlhvxvHm65wI+CBWlDB8cS4RuC07YmpmecR9Kjg=;
 b=Dxm78HuNuLsoG0UkuD/JIP3hdUNNLJeyzhCQ4cGQhy7i8M8PrrSJyTJe72dAnJVm/oEZlq0WK3/MYLACb89Q6WvDfqKUnLm8p930BQooivnvf1/2HYlTBV3eKYyBcBSC9u/NtvVClqfkqzUP6DwHFNkDoQ2eKyTYe/CvtYwYa0J1r8+RfIewSZA2cBJjVF1gcNMZl7A3CSeLO8LnkWW7jJ8wi5YIgj5Za5NfExqdtKe92aYsCYfW8KZNysnXFAuvYyL9Jn40Jce6zkI91y9WktdENm6LxxkrhFG5/RucZYYblwi9zLm2T2uxDaGU+k3H8jKDVo/X0h79j9CLppGvtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xP5TTlhvxvHm65wI+CBWlDB8cS4RuC07YmpmecR9Kjg=;
 b=hCsGwfcGsAyKvC2ffsVJgKeRhgynT7krXM7OsbQw11EU3ziifdhIWaw6bUDBv7slD6c7GpdwfwKf9Qzi+0ATjQcQHKkWtdYpRISpwllkECJmOeNE+9eAt7RUdGy3XJkeuY2pRThnXG9PbfDqsXSWOa7pF/qOgzuoo/o2bMLBmvE=
Received: from MN2PR18MB3055.namprd18.prod.outlook.com (20.178.255.209) by
 MN2PR18MB3086.namprd18.prod.outlook.com (20.179.21.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 8 Jan 2020 05:09:05 +0000
Received: from MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::945a:2c80:884c:d564]) by MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::945a:2c80:884c:d564%7]) with mapi id 15.20.2623.008; Wed, 8 Jan 2020
 05:09:05 +0000
Received: from dc5-eodlnx05.marvell.com (199.233.59.128) by
 BYAPR02CA0070.namprd02.prod.outlook.com (2603:10b6:a03:54::47) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13 via Frontend Transport; Wed, 8 Jan 2020 05:09:03 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Alex Kogan <alex.kogan@oracle.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>
Subject: Re: [PATCH v8 0/5] Add NUMA-awareness to qspinlock
Thread-Topic: [PATCH v8 0/5] Add NUMA-awareness to qspinlock
Thread-Index: AQHVv0rh3+YZnTkYH0GBkMgywBMCw6fgRN+A
Date: Wed, 8 Jan 2020 05:09:05 +0000
Message-ID: <20200108050847.GA12944@dc5-eodlnx05.marvell.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
In-Reply-To: <20191230194042.67789-1-alex.kogan@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR02CA0070.namprd02.prod.outlook.com
 (2603:10b6:a03:54::47) To MN2PR18MB3055.namprd18.prod.outlook.com
 (2603:10b6:208:ff::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fbf00e2-cc1d-43f5-7e90-08d793f8e252
x-ms-traffictypediagnostic: MN2PR18MB3086:
x-microsoft-antispam-prvs: <MN2PR18MB308637644A4F7024CF652EF9D93E0@MN2PR18MB3086.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39850400004)(346002)(376002)(396003)(199004)(189003)(316002)(7416002)(86362001)(966005)(5660300002)(1076003)(2906002)(54906003)(81166006)(8936002)(8676002)(110136005)(55016002)(81156014)(66476007)(64756008)(66556008)(66946007)(26005)(66446008)(16526019)(7696005)(4326008)(478600001)(956004)(186003)(52116002)(71200400001)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3086;
 H:MN2PR18MB3055.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SsJHsmoPIUkq/uhK/7aZoqubaXce9EYr9oSsB+IS7bi/nByEFcx0UrphRvxOznhB74KcuzIL4WYMhplFBx25G4M1iK3zFaJgxqIvRzpXLQArYregJfh57p29y6pSNnsS/5/gvo8uMxXqBlvdLaFVSqGXA9YTccQcXw1NrO4R6InSNMvxdB0iIDXEGW7FlFkXcIvtyKjNl4WZov9D7h7g6zzHOgaOYfmZ5Wx01hnd0wUo5dlnzU/U3RmiWt0zIiiYJKuxJrqy4ScCuqyPJx9J5fcziOUmVuXRemsT+/mBREo7YRWM+J0zAN/6Z4+2xXQW3k1r9PoscOAg/S2Y0K3BFr4UtNCbc/xOQjX9lnPG/3uiPVvIklkuFT/oK9Iyf8EBUsISFMwJpW+VvxXn6sEIh1h3R8tDZ2Mwyzjr7RkvYQhbcXtqnSBVucTsAvdHm63pMBD/odLU0dyGn/QsGNRlGujt8OfMINcBbmlufB9Exo7DqTYV/Eig+YrioZoYYlGVSO+g3/Y28FTy3fJ3dPjhrw==
x-ms-exchange-transport-forked: True
Content-ID: <73759E6B28304F49959E310699290855@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fbf00e2-cc1d-43f5-7e90-08d793f8e252
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 05:09:05.6792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qCGyXd7XUy3WNjLztFIPpJXcpuB9NcbovkRIh1iBLoGr7vZfJWG4v00PewMRyJvuXjtE0bpQgWkmUKEvmRxgjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3086
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-07_08:2020-01-07,
 2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_211001_077322_7F4B880B 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "arnd@arndb.de" <arnd@arndb.de>, "peterz@infradead.org" <peterz@infradead.org>,
 "dave.dice@oracle.com" <dave.dice@oracle.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "steven.sistare@oracle.com" <steven.sistare@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>,
 "hpa@zytor.com" <hpa@zytor.com>, "longman@redhat.com" <longman@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "daniel.m.jordan@oracle.com" <daniel.m.jordan@oracle.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Mon, Dec 30, 2019 at 02:40:37PM -0500, Alex Kogan wrote:
> Minor changes from v7 based on feedback from Longman:
> -----------------------------------------------------
> 
> - Move __init functions from alternative.c to qspinlock_cna.h
> 
> - Introduce enum for return values from cna_pre_scan(), for better
> readability.
> 
> - Add/revise a few comments to improve readability.
> 
> 
> Summary
> -------
> 
> Lock throughput can be increased by handing a lock to a waiter on the
> same NUMA node as the lock holder, provided care is taken to avoid
> starvation of waiters on other NUMA nodes. This patch introduces CNA
> (compact NUMA-aware lock) as the slow path for qspinlock. It is
> enabled through a configuration option (NUMA_AWARE_SPINLOCKS).
> 
> CNA is a NUMA-aware version of the MCS lock. Spinning threads are
> organized in two queues, a main queue for threads running on the same
> node as the current lock holder, and a secondary queue for threads
> running on other nodes. Threads store the ID of the node on which
> they are running in their queue nodes. After acquiring the MCS lock and
> before acquiring the spinlock, the lock holder scans the main queue
> looking for a thread running on the same node (pre-scan). If found (call
> it thread T), all threads in the main queue between the current lock
> holder and T are moved to the end of the secondary queue.  If such T
> is not found, we make another scan of the main queue after acquiring 
> the spinlock when unlocking the MCS lock (post-scan), starting at the
> node where pre-scan stopped. If both scans fail to find such T, the
> MCS lock is passed to the first thread in the secondary queue. If the
> secondary queue is empty, the MCS lock is passed to the next thread in the
> main queue. To avoid starvation of threads in the secondary queue, those
> threads are moved back to the head of the main queue after a certain
> number of intra-node lock hand-offs.
> 
> More details are available at https://urldefense.proofpoint.com/v2/url?u=https-3A__arxiv.org_abs_1810.05600&d=DwIDAg&c=nKjWec2b6R0mOyPaz7xtfQ&r=G9w4KsPaQLACBfGCL35PtiRH996yqJDxAZwrWegU2qQ&m=AoOLTQlgNjtdBvY_yWd6ViBXrVM6o2wqXOdFA4B_F2A&s=yUjG9gfi3BtLKDEjgki86h52GVXMvDQ6ZClMvoIG034&e= .
> 
> The series applies on top of v5.5.0-rc2, commit ea200dec51.
> Performance numbers are available in previous revisions
> of the series.
> 
> Further comments are welcome and appreciated.
> 
> Alex Kogan (5):
>   locking/qspinlock: Rename mcs lock/unlock macros and make them more
>     generic
>   locking/qspinlock: Refactor the qspinlock slow path
>   locking/qspinlock: Introduce CNA into the slow path of qspinlock
>   locking/qspinlock: Introduce starvation avoidance into CNA
>   locking/qspinlock: Introduce the shuffle reduction optimization into
>     CNA
> 
>  .../admin-guide/kernel-parameters.txt         |  18 +
>  arch/arm/include/asm/mcs_spinlock.h           |   6 +-
>  arch/x86/Kconfig                              |  20 +
>  arch/x86/include/asm/qspinlock.h              |   4 +
>  arch/x86/kernel/alternative.c                 |   4 +
>  include/asm-generic/mcs_spinlock.h            |   4 +-
>  kernel/locking/mcs_spinlock.h                 |  20 +-
>  kernel/locking/qspinlock.c                    |  82 +++-
>  kernel/locking/qspinlock_cna.h                | 400 ++++++++++++++++++
>  kernel/locking/qspinlock_paravirt.h           |   2 +-
>  10 files changed, 537 insertions(+), 23 deletions(-)
>  create mode 100644 kernel/locking/qspinlock_cna.h
> 
> -- 
> 2.21.0 (Apple Git-122.2)
>

Tried out queued spinlock slowpath improvements on arm64 (ThunderX2) by
hardwiring CNA APIs to queued_spin_lock_slowpath() and numbers are pretty
good with the CNA changes.

Speed-up on v5.5-rc4 kernel:

will-it-scale/open1_threads:
#thr    speed-up
1        1.00
2        0.97
4        0.98
8        1.02
16       0.95
32       1.63
64       1.70
128      2.09
224      2.16

will-it-scale/lock2_threads:
#thr    speed-up
1        0.98
2        0.99
4        0.90   
8        0.98
16       0.99
32       1.52
64       2.31
128      2.25   
224      2.04   

#thr - number of threads
speed-up - number with CNA patch / number with stock kernel

Please share your thoughts on best way to enable this series on arm64.

Thanks,
Shijith

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
