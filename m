Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A41124FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 01:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBTpBenxAUZp3PwuFj0FiBkNHaMwHgBBbpV2xWiP1X0=; b=M+54cddmdNJROR
	F2EZza6pJhA45hyj8tkWK+EPLrwbZgmdFxj0wtXVYhfkXMU5dEBwY9NDKmDupvkcH6IkHQoy3P5IQ
	n84Se4GRQWBKPbNeK4aj2QSi7MvF5KMFVqvAwqXVeGm+GTP3xsm8o6F8aW3Shdly6LY3rVFUlzH1u
	1FUo/wIRSGvzhpQQSgzGaUVeZb4TFVFagSeDFZVWUIlzmq5NPXEEPoZAchmOltUkgyIhU3lQwwjDX
	VdSMAVDkoxFmH2JCy+vj/8ZTxT6zZ8kJiRnzBNLCMlZ0ociqOzLKwe5kqWWJZdZNLdnNCKU8CVN9T
	9hLQZFB/0SEM/XnQobbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKz3-0006Sc-Eq; Thu, 02 May 2019 23:19:21 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKyw-0006S8-9I
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 23:19:16 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42N9Str028053; Thu, 2 May 2019 16:19:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=F8EfqW182WvBuMhpASXmBW0Dn6EO7jQow2IpPpqvAIA=;
 b=Q6V9uaqKb0MHZDAq0w3t2meZMCKKvpVf3XXrvbnRQcbFOPMFGY497FCRlcwgY2sV0eeQ
 ep2JGtAN9qs8x9aXh/S9RctgrpvraKpINWATmtk9WKRRb2xFySvpAi9vX2GCMFf2+WgG
 CYWwd19huzkwxEIP0Ql+/HKuxJD2g1tvmOS14Xne+Igo7OrdN/l8ZbSJL8KNWldSA3hY
 co8gmE38NCmdYaSsqSLQUNbtsvVgI+JQpr50GHnmLtC3iXK9PXZFOChV2IY85zXr6fKg
 lSCwh6x2YzQvGX/v4hmnqtX5x7JRZn5OewAG1Mvto991a3uubO+WoCxXY5vUpcAtNuBK wA== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2s89rk8236-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 02 May 2019 16:19:08 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 2 May
 2019 16:19:07 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.59) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 2 May 2019 16:19:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F8EfqW182WvBuMhpASXmBW0Dn6EO7jQow2IpPpqvAIA=;
 b=s3FyPTFW8Bj3EI9DP+6JBUpBB9czWZr/WmN/+fgdasWRf+P+jp/ZyCcmXev39X2a4SkogoxzgKRwXIU25Qaq69olFm5V+ClxKdcjvwnNh4WM04KiqnzipSOaAXPGGaYQCiLRNWPlNgr2ycl4ArgkKphRdbnNw/GPQsmROv49DE8=
Received: from CY4PR1801MB1942.namprd18.prod.outlook.com (10.171.255.33) by
 CY4PR1801MB1864.namprd18.prod.outlook.com (10.171.255.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Thu, 2 May 2019 23:19:02 +0000
Received: from CY4PR1801MB1942.namprd18.prod.outlook.com
 ([fe80::a809:8bd8:e548:99b1]) by CY4PR1801MB1942.namprd18.prod.outlook.com
 ([fe80::a809:8bd8:e548:99b1%5]) with mapi id 15.20.1835.010; Thu, 2 May 2019
 23:19:02 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [RFC] Disable lockref on arm64
Thread-Topic: [RFC] Disable lockref on arm64
Thread-Index: AQHVAT1tgAMj45kOCESvqI1j6sd1+g==
Date: Thu, 2 May 2019 23:19:02 +0000
Message-ID: <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
In-Reply-To: <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR02CA0053.namprd02.prod.outlook.com
 (2603:10b6:a03:54::30) To CY4PR1801MB1942.namprd18.prod.outlook.com
 (2603:10b6:910:7a::33)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e733cd09-4387-4602-0561-08d6cf549010
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1864; 
x-ms-traffictypediagnostic: CY4PR1801MB1864:
x-microsoft-antispam-prvs: <CY4PR1801MB18648ADD0A0244FDBCD36EC0A6340@CY4PR1801MB1864.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(1076003)(6512007)(68736007)(305945005)(7736002)(14454004)(186003)(6506007)(71190400001)(71200400001)(53546011)(386003)(11346002)(102836004)(478600001)(476003)(486006)(26005)(54906003)(316002)(446003)(76176011)(99286004)(6916009)(6436002)(6486002)(229853002)(52116002)(2906002)(66066001)(3846002)(6116002)(5660300002)(8676002)(25786009)(73956011)(66476007)(66556008)(66446008)(81156014)(256004)(14444005)(66946007)(64756008)(4326008)(33656002)(86362001)(53936002)(81166006)(8936002)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB1864;
 H:CY4PR1801MB1942.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ioWOH1ztUxbt//tNpPETyx46pCAJQtHND1OOIu4eIwmWk+53Z9Be7IqgffkqMM5723Sq0+N+WTjYWuzb7pjLmdkC6iosJftB8/EKq8grusWOJ0fdXY2Tm+W1BsRbL+ZcBTBY4Uiw54Izvefz4Sj7mZBxOHfdJktjNMjcUOv2NaDgvLyr3Ozonj2NwxS+KcHkTxbeRBZsj8jD+2xz0DVCTzwF9dzGUMc6pEzx9I5Hg0rdRf1b/twZRVLgPYJ+WGegtfY1W6PfA2Wjc5g7Nc2850XStRuF+Xy1bdlr3oSLoORIDRepp1+NRzPJgg+O1D6KrqIdORhBhyvFFNICyen2UB95Z3YDtbYZOIHD4ka/zC0fv4bWoYNxEvzvbwxNh3Xc8qaYN5+09iV6n8KA21xkWgLdq/8fDWQH0QabG4Ean04=
Content-ID: <9C80C1C775057A448CA5C3EE946A5E0F@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e733cd09-4387-4602-0561-08d6cf549010
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 23:19:02.2997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1864
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_161914_535810_3AD197BD 
X-CRM114-Status: GOOD (  22.73  )
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 09:12:18AM -0700, Linus Torvalds wrote:
> On Thu, May 2, 2019 at 1:27 AM Jan Glauber <jglauber@marvell.com> wrote:
> >
> > I'll see how x86 runs the same testcase, I thought that playing
> > cacheline ping-pong is not the optimal use case for any CPU.
> 
> Oh, ping-pong is always bad.
> 
> But from past experience, x86 tends to be able to always do tight a
> cmpxchg loop without failing more than a once or twice, which is all
> you need for things like this.

I don't really see the point your are making about hardware. If you
look at the test case, you have about 64 cores doing CAS to the same
location. At any point one of them will succeed and the other 63 will
fail - and in our case since cpu_relax is a nop, they sit in a tight
loop mostly failing.

And further due to the nature of the test case, the successful thread
will come back almost immediately with another CAS.

> And it's "easy" to do in hardware on a CPU: all you need to do is
> guarantee that when you have a cmpxchg loop, the cacheline is sticky
> enough that it stays around at the local CPU for the duration of one
> loop entry (ie from one cmpxchg to the next).
> 
> Obviously you can do that wrong too, and make cachelines *too* sticky,
> and then you get fairness issues.

This is certainly not the case, we are not bouncing around not making
progress at all. We have all 64 cores hitting the same location in a
very tight loop slowing the system down. And you will get fairness
issues anyway about which of the failing cores succeeds next.

The testcase does not hang indefinitely, it eventually completes. The
scaling loss is, in my opinion, due to the naive lockref implementation,
rather than due to a hardware limitation.

Are you expecting the hardware cache coherency implementation to have
the equivalent of queued locks and block potentially failing CAS?

After speaking to the folks doing performance comparisons here, x86
suffers in the same test case as well, when there are enough cores.

Your patch that switches to spinlock (in this case queued) works nicely
in case of high contention. Is this something that will be merged to
mainline? We can provide some testing results if that will help.
 
> But it really sounds like what happens for your ThunderX2 case, the
> different CPU's steal each others cachelines so quickly that even when
> you get the cacheline, you don't then get to update it.
> 
> Does ThunderX2 do LSE atomics? Are the acquire/release versions really
> slow, perhaps, and more or less serializing (maybe it does the
> "release" logic even when the store _fails_?), so that doing two
> back-to-back cmpxchg ends up taking the core a "long" time, so that
> the cache subsystem then steals it easily in between cmpxchg's in a
> loop? Does the L1 cache maybe have no way to keep a line around from
> one cmpxchg to the next?

ThunderX2 has LSE atomics. It has also full out-of-order execution with
weak ordering for load/store, so a barrier will be slow down exection.

Also to address some points on the earlier rant: ThunderX2 is a fairly
beefy processor (based on Broadcom Vulcan), it compares well on per-core
performance with x86 (and with A76 from what I hear even though A76 was
out a few years later). There are more cores per socket due to the fact
that there is no ISA baggage, and not really due to a weaker core.
 
> This is (one example) where having a CPU and an interconnect that
> works together matters.  And yes, it probably needs a few generations
> of hardware tuning where people see problems and fix them.

The next generation ThunderX3 is in the works, and it will have even
more cores, it is going to be fun :)

JC

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
