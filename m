Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DD8A2942
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGTrE6t4vZPI68bdwdzp1HOIPaxuzERTsAjI/AJyXyU=; b=eCq4tk5HQ5Uw+b
	AiHAU5Uds3H0PE4XPxa6QYfMpTeM4WGSFWf9jihvT6VcSHOA0hgufp5IScQZcAIvdzme72rGwj0Vn
	AU8xnjNONzFTnKx3wQdf1FkDGhPOucj+bD4J0Nflg5EBcnP/J48ZYlf+Doi9YI41TsZAxZmlAT3oM
	vEYwlUCEwF2vpYvTernCvz9q3N39kTV3vSPE8w6oN5YijmhhE49/blwGrmmBvbd9wqfj/DlrdU5wg
	EnzrIXlChwB031ZM5dy4AVNO6iukcfqtrP/tH1HW+VuUqXxhJR/0O5GqudAp8j+lHNCus2JcY1mhP
	sfdIt9POLrTscMUgbVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SNt-0003Le-G5; Thu, 29 Aug 2019 21:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SNe-0003LF-Kd
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:54:59 +0000
Received: from brain-police (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4E10208C2;
 Thu, 29 Aug 2019 21:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567115698;
 bh=1Ma6LNUxXynsrgMoV6mYy1LUKgVsxh29b17391c3yjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YCjZYPDGBN7yqErDM2W4ZksZ0SguZsZUWatjlqOCqNmSQpe6+EXhCtmMh4xCFNU85
 gOaAcEZNHZEG3Nku16PQkPxPcbgQRmQrFcyDHHkB7e+wZtUdlDTENgBVCvPi1OcJ2Z
 iLkSCyviPEn3A6lv1OY27M13liYEaaWQL+yenVTM=
Date: Thu, 29 Aug 2019 22:54:52 +0100
From: Will Deacon <will@kernel.org>
To: Tri Vo <trong@android.com>
Subject: Re: [PATCH v5 05/10] arm64: atomics: Remove atomic_ll_sc compilation
 unit
Message-ID: <20190829215452.GC2404@brain-police>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-6-will@kernel.org>
 <CAKwvOdmRa+cc7tEzHrOwcDt28OmAHEWiysy64FzJCU6d25k5QQ@mail.gmail.com>
 <CANA+-vA8CcSKPU-0Pyaxd5YOprTzqAq9KAZ2Ta1pf-zNdNB3BA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANA+-vA8CcSKPU-0Pyaxd5YOprTzqAq9KAZ2Ta1pf-zNdNB3BA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_145458_720098_D056891B 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 01:07:04PM -0700, Tri Vo wrote:
> On Thu, Aug 29, 2019 at 10:47 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, Aug 29, 2019 at 8:48 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > From: Andrew Murray <andrew.murray@arm.com>
> > >
> > > We no longer fall back to out-of-line atomics on systems with
> > > CONFIG_ARM64_LSE_ATOMICS where ARM64_HAS_LSE_ATOMICS is not set.
> > >
> > > Remove the unused compilation unit which provided these symbols.
> > >
> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > > ---
> > >  arch/arm64/lib/Makefile       | 19 -------------------
> > >  arch/arm64/lib/atomic_ll_sc.c |  3 ---
> > >  2 files changed, 22 deletions(-)
> > >  delete mode 100644 arch/arm64/lib/atomic_ll_sc.c
> > >
> > > diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> > > index 33c2a4abda04..f10809ef1690 100644
> > > --- a/arch/arm64/lib/Makefile
> > > +++ b/arch/arm64/lib/Makefile
> > > @@ -11,25 +11,6 @@ CFLAGS_REMOVE_xor-neon.o     += -mgeneral-regs-only
> > >  CFLAGS_xor-neon.o              += -ffreestanding
> > >  endif
> > >
> > > -# Tell the compiler to treat all general purpose registers (with the
> > > -# exception of the IP registers, which are already handled by the caller
> > > -# in case of a PLT) as callee-saved, which allows for efficient runtime
> > > -# patching of the bl instruction in the caller with an atomic instruction
> > > -# when supported by the CPU. Result and argument registers are handled
> > > -# correctly, based on the function prototype.
> > > -lib-$(CONFIG_ARM64_LSE_ATOMICS) += atomic_ll_sc.o
> > > -CFLAGS_atomic_ll_sc.o  := -ffixed-x1 -ffixed-x2                        \
> > > -                  -ffixed-x3 -ffixed-x4 -ffixed-x5 -ffixed-x6          \
> > > -                  -ffixed-x7 -fcall-saved-x8 -fcall-saved-x9           \
> > > -                  -fcall-saved-x10 -fcall-saved-x11 -fcall-saved-x12   \
> > > -                  -fcall-saved-x13 -fcall-saved-x14 -fcall-saved-x15   \
> > > -                  -fcall-saved-x18 -fomit-frame-pointer
> >
> > + Tri (who implemented support for -fcall-saved-x*, -ffixed-x* in
> > Clang).  I won't be sad to see the use of these flags go.
> 
> Nice! IMO these flags made the code hard to read.

Well, we didn't do it like that because it looked pretty ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
