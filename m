Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756841A707F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 03:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUfwYFcegk+bwlqmNXzE/mHCrNf02QIpWaFNHS79tgM=; b=L4ZydaRbMorz+E
	xXqiLfZB9rSpEtSOw5VA5QaFPpb19UuV9MPEdNcmEM09oDmqsWo8jTCzrhVN3Rwp/MGxW0yqsjImv
	RqqinXXO576YkEtIbJd+P/20i+Icnhib48CluxB8gHI1lu3cC3aTOIGcF29wlRxH87uj16ymtExPI
	sq7cjhgqDDH+RdQoUmhIEzi9vkcaWgfSFmTfOthGpXoRqyEACZm4+9sLB6QHtzA9hJYkWdBj9Tibh
	+C08Ba2GMv2IZhpsgq/sHo2953jCtSbf9gGbASifVe4F2KYCrgXvmRT5ZimLxLKh/ERb/WNAdE90O
	PDT9RMAH18QULVJz8b8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOAES-0006RX-O4; Tue, 14 Apr 2020 01:19:20 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOAEL-0006R7-4d; Tue, 14 Apr 2020 01:19:14 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0637BC0086;
 Tue, 14 Apr 2020 01:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586827152; bh=PtnNdaOntwdHe1x8AQMVgdwjxEA0YmKVoPX/egM36AI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=L40tEEcj8js+c/LfcUuj8oYD6t2NzrdrvodZzEPgqB6JSUsSFFZVYZq7qwRQoeZ8V
 QJmKCw7x3CA2uG+nX2BPZGe1iGRw6nfKyZZLoeyC9Eew2sTwwV0JhBUuuUwPKoZbS1
 o+nOto/jFMuaWrzz8+fxVjAot1DUDIwT1fWOEirk7jEallxL1fW9xSknRO1rPKgtVy
 yECAORCxLLoJwaG6rDpI4o5UT3Zr4ET6dLB0zvTDTtrol1SRNX35fFppI1vEDNzUay
 x70drAXgvIRvowzCS1O6GH+iBXM9qVihHFNID30D5gqbvkvbv7Z59ShWt2k/KcEupX
 5JptU47mUh0Yw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1FFA8A008A;
 Tue, 14 Apr 2020 01:19:09 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 13 Apr 2020 18:19:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 13 Apr 2020 18:19:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dram8n0p9fsEiHJXQ7MJn/y+p1/xQ8mFWoI6UKmWuRCiB4o76edUbEyKw2Z/kQ1pdjdgqkeRlFYyoNkO7CsWo8atGrj/UDksWLq5LHl1SyVQmMjOF00RBASz+ERCK+KHR17ssetGVj1lgfF44XydIc8UGDRVnzoWGLeqwR7SmVbg+DQY11RTAqwgbGrXi11Q8GAoeCJiyUrKGhWtRufC3VPY7qc0nYf+sLD/BOqcsAPOlLJif9bYz6oOywAgZbq1wcpdHQja+5VPcVr84afeDlvsDu8AJC7mO1epS08DF7cY8aDkhf1TyzZCMl/9AFsl6Dk95CGfsZwKrTTzqgP44w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtnNdaOntwdHe1x8AQMVgdwjxEA0YmKVoPX/egM36AI=;
 b=OLYosYi860YW27coSBrN5rIjzR5I9OqI/dtX/dYizIHE6O08sjPYNcREBmM1bfsCAFkuVDpJqFGiY3DCt/DZG/B8pIhp4IQtTnebfGJuKXY9YrIS3cdeDiFr24OxYeoc0RNzAyDzVDC/R1zO4XbqkNtvvruARKIdaUbCtn1hQQZJFg9tQz5Dc7ubrbJflVSvMYf5FNss0iY9OExpCZBt/q/bokIkPJnuoN8vcdSsPja4IWpaXogkuNK8XSvB98tiKSwnu/8DWqm/dBRp/D+55MTP4R0ehPM0KL1rGAYLgdno5ct13YFDnZBVS4VuRFbZZh2dWEm1udENN2qgoZ+JiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtnNdaOntwdHe1x8AQMVgdwjxEA0YmKVoPX/egM36AI=;
 b=iUWJLBuL87yJEKe3aZIlvQ2ioyjA2BTD7A8uMecezjMfamfwh8bhlhgqwpJtH6BGz/vuwUNVP8sZrfONEOBqgHld8D07cm92/uQv3st76Qo5F+vs0wv7akxe/Q6OPwAd/IteKexiAspLNV+i38kbbFx5rVv96keizTlPOoL1igE=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (2603:10b6:a03:db::25)
 by BYAPR12MB2613.namprd12.prod.outlook.com (2603:10b6:a03:69::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Tue, 14 Apr
 2020 01:19:07 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 01:19:07 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Peter Zijlstra <peterz@infradead.org>, Will Deacon <will.deacon@arm.com>
Subject: Re: Patch "asm-generic/bitops/lock.h: Rewrite using atomic_fetch_"
 causes kernel crash
Thread-Topic: Patch "asm-generic/bitops/lock.h: Rewrite using atomic_fetch_"
 causes kernel crash
Thread-Index: AQHWEfqwZ/jjxftyLUC7pQJHdoRBAw==
Date: Tue, 14 Apr 2020 01:19:06 +0000
Message-ID: <d9b26292-4b40-f282-b1f6-5ee238358f0e@synopsys.com>
References: <1535567633.4465.23.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA23075012B090BEA@us01wembx1.internal.synopsys.com>
 <20180830094411.GX24124@hirez.programming.kicks-ass.net>
 <20180830095148.GB5942@arm.com> <1535629996.4465.44.camel@synopsys.com>
 <20180830141713.GN24082@hirez.programming.kicks-ass.net>
 <20180830142354.GB13005@arm.com>
 <20180830142920.GO24082@hirez.programming.kicks-ass.net>
 <20180830144344.GW24142@hirez.programming.kicks-ass.net>
In-Reply-To: <20180830144344.GW24142@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [2601:641:c100:83a0:7c06:2fd:ae14:dd9]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a8791ee-ab26-413b-57f3-08d7e011d3ec
x-ms-traffictypediagnostic: BYAPR12MB2613:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB2613A32DC0F7B058476891A5B6DA0@BYAPR12MB2613.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3592.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(346002)(376002)(396003)(366004)(39860400002)(136003)(6486002)(36756003)(186003)(31686004)(6512007)(478600001)(71200400001)(31696002)(64756008)(66446008)(66556008)(76116006)(81156014)(66946007)(54906003)(8676002)(66476007)(110136005)(6506007)(8936002)(86362001)(4326008)(2906002)(2616005)(5660300002)(316002)(53546011)(41533002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UARJD4GPPkQ65xp2YZluSm5OiNRLu3loQItdibZg/LlYv2Ma1Eg3F3po140zpdNSJ7snJZovh5wUCdArblAK4V3/3QWwa15rHSR4mIRKSOwWSdCt3p9M/0gSFhV0W9E//V99k7gfxsLfILjVIXOTGosJk3OsSCFLmD0ZylitsIlNUgS9KgeWLcAWWCdQNvIxACvFqFWktDn2rg2Z1121YNJ+CbjQd51EC4j0YxnTCdRZX1WKFXK47nGtkfbb2FLWcVyUehOeYH20nd1FbXjDYK7VFQqwRiacNy+q/JQkCwrDaFs2vxdFJWOVDoC3MazSXUwEnznqCLOk9zoC5c5q6HD8nWM7joupP1g4LBdAJwXq/nrkejSRgv3dZqVXnqLJv+NDHUUHWRdnQBa3T9fbYst6hJ5jfYbx50EpXbkvHM0iJhisdXK02VmdwpcPD5eKtMhQLRv0bLYA48AmPtAGI0hjtOzi6QH+b1g9EYa5uJf04Gsx2TLHTc36H1dBwgAp
x-ms-exchange-antispam-messagedata: Z8CqEliFiUJL3sEsnYRPsv44mciXNfc2q/o7cP9SbhuowYTrY82YaEjvuUKHlDb9y0xwboCeNhClqzK5v8/rM0b05bmTwjbeRZ6uHug0zkE23SzQ8lH7jVKgEhmKWt93sTN90o6Q1QhAavdyDPvHE18qMyRL/m9aYd2cstPoVqj55wYwYRCg7SVpgOSVgTJNGdCe1wAIiGMDhccpVwxGZg==
Content-ID: <D1A41C114C659A49A5C62FC67F388E00@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a8791ee-ab26-413b-57f3-08d7e011d3ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 01:19:06.8703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjH0t/sZeR0JTDOCZqAuED7NEGeqSyPo7QU4Veo/YhpCk77It0JEjqvwfKZv4feLkr8AoECQfalnabW2cdyyJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2613
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_181913_330959_039C65E7 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/30/18 7:43 AM, Peter Zijlstra wrote:
> On Thu, Aug 30, 2018 at 04:29:20PM +0200, Peter Zijlstra wrote:
>
>> Also, once it all works, they should look at switching to _relaxed
>> atomics for LL/SC.
> A little something like so.. should save a few smp_mb().

Finally got to this - time for some spring cleaning ;-)


> ---
>
> diff --git a/arch/arc/include/asm/atomic.h b/arch/arc/include/asm/atomic.h
> index 4e0072730241..714b54c308b0 100644
> --- a/arch/arc/include/asm/atomic.h
> +++ b/arch/arc/include/asm/atomic.h
> @@ -44,7 +44,7 @@ static inline void atomic_##op(int i, atomic_t *v)			\
>  }									\
>  
>  #define ATOMIC_OP_RETURN(op, c_op, asm_op)				\
> -static inline int atomic_##op##_return(int i, atomic_t *v)		\
> +static inline int atomic_##op##_return_relaxed(int i, atomic_t *v)	\
>  {									\

This being relaxed, shoudn't it also remove the smp_mb() before the operation and
leave the generic code to add one / more smp_mb() as appropriate for fully
ordered, acquire and release variants ?

>  	unsigned int val;						\
>  									\
> @@ -69,8 +69,11 @@ static inline int atomic_##op##_return(int i, atomic_t *v)		\
>  	return val;							\
>  }
>  
> +#define atomic_add_return_relaxed	atomic_add_return_relaxed
> +#define atomic_sub_return_relaxed	atomic_sub_return_relaxed
> +
>  #define ATOMIC_FETCH_OP(op, c_op, asm_op)				\
> -static inline int atomic_fetch_##op(int i, atomic_t *v)			\
> +static inline int atomic_fetch_##op##_relaxed(int i, atomic_t *v)	\
>  {									\
>  	unsigned int val, orig;						\
>  									\
> @@ -96,6 +99,14 @@ static inline int atomic_fetch_##op(int i, atomic_t *v)			\
>  	return orig;							\
>  }
>  
> +#define atomic_fetch_add_relaxed	atomic_fetch_add_relaxed
> +#define atomic_fetch_sub_relaxed	atomic_fetch_sub_relaxed
> +
> +#define atomic_fetch_and_relaxed	atomic_fetch_and_relaxed
> +#define atomic_fetch_andnot_relaxed	atomic_fetch_andnot_relaxed
> +#define atomic_fetch_or_relaxed		atomic_fetch_or_relaxed
> +#define atomic_fetch_xor_relaxed	atomic_fetch_xor_relaxed
> +
>  #else	/* !CONFIG_ARC_HAS_LLSC */
>  
>  #ifndef CONFIG_SMP
> @@ -379,7 +390,7 @@ static inline void atomic64_##op(long long a, atomic64_t *v)		\
>  }									\
>  
>  #define ATOMIC64_OP_RETURN(op, op1, op2)		        	\
> -static inline long long atomic64_##op##_return(long long a, atomic64_t *v)	\
> +static inline long long atomic64_##op##_return_relaxed(long long a, atomic64_t *v)	\
>  {									\
>  	unsigned long long val;						\
>  									\
> @@ -401,8 +412,11 @@ static inline long long atomic64_##op##_return(long long a, atomic64_t *v)	\
>  	return val;							\
>  }
>  
> +#define atomic64_add_return_relaxed	atomic64_add_return_relaxed
> +#define atomic64_sub_return_relaxed	atomic64_sub_return_relaxed
> +
>  #define ATOMIC64_FETCH_OP(op, op1, op2)		        		\
> -static inline long long atomic64_fetch_##op(long long a, atomic64_t *v)	\
> +static inline long long atomic64_fetch_##op##_relaxed(long long a, atomic64_t *v)	\
>  {									\
>  	unsigned long long val, orig;					\
>  									\
> @@ -424,6 +438,14 @@ static inline long long atomic64_fetch_##op(long long a, atomic64_t *v)	\
>  	return orig;							\
>  }
>  
> +#define atomic64_fetch_add_relaxed	atomic64_fetch_add_relaxed
> +#define atomic64_fetch_sub_relaxed	atomic64_fetch_sub_relaxed
> +
> +#define atomic64_fetch_and_relaxed	atomic64_fetch_and_relaxed
> +#define atomic64_fetch_andnot_relaxed	atomic64_fetch_andnot_relaxed
> +#define atomic64_fetch_or_relaxed	atomic64_fetch_or_relaxed
> +#define atomic64_fetch_xor_relaxed	atomic64_fetch_xor_relaxed
> +
>  #define ATOMIC64_OPS(op, op1, op2)					\
>  	ATOMIC64_OP(op, op1, op2)					\
>  	ATOMIC64_OP_RETURN(op, op1, op2)				\
> @@ -434,6 +456,12 @@ static inline long long atomic64_fetch_##op(long long a, atomic64_t *v)	\
>  
>  ATOMIC64_OPS(add, add.f, adc)
>  ATOMIC64_OPS(sub, sub.f, sbc)
> +
> +#undef ATOMIC64_OPS
> +#define ATOMIC64_OPS(op, op1, op2)					\
> +	ATOMIC64_OP(op, op1, op2)					\
> +	ATOMIC64_FETCH_OP(op, op1, op2)
> +

For clarity I split off this hunk into a seperate patch as it elides generation of
unused bitwise ops.

>  ATOMIC64_OPS(and, and, and)
>  ATOMIC64_OPS(andnot, bic, bic)
>  ATOMIC64_OPS(or, or, or)
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
