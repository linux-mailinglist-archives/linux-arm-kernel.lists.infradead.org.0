Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04893153113
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lUaaYdti0l2YNUzYpRsknl9ExlcM5MmNfjHdZEUIQ7o=; b=klx4l0hIfBZmme3tqvm03itFU
	LgEZbz93VnvlgRIYDcmMvBsVJ2StNf9BPf/QpdoWw4HvlgzVTMzBoW9HKqMaO7yKF2Fljc2wTauJw
	KSD2fcPG6Ql39OS6MmVp83jMylqUzgPUJKLUEz75a1n99s4clSj9wCf1YXQuYIauolRZfvjyMakVe
	Gp+0jx4BLbmolrpOFubHd09C+2KL+Dxucb2vryMOYNmGeT7Qb0aH9vCXAsZHem7Ts9eh9oWxxYnGg
	ydb9EiednavprwbCuCyFoe/YWjEPqN+nIqz3K2YtGGzyTVUyj6cMxXBB+aanMe8TVX3I2SIbL8gOc
	cz4oplfKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izK8C-0002Np-RX; Wed, 05 Feb 2020 12:50:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izK80-0002C1-6r
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:50:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 057631FB;
 Wed,  5 Feb 2020 04:49:56 -0800 (PST)
Received: from [10.37.12.130] (unknown [10.37.12.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DB2D3F52E;
 Wed,  5 Feb 2020 04:49:34 -0800 (PST)
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
 <db3f2554-288d-81ab-2373-1447367ba673@arm.com>
 <20200131204118.GA27284@kozik-lap>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <c54e252d-dc55-5fa3-f97f-643d7efbfdc1@arm.com>
Date: Wed, 5 Feb 2020 12:49:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200131204118.GA27284@kozik-lap>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_045000_337087_B0E9A12F 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 1/31/20 8:41 PM, Krzysztof Kozlowski wrote:
> On Fri, Jan 31, 2020 at 05:30:46PM +0000, Lukasz Luba wrote:
>   
>>>
>>>>                   |-----------------------------------------------|---------------
>>>>                   | performance   | SchedUtil     | SchedUtil     | performance
>>>>                   | governor      | governor      | governor      | governor
>>>>                   |               | w/o EAS       | w/ EAS        |
>>>> ----------------|---------------|---------------|---------------|---------------
>>>> hackbench w/ PL | 12.7s         | 11.7s         | 12.0s         | 13.0s - 12.2s
>>>> hackbench w/o PL| 9.2s          | 8.1s          | 8.2s          | 9.2s - 8.4s
>>>
>>> Why does the performance different before and after this patch?
>>
>> Probably due to better locality and cache utilization. I can see that
>> there is ~700k context switches vs ~450k and ~160k migrations vs ~50k.
>> If you need to communicate two threads in different clusters, it will go
>> through CCI.
> 
> Mhmm... I was not specific - I mean, "performance governor". All this
> you mentioned should not differ between performance governor before and
> after. However once you have 12.7, then 13.0 - 12.2. Unless multi-core
> scheduler affects it... but then these numbers here are not showing
> only this change, but also the SCHED_MC effect.  In such case each of
> commits should be coming with their own numbers.

Agree, I should have not put 'this patch set' in the commit
msg. It should go into the cover letter and avoid this confusion.
You are right with ' Unless multi-core scheduler affects it...',
that's why when the SCHED_MC is missing, the decisions about task
placing might cause this variation and delay '13.0 - 12.2' seconds.

> 
>> As mentioned in response to patch 1/3. The fist patch would create MC
>> domain, something different than Energy Model or EAS. The decisions in
>> the scheduler would be different.
>>
>> I can merge 1/3 and 3/3 if you like, though.
> 
> I understand now that their independent. Still, they are part of one
> goal to tune the scheduler for Exynos platform. Splitting these looks
> too much, like enabling multiple drivers one after another.
> 
> However if you provide numbers for each of cases (before patches, multi
> core scheduler, energy model with DTS), then I see benefit of splitting
> it.  Each commit would have its own rationale.  I am not sure if it is
> worth such investigation - that's just defconfig... distros might ignore
> it anyway.

Good point, and I agree that it would require more investigation, for
which unfortunately I don't have currently spare cycles.

Should I merge patch 1/3 and 3/3 and send the v2 with a cover letter
which would have the test results?

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
