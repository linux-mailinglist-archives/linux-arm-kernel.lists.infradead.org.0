Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F4A7AA87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2JDIIWBTnjCsco6rNOqlUyN1tAaWQZmpcrNAU0lSx0=; b=du6A36l9/eqMlD
	5GgO9BqyjDSeOehhQFEZQKoJdukBsrkOcKCCQltG4BWBgD8ZPwnjsAdH55nmmJEuw11wwg3PqiyeI
	sK5fh89xNwn6ySyRPPGJKaHUcusegO7QsEMQA7NZXkAEF3TsS042c/KhjYhth5xv1cp4D4MI2PX5s
	uiuRoOBzDLko5iUC6x983PKQc7UFRH0CtbaXzaxYRkTLQRCQC+u5gVE5ZbEYOhFxU3RM9t42SvEfp
	GxFu/nxRsxxXK1cAWGaDM6hXcXyTmbSBGxJgbKuIS+H5wXqPa4F72O35BwF9a8ZaQfiu3ehGbneMf
	qhs8jQ4Vo/3JNYdAO77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSmF-0004q9-UL; Tue, 30 Jul 2019 14:06:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSm4-0004po-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:06:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A69E128;
 Tue, 30 Jul 2019 07:06:42 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 350C93F694;
 Tue, 30 Jul 2019 07:06:41 -0700 (PDT)
Subject: Re: [PATCH v4 9/9] arm_pmu: Use NMIs for PMU
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-10-git-send-email-julien.thierry@arm.com>
 <20190730091143.GX1330@shell.armlinux.org.uk>
 <95e39e79-e400-f516-c6c6-f2c15b39d26b@arm.com>
 <20190730092824.GY1330@shell.armlinux.org.uk>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <54ab3cf4-952c-268f-8cce-750a84ff12ea@arm.com>
Date: Tue, 30 Jul 2019 15:06:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190730092824.GY1330@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_070644_294338_2A8CDA6F 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, acme@kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 30/07/2019 10:28, Russell King - ARM Linux admin wrote:
> On Tue, Jul 30, 2019 at 10:18:16AM +0100, Julien Thierry wrote:
>> Hi Russell,
>>
>> On 30/07/2019 10:11, Russell King - ARM Linux admin wrote:
>>> On Wed, Jul 17, 2019 at 09:17:12AM +0100, Julien Thierry wrote:
>>>> Add required PMU interrupt operations for NMIs. Request interrupt lines as
>>>> NMIs when possible, otherwise fall back to normal interrupts.
>>>>
>>>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>>>> Tested-by: Shijith Thotton <sthotton@marvell.com>
>>>> Cc: Will Deacon <will.deacon@arm.com>
>>>> Cc: Mark Rutland <mark.rutland@arm.com>
>>>
>>> This has no effect on 32-bit ARM?
>>>
>>
>> It shouldn't. request_nmi()/request_percpu_nmi() should fail on a
>> platform that doesn't have the NMI (through IRQ framework) support .
>> Currently, only arm64 with GICv3 provides that support.
>>
>> So the pmu driver should fallback to request_irq()/request_percpu_irq()
>> for a 32-bit ARM kernel platforms and work as before. I can clarify that
>> in the commit message if there is a respin (or if maintainers agree to
>> amend).
> 
> Has it been tested with a 32-bit guest kernel running on ARM64?

In theory, this shouldn't change anything. Even if the host has a PMU as
NMI, interrupts are presented to the guest the same way as before, not
in an host NMI context. And as long as the guest handles it's interrupts
the same way (i.e. doesn't use priorities and sticks to PSTATE/CPSR I
bit to block interrupts) things should behave like before.

I still gave this a try, just in case there would be other surprises.
Running (and profiling) a 32bit kvm guest from a host that is using
Pseudo-NMIs for the PMU interrupt works and using the virtual PMU from
within the guest also works.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
