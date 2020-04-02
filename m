Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D8C19BEE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNvOphCnDWj3X8I0g4U+qDbGbCDvUjaOn2YQ/Nz0AGU=; b=Cgik9d/cPYXhhF
	X+SnfuvrU2CNov1UiE/3Ubhvn0h8HN+zFSRDKcOIuDR3KCG+24d3T6fDHHEvCAHL65yZeQ0dEuVB9
	LSwPfeZf5nlaek0ggUke7oytUCm5QmV1ypUFG3Qw/XVvdHv7P1jMVdSqpRHqXL1Ucag0fn7uB0eFa
	pQ9xSLeIXcGX05yJMtypfsfW/GETiw24+6sSu8DiZvsTRWp4leuOj0ijTkJ7PZM0DI1k5kCJyv65C
	sJi7TA4HK/IVv+fnuehXf9QXz4geUSu1ClBDL1DUnoZUe80+/NCq23Sby65aX+ltjM05+6ls9nrtB
	yWX0+XmCRbOZfjKVndsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwSr-0005mW-86; Thu, 02 Apr 2020 09:48:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwSd-0005kz-I4
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:48:33 +0000
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB1822077D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 09:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585820911;
 bh=LjNvstn7WlZUpPaykGFD8SBtsMecvpPvGupUUAYJrrM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=U48gLdrdRHDAQDtmItYnayj4DF5XGggSR3UlcQYq+K2ARBvsbECQAShfYujMgAXS4
 9jK2X9uHOcCpMmMGoQQSnohvzADtlUw/9e+VSxM6ws5ttiiOqD84n9TVHWALbPCZQu
 fo+GsR+bKV65Z0qA6OaoBwpIRGB47+2wQ2ubfqXY=
Received: by mail-il1-f176.google.com with SMTP id j69so2931866ila.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 02:48:30 -0700 (PDT)
X-Gm-Message-State: AGi0PuYrFKBtU19BOTNyvkh3FGHhkbDlRtE8SLN5pnk712k0EYQ1U7L5
 XtcRJok3hkzVx3JoN6Yiga5uZfTt8/vbn9sR5Yg=
X-Google-Smtp-Source: APiQypJNNgC/IdNZmahWaYdw0GsLnMorCfjyPAMbhlDCQBxR/IfV4gBIePsSRqqn5LpF5w8gtQOa4ExhZakQ86S0rNY=
X-Received: by 2002:a05:6e02:551:: with SMTP id
 i17mr2167800ils.218.1585820910280; 
 Thu, 02 Apr 2020 02:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
In-Reply-To: <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 11:48:19 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
Message-ID: <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Nick Desaulniers <ndesaulniers@google.com>, Peter.Smith@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_024831_642074_0222BE92 
X-CRM114-Status: GOOD (  27.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-omap@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 1 Apr 2020 at 20:02, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sun, Mar 29, 2020 at 1:33 PM Stefan Agner <stefan@agner.ch> wrote:
> >
> > The adrl instruction has been introduced with commit dd31394779aa ("ARM:
> > omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
> > file was considerably longer. Today adr seems to have enough reach, even
> > when inserting about 60 instructions between the use site and the label.
> > Replace adrl with conventional adr instruction.
> >
> > This allows to build this file using Clang's integrated assembler (which
> > does not support the adrl pseudo instruction).
>
> Context: https://github.com/ClangBuiltLinux/linux/issues/430#issuecomment-476124724
> If Peter says it's difficult to implement, I trust him.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>

I take it this implies that the LLVM linker does not support the
R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
expanded to a pair of adds with the appropriate relocations, letting
the linker fix up the immediates (and the ADD vs SUB bits)


> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/430
> > Signed-off-by: Stefan Agner <stefan@agner.ch>
> > ---
> >  arch/arm/mach-omap2/sleep34xx.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
> > index ac1324c6453b..c4e97d35c310 100644
> > --- a/arch/arm/mach-omap2/sleep34xx.S
> > +++ b/arch/arm/mach-omap2/sleep34xx.S
> > @@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
> >         stmfd   sp!, {lr}       @ save registers on stack
> >         /* Setup so that we will disable and enable l2 */
> >         mov     r1, #0x1
> > -       adrl    r3, l2dis_3630_offset   @ may be too distant for plain adr
> > +       adr     r3, l2dis_3630_offset
> >         ldr     r2, [r3]                @ value for offset
> >         str     r1, [r2, r3]            @ write to l2dis_3630
> >         ldmfd   sp!, {pc}       @ restore regs and return
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan%40agner.ch.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
