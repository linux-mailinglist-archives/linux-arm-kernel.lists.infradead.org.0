Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5181EBD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXlPIgYX7gr1praQ1GlT3InK9dcLhTWeaG6KacyRyOY=; b=rxHEBLHTIuHwUi
	+6ShOhIqFzjQv9g+D8/l/7+6mtJExQUnR4fanwDe3e+cfCwuJlARpGZIk6planyf8skM9rApXec5V
	APQRkTnbkIjToAI1sbZUmCkmfiqsizwyAow2xKmk6gg83uQX3i9iRFxViNGT4b3xid4ZEyCLE5cmc
	DZ0YrTbF5Ug7lhPM+mh9h4XFbmvTCR2NkerZsv6XPgZPD5Ph90EOLEK1VEbewbZF8LUVUlJI4yZ06
	G+edpMVpxRLu+d9YdO+VfX/+TzPKXQ7skJwaXtXg9gPLbxqs62u+6/i4EMLNwrkojZhpNe4kvmcgH
	6QT5V3JjWFTQXQ1l4YvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqs3-0005yX-Ow; Wed, 15 May 2019 10:10:47 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqrw-0005yE-AW
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:10:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5D0280D;
 Wed, 15 May 2019 03:10:38 -0700 (PDT)
Received: from [10.163.1.137] (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 143C63F703;
 Wed, 15 May 2019 03:10:32 -0700 (PDT)
Subject: Re: [PATCH V4] mm/ioremap: Check virtual address alignment while
 creating huge mappings
To: Will Deacon <will.deacon@arm.com>
References: <a893db51-c89a-b061-d308-2a3a1f6cc0eb@arm.com>
 <1557887716-17918-1-git-send-email-anshuman.khandual@arm.com>
 <20190515094655.GB24357@fuggles.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a0c3f9db-c6ae-556c-bc89-bd6b87b14029@arm.com>
Date: Wed, 15 May 2019 15:40:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190515094655.GB24357@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_031040_371395_B6DD9111 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Toshi Kani <toshi.kani@hpe.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-mm@kvack.org, Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/15/2019 03:16 PM, Will Deacon wrote:
> On Wed, May 15, 2019 at 08:05:16AM +0530, Anshuman Khandual wrote:
>> Virtual address alignment is essential in ensuring correct clearing for all
>> intermediate level pgtable entries and freeing associated pgtable pages. An
>> unaligned address can end up randomly freeing pgtable page that potentially
>> still contains valid mappings. Hence also check it's alignment along with
>> existing phys_addr check.
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> Cc: Toshi Kani <toshi.kani@hpe.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Chintan Pandya <cpandya@codeaurora.org>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> ---
>> Changes in V4:
>>
>> - Added similar check for ioremap_try_huge_p4d() as per Toshi Kani
> 
> Sorry to be a pain, but in future please can you just resend the entire
> series as a v4 (after giving it a few days for any other comments to come
> in) if you make an update? It's a bit fiddly tracking which replies to which
> individual patches need to be picked up, although I'm sure this varies
> between maintainers.

I wondered for some time about both the ways before landing on this side as it was
pretty minor change. I understand the concern and will follow the suggestion next
time around. If this one requires further update, will make it V5 and carry the
change logs from here.

> 
> No need to do anything this time, but just a small ask for future patches.

Sure will do.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
