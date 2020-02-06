Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049401545E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iD3LqCXNht3agCDQcyfEP0MKTLLR1LtCCJ+7FkHKW8c=; b=n6QGlzYXrbL/EvUBoPwNHS5aA
	hJ41Aj/WhuMi9Qd5LuGZukxh4iw/s1FaLzP4x1dl2xrK6D2R6e2OkFUax6cCNZuQuRVr45ZO6o3Je
	+ZQw7SY/c+ftVOd+5aMrKJxriOa0N6+/iUK7JoIumu7PcOxjskQgMmpdW+7zZqrmmopASkT4TBY6C
	TEsb788Bu5six4SE7eL/Dj2+T9Hh4eVM1tn86LEdlLJZxOo2KdWLn39ZVgunjxEtLQ6vI3L6w3daZ
	MOecX7VSKkFtZ1V3dIHyle6xq2S1XMg776X3alrbdqVvU0bT7a/g+R8PZ+AZktQymcmAYMUcaNS4N
	XTlkKrh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhwh-0000sz-Th; Thu, 06 Feb 2020 14:15:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhwb-0000sC-Du
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:15:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA60E30E;
 Thu,  6 Feb 2020 06:15:47 -0800 (PST)
Received: from [10.37.12.48] (unknown [10.37.12.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B1CF3F52E;
 Thu,  6 Feb 2020 06:15:44 -0800 (PST)
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
 <db3f2554-288d-81ab-2373-1447367ba673@arm.com>
 <20200131204118.GA27284@kozik-lap>
 <c54e252d-dc55-5fa3-f97f-643d7efbfdc1@arm.com>
 <CAJKOXPfTjdtNMx=+dPVcQ53RiXx0y-r=KXBRhzA4jS77SHxciQ@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <f304f978-be07-7944-e47e-e5eaac9cb907@arm.com>
Date: Thu, 6 Feb 2020 14:15:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfTjdtNMx=+dPVcQ53RiXx0y-r=KXBRhzA4jS77SHxciQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_061549_508692_52C2114C 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 2/6/20 12:59 PM, Krzysztof Kozlowski wrote:
> On Wed, 5 Feb 2020 at 13:49, Lukasz Luba <lukasz.luba@arm.com> wrote:
>>>> As mentioned in response to patch 1/3. The fist patch would create MC
>>>> domain, something different than Energy Model or EAS. The decisions in
>>>> the scheduler would be different.
>>>>
>>>> I can merge 1/3 and 3/3 if you like, though.
>>>
>>> I understand now that their independent. Still, they are part of one
>>> goal to tune the scheduler for Exynos platform. Splitting these looks
>>> too much, like enabling multiple drivers one after another.
>>>
>>> However if you provide numbers for each of cases (before patches, multi
>>> core scheduler, energy model with DTS), then I see benefit of splitting
>>> it.  Each commit would have its own rationale.  I am not sure if it is
>>> worth such investigation - that's just defconfig... distros might ignore
>>> it anyway.
>>
>> Good point, and I agree that it would require more investigation, for
>> which unfortunately I don't have currently spare cycles.
>>
>> Should I merge patch 1/3 and 3/3 and send the v2 with a cover letter
>> which would have the test results?
> 
> Yes, let's do this way.

Thank you, I will send the v2 then.

Regards,
Lukasz

> 
> Thanks for working on this!
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
