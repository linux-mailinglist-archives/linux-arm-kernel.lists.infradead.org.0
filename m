Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA2D8EB72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rT3HoW9oXJhXfvTWaLvziLa6unQU3fqxVz9U1atjwnE=; b=MYwco816QOfYOx
	3OfJoUDj4vQX/TVDQcRlwJuHcVNkUebaJ+N0s/91p/uJdQv3XOdjNkvR6FfBft9o4q+twLMHarGDa
	azdNPcPcOczSBx17kYfdXIam0aaH36mUPfPYuHkNkpEw/5oRJf+XQWLyJ49qXKPm6ss9U6Ii4ps/8
	SjXEYv3aCO1r0fIZAjIer5wdrDK4tQ5wdf/nbp/tuys/q48DFdQM+3+dEFmp9cVV+xyD9wVi0QCuI
	YuLkF+7F2j7nHy2Kjh/CiXdm4dT+5cEbbEZ9uemHswUtOMy7mrJS3Bpt7fSgnsD9qVjD77LDV1Qlg
	inM5TDa2AxG1++wwH5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEmM-0001Kd-W3; Thu, 15 Aug 2019 12:22:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEm7-0001KI-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:22:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52CCD208C2;
 Thu, 15 Aug 2019 12:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565871759;
 bh=sjfyxgSAh2xRAFRcD4+vQdQo/IuvYsYDk5W3KXVcgew=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D3RznPyjUyDFJNEyo96UZx7x+me8fuhm2GJNBnhgSDP7TkvUSJUEOk4z3PBuIjgSL
 VySq1A8PjjHzUE2ofcQSI5YKKNr6XuMJdy+w9nivSQ9O+reG9bTkvoYZEaVZjfXGdd
 x8VTB1VR4Z3mN5hNH5m0FzdEhXPWyK1SGLrq5Ua0=
Date: Thu, 15 Aug 2019 13:22:34 +0100
From: Will Deacon <will@kernel.org>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: Re: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
Message-ID: <20190815122234.44rcthx657atqdbe@willie-the-truck>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
 <20190814152017.GD51963@lakrids.cambridge.arm.com>
 <20190814155711.ldwot7ezrrqjlswc@willie-the-truck>
 <20190814160324.GE51963@lakrids.cambridge.arm.com>
 <20190815120908.kboyqfnr2fivuva4@willie-the-truck>
 <8e472cf5-21d1-be9e-9e47-ec40e35b3192@virtuozzo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e472cf5-21d1-be9e-9e47-ec40e35b3192@virtuozzo.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_052239_681356_1DCE5D09 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, crecklin@redhat.com,
 ard.biesheuvel@linaro.org, catalin.marinas@arm.com, bhsharma@redhat.com,
 Steve Capper <steve.capper@arm.com>, kasan-dev@googlegroups.com,
 glider@google.com, dvyukov@google.com, maz@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 03:21:48PM +0300, Andrey Ryabinin wrote:
> On 8/15/19 3:09 PM, Will Deacon wrote:
> 
> > On Wed, Aug 14, 2019 at 05:03:24PM +0100, Mark Rutland wrote:
> >> From ecdf60051a850f817d98f84ae9011afa2311b8f1 Mon Sep 17 00:00:00 2001
> >> From: Mark Rutland <mark.rutland@arm.com>
> >> Date: Wed, 14 Aug 2019 15:31:57 +0100
> >> Subject: [PATCH] kasan/arm64: fix CONFIG_KASAN_SW_TAGS && KASAN_INLINE
> >>
> >> The generic Makefile.kasan propagates CONFIG_KASAN_SHADOW_OFFSET into
> >> KASAN_SHADOW_OFFSET, but only does so for CONFIG_KASAN_GENERIC.
> >>
> >> Since commit:
> >>
> >>   6bd1d0be0e97936d ("arm64: kasan: Switch to using KASAN_SHADOW_OFFSET")
> >>
> >> ... arm64 defines CONFIG_KASAN_SHADOW_OFFSET in Kconfig rather than
> >> defining KASAN_SHADOW_OFFSET in a Makefile. Thus, if
> >> CONFIG_KASAN_SW_TAGS && KASAN_INLINE are selected, we get build time
> >> splats due to KASAN_SHADOW_OFFSET not being set:
> >>
> >> | [mark@lakrids:~/src/linux]% usellvm 8.0.1 usekorg 8.1.0  make ARCH=arm64 CROSS_COMPILE=aarch64-linux- CC=clang
> >> | scripts/kconfig/conf  --syncconfig Kconfig
> >> |   CC      scripts/mod/empty.o
> >> | clang (LLVM option parsing): for the -hwasan-mapping-offset option: '' value invalid for uint argument!
> >> | scripts/Makefile.build:273: recipe for target 'scripts/mod/empty.o' failed
> >> | make[1]: *** [scripts/mod/empty.o] Error 1
> >> | Makefile:1123: recipe for target 'prepare0' failed
> >> | make: *** [prepare0] Error 2
> >>
> >> Let's fix this by always propagating CONFIG_KASAN_SHADOW_OFFSET into
> >> KASAN_SHADOW_OFFSET if CONFIG_KASAN is selected, moving the existing
> >> common definition of +CFLAGS_KASAN_NOSANITIZE to the top of
> >> Makefile.kasan.
> >>
> >> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> >> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
> >> Cc: Steve Capper <steve.capper@arm.com>
> >> Cc: Will Deacon <will@kernel.org>
> >> ---
> 
> 
> Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

Thanks, Andrey!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
