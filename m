Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572C61AF722
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hI9mCg0nZYiKlQ2cKRJyllFx3WAdpy2TIrzGSaTW7Uo=; b=g4ZWjuZ+4IbyyK
	v82lMQN6Gu2vt0a8i3xHfEzwMj9aPE4q/9Ve+2iYs9kFbHh9oAu99a7P2QRcCdJIH1hMyCe0iZJco
	Ud4ZcA0EocdeYH/eLNWgy4wckSu4YYL7BepfWGhg0/0jFTfJAxdHrQj2TgLKXpeeg+u/BKd8g+HUO
	zHF2nm2RUQbngfUkVt6CS/i8KxjcMpNa6ZDMBFq+d0/4+axTp3hzDVSNQw9+PpyXKb9mZWGdWPWzZ
	wI/U7QJNKAC4OlBNW+pmu/eosHdk4NW3flqfuANznc0VD8Se8dpHBfI88VUc7QDdnVhSQ7iVN3PwH
	ubrU4U6ebvaRnU45D/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ26k-0000g2-UI; Sun, 19 Apr 2020 05:03:06 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ26a-0000eq-Fo
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 05:02:58 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03J524wr032106; Sat, 18 Apr 2020 22:02:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=7bIebyD3RlLr9bkYWBN4z7EEXoFu+e+Cz7goFxLkkJ0=;
 b=lW/UxiPneSDoV2k00S2DCWImqh0rHCv/PXPn6+maDmTOWy/lTvq9Bgaz47AyS99hue44
 EQn4xCRrX+qdsFy6SP8zyHdyf66eFhOptKAZOAtuDhSp2iVCdpDGTdtPi4Pb576plXTV
 cvfac+l/MGd4WQRKmLpN4NT8y/a5OOWiqM+wOZlizEZ4oyXN8/to950E29Ih+ANsQVNo
 5vJcs7sgVPDaM+zww6JfxImC1q8KmW/7nLI7W9xwSzDA+XYQJ0+wLmjoWqkqQsVTeA0h
 p2XsRvpCr3wDS0GLamOmLRGugXc9Tkv1mnmVNevmLxZG+wsw4zxkbfOXrI/6vd2uusJm Aw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 30g12njaac-3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 18 Apr 2020 22:02:04 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 18 Apr
 2020 22:02:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 18 Apr 2020 22:02:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y7dTgAA6nHzFLbQER1QSN+GdCbwlWcrj6ytRzB93EG3gr18nTVjVUZOslYigVyGakdKZzCTka8qATwk2f7WuFCRG9bPjxaxZbIWjbBwiq1nRY5vdcTF04UtsYSuAAtQbxEQ6Yq2Bq8YtA5yiBdbc277XsiBcs7k0Q3J9xGqAFJZHtXIqwKsnrk9NZGgzbefEyWESdizwxcoU2c1v8Gi9dbuvmzWWUeToiI0nT1r2OkPVDPqEoYCchS1IErb1bfhCPl+JIztWvgOcUcHAXJbTHtGn91YFVp03qbfV0rsJkaVGYJ62bw1WmXVN1Dl6VWyhfvKKMFkhaBt7dR8eXcVW7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bIebyD3RlLr9bkYWBN4z7EEXoFu+e+Cz7goFxLkkJ0=;
 b=G5X5sN0XP7dFY1xo2dec3kvpk8vF1HCYkW3yjn39zLvh+ZPOca52YEVKIv0GZtkn6HDYmF48yeb36F7Puv8QtQUkHwli40kGnMCOkE07eLwQXGPF4jLgF5Ubg5Xh7yeABi2jVOqBM3irK/rkb/vVdPAcxMu5qyxmZ4Gra9WDeMkF1WyG3lkLEEaa8CEWOC7aYNVr/gxQfLamnmXepTgndSZqbFBACF4Cv1Lhr8xwzwTzHnrtZT8To+yQyzTgsow5g3WludoxH75NhTc+1/ovrqz3raLAHFvUNEJh3ma8FfS9eIUbngU7OSjmr4lUeB043bTRFY4SjGxmJweFyMEIDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bIebyD3RlLr9bkYWBN4z7EEXoFu+e+Cz7goFxLkkJ0=;
 b=c+cDRjTi2Cs/zerdW913HmwrF0Se08knpeobWoxY3JyHKN39hCKicm23D6RY0vzVfIJqYypqcGnPDKrX7/5dcFEHYQrTbXiX8oYw0CHiZNlQyXe69Mv5014koGXlg1kSRqSNnhqVVMdF3z4R39HgIKv6oHkemOC+Jn11d/DGR6o=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2933.namprd18.prod.outlook.com (2603:10b6:a03:10e::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Sun, 19 Apr
 2020 05:02:01 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2921.027; Sun, 19 Apr 2020
 05:02:01 +0000
From: Alex Belits <abelits@marvell.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: Re: [EXT] Re: [PATCH v3 03/13] task_isolation: add instruction
 synchronization memory barrier
Thread-Topic: [EXT] Re: [PATCH v3 03/13] task_isolation: add instruction
 synchronization memory barrier
Thread-Index: AQHWDoICUCw40vC9nkuNpTFu2Vf0Xqh6Ki6AgAXIHgA=
Date: Sun, 19 Apr 2020 05:02:01 +0000
Message-ID: <e4d2cda6f011e80a0d8e482b85bca1c57665fcfd.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
 <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
 <20200415124427.GB28304@C02TD0UTHF1T.local>
In-Reply-To: <20200415124427.GB28304@C02TD0UTHF1T.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [173.228.7.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ce704de-d73a-4b47-f4a1-08d7e41ecbed
x-ms-traffictypediagnostic: BYAPR18MB2933:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2933B3B5CDABA68E4C2D0C4FBCD70@BYAPR18MB2933.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0378F1E47A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(346002)(39850400004)(376002)(316002)(66476007)(26005)(66446008)(64756008)(76116006)(66556008)(66946007)(186003)(478600001)(2616005)(6916009)(7416002)(54906003)(6506007)(5660300002)(8676002)(6486002)(8936002)(81156014)(71200400001)(6512007)(2906002)(4326008)(36756003)(86362001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Nw4j5ltzd6STETXx1HjKgWzieGPi2hQRppHetfWHbTafKJVLKTcLuQR9v4TDw1DaQ0h0Hdmwc9ICmWPNMvgxdgmn7TYQQrgQA4woPFPW+cPmXvqNKy7jP350XY1TMmuiEf+5RMLp1yGMfrqWVVmGN5mIzeEsb/fjA+2qgjr5Jnvg80yApxhHzcrMo5SwXvHi5JLvlJzofJj+2NYAUTSRlfj/VhD7tmZ3EoTqZ+XVTg2mzdSJFS4oRqURR8f2FI2UmNZ89FMb+7qsEvESHNRG14DuODVgS55saPZeh3LeD07odjRlAjL3eKohMFfqllTuDIezcy9nbM3t593XwGd2WdhLrTgAj2DG51Ueej4/F4U5wAXWZHtSlstw1LcKP3zcjEHIoNzvU9hPRWbYTLu/YjC0nfMOCFWJnQbe4EJ4+Jj7coHKW8wFYjOSMO2vWYj
x-ms-exchange-antispam-messagedata: 6FD19SjXR7aFcRTcVw9COPaKrv1U8wjr+hDAAMaZhYU7CwTQrb8D19fM2rC5/dfVvkh92ZelRP40BjPIQTInBasWQXKaqyyRmlN8Jz1sSbG7AbKZ71SPwJ77L/YS9MLD6mXN8YGC01phD4i3qTwCz/pQHA1O/SZ/xsOVRLgyrnCI05o5hkq0QM+HCfasyDY/46nSJb20utfSKNlxIW8bTT9In/Q8yufYVFbqna740QhEAhXwjOPhT9PxNO1TliB43C9w1XMHn8LL20/jU3H6bLvfFgfyqEfxjFdbLwCj2LMzU50LP1z2sd6en10QfGPc74LYuO2qVWNqez6rgGi1+nQJNWLI5hLyp3Q2e+HhZeC7KMl+hysneWRW3yd6KBOQpccyuiXaD78v61VCcTtfP9j3qu/XGTLzv9LgOkQwQePEbsxElGMeH+Eldr60eA920ZOefwOUZRkxEgx7l0Wj/yJ3Ikgpb3RNpOCE4LuhQmeVAIz6+JkIdMnKdOwnCF/OTgcx/qQowNPro8bSQd6U7ICG6+X3gWmsSdMcTKrRpAq+CddtHKq0CeVclUbEJWYS8bmy4VWiT/ZLBrUNkzK1n7IcOnExIErBU5gzrgaEipASNS/YPjPUKrHlLc6nWqzmfBXQLNa/HvK1KXZJ4CYTat9O217tNUctDAwh3JwDy7/y1jRG9PtOdoBCr2nYqUROtvss0czAuYUPIy0vct/9Xs6gR6Y9F7ic3347tRHiQyHUVaYU1FdKWXago5NQ0rHhiXERLvDlNonFCf3Y8ySv+EbpQmW9ExYD1yGPw/loUS4=
Content-ID: <CE493171FAB7DC4EA12DCB54BAC853AE@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce704de-d73a-4b47-f4a1-08d7e41ecbed
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2020 05:02:01.6706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KTgZCkjHvF/akFxHrWMNQ9orQDRqIjG293+b0Pu/75yfvkWBDlQ3VOqvHQfFUk/xwLgUa4bDp6PFOa4qe8NKRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2933
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-18_10:2020-04-17,
 2020-04-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_220256_678714_8C6EA624 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Prasun Kapoor <pkapoor@marvell.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2020-04-15 at 13:44 +0100, Mark Rutland wrote:
> External Email
> 
> -------------------------------------------------------------------
> ---
> On Thu, Apr 09, 2020 at 03:17:40PM +0000, Alex Belits wrote:
> > Some architectures implement memory synchronization instructions
> > for
> > instruction cache. Make a separate kind of barrier that calls them.
> 
> Modifying the instruction caches requries more than an ISB, and the
> 'IMB' naming implies you're trying to order against memory accesses,
> which isn't what ISB (generally) does.
> 
> What exactly do you want to use this for?

I guess, there should be different explanation and naming.

The intention is to have a separate barrier that causes cache
synchronization event, for use in architecture-independent code. I am
not sure, what exactly it should do to be implemented in architecture-
independent manner, so it probably only makes sense along with a
regular memory barrier.

The particular place where I had to use is the code that has to run
after isolated task returns to the kernel. In the model that I propose
for task isolation, remote context synchronization is skipped while
task is in isolated in userspace (it doesn't run kernel, and kernel
does not modify its userspace code, so it's harmless until entering the
kernel). So it will skip the results of kick_all_cpus_sync() that was
that was called from flush_icache_range() and other similar places.
This means that once it's out of userspace, it should only run
some "safe" kernel entry code, and then synchronize in some manner that
avoids race conditions with possible IPIs intended for context
synchronization that may happen at the same time. My next patch in the
series uses it in that one place.

Synchronization will have to be implemented without a mandatory
interrupt because it may be triggered locally, on the same CPU. On ARM,
ISB is definitely necessary there, however I am not sure, how this
should look like on x86 and other architectures. On ARM this probably
still should be combined with a real memory barrier and cache
synchronization, however I am not entirely sure about details. Would
it make more sense to run DMB, IC and ISB? 

> 
As-is, I don't think this makes sense as a generic barrier.

Thanks,
Mark.

Signed-off-by: Alex Belits <abelits@marvell.com>
---
 arch/arm/include/asm/barrier.h   | 2 ++
 arch/arm64/include/asm/barrier.h | 2 ++
 include/asm-generic/barrier.h    | 4 ++++
 3 files changed, 8 insertions(+)

diff --git a/arch/arm/include/asm/barrier.h
b/arch/arm/include/asm/barrier.h
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
diff --git a/arch/arm64/include/asm/barrier.h
b/arch/arm64/include/asm/barrier.h
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
 
diff --git a/include/asm-generic/barrier.h b/include/asm-
generic/barrier.h
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
