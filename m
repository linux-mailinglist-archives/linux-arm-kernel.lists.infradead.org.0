Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7816C5DC9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 04:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hu1LiAHka9w8Yl9qlcUDlvk0Qb+PGeo1hTfxhtUpvUI=; b=ooy857fWfSVnml
	ATqeVRHtKIy3taa6DzXpgTddWCblP8+DBR9rTjDG5YH+KLjg++1QQjUQX83ghZxCesSP5A3cDt6WU
	z+kGgZTdsmpOSCkFA9QV/x5YPiZ11clVxv1BXRckYh9P558BHj3qB6x9jlno9B4u/gPYUD9pO6Ysn
	svbklzzG0rNyxf2z4vc9xcfZQ1f/HI3sTn4+E0YDswNhh8vKwniJmKGNAFjJsR38o0YtSIKLMTV7v
	hNAwvzDqspuHLsq/kx8jGlSOm9Nwwur6mvC4drUC3VAEt2vh99TjpyO2OySW6ClkeNOWyx2dZfVd6
	JotMRFz2wFWp2kf/tuiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiVHn-0004dF-BO; Wed, 03 Jul 2019 02:46:19 +0000
Received: from esa20.fujitsucc.c3s2.iphmx.com ([216.71.158.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiVHP-0004c8-3w
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 02:45:57 +0000
X-IronPort-AV: E=McAfee;i="6000,8403,9306"; a="4806661"
X-IronPort-AV: E=Sophos;i="5.63,445,1557154800"; 
   d="scan'208";a="4806661"
Received: from mail-ty1jpn01lp2050.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.50])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Jul 2019 11:45:46 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector1-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKZcpOoFqfOdgRPnmJeccFquOud/T2brELsNWogYUig=;
 b=b1zWJ6Lnojg8Jzvh60hsQneJ6+l+ZoMpkDhM7ia7Dwn2XCD93rz3p//tr0JBSj7zWZlJ5v15xi+gC5HnFiWy9SN1zxGjzVZNdbAcaiplA7f40Ada9RSKb4LbKLK1us33C3eY77dfEobfP4FGwcemydvx8qJgxz2Jmnk10BY+UlQ=
Received: from OSAPR01MB4993.jpnprd01.prod.outlook.com (20.179.178.151) by
 OSAPR01MB1970.jpnprd01.prod.outlook.com (52.134.235.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Wed, 3 Jul 2019 02:45:43 +0000
Received: from OSAPR01MB4993.jpnprd01.prod.outlook.com
 ([fe80::59f0:837d:b06f:9dbd]) by OSAPR01MB4993.jpnprd01.prod.outlook.com
 ([fe80::59f0:837d:b06f:9dbd%5]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 02:45:43 +0000
From: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
To: Will Deacon <will@kernel.org>, "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Thread-Topic: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Thread-Index: AQHVJRmVihUXsBTsv0iIDHwIrvWdbKagEvcAgAqT5QCABLTDgIAI7WYA
Date: Wed, 3 Jul 2019 02:45:43 +0000
Message-ID: <5999ed84-72d0-9d42-bf7d-b8d56eaa4d4a@jp.fujitsu.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617170328.GJ30800@fuggles.cambridge.arm.com>
 <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
 <20190627102724.vif6zh6zfqktpmjx@willie-the-truck>
In-Reply-To: <20190627102724.vif6zh6zfqktpmjx@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qi.fuli@fujitsu.com; 
x-originating-ip: [114.160.9.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4ab4ca5-e4fb-43d5-284d-08d6ff608b17
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:OSAPR01MB1970; 
x-ms-traffictypediagnostic: OSAPR01MB1970:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <OSAPR01MB19701E6EB1C353066FA2274AF7FB0@OSAPR01MB1970.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(189003)(199004)(2906002)(6436002)(8936002)(68736007)(4326008)(31696002)(8676002)(31686004)(186003)(7736002)(476003)(966005)(81166006)(86362001)(6486002)(66446008)(305945005)(53936002)(71190400001)(64756008)(66556008)(66476007)(71200400001)(478600001)(81156014)(73956011)(66946007)(486006)(99286004)(76116006)(256004)(316002)(76176011)(14444005)(66066001)(6506007)(53546011)(6512007)(3846002)(102836004)(25786009)(54906003)(446003)(110136005)(26005)(11346002)(5660300002)(14454004)(6246003)(229853002)(85182001)(6116002)(6306002)(777600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSAPR01MB1970;
 H:OSAPR01MB4993.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MJ85Zbk0ejfeqNRHSsVBjer52CAFTxFHXmDYsonueIj4A1hmJ8brdkBDOSeUBILRwERGZIKdFYP4kEsglYIXAG5wygvWb0VqAiUjuOQqICDgu8s0AA0tx7IJ32d/PkFVQ3nTQp90SHeCCtrgnrSbfndG+lla4dx/6+QSybWhEtC/Fo8il6jOZ4JWvo71TLuJzdcIz3MXsjj85ONvKVymYCTUZIulLd+2NRZ6Kyk5fejs/1sBCCsRkoh598J5ywxPpDXHlkd/ScGLXY7eRqM7tShT6EdNrNulGCEBdeFQ3/piQRm9s99ZZYR/Ih8mQIwHDZnN5ExW73pUk/ZWtPC6cSBJajhz3B4h5syjx7AUJXOUpfEBrHalirGl5AorfIQAVZKv1gwTdcFgp5gdxjk4pQZ6+HH0EaPsoAq1T8bAFKg=
Content-ID: <9AFE113769931F44996C217BB96D8C55@jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4ab4ca5-e4fb-43d5-284d-08d6ff608b17
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 02:45:43.4668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qi.fuli@jp.fujitsu.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB1970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_194555_495651_CC247D6C 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Thanks for your comments.

On 6/27/19 7:27 PM, Will Deacon wrote:
> On Mon, Jun 24, 2019 at 10:34:02AM +0000, qi.fuli@fujitsu.com wrote:
>> On 6/18/19 2:03 AM, Will Deacon wrote:
>>> On Mon, Jun 17, 2019 at 11:32:53PM +0900, Takao Indoh wrote:
>>>> From: Takao Indoh <indou.takao@fujitsu.com>
>>>>
>>>> I found a performance issue related on the implementation of Linux's TLB
>>>> flush for arm64.
>>>>
>>>> When I run a single-threaded test program on moderate environment, it
>>>> usually takes 39ms to finish its work. However, when I put a small
>>>> apprication, which just calls mprotest() continuously, on one of sibling
>>>> cores and run it simultaneously, the test program slows down significantly.
>>>> It becomes 49ms(125%) on ThunderX2. I also detected the same problem on
>>>> ThunderX1 and Fujitsu A64FX.
>>> This is a problem for any applications that share hardware resources with
>>> each other, so I don't think it's something we should be too concerned about
>>> addressing unless there is a practical DoS scenario, which there doesn't
>>> appear to be in this case. It may be that the real answer is "don't call
>>> mprotect() in a loop".
>> I think there has been a misunderstanding, please let me explain.
>> This application is just an example using for reproducing the
>> performance issue we found.
>> Our original purpose is reducing OS jitter by this series.
>> The OS jitter on massively parallel processing systems have been known
>> and studied for many years.
>> The 2.5% OS jitter can result in over a factor of 20 slowdown for the
>> same application [1].
> I think it's worth pointing out that the system in question was neither
> ARM-based nor running Linux, so I'd be cautious in applying the conclusions
> of that paper directly to our TLB invalidation code. Furthermore, the noise
> being generated in their experiments uses a timer interrupt, which has a
> /vastly/ different profile to a DVM message in terms of both system impact
> and frequency.
My original purpose was to explain that the OS jitter is a vital issue for
large-scale HPC environment by referencing this paper.
Please allow me to introduce the issue that had occurred to our HPC 
environment.
We used FWQ [1] to do an experiment on 1 node of our HPC environment,
we expected it would be tens of microseconds of maximum OS jitter, but 
it was
hundreds of microseconds, which didn't meet our requirement. We tried to 
find
out the cause by using ftrace, but we cannot find any processes which would
cause noise and only knew the extension of processing time. Then we 
confirmed
the CPU instruction count through CPU PMU, we also didn't find any changes.
However, we found that with the increase of that the TLB flash was called,
the noise was also increasing. Here we understood that the cause of this 
issue
is the implementation of Linux's TLB flush for arm64, especially use of 
TLBI-is
instruction which is a broadcast to all processor core on the system. 
Therefore,
we made this patch set to fix this issue. After testing for several 
times, the
noise was reduced and our original goal was achieved, so we do think 
this patch
makes sense.

As I mentioned, the OS jitter is a vital issue for large-scale HPC 
environment.
We tried a lot of things to reduce the OS jitter. One of them is task 
separation
between the CPUs which are used for computing and the CPUs which are 
used for
maintenance. All of the daemon processes and I/O interrupts are bounden 
to the
maintenance CPUs. Further more, we used nohz_full to avoid the noise 
caused by
computing CPU interruption, but all of the CPUs were affected by TLBI-is
instruction, the task separation of CPUs didn't work. Therefore, we 
would like
to implement that TLB flush is done on minimal CPUs to reducing the OS 
jitter
by using this patch set.

[1] https://asc.llnl.gov/sequoia/benchmarks/FTQ_summary_v1.1.pdf

Thanks,
QI Fuli

>> Though it may be an extreme example, reducing the OS jitter has been an
>> issue in HPC environment.
>>
>> [1] Ferreira, Kurt B., Patrick Bridges, and Ron Brightwell.
>> "Characterizing application sensitivity to OS interference using
>> kernel-level noise injection." Proceedings of the 2008 ACM/IEEE
>> conference on Supercomputing. IEEE Press, 2008.
>>
>>>> I suppose the root cause of this issue is the implementation of Linux's TLB
>>>> flush for arm64, especially use of TLBI-is instruction which is a broadcast
>>>> to all processor core on the system. In case of the above situation,
>>>> TLBI-is is called by mprotect().
>>> On the flip side, Linux is providing the hardware with enough information
>>> not to broadcast to cores for which the remote TLBs don't have entries
>>> allocated for the ASID being invalidated. I would say that the root cause
>>> of the issue is that this filtering is not taking place.
>> Do you mean that the filter should be implemented in hardware?
> Yes. If you're building a large system and you care about "jitter", then
> you either need to partition it in such a way that sources of noise are
> contained, or you need to introduce filters to limit their scope. Rewriting
> the low-level memory-management parts of the operating system is a red
> herring and imposes a needless burden on everybody else without solving
> the real problem, which is that contended use of shared resources doesn't
> scale.
>
> Will
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
