Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D220078981
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRwjT/wVP4ETjBsAQYtzvzXhBLpfP74cEnY1lluwPrc=; b=ngBJvQBZO7/I+9
	WnoqgVNCBWn7IyHGSoB+P1PmDwN5qiy15MOVWADDGnD6TlLatjIJuvvl3H5fCMq/6z0TuFjNFiZ70
	IvqBoO3q+R03f1YDOfbB7F03byWygHqrr9uxWl+CyU2leZprnssSBwgEPlmZP/SFOE63wT3IlcAvW
	Y0Qu4yOpe41BKkTM1uJ9Xu80MRmo89zAClV1rDxgPw7Kpt/BcSs85AaS49PDQ5R2Am7nkkcpZb/dE
	WscbAlaLeRxt56F4b/6q2HMv9cygMQD3s7TpZZgWDijuAknEgHUNWkC/GiDP8fefYwHQu3+Yg8r2w
	m4N57owPG4/RgUM5U7Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2iM-0003F8-4s; Mon, 29 Jul 2019 10:17:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2iB-0003Ea-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:17:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1384E344;
 Mon, 29 Jul 2019 03:16:53 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 526EC3F694;
 Mon, 29 Jul 2019 03:16:52 -0700 (PDT)
Subject: Re: build error
To: Will Deacon <will@kernel.org>, Matteo Croce <mcroce@redhat.com>
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <1cfad84e-5a98-99bd-07c2-9db0cf37292b@arm.com>
Date: Mon, 29 Jul 2019 11:16:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_031659_640966_C31E7BE7 
X-CRM114-Status: GOOD (  18.97  )
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matteo and Will,

On 29/07/2019 10:50, Will Deacon wrote:
> Hi Matteo,
> 
> On Sun, Jul 28, 2019 at 10:08:06PM +0200, Matteo Croce wrote:
>> I get this build error with 5.3-rc2"
>>
>> # make
>> arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
>>
>> I didn't bisect the tree, but I guess that this kconfig can be related
>>
>> # grep CROSS_COMPILE_COMPAT .config
>> CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
>>
>> Does someone have any idea? Am I missing something?
> 
> Can you try something like the below?
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index bb1f1dbb34e8..d35ca0aee295 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -52,7 +52,7 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
>  
>    ifeq ($(CONFIG_CC_IS_CLANG), y)
>      $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
> -  else ifeq ($(CROSS_COMPILE_COMPAT),)
> +  else ifeq ("$(CROSS_COMPILE_COMPAT)","")
>      $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
>    else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
>      $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
> 

If I try to build a fresh kernel on my machine with the standard "make mrproper
&& make defconfig && make" I do not see the reported issue (Please see below
scissors).

At this point would be interesting to know more about how Matteo is building the
kernel, and try to reproduce the issue here.

@Matteo, could you please provide the full .config and the steps you used to
generate it? Is it an 'oldconfig'?

--->8---

Message of detection of empty compat compiler:
----------------------------------------------

arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the compat
vDSO will not be built


Generated .config:
------------------

$ cat .config | grep COMPAT
CONFIG_COMPAT=y
...
CONFIG_GENERIC_COMPAT_VDSO=y
CONFIG_CROSS_COMPILE_COMPAT_VDSO=""


-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
