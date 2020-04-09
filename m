Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64081A34F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofCG0p4hr1MZixNlLY2wpfh2PGmV8fE7hszBqTS68Xs=; b=px9MA5m56jnknT
	cCkYpHq16rvVSNi5mGmh1Uf8xjmZznRqIa29P5pFApF2iniaNol5ClDFwpGBdzRT6tDdex2jDmGjc
	ucKy8j/E6wOsncTuj4POtWGmRE+wuaendTSK7qOPGdeDDTX1M7g9bFFfEPJgOw6wJrtLKpYtGhGuj
	NArQVNHTOCJkr1CQh148I67GGOF8wfgutq7QHF35gagdYzjWZJS+kbsErg+QLeYsW4HCQdrB778Wq
	DVuCnVa6EdrCNO09OfRcBKJ4e4ayqM7xSeTTfzGlbmDxPGYLQ8PdngZaFsHcbtpFluG9zlV7TSLwT
	FVeyzPBXm6L9Fym3SGyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXLt-00051v-5C; Thu, 09 Apr 2020 13:36:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXLk-00050l-O9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:36:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD66930E;
 Thu,  9 Apr 2020 06:36:07 -0700 (PDT)
Received: from [10.37.8.193] (unknown [10.37.8.193])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B1603F73D;
 Thu,  9 Apr 2020 06:36:03 -0700 (PDT)
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
To: Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
 <20200315183151.GE32205@mbp> <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
 <20200409132633.GD13078@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <d578db85-7581-9bbb-2dab-25555e424ceb@arm.com>
Date: Thu, 9 Apr 2020 14:36:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200409132633.GD13078@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_063608_836547_204D3A67 
X-CRM114-Status: GOOD (  17.99  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 4/9/20 2:26 PM, Will Deacon wrote:
> Hi Vincenzo,
> 
> Sorry, I was on holiday when you posted this and it slipped through the
> cracks.
> 

No issue at all. Thank you for getting back to me.

> On Mon, Mar 16, 2020 at 03:37:23PM +0000, Vincenzo Frascino wrote:
>>> On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
>>>> The vDSO library should only include the necessary headers required for
>>>> a userspace library (UAPI and a minimal set of kernel headers). To make
>>>> this possible it is necessary to isolate from the kernel headers the
>>>> common parts that are strictly necessary to build the library.
>>>>
>>>> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
>>>> code. This allows to replace the second isb() in __arch_get_hw_counter()
>>>> with a fake dependent stack read of the counter which improves the vdso
>>>> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
>>>> 100 iterations.
>>>
>>> The subject seems to imply a non-functional change but as you read, it
>>> gets a lot more complicated. Could you keep the functional change
>>> separate from the header clean-up, maybe submit it as an independent
>>> patch? And it shouldn't go in without Will's ack ;).
>>>
>>
>> It is fine by me. I will repost the series with the required fixes and without
>> this patch. This will give to me enough time to address Mark's comments as well
>> and to Will to have a proper look.
> 
> Please can you post whatever is left at -rc1? I'll have a look then, but
> let's stick to just moving code around rather than randomly changing it
> at the same time, ok?
> 

Sure, I will try to re-post it by -rc1 and take on board your comments.

> Thanks,
> 
> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
