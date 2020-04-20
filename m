Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05251B0D24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kQf8zcZm6Hn8vYr/CQyICOMsx8Gkp7CM/kgvas49Lfo=; b=uQxzTGlBjvimgHC9Pi8BdaKzM
	yVTkZeYMHAYmBcWXotA9V5uDD9P96GiERzRtKWEWQ8qsXf3kq2NWEzs/pod0zVqyM+cIduqhRvfHd
	xKbZXbKvBoDD5HZvAU63HWZ30D32fVbsBtQ2BDcxfY07GuQStalqwEQ1261IqOk7ZFNx6a8XD74z+
	xWduOehUszJNzXVavqgFytvxdZaFhDWl2KoEahKTEi0/OWwue7F8jBuRDVibcjXT5Qj/D7gq/JIZV
	M2r94D0LB/I2p7FPdYZhEEroM0iCjJiT77VBWRKp7X6dOr37dYzxEGNx851bQNFa/dpzBdiSJ40x6
	QryBNwGYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWkx-0003Dx-Uv; Mon, 20 Apr 2020 13:46:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWkb-00039g-Aj
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:46:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5A2F1FB;
 Mon, 20 Apr 2020 06:46:16 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFD8B3F68F;
 Mon, 20 Apr 2020 06:46:13 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
To: Will Deacon <will@kernel.org>, Andrew Scull <ascull@google.com>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
 <20200403125726.GA33049@google.com> <20200417164103.GA12362@willie-the-truck>
From: Steven Price <steven.price@arm.com>
Message-ID: <40f6b8bc-3ff4-2053-f8ae-e6b5fb811573@arm.com>
Date: Mon, 20 Apr 2020 14:46:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417164103.GA12362@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_064617_426334_C6373AC3 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "qwandor@google.com" <qwandor@google.com>,
 "qperret@google.com" <qperret@google.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "wedsonaf@google.com" <wedsonaf@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 James Morse <James.Morse@arm.com>, "dbrazdil@google.com" <dbrazdil@google.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "tabba@google.com" <tabba@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/2020 17:41, Will Deacon wrote:
> On Fri, Apr 03, 2020 at 01:57:26PM +0100, Andrew Scull wrote:
>> On Fri, Mar 27, 2020 at 02:59:47PM +0000, Steven Price wrote:
>>> I proposed something similar a while ago[1], but Marc was concerned about
>>> the microarch detail[2] and hence I split the workaround into VHE/non-VHE.
>>>
>>> That said I'm not saying this is necessarily wrong, just that we'd need some
>>> more information on whether the non-VHE workaround is suitable for the CPUs
>>> we're currently forcing VHE on.
>>
>> We noticed that both the nVHE and VHE workarounds share the same
>> assumption that the EPDx bits are not being cached in the TLB.
>>
>> `__tlb_switch_to_guest_vhe` and `__tlb_switch_to_guest_nvhe` are both
>> setting EPDx as part of the workaround. However, neither handles the
>> possibility of a speculative AT being able to make use of a cached EPD=0
>> value in the TLB in order to allocate bad TLB entries.
>>
>> If this is correct, the microarch concern appears to have been solved
>> already. Otherwise, or if we are unsure, we should go ahead and add the
>> TLB flushes to keep this safe.
> 
> I think Andrew's right here. Can we go ahead with the original approach of
> combining the workarounds, or is there something we've missed?

As far as I know it is safe to combine the workarounds: I did post my 
own patch earlier. But I don't have the deep understanding of the 
microarch - so I accepted Marc's concerns and dropped that, and was 
simply linking up the discussions.

The assumption before was that booting a VHE capable system without VHE 
wasn't useful, so there wasn't a pressing need to unify the workarounds. 
And therefore the easiest option for me was to keep the workarounds 
separate. Since there is apparently a desire to do such a thing then 
unifying the workarounds seems reasonable.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
