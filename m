Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18197EBC77
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg02pp3hW7JHr3ySmYqRM6fGY6bqr+KFbW1TVChS2HE=; b=RineKH4ll20IAm
	b1jGyAmcwTdJD1yhBAk6WMK8DKB/eveVrkNZmrH9OU+MVZlNEAm9Svu88mtt1Qi+4FDYKYQ4icLBc
	AIxS3ySsz633YzhlrdyhswJlJ4ahGD/xLzdD+IMYZOoL+tUWZyApjany3Y5xA58MndVB4w7CnviD2
	NnS4kNi1+NlEcbfwMwGmZzkT7pXpRK1hZ+zDmwR4Bd4jPGa01CsXBcimz1MYxe6cne9TC7UzgjN3O
	V8x59UEpwnbBSGtx86lsJMlsCgpo1KdWyhIxmzkyZJgTIESczJ4tZxnec39I8E15smHwLraET8kw+
	ps1iTIf7IEkFW/G1OLDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNtM-0004PD-9v; Fri, 01 Nov 2019 03:46:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNsv-0004Es-Mz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:46:04 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AB7EE71C7291276784D7;
 Fri,  1 Nov 2019 11:45:57 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 1 Nov 2019
 11:45:56 +0800
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
To: Will Deacon <will@kernel.org>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <9fbb57f9-2d00-dd98-99c0-b1fd68f1d3d1@hisilicon.com>
Date: Fri, 1 Nov 2019 11:45:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20191031160804.GA28325@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_204602_365569_1C272308 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2019/11/1 0:08, Will Deacon wrote:
> On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
>> For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
>> &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
>> to simplify the armv8_pmuv3_event_attrs.
>>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>> ---
>>  arch/arm64/kernel/perf_event.c | 189 ++++++++++++++--------------------=
-------
>>  1 file changed, 65 insertions(+), 124 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_eve=
nt.c
>> index a0b4f1bca491..d0f084939bcf 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
>>  }
> =

> [...]
> =

>> +	(&((struct perf_pmu_events_attr[]) { \
>> +		{ .attr =3D __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>> +		  .id =3D config, } \
>> +	})[0].attr.attr)
> =

> I don't get the need for the array here. Why can't you do:
> =

> 	(&((struct perf_pmu_events_attr) {
> 		.attr =3D ...,
> 		.id =3D ...,
> 	}).attr.attr)
> =

> ?

I try it and there is a compiler error:

zhangshaokun@ubuntu:~/linux$ make Image -j64
  CALL    scripts/atomic/check-atomics.sh
  CALL    scripts/checksyscalls.sh
  CHK     include/generated/compile.h
  CC      arch/arm64/kernel/perf_event.o
arch/arm64/kernel/perf_event.c:162:13: error: unknown field =91attr=92 spec=
ified in initializer
  (&((struct perf_pmu_events_attr) { \
             ^
arch/arm64/kernel/perf_event.c:168:2: note: in expansion of macro =91ARMV8_=
EVENT_ATTR=92
  ARMV8_EVENT_ATTR(sw_incr, ARMV8_PMUV3_PERFCTR_SW_INCR),
  ^
arch/arm64/kernel/perf_event.c:162:13: warning: braces around scalar initia=
lizer
  (&((struct perf_pmu_events_attr) { \
             ^
arch/arm64/kernel/perf_event.c:168:2: note: in expansion of macro =91ARMV8_=
EVENT_ATTR=92
  ARMV8_EVENT_ATTR(sw_incr, ARMV8_PMUV3_PERFCTR_SW_INCR),

It seems that it became completely anonymous and the compiler can't find it=
s member.

Thanks,
Shaokun

> =

> Will
> =

> .
> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
