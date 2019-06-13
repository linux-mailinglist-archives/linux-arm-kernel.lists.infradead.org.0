Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C00432CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 07:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RrD91U2pNNTX8ueC7toVch7OK0b09q79MNiZF87wdY=; b=ZvqmRRvf56qmMx
	Q+ADmXrWxf5GtEMzLdyueevWH7Ofq+BaUXhBww5mg+viiiYYLXk14ku0fVwUeBxt2txAK3Pct2EsW
	EI0dR3JKv0wFTIJHNdzEfuzL3iRhXVmWvFqnmi9T78EAsV34plQNbSfjfEdK7YVXZWfQY5RaykFq/
	09m4Hdund4XXuUwk5ryh43NLtuMg6rLhOuoytis55ucY/6m+iTy0qegqWOuEM61JsjNPdXbcZAMl5
	nWfuGLp7lVJCZWKw9SPHOVnOYETM+NKSF84cAf+QZPxgCBVTPeOukt3SiGmUrjCbJWcphvrS0FYFz
	EYWU4w4z1dedOlKF68fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbIQZ-0000ET-KI; Thu, 13 Jun 2019 05:37:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbIQH-0000E1-Vg
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 05:37:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C1A428;
 Wed, 12 Jun 2019 22:37:15 -0700 (PDT)
Received: from [10.162.40.191] (p8cg001049571a15.blr.arm.com [10.162.40.191])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AB5673F73C; Wed, 12 Jun 2019 22:37:11 -0700 (PDT)
Subject: Re: [PATCH V5 - Rebased] mm/hotplug: Reorder memblock_[free|remove]()
 calls in try_remove_memory()
To: Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@redhat.com>
References: <36e0126f-e2d1-239c-71f3-91125a49e019@redhat.com>
 <1560252373-3230-1-git-send-email-anshuman.khandual@arm.com>
 <20190611151908.cdd6b73fd17fda09b1b3b65b@linux-foundation.org>
 <5b4f1f19-2f8d-9b8f-4240-7b728952b6fe@arm.com>
 <67f5c5ad-d753-77d8-8746-96cf4746b3e0@redhat.com>
 <20190612185450.73841b9f5af3a4189de6f910@linux-foundation.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <92ce901d-42dc-6872-1ff0-0ca13d5cefbe@arm.com>
Date: Thu, 13 Jun 2019 11:07:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190612185450.73841b9f5af3a4189de6f910@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_223718_067615_9DB197F1 
X-CRM114-Status: GOOD (  12.75  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ard.biesheuvel@arm.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/13/2019 07:24 AM, Andrew Morton wrote:
> On Wed, 12 Jun 2019 08:53:33 +0200 David Hildenbrand <david@redhat.com> wrote:
> 
>>>>> ...
>>>>>
>>>>>
>>>>> - Rebased on linux-next (next-20190611)
>>>>
>>>> Yet the patch you've prepared is designed for 5.3.  Was that
>>>> deliberate, or should we be targeting earlier kernels?
>>>
>>> It was deliberate for 5.3 as a preparation for upcoming reworked arm64 hot-remove.
>>>
>>
>> We should probably add to the patch description something like "This is
>> a preparation for arm64 memory hotremove. The described issue is not
>> relevant on other architectures."
> 
> Please.  And is there any reason to merge it separately?  Can it be
> [patch 1/3] in the "arm64/mm: Enable memory hot remove" series?

Sure it can be. I will make this [patch 1/3] in the next version for
"arm64/mm: Enable memory hot remove". Apologies for the noise here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
