Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E30A0061
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 13:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZ6b9xnmVXYnUd2bPGxvkXVTRtzRxPCMQosvkhlxkyc=; b=lsud5MJ2fDnWIc
	VrlmPjPLxtzhgnbIVCw8LRpBUdQvEWw1MkAomLV4eGtRqJCYDrlVSSo391Ts2FQgigf3QGwLTeM/M
	d/YRbpKRR6FERzuK+dGAS0Bh2cOrZKYY3JjVQpK9t+KneDBGMHMR+AYP8Kj1GZ9D5t6C8ZSHHy+is
	msazNF6ldR94WKD7H+KPd/5YgzPvriV9Z0GFn5MxpaIVgmdE7hjELlAbSVPBjVRfkkOyyP5FtWTZC
	W+i0o7ww9+1OPOoQILUGHRIGb4fatLGhSTbZRSmb01CItZvKfii2Muqqd6m4ms4ncMarY9LMiwGdS
	80+QTsqrwfjzkE3JxjMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vgp-00017q-3g; Wed, 28 Aug 2019 11:00:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vgd-00017N-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:00:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7024E337;
 Wed, 28 Aug 2019 04:00:21 -0700 (PDT)
Received: from [10.162.40.83] (p8cg001049571a15.blr.arm.com [10.162.40.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A78A3F59C;
 Wed, 28 Aug 2019 04:00:19 -0700 (PDT)
Subject: Re: [PATCH] arm64: fix fixmap copy for 16K pages and 48-bit VA
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190827155708.34699-1-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <013bdf63-915b-4350-b3c5-3913cf4f4b90@arm.com>
Date: Wed, 28 Aug 2019 16:30:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190827155708.34699-1-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_040023_375368_9CB4AB59 
X-CRM114-Status: GOOD (  17.56  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Steve Capper <Steve.Capper@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/27/2019 09:27 PM, Mark Rutland wrote:
> With 16K pages and 48-bit VAs, the PGD level of table has two entries,
> and so the fixmap shares a PGD with the kernel image. Since commit:
> 
>   f9040773b7bbbd9e ("arm64: move kernel image to base of vmalloc area")
> 
> ... we copy the existing fixmap to the new fine-grained page tables at
> the PUD level in this case. When walking to the new PUD, we forgot to
> offset the PGD entry and always used the PGD entry at index 0, but this
> worked as the kernel image and fixmap were in the low half of the TTBR1
> address space.
> 
> As of commit:
> 
>   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> 
> ... the kernel image and fixmap are in the high half of the TTBR1
> address space, and hence use the PGD at index 1, but we didn't update
> the fixmap copying code to account for this.
> 
> Thus, we'll erroneously try to copy the fixmap slots into a PUD under
> the PGD entry at index 0. At the point we do so this PGD entry has not
> been initialised, and thus we'll try to write a value to a small offset
> from physical address 0, causing a number of potential problems.
> 
> Fix this be correctly offsetting the PGD. This is split over a few steps
> for legibility.
> 
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> Reported-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Steve Capper <Steve.Capper@arm.com>
> Cc: Will Deacon <will@kernel.org>

Tested-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
