Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F38218BD63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2lCjLqS2dkS2tUbg/2uaIhttQsIdW0XAXrUQpxOMvU=; b=qBx2lh7iDqyG52
	qRLjF0GhK55Awg6qiqIBUjQt+q6slVEyHYFMI3D1n1ohWQ4DW0X9BxWe6oROZwgkzDig7VbUuganh
	SiHAQVqAMOFc9QxWt/aSUOQWvUOgwE0SC1RwG2nHAUNiYVu7xkB0NQT8OywmULb47DVfMJTWIC/P1
	x6cbspirKIqDvIu+iUDgTrO0k6YB4MJo6OUezd3jN8JKnVx4QZ5sbOV13qQIwpE5DJ5Zwfp3RGPNS
	/y7uBZmAH0VXCxTL2jzmrdRK9slMMCF82/TAudKM+sRqvlV4E2qXHQKm7RwAqjnGZj7HS+IpR1Zpl
	5DuKGTmp+jnA1GcjJ9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyZD-0006ud-9P; Thu, 19 Mar 2020 17:02:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyZ2-0006u1-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:02:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F32130E;
 Thu, 19 Mar 2020 10:02:35 -0700 (PDT)
Received: from [10.37.12.142] (unknown [10.37.12.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71AD33F305;
 Thu, 19 Mar 2020 10:02:33 -0700 (PDT)
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
To: Nick Desaulniers <ndesaulniers@google.com>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
 <CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <9b8a7e8f-57e6-3a81-a8c6-10ca59267ea8@arm.com>
Date: Thu, 19 Mar 2020 17:03:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_100236_466847_3762FAB2 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On 3/19/20 3:39 PM, Nick Desaulniers wrote:
> On Thu, Mar 19, 2020 at 7:11 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
[...]

> 
> This seems to match up with the glibc sources:
> https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/arm/arch-syscall.h;h=c6554a8a6a6e7fe3359f1272f619c3da7c90629b;hb=HEAD#l27
> Here's bionic's headers for good measure:
> https://android.googlesource.com/platform/bionic/+/refs/heads/master/libc/kernel/uapi/asm-arm/asm/unistd-common.h#240
> 
> I assume the _compat_ prefixes are the aarch32 syscall numbers?
> Otherwise here's the list for aarch64:
> https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/aarch64/arch-syscall.h;h=c8471947b9c209be6add1e528f892f1a6c54f966;hb=HEAD
> 
> Looks like 247 was __NR_io_cancel; that's a subtle bug I'm glad was noticed!
> 

Yes, very subtle, I agree!

Thank you for the information provided.

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
>>  #define __NR_compat_clock_gettime64    403
>>  #define __NR_compat_clock_getres_time64        406
>>
>> --
>> 2.25.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319141138.19343-1-vincenzo.frascino%40arm.com.
> 
> 
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
