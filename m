Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365E12DAFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jo7GDLKeDTm0tJQoEUkyFuEcCwUvPfCOrzebJdW14AM=; b=SRtCOwF32scIyuDP0mG8DmVpg
	OM+lPDYZIEnn8tohN0J7xKXmrZE4169WioXT5hVRwwlCQr42MdVa9rX3ryIPhssDFWNloZPBETnar
	TQ53HIoALTLmA4aLlyEjyROPtodthmo1SCFbh3BbmHc2BgLJ6K1Lw0ofSvrmYK/QP0KsMqD1IZ4a1
	nyHxu5ZSNvKR7Y3678AuoAHX/R/VwewSojk6imjwMN3MeH89cgOsBTd8iVa/KIVT8jgrIQrLDDAWV
	X4djIDK/um/pX+3gB79rQsNAVpC/DOligac044MgVLkFnwgAi3zsz4rnZI1rUBS3sY02I7u4Nm1CX
	ib2hzlZKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVw6n-0000uq-Ue; Wed, 29 May 2019 10:47:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVw6h-0000u8-2i
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:46:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13F9D341;
 Wed, 29 May 2019 03:46:53 -0700 (PDT)
Received: from [10.1.196.108] (e121650-lin.cambridge.arm.com [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4E133F59C;
 Wed, 29 May 2019 03:46:51 -0700 (PDT)
Subject: Re: [RFC 4/7] arm64: pmu: Add function implementation to update event
 index in userpage.
To: Peter Zijlstra <peterz@infradead.org>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-5-raphael.gault@arm.com>
 <20190529094659.GK2623@hirez.programming.kicks-ass.net>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <42a937dd-5cf6-6738-6f69-005fce64138f@arm.com>
Date: Wed, 29 May 2019 11:46:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190529094659.GK2623@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_034655_418242_2C54F614 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 5/29/19 10:46 AM, Peter Zijlstra wrote:
> On Tue, May 28, 2019 at 04:03:17PM +0100, Raphael Gault wrote:
>> +static int armv8pmu_access_event_idx(struct perf_event *event)
>> +{
>> +	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
>> +		return 0;
>> +
>> +	/*
>> +	 * We remap the cycle counter index to 32 to
>> +	 * match the offset applied to the rest of
>> +	 * the counter indeces.
>> +	 */
>> +	if (event->hw.idx == ARMV8_IDX_CYCLE_COUNTER)
>> +		return 32;
>> +
>> +	return event->hw.idx;
> 
> Is there a guarantee event->hw.idx is never 0? Or should you, just like
> x86, use +1 here?
> 

You are right, I should use +1 here. Thanks for pointing that out.

>> +}

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
