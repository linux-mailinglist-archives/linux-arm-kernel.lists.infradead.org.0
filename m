Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E51A7EF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NAKbnlDtvguj4WFtHKpupoPcXZuQxRAFKS3j9oXtBM=; b=KBJ2+c59aw1cE/
	eC0bZ4MJIPV0U2pwswXoQaaC7BsDYHoUPKQf9IOU94IRzPtEmGG2itypiMnrmogUXMUqHp8mqp5Yx
	Zhxy0x3K/TjzLKX+08GaKiCrbUF1YgZMs2EgyLOc5wyjjTHOrxYs5HmAUTzLYOCNzBTYlvkY8tAYD
	YLdC91er64z+WkYRF+z0+BOfm5W7s+EeMcvfKk98XpXddJ49YS67mlv6Cc/Ro2/SAvN3doOxB/FZj
	Gk8QecXy3hUDjkij4mdU3Rj7u82ohmellt18lHMN1NLuUKgtssRKcmrO3Q4dIBKheNFzPJ6GRg8vR
	ZX2GLcZ1vp4s4KGfipoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOM44-00089p-Pe; Tue, 14 Apr 2020 13:57:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOM3w-00089C-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:57:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF22620656;
 Tue, 14 Apr 2020 13:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586872636;
 bh=n9zV/CUm5fQ6kJG9xx9uBNkS1o6bnb2V/CMUwlWKrf0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b/kuN0mMrGpZr4ilxxpfussBIw4+VR3Qlk9Sl3WR2i289CFIIqOtaL7p7RASlKDZ9
 vfPpAOPXooK8inL7i2YwIB/rSjj0cncaL/gt2OX7jThO1ap0y36WURbAwnGgHOf4ut
 fLSxAyZq70gzsRO490XT4UfNLbRwPP3L1RQSmHh0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jOM3u-003AqO-B3; Tue, 14 Apr 2020 14:57:14 +0100
Date: Tue, 14 Apr 2020 14:57:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: kvm: Delete duplicated label: in invalid_vector
Message-ID: <20200414145712.603e37d5@why>
In-Reply-To: <CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w@mail.gmail.com>
References: <20200413231016.250737-1-maskray@google.com>
 <CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w@mail.gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ndesaulniers@google.com, maskray@google.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065716_480142_BD57EC27 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fangrui Song <maskray@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Mon, 13 Apr 2020 16:37:10 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Mon, Apr 13, 2020 at 4:10 PM Fangrui Song <maskray@google.com> wrote:
> >
> > SYM_CODE_START defines \label , so it is redundant to define \label again.
> > A redefinition at the same place is accepted by GNU as
> > (https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=159fbb6088f17a341bcaaac960623cab881b4981)
> > but rejected by the clang integrated assembler.
> >
> > Fixes: 617a2f392c92 ("arm64: kvm: Annotate assembly using modern annoations")  
> 
> Thanks for the patch!  I think a more accurate Fixes tag would be:
> Fixes: 2b28162cf65a ("arm64: KVM: HYP mode entry points")

I'm not sure this commit is accurate. At that time, there was no other
declaration for \label and dropping it would simply break compilation.
I believe that Fangrui is correct in his analysis that 617a2f392c92 is
the first broken commit.

> With this patch applied, and your other arm64 integrated assembler
> patch (https://lore.kernel.org/linux-arm-kernel/20200413033811.75074-1-maskray@google.com/T/#u),
> I can now assemble arch/arm64/kvm/.

Progress! ;-)

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/988
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > ---
> >  arch/arm64/kvm/hyp/hyp-entry.S | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> > index c2a13ab3c471..9c5cfb04170e 100644
> > --- a/arch/arm64/kvm/hyp/hyp-entry.S
> > +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> > @@ -198,7 +198,6 @@ SYM_CODE_END(__hyp_panic)
> >  .macro invalid_vector  label, target = __hyp_panic
> >         .align  2
> >  SYM_CODE_START(\label)
> > -\label:
> >         b \target
> >  SYM_CODE_END(\label)
> >  .endm
> > --
> > 2.26.0.110.g2183baf09c-goog
> >  
> 
> 

I'll pick this up as soon as we've sorted the queue with the rest of
the fixes.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
