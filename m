Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942DAD474E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1kd2JVsAPsd0dg58POoieJlRsYB4S3uXfs8hyzOD8M=; b=rzUlfLMrUgSaGW
	ghtbyRSGXcmF7HQ54FzAJbsnawu/OgnzsQvfWHw8sblXkKdvm+zXPwO8kihTQO2AlOT6QoKA6tmNh
	G65sV/6uomzF8nuLZZVNololp7ZVxbU3cpH4HgpKDCyUb2XE8rToRMMItw/cLavN2ZoNy1WQ9fy1L
	jaMGN/lSz7eX4+KpaC0IvTtCs8dpr1VlSLWA84ahJSA6IaXzKOQpwd/o8ax0/Fzlkv+tMzK7TdSqk
	ubJiGmJWvBjqIGZ0PrLwBVO+XsYuyVgJGuGH9tNN65tXx7+RTd507siZX3BuoMfgoMzkqfWoaRL3Z
	9FPgmc36M9aJ8kg2a6ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzTO-0005La-To; Fri, 11 Oct 2019 18:17:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzTE-0005Jp-V1; Fri, 11 Oct 2019 18:16:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4212F142F;
 Fri, 11 Oct 2019 11:16:56 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7AAC3F703;
 Fri, 11 Oct 2019 11:16:52 -0700 (PDT)
Subject: Re: [PATCH v3 06/17] arm64, hibernate: add trans_pgd public functions
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-7-pasha.tatashin@soleen.com>
 <bcc3f71f-97d2-dff4-c55a-4798c6e2bede@arm.com>
 <CA+CK2bCwRm_AQHzrJ8tdjp5k6Yj+32yRsvQsOoy7b44GTdd6wQ@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <f1dbf5c6-7caf-daae-aec4-9a47a367c119@arm.com>
Date: Fri, 11 Oct 2019 19:16:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bCwRm_AQHzrJ8tdjp5k6Yj+32yRsvQsOoy7b44GTdd6wQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_111657_088711_293AE44C 
X-CRM114-Status: GOOD (  22.11  )
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
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

On 06/09/2019 17:00, Pavel Tatashin wrote:
> On Fri, Sep 6, 2019 at 11:18 AM James Morse <james.morse@arm.com> wrote:
>> On 21/08/2019 19:31, Pavel Tatashin wrote:
>>> trans_pgd_create_copy() and trans_pgd_map_page() are going to be
>>> the basis for public interface of new subsystem that handles page
>>
>> Please don't call this a subsystem. 'sound' and 'mm' are subsystems, this is just some
>> shared code.

> Sounds good: just could not find a better term to call trans_pgd_*.

I don't like the trans_pgd_ name either, but I can't think of anything better, and its
only a name.


> I won't fix log commits.

Please avoid the word 'subsystem',


>>> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
>>> index 750ecc7f2cbe..2e29d620b56c 100644
>>> --- a/arch/arm64/kernel/hibernate.c
>>> +++ b/arch/arm64/kernel/hibernate.c
>>> @@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)
>>
>>> +int trans_pgd_map_page(pgd_t *trans_pgd, void *page,
>>> +                    unsigned long dst_addr,
>>> +                    pgprot_t pgprot)
>>
>> If this thing is going to be exposed, its name should reflect that its creating a set of
>> page tables, to map a single page.
>>
>> A function called 'map_page' with this prototype should 'obviously' map @page at @dst_addr
>> in @trans_pgd using the provided @pgprot... but it doesn't.
> 
> Answered below...
> 
>>
>> This is what 'create' was doing in the old name, if that wasn't obvious, its because
>> naming things is hard!
>> | trans_create_single_page_mapping()?
>>
>> (might be too verbose)
>>
>> I think this bites you in patch 8, where you 'generalise' this.

> The new naming makes more sense to me. The old code had function named:
> 
> create_safe_exec_page()
> 
> It was doing four things: 1. creating the actual page via provided
> allocator, 2. copying content from the provided page to new page, 3
> creating a new page table. 4 mapping it to a new page table at
> specified destination address

Yup, all implied in the work of creation.


> After, I generalize this the function the prototype looks like this:
> 
> int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
>                                          void *page, unsigned long
> dst_addr, pgprot_t pgprot)
> 
> The function only does the "4" from the old code: map the specified
> page at dst_addr.


> The trans_pgd is already created.

Which one is this?
The existing hibernate code has two PGD. One for the copy of the linear-map, one for this
safe page that contains the code doing the copying.


> Of course, and
> mapping function will have to allocate missing tables in the page
> tables when necessary.

I think you are over generalising this, to support a case that doesn't exist.

Hibernate needs a copy of the linear map to relocate memory, without stepping in
page-table, and an executable page it can do that from.

To get kexec to relocate the kernel with the MMU on... you need the same.

When do you need to add an arbitrary page to either of these sets of tables? Its either a
copy of the linear-map, or the single executable page.

When would does 'trans_pgd_map_page()' get used outside those two?

(looking in your later series, I see you are using it to try and idmap stuff into the low
memory. We can't do stuff like this because there may not be any memory in range of the
page table helpers. More details in that patch)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
