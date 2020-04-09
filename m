Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13D21A36CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aksR3WTDGYzHMnGmdYVu0wsy1ZmiukZVQDHDJxtxMF8=; b=ad75GH5sM1MBv4
	eoDp1QH4CCo2doI6sIyAcr2mpMtTyls+V0aRuV4A3vgt4nyboz1j/En2H8pPTTtV672OcUh0UAS1h
	uldbmLGCZWVs+4/fZjkekqPreAXZm8BCZg8apW/W0K99GdhGSPDeO9JGYWx9LvuvFgISVfp8dt23c
	rDoSBvRjME0tQtJZg3y2B2XGzLXnkM6SlO4g1mCuUA58+LQJbMfeKMeFmi3HgC4qBYwSio5BlxZ+e
	y5Ev24ztX+RWTfAW81xZvBSVxKr9RQLQFMbPGNse5s3Rq5fD9ExfWFcToXgYNFU1qL0rKCKLfzYON
	17r/j4hZt5iQhlYVgV7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYwm-0006KB-L4; Thu, 09 Apr 2020 15:18:28 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYwe-0006Jj-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:18:23 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FGrOm019691; Thu, 9 Apr 2020 08:17:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=kZ2+j0FCzkWqNio6rCPrs7enWlq6NYbcuZo1CoUS2GQ=;
 b=Kc94aWrlfz0KrcCajAThCRyZax+qV77EhqG68kHApX4VYvxR1OH0ggcZ+PG5M7NUxIbX
 8urkkm0P4aUVxNSQe9/ZihHSL+8vGXISDj5+sd/mbtbHSPjMFCVXSTd3hJJI518Vtd7x
 OxAlZPN2zBFvaUnlZq/fcCmPp041n/W7gCN1DzZHQIBqJleVebwDr67XsWH9QaA3n0lA
 2fi7z5V5BqvTTQ1IN5OEmqmFGQh0vX+F69amx+5eRVnBDmeB/hR5cHXZlY35GhwFKI00
 Mlo5I5pgnpgTVrsYE8Hxrz5Y8lSIIJqtQi0ZnMz7V1A8TDDU1ODyudRKHXTdya+GMbdb cA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me8y58-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:17:43 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:17:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSuTPqzcO3FdRszOiqJFCb4/R46kRs0DMNgNyQpex3GiSEPdKhBcDVmByOO1zUsrXtdklh80sW/9fg/wEZR41a9j6s2zjMo2JNxOmrCsaOrzV6gW1sB2oGJoR53u3Mn6EwlQIz851wGIuHiIb9utVqGqMubNoTy0yK+rEj2D64Ie5qcRM5VB5IAci0pLL+rbhrNWCB4+92pyC+5stXLknJMk6uDO5H8Add7XiWnVJI1HTkDpR6Di0yVn4H0lyNSLJVdA4PDwyvPrzaj5pwm1swV4Q4c3HgYpTFxHtCtILkvnFkyhETjuSJGI1AkgtiiQgui139ackrS5wYgd317CQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZ2+j0FCzkWqNio6rCPrs7enWlq6NYbcuZo1CoUS2GQ=;
 b=WvoNSrliSluATuBJ18+QokXB0i9FyBDAaa0Z8uK6hzyif/kUU1iBYoYvKZwObAz0wim/M2aMbXtTgx/pX8l6jOAxUq4LVB/Vo4FuTEmDdE8Uxvfr8gUQsj+/zWUJ2kfQ98YyChrPdLdNaWwxPagySk+cWoQaDefMricmqav2IL9ghTLwgDjZEjnWeXwNAZ9ogQ8CHR6WPkmzCvx+q9T0pMzcZrHEoyjVO85FTgnkGD7h8Y07u2PlIXAby+ojp+T917as1OfInkZ5QJl6BgNDSsJh2DO0sur201fIlQMowyDHZd7bbM2vfGEzi/KIhOq6Tf/U4Rzle3mX0kbueZ5oyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZ2+j0FCzkWqNio6rCPrs7enWlq6NYbcuZo1CoUS2GQ=;
 b=sfGOb5qoCEnzYa/fCbPmRauBX/6FCvd5fpADnmDvfey0HttKvHsQSh03dspYFBiOSKj+VD4PG/b4xESCs8p9iMlsq61N/5NScabJPtb+fUw4Z9GSPh2p9+7E5SYOCqUEPr9Gacko9d1QVWbpHV+3PYdVk4Ja64C6/rochgDZ8+Q=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2758.namprd18.prod.outlook.com (2603:10b6:a03:112::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.18; Thu, 9 Apr
 2020 15:17:40 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:17:40 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 03/13] task_isolation: add instruction synchronization
 memory barrier
Thread-Topic: [PATCH v3 03/13] task_isolation: add instruction synchronization
 memory barrier
Thread-Index: AQHWDoICUCw40vC9nkuNpTFu2Vf0Xg==
Date: Thu, 9 Apr 2020 15:17:40 +0000
Message-ID: <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: f48ac113-0493-42dc-d74a-08d7dc992507
x-ms-traffictypediagnostic: BYAPR18MB2758:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB275888C99422094A841557ADBCC10@BYAPR18MB2758.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
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
x-microsoft-antispam-message-info: 1UPrewe9j5MkY+wG/WKajqXFVDTnUiTHFMhogoclXy0Rw/5moqUaZ5jCOSkPCfSINsK3k73LcFWKobQkCbjbeA4KiB3hndNDDdwWaG7BYshR5Tz0Sv0pE/bJ5C0wAh3lfckuoQzrzwwrj2JSdSXOvYlfzYzI2InWyr8EjNsR+0unUv4EaGF33fciOSoRJ0VmxdBwBn4mOnFv3YBl8dN8cOTrsYteihDjkgQyOTFuRBYqwVA4Z+lZCkdBBiSGVxZPmUemwQ2Angf925SJZzAuDrPs5Jn8q0FPlQNC4wp/vjMIuS7aiRx6gJm2r+SDn3CF0nsw19oQ5tEL8MN/E58qHfAO2EPiuvlaXox3sY9mEhtcM1V4BEejq4uGdTwdb1POruFSZh1mUo2cZN8lD8S+MeLZIQ4YowWhuPqR60d/lA+KaxKajNivYISa61ZsdJwt
x-ms-exchange-antispam-messagedata: 0o8qkoLBk/b1R3YpNyeGdgB8rpVkEHsucY6QTU9XECOwnAeKLsjq8jDAc6JLtVm4nvujBXjDG8aq3nREQ8bzgbZne5itngwLnDTxI5ES16p+BQQyhoG1Wy+RY9fRcQtht6AgPU2eTIYUfRGYugibOg==
Content-ID: <C879A473818C5842AE8227975E64E5F0@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f48ac113-0493-42dc-d74a-08d7dc992507
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:17:40.4002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W3KXvRHORmUTmHCt1fRAQvcViE7LPxCbEhHIEFOke9o+mCnnWbZxxGws1+KrZHRdhNqBTtPQy7og592j5gd6Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2758
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_081821_172327_C3F9994B 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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

Some architectures implement memory synchronization instructions for instruction cache. Make a separate kind of barrier that calls them.

Signed-off-by: Alex Belits <abelits@marvell.com>
---
 arch/arm/include/asm/barrier.h   | 2 ++
 arch/arm64/include/asm/barrier.h | 2 ++
 include/asm-generic/barrier.h    | 4 ++++
 3 files changed, 8 insertions(+)

diff --git a/arch/arm/include/asm/barrier.h b/arch/arm/include/asm/barrier.h
index 83ae97c049d9..6def62c95937 100644
--- a/arch/arm/include/asm/barrier.h
+++ b/arch/arm/include/asm/barrier.h
@@ -64,12 +64,14 @@ extern void arm_heavy_mb(void);
 #define mb()		__arm_heavy_mb()
 #define rmb()		dsb()
 #define wmb()		__arm_heavy_mb(st)
+#define imb()		isb()
 #define dma_rmb()	dmb(osh)
 #define dma_wmb()	dmb(oshst)
 #else
 #define mb()		barrier()
 #define rmb()		barrier()
 #define wmb()		barrier()
+#define imb()		barrier()
 #define dma_rmb()	barrier()
 #define dma_wmb()	barrier()
 #endif
diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index 7d9cc5ec4971..12a7dbd68bed 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -45,6 +45,8 @@
 #define rmb()		dsb(ld)
 #define wmb()		dsb(st)
 
+#define imb()		isb()
+
 #define dma_rmb()	dmb(oshld)
 #define dma_wmb()	dmb(oshst)
 
diff --git a/include/asm-generic/barrier.h b/include/asm-generic/barrier.h
index 85b28eb80b11..d5a822fb3e92 100644
--- a/include/asm-generic/barrier.h
+++ b/include/asm-generic/barrier.h
@@ -46,6 +46,10 @@
 #define dma_wmb()	wmb()
 #endif
 
+#ifndef imb
+#define imb		barrier()
+#endif
+
 #ifndef read_barrier_depends
 #define read_barrier_depends()		do { } while (0)
 #endif
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
