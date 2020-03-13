Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D651184CFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v/QlgF5IzrA0FNThpSPmqRPexRwR/VyjQ2wROOurltk=; b=O+uqvPYPq4k2RZeH4byce5VxS
	jxzmqCR46itnAFceQdXb6gx+W++91p26UaWXT5YfYhhf/h7zvsrTSiy5VDd6gTrg4Arc0BIAO4KxO
	laB2BaOyQsTB5nG7oxQCKK1Nee3OyotKC5YtRcO2IcsEl+3TxtLJ2+5nzgBZiLBHZz/PhlNPcYv8M
	wjlmo92upVlbxtXGvqrBNHSn9EfvPwsjXcTy9AxNSP8NpyTT+ogms1uQ31P0Ko/B1R745JHB407xE
	ypCtvqLLa3tOLR8Zi94CUvFKwpKMNKm6ViWBn5Gqrwq0ekuFusqEslWsv4yckKbCFSumwn0rVnt0z
	VKr5c+FfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnX8-0006H0-JF; Fri, 13 Mar 2020 16:51:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnWz-0006GX-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:51:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EDB031B;
 Fri, 13 Mar 2020 09:51:27 -0700 (PDT)
Received: from [10.57.50.73] (unknown [10.57.50.73])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A5CF3F534;
 Fri, 13 Mar 2020 09:51:25 -0700 (PDT)
Subject: Re: [PATCH 4/6] arm64: uaccess: Use asm/ccset.h macros in __range_ok
To: Mark Rutland <mark.rutland@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-5-richard.henderson@linaro.org>
 <20200313110436.GD42546@lakrids.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1f7f8e9d-7b2f-c33c-8c2e-0f30f59fa493@arm.com>
Date: Fri, 13 Mar 2020 16:51:28 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313110436.GD42546@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095129_929289_92BD19DA 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-13 11:04 am, Mark Rutland wrote:
> On Wed, Mar 11, 2020 at 11:04:14AM -0700, Richard Henderson wrote:
>> Uses of __range_ok almost always feed a branch.
>> This allows the compiler to use flags directly.
> 
> If we want to give hte compiler the most freedom, the best thing would
> be to write this in C. IIUC this code is written in assembly largely for
> historical reasons, and the comment above says:
> 
> | This is equivalent to the following test:
> | (u65)addr + (u65)size <= (u65)current->addr_limit + 1
> 
> ... which e.g. we could write as:
> 
> 	(__uint128_t)addr + (__uint128_t)size <= (__uint128_t)limit + 1;
> 
> ... which would be much clearer than the assembly.
> 
> Is there any pattern like that for which the compiler generates
> reasonable looking code, and if not, is that something that could be
> improved compiler side?

Hmm, in fact this:

	__uint128_t tmp = (__uint128_t)(unsigned long)addr + size;
	return !tmp || tmp - 1 <= limit;

generates code that looks like utter crap in isolation[1], but once 
inlined actually leads to a modest overall reduction (-0.09%) across the 
whole of vmlinux according to bloat-o-meter (presumably most of those 
branches roll up into the overall "if(access_ok())..." control flow for 
the typical case, and I'm sure size and limit get constant-folded a lot).

IIRC at the time there were so many uncertainties flying around that 
sticking with asm to take compiler unknowns out of the picture felt 
desirable, but perhaps the time might be nigh to retire my baby after 
all... I'll investigate a bit further.

Robin.


[1]:
0000000000000000 <range_ok>:
    0:   ab010000        adds    x0, x0, x1
    4:   9a9f37e3        cset    x3, cs  // cs = hs, nlast
    8:   aa030001        orr     x1, x0, x3
    c:   b4000161        cbz     x1, 38 <range_ok+0x38>
   10:   f1000401        subs    x1, x0, #0x1
   14:   d2800020        mov     x0, #0x1                        // #1
   18:   da1f0063        sbc     x3, x3, xzr
   1c:   b4000063        cbz     x3, 28 <range_ok+0x28>
   20:   d2800000        mov     x0, #0x0                        // #0
   24:   d65f03c0        ret
   28:   eb02003f        cmp     x1, x2
   2c:   54ffffc9        b.ls    24 <range_ok+0x24>  // b.plast
   30:   d2800000        mov     x0, #0x0                        // #0
   34:   17fffffc        b       24 <range_ok+0x24>
   38:   d2800020        mov     x0, #0x1                        // #1
   3c:   d65f03c0        ret

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
