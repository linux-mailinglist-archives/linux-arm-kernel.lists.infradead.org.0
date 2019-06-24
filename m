Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3404750903
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5sefYxpb4JT70gEYJoFUI2Wm9nS8fY4aTwl6zdViZk=; b=VW9nxRv85eiNSG
	vrfLRX2UthXKG1FURjF3CBUYPTRhXm9tbe3SkcOI7UAndnSGCYFPCv+06fVPVz/iY1OIDD6yxbfPh
	FgIejgwzG2DmhxeuNYKXyti2A1LjA0YnT4/SqIIcEftp0Iw1to9r6oIxgegNcfMgTizZ5Wz2pNdN2
	+PLs9igNfM9CfZuvLxt6fUAIKjyq8wWqtC5g5TG7r4D/NcLE9stJBLHy3+jPvH80snzsTL13DwpR9
	hJFVRVoA0MCr1PcF96oVEFqIbuBzSMGix4LXOjUG5Y9vRglNdkNPeY8mlvZpZroR5So2e5j+dwLRv
	MKWxlUSSq8yOg/SYFbyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMKA-0001RH-Ng; Mon, 24 Jun 2019 10:35:46 +0000
Received: from esa5.fujitsucc.c3s2.iphmx.com ([68.232.159.76])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMJt-0008Li-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:35:31 +0000
X-IronPort-AV: E=McAfee;i="6000,8403,9297"; a="4579444"
X-IronPort-AV: E=Sophos;i="5.63,411,1557154800"; 
   d="scan'208";a="4579444"
Received: from mail-ty1jpn01lp2057.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.57])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jun 2019 19:34:06 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector1-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PiZlZcWdA6DTcp6JsQlv3ctgl+ETkC6V29KOUpw5p3w=;
 b=4N7uyuoFYLWF5Y9BQA77JtIPo+ShDdWTuENx5+wjWOGpyU00vxVphFhrHQjx3c/ZCAwuZW3Uy7NrH/lBH5XMEO8prVH8PG46tgYuDd6yS//N0chB1NBUc8xSIG5AXDUIUEuo1c/ET5o/znoOUoZK8nyhEgpNDMlgCskVt9s5zsc=
Received: from OSBPR01MB5000.jpnprd01.prod.outlook.com (20.179.183.204) by
 OSBPR01MB4055.jpnprd01.prod.outlook.com (20.178.99.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Mon, 24 Jun 2019 10:34:02 +0000
Received: from OSBPR01MB5000.jpnprd01.prod.outlook.com
 ([fe80::d033:28f6:3937:40c2]) by OSBPR01MB5000.jpnprd01.prod.outlook.com
 ([fe80::d033:28f6:3937:40c2%7]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 10:34:02 +0000
From: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
To: Will Deacon <will.deacon@arm.com>, "indou.takao@fujitsu.com"
 <indou.takao@fujitsu.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Thread-Topic: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Thread-Index: AQHVJRmVihUXsBTsv0iIDHwIrvWdbKagEvcAgAqT5QA=
Date: Mon, 24 Jun 2019 10:34:02 +0000
Message-ID: <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617170328.GJ30800@fuggles.cambridge.arm.com>
In-Reply-To: <20190617170328.GJ30800@fuggles.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qi.fuli@fujitsu.com; 
x-originating-ip: [114.160.9.181]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 035565ac-5b70-4e11-aaba-08d6f88f79b2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:OSBPR01MB4055; 
x-ms-traffictypediagnostic: OSBPR01MB4055:
x-microsoft-antispam-prvs: <OSBPR01MB405537AE5738705F6191752BF7E00@OSBPR01MB4055.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(39860400002)(376002)(136003)(189003)(199004)(26005)(2906002)(6486002)(446003)(71190400001)(476003)(6246003)(31686004)(66446008)(6512007)(66556008)(66946007)(53936002)(102836004)(64756008)(73956011)(85182001)(31696002)(54906003)(110136005)(91956017)(86362001)(316002)(81166006)(81156014)(14444005)(11346002)(256004)(68736007)(229853002)(71200400001)(5660300002)(66476007)(76116006)(486006)(6436002)(53546011)(6506007)(8936002)(186003)(3846002)(8676002)(4326008)(6116002)(25786009)(66066001)(478600001)(7736002)(305945005)(99286004)(76176011)(6636002)(14454004)(777600001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB4055;
 H:OSBPR01MB5000.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P6lNqGmd6H7/oOP87Y8aYYmoviUGHyAJ+mml708ExU3YvJK5i8A5Wh8Y8VoZD03QfjV28eMzFi+epIsq1fwZ7xtMJyuIY2oUrMyisl4nIjiUTFONm5A1yW4isjCpzGOOSVO7R8GGxfevOTOPu1Z6/AdmT7h7XHCYykgT0k5tIEIHCK6Z5tvr1LWnGXjq8NYgXO1SgqURj6Wq9cdv4rnCiZ0YXTc5U3vqWvgNdrVmdy6tqUAtjDaEy7l0RUcDSc9NczOSaolkoDW5tzFXxuw/q8GgPIS7MZyxz6ADlZ10w+DNGdzCxSe0O4Ni/OIoxrr82LuYYoTQoyOilSUIxdQVW7XBSsPRZxXtAOR4iP6yoPmrcKyYrTZYPsxMFPJMSqc41g83SGO0RUPA9ATUF5eVo/gnS1uP9czz7qdbGICXFoE=
Content-ID: <4755D6B231C12648B281812FB2FCCE3F@jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 035565ac-5b70-4e11-aaba-08d6f88f79b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 10:34:02.4238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qi.fuli@jp.fujitsu.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_033530_340288_B603C278 
X-CRM114-Status: GOOD (  26.45  )
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
Cc: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

I am Takao's colleague, thank you very much for your reply.

On 6/18/19 2:03 AM, Will Deacon wrote:
> Hi Takao,
>
> [+Peter Z]
>
> On Mon, Jun 17, 2019 at 11:32:53PM +0900, Takao Indoh wrote:
>> From: Takao Indoh <indou.takao@fujitsu.com>
>>
>> I found a performance issue related on the implementation of Linux's TLB
>> flush for arm64.
>>
>> When I run a single-threaded test program on moderate environment, it
>> usually takes 39ms to finish its work. However, when I put a small
>> apprication, which just calls mprotest() continuously, on one of sibling
>> cores and run it simultaneously, the test program slows down significantly.
>> It becomes 49ms(125%) on ThunderX2. I also detected the same problem on
>> ThunderX1 and Fujitsu A64FX.
> This is a problem for any applications that share hardware resources with
> each other, so I don't think it's something we should be too concerned about
> addressing unless there is a practical DoS scenario, which there doesn't
> appear to be in this case. It may be that the real answer is "don't call
> mprotect() in a loop".
I think there has been a misunderstanding, please let me explain.
This application is just an example using for reproducing the 
performance issue we found.
Our original purpose is reducing OS jitter by this series.
The OS jitter on massively parallel processing systems have been known 
and studied for many years.
The 2.5% OS jitter can result in over a factor of 20 slowdown for the 
same application [1].
Though it may be an extreme example, reducing the OS jitter has been an 
issue in HPC environment.

[1] Ferreira, Kurt B., Patrick Bridges, and Ron Brightwell. 
"Characterizing application sensitivity to OS interference using 
kernel-level noise injection." Proceedings of the 2008 ACM/IEEE 
conference on Supercomputing. IEEE Press, 2008.

>> I suppose the root cause of this issue is the implementation of Linux's TLB
>> flush for arm64, especially use of TLBI-is instruction which is a broadcast
>> to all processor core on the system. In case of the above situation,
>> TLBI-is is called by mprotect().
> On the flip side, Linux is providing the hardware with enough information
> not to broadcast to cores for which the remote TLBs don't have entries
> allocated for the ASID being invalidated. I would say that the root cause
> of the issue is that this filtering is not taking place.

Do you mean that the filter should be implemented in hardware?

Thanks,
Qi Fuli

>> This is not a problem for small environment, but this causes a significant
>> performance noise for large-scale HPC environment, which has more than
>> thousand nodes with low latency interconnect.
> If you have a system with over a thousand nodes, without snoop filtering
> for DVM messages and you expect performance to scale in the face of tight
> mprotect() loops then I think you have a problem irrespective of this patch.
> What happens if somebody runs I-cache invalidation in a loop?
>
>> To fix this problem, this patch adds new boot parameter
>> 'disable_tlbflush_is'.  In the case of flush_tlb_mm() *without* this
>> parameter, TLB entry is invalidated by __tlbi(aside1is, asid). By this
>> instruction, all CPUs within the same inner shareable domain check if there
>> are TLB entries which have this ASID, this causes performance noise. OTOH,
>> when this new parameter is specified, TLB entry is invalidated by
>> __tlbi(aside1, asid) only on the CPUs specified by mm_cpumask(mm).
>> Therefore TLB flush is done on minimal CPUs and performance problem does
>> not occur. Actually I confirm the performance problem is fixed by this
>> patch.
> Other than my comments above, my overall concern with this patch is that
> it introduces divergent behaviour for our TLB invalidation flow, which is
> undesirable from both maintainability and usability perspectives. If you
> wish to change the code, please don't put it behind a command-line option,
> but instead improve the code that is already there. However, I suspect that
> blowing away the local TLB on every context-switch may have hidden costs
> which are only apparent with workloads different from the contrived case
> that you're seeking to improve. You also haven't taken into account the
> effects of virtualisation, where it's likely that the hypervisor will
> upgrade non-shareable operations to inner-shareable ones anyway.
>
> Thanks,
>
> Will
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
