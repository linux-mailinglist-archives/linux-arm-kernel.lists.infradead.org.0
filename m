Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FA05CCE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qbpbv1xuR3NvkWpW0tkFTYO6L/cq4c6lDgadigxX2OE=; b=tGSYxXG8AV1J/yYJXiVD+0rui
	IvvaJDNYsZr4u/TwNnSFNukY61jmaCs1LLK77jXQy8XZvyrSgkBpSlQLT9B+DwTfMVFc219XtlEpL
	bL4UjZP5cqCUvI7UjuUjyzBrwEaIrKgQ5+nxP1emyyvrg4a/Zr826GUe5KXUH9JRQtbWu+ThZA3AO
	Ywh+p+BbZZISvn79jKMFtTAB8OFiZaHau5Ct0a74WMLMPdm20oEK/fPrd/0JHQDqIizy7bS8lI78Q
	+1a44O+TP+eHibpAQB+PChGhWd7PGW+2jB9MmBwnx1kkVvt89r3Sfksn07ecyY54hPFJjsp61E93J
	o6u9lEiLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFQ6-0003fb-MK; Tue, 02 Jul 2019 09:49:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFPq-0003et-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:49:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56C71344;
 Tue,  2 Jul 2019 02:49:32 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 677CC3F718;
 Tue,  2 Jul 2019 02:49:31 -0700 (PDT)
Subject: Re: [RFC V3 12/18] arm64: assembler: Add macro to annotate asm
 function having non standard stack-frame.
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
 <20190624095548.8578-13-raphael.gault@arm.com>
 <20190701144039.GD21774@arrakis.emea.arm.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <7ddc9d27-e4ea-c07a-ad12-3fac59aeb4fc@arm.com>
Date: Tue, 2 Jul 2019 10:49:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190701144039.GD21774@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_024934_865806_858956C1 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/1/19 3:40 PM, Catalin Marinas wrote:
> On Mon, Jun 24, 2019 at 10:55:42AM +0100, Raphael Gault wrote:
>> --- a/arch/arm64/include/asm/assembler.h
>> +++ b/arch/arm64/include/asm/assembler.h
>> @@ -752,4 +752,17 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
>>   .Lyield_out_\@ :
>>   	.endm
>>   
>> +	/*
>> +	 * This macro is the arm64 assembler equivalent of the
>> +	 * macro STACK_FRAME_NON_STANDARD define at
>> +	 * ~/include/linux/frame.h
>> +	 */
>> +	.macro	asm_stack_frame_non_standard	func
>> +#ifdef	CONFIG_STACK_VALIDATION
>> +	.pushsection ".discard.func_stack_frame_non_standard"
>> +	.8byte	\func
> 
> Nitpicks:
> 
> Does .quad vs .8byte make any difference?
> 

No it doesn't, I'll use .quad then.

> Could we place this in include/linux/frame.h directly with a generic
> name (and some __ASSEMBLY__ guards)? It doesn't look to be arm specific.
> 

It might be more consistent indeed, I'll do that.

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
