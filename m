Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFCC1158C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AzEhU9OloPfrmWT3GmU/stnmEhNgc+Rdf51+NltJtQ=; b=W7E9thBlpWsx0F
	15Sami6FGUTD7q3pt+6EoMJ+C95bnYDEijcbymCgxq84Jj8leuCxl5M6QTwWLCC2mjBKhr958clZj
	EPS6aScfcMENVRj2KT9au64UT8szjlpXNnXXf465UFwCQDINQCLK4mHNoaFMLz/c24t5WM/py+hMs
	YxceMaeoLV6DN+9BLPe/4TXneqJyxXSVTTF1Md4x9fn9BIc3BgnIAdsPkbcXlDW+GBsJA7n/u7iEs
	0JIT+TAIpqzpVDa1BYUcGi/iXqriUjpF1lRkr4CVcvbBn3Vi8KY7uKkjdjw4y5/POwFurfwWaNOdh
	bpnFg421K+UinDeqWJRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7F9-0005Tv-9U; Thu, 02 May 2019 08:39:03 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7F3-0005Tc-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:38:58 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x428b6mZ025655; Thu, 2 May 2019 01:38:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=v9ur+npx6FMF0rJCLY8QFry516fHZkwqI1ShYjmdl4w=;
 b=aGzLo+3vPzj1M0utXaLd5FhVy6pwaTg4d42ivSXu3DLkUPMNGRRZOtmI3rJH3TDSH0G6
 ZiKEnmRkQfD4AyFKBceoNIHkoY9TBfpUBjENQ7iqfJ64x+973LhfwcF28FII9PH9TnJc
 8O28/ZzjSkqkFaQcKKluKjRPBrSbgyDA3vkl5nCJpASqZ8zZz4m0ECndCLjOugUgelJb
 BvR4+s9tUfM/gSIAGt1Wh+Ub3RyklkIYanwSfgtdL8ErS0CCOH7av7cs/bBv7BE2jyOE
 VCof0rSpSi56N4vFL6hBPjuz7uc0pmHEdmf/sUo98Blu79VSS3JeluPgWqGyiA7zilLj 3A== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2s7k3b9v1r-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 02 May 2019 01:38:44 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 2 May
 2019 01:38:43 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.56) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 2 May 2019 01:38:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v9ur+npx6FMF0rJCLY8QFry516fHZkwqI1ShYjmdl4w=;
 b=gOnhXDMn3WCQ+VgS9gCqyJ2o5UYSHEk8XWxDA9KBTeQ2x2J0p5Y0I7VM5w4rQUr6/5pveMRURO9CLf0fkQQgSa6CVZx19uHrLWL47D/oP69ZHK5HHC6ugoWXdGL9zlbBtUn87j9DiV9VDQFiMATP17bUfQpaPKxo6nzcOwH9KlA=
Received: from DM5PR18MB1578.namprd18.prod.outlook.com (10.175.224.136) by
 DM5PR18MB2325.namprd18.prod.outlook.com (52.132.208.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Thu, 2 May 2019 08:38:42 +0000
Received: from DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::28da:f8bb:4901:b0aa]) by DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::28da:f8bb:4901:b0aa%10]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 08:38:41 +0000
From: Jan Glauber <jglauber@marvell.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [RFC] Disable lockref on arm64
Thread-Topic: [RFC] Disable lockref on arm64
Thread-Index: AQHVAMJyX/jERFJO0EaZn9HXlo62yQ==
Date: Thu, 2 May 2019 08:38:41 +0000
Message-ID: <20190502083834.GG13955@hc>
References: <20190429145159.GA29076@hc>
 <20190501160140.GC28109@fuggles.cambridge.arm.com>
In-Reply-To: <20190501160140.GC28109@fuggles.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0701CA0014.eurprd07.prod.outlook.com
 (2603:10a6:203:51::24) To DM5PR18MB1578.namprd18.prod.outlook.com
 (2603:10b6:3:14d::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [78.43.208.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e65ca083-92bb-4e52-7292-08d6ced994a5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR18MB2325; 
x-ms-traffictypediagnostic: DM5PR18MB2325:
x-microsoft-antispam-prvs: <DM5PR18MB2325D03E71804B7797FEDD16D8340@DM5PR18MB2325.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(136003)(346002)(376002)(366004)(39860400002)(199004)(189003)(7736002)(66066001)(316002)(486006)(446003)(8676002)(305945005)(6486002)(2906002)(102836004)(6512007)(6916009)(99286004)(9686003)(71190400001)(53936002)(186003)(14444005)(256004)(1076003)(68736007)(6246003)(33716001)(26005)(76176011)(4326008)(54906003)(229853002)(81166006)(81156014)(71200400001)(8936002)(478600001)(86362001)(11346002)(6436002)(66556008)(66946007)(73956011)(66476007)(476003)(64756008)(66446008)(6116002)(3846002)(52116002)(25786009)(6506007)(386003)(33656002)(14454004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB2325;
 H:DM5PR18MB1578.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eAaFqx7iwTp3eMJFpAOCKRjzoqyOwbePAT7GxgPSZ50uRC1M6M+mIaGV/N03EGocGlcoZQNSob0bTcGytup4qmNs/q7yWneDNpZbGEO1c2s9WoprkRrJxwdQ13nqkOyp/nxWYabDAdOiFVdObWRnIryBngz78OoVhl+lvjM/uVrayKOArPtNWMyldTCQwmwiNNpKmvF54RoBL59usQ7XDfc8djyfmmOl6+wZp0ENoW9pUxzV9iYLpA08/o60Rad96bPaksJqIRSu7FnDKe69+ixxaqu/a6QF3UB6QafuqTljjR12W1+DoifiqQIxAWKLeGZCC3qFxpjIuq+NzevRQ6YYY13jJLEfLaObNrEzfCCW0Ua0C0SmPB39OYC0HIzcNIB8cQZIo9n41Zr4kr9S4ZR8G/HBLEIEFXPpsK8rpqo=
Content-ID: <3D280D6F2517CD4F98E2699985E02545@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e65ca083-92bb-4e52-7292-08d6ced994a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:38:41.9121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB2325
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_013857_217926_B15CD23A 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 05:01:40PM +0100, Will Deacon wrote:
> Hi Jan,
> 
> [+Peter and Linus, since they enjoy this stuff]
> 
> On Mon, Apr 29, 2019 at 02:52:11PM +0000, Jan Glauber wrote:
> > I've been looking into performance issues that were reported for several
> > test-cases, for instance an nginx benchmark.
> 
> Could you share enough specifics here so that we can reproduce the issue
> locally, please? That would help us in our attempts to develop a fix without
> simply disabling the option for everybody else.

I can send my test-case which is a trivial open-read-close loop with one
thread per CPU and increasing read sizes.

> > It turned out the issue we have on ThunderX2 is the file open-close sequence
> > with small read sizes. If the used files are opened read-only the
> > lockref code (enabled by ARCH_USE_CMPXCHG_LOCKREF) is used.
> > 
> > The lockref CMPXCHG_LOOP uses an unbound (as long as the associated
> > spinlock isn't taken) while loop to change the lock count. This behaves
> > badly under heavy contention (~25x retries for one cmpxchg to succeed
> > with 28 threads operating on the same file). In case of a NUMA system
> > it also behaves badly as the access from the other socket is much slower.
> 
> It's surprising that this hasn't been reported on x86. I suspect their
> implementation of cmpxchg is a little more forgiving under contention.
> 
> > The fact that on ThunderX2 cpu_relax() turns only into one NOP
> > instruction doesn't help either. On Intel pause seems to block the thread
> > much longer, avoiding the heavy contention thereby.
> 
> NOPing out the yield instruction seems like a poor choice for an SMT CPU
> such as TX2. That said, the yield was originally added to cpu_relax() as
> a scheduling hint for QEMU.

The issue is not limited to SMT, it also shows without SMT.

> > With the queued spinlocks implementation I can see a major improvement
> > when I disable lockref. A trivial open-close test-case improves by
> > factor 2 while system time is decreasing also 2x. Looking at kernel compile
> > and dbench numbers didn't show any regression with lockref disabled.
> > 
> > Can we simply disable lockref? Is anyone else seeing this issue? Is there
> > an arm64 platform that actually implements yield?
> 
> There are two issues with disabling lockref like this:
> 
>   1. It's a compile-time thing, so systems that would benefit from the code
>      are unfairly penalised.
> 
>   2. You're optimising for the contended case at the cost of the
>      uncontended case, which should actually be the common case as well.

I completely agree with 2). Nevertheless limiting the retry attempts
like Linus suggested looks like a fair change that should not penalize
anyone and would still help the contented case.

--Jan

> Now, nobody expects contended CAS to scale well, so the middle ground
> probably involves backing off to the lock under contention, a bit like
> an optimistic trylock(). Unfortunately, that will need some tuning, hence
> my initial request for a reproducer.
> 
> Cheers,
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
