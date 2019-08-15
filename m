Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC9E8F2EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fw47sGP0Nfyk7+LnyjYHyQXqm+xHeiaQNZCu9c9+qTQ=; b=G04OgdAfEDOaxu
	wNF6ZaGRMXOoxL86AzXN4DC8qcbUGO1EGgOntguMTDle3vnJ8zrxjrPrfLRkiMBnqW62eIJSNtrDy
	J3qUfX8I74bWWSH0IIeCc4VYMrV3bu21s22mK1UccmBsx+5XTwXFVZJxcdq2CnP8rj0AZfARe20yU
	j927cmVWgnagLfLGDU6KpVMNZmpext5MkH/hYyXXYxJeiE+pbIGF0kiaukzCHabyUNnxvEOAlCnZq
	KiFFYw8LlGGoKmWeggZh98Gy4KRHD9ggUT9Jq+2ytlNh3CwEuJhuyaPFGXLOL/4nIX8ww+tC1nIms
	XV42xVTyfSn8RqPyt89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKDz-00021f-3w; Thu, 15 Aug 2019 18:11:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKDU-0001y8-PD; Thu, 15 Aug 2019 18:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3CB928;
 Thu, 15 Aug 2019 11:11:13 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1058F3F694;
 Thu, 15 Aug 2019 11:11:11 -0700 (PDT)
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <ba8a2519-ed95-2518-d0e8-66e8e0c14ff5@arm.com>
Date: Thu, 15 Aug 2019 19:11:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_111116_902114_41CAE525 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 08/08/2019 19:44, Pavel Tatashin wrote:
> Just a friendly reminder, please send your comments on this series.

(Please don't top-post)


> It's been a week since I sent out these patches, and no feedback yet.

A week is not a lot of time, people are busy, go to conferences, some even dare to take
holiday!


> Also, I'd appreciate if anyone could test this series on vhe hardware
> with vhe kernel, it does not look like QEMU can emulate it yet

This locks up during resume from hibernate on my AMD Seattle, a regular v8.0 machine.


Please try and build the series to reduce review time. What you have here is an all-new
page-table generation API, which you switch hibernate and kexec too. This is effectively a
new implementation of hibernate and kexec. There are three things here that need review.

You have a regression in your all-new implementation of hibernate. It took six months (and
lots of review) to get the existing code right, please don't rip it out if there is
nothing wrong with it.


Instead, please just move the hibernate copy_page_tables() code, and then wire kexec up.
You shouldn't need to change anything in the copy_page_tables() code as the linear map is
the same in both cases.


It looks like you are creating the page tables just after the kexec:segments have been
loaded. This will go horribly wrong if anything changes between then and kexec time. (e.g.
memory you've got mapped gets hot-removed).
This needs to be done as late as possible, so we don't waste memory, and the world can't
change around us. Reboot notifiers run before kexec, can't we do the memory-allocation there?


> On Thu, Aug 1, 2019 at 11:24 AM Pavel Tatashin
> <pasha.tatashin@soleen.com> wrote:
>>
>> Enable MMU during kexec relocation in order to improve reboot performance.
>>
>> If kexec functionality is used for a fast system update, with a minimal
>> downtime, the relocation of kernel + initramfs takes a significant portion
>> of reboot.
>>
>> The reason for slow relocation is because it is done without MMU, and thus
>> not benefiting from D-Cache.
>>
>> Performance data
>> ----------------
>> For this experiment, the size of kernel plus initramfs is small, only 25M.
>> If initramfs was larger, than the improvements would be greater, as time
>> spent in relocation is proportional to the size of relocation.
>>
>> Previously:
>> kernel shutdown 0.022131328s
>> relocation      0.440510736s
>> kernel startup  0.294706768s
>>
>> Relocation was taking: 58.2% of reboot time
>>
>> Now:
>> kernel shutdown 0.032066576s
>> relocation      0.022158152s
>> kernel startup  0.296055880s
>>
>> Now: Relocation takes 6.3% of reboot time
>>
>> Total reboot is x2.16 times faster.

When I first saw these numbers they were ~'0.29s', which I wrongly assumed was 29 seconds.
Savings in milliseconds, for _reboot_ is a hard sell. I'm hoping that on the machines that
take minutes to kexec we'll get numbers that make this change more convincing.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
