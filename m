Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BB5168900
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 22:10:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXmr32T4ISDuCS56POFtht5D8osGMstnck0Uy8mYujg=; b=heINIvW5aejy6G
	pYI5iBPxJBgDkyY1fNlHzl0zLcTAp5eHg42XVjq84d+MJ6T7reSiOac0oyQqGteCRGVoDooW1Wvs/
	XHBG5vPoRyL1coj8RR9isAosxz6EsJFDm0sisSd9iMkhQHiBmcxTOeI8eBoRGf9q5/gUKTfG3kpgG
	25O3wLmFaqm2m/vezPS85KCK/+kbJR9d40jK+I+PJ0+1IviPYF3KAZVu81qjDVVWRf1DYRvk1mdau
	a2a2GeJUddSjmhkJ0X832nj4iaRwEWX0rHCMSTcV9Ipy8IxmHYya0nJCgx+C8OTn94lnFfuGtkzXx
	M0n78QQ1x21DZ97HRo7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5FYc-0002Ka-Kb; Fri, 21 Feb 2020 21:09:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5FYU-0002Jr-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 21:09:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id 185so1903851pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 13:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zUPeoJQT4bo8QV8qvKihcroSkp75IgeOGG1W4e7sFl0=;
 b=Skd5KPmLOe5oAWgkoaQAhCuUl+WupDAuS3+iBV2bvTTT3rS6NfVOxYAHw/8XIxN5If
 RB2NwsC9jldeHpLN9P+oXY7kT29XOqSva4NORrRu37MarwF+9vJuwMHVv9bv/rmz2Zl/
 scJoDDEQrARI0SmgBk5F0m0zuQ/k6aazhojuz+KXiMfMRJN0DQ960YlEpqnDW4ggcFND
 FoNlqleGW3K19KQJSS226/FT7lqBgTzS6+wix7El/j/bqRoYYZ2Et4oMf3OoZROCX9fK
 JDBbCFQbtfD8AZaEQws4/3FFkHQkbf73hS+WNrge2MgCZh2ExijXcKQwQTyr7fcowd0x
 G3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zUPeoJQT4bo8QV8qvKihcroSkp75IgeOGG1W4e7sFl0=;
 b=EO70tY1kKJ5a4mdAmW4cWZ6rBbKGoNePV+Cuygk593HV/SRDGGy+IAAS+PrLY/w8ej
 437DNqZ7JDJLsEEtpLToaN1TukFE5BuxV2tmafbm6a7bzvDkoGFs7RVV2AUkCwe9FVy1
 emrSySRliJdgo3Iz+rx6dZG6C6bzvtykgz/H+R4XbzkjJudaySZg1WrdCPlXHtGsV34o
 bPQmu0ppYESS+iWMB3KSdPYw6Mew5BvNIX9jsRTgmRKAFuPiYvEYtF0bsCNt1WfKsHT4
 aF7T84coHMm5TmQ9Bik6R1J9fWKKhU/4Fb9YegxeUOUozQ1XvuzYDAu8W5gO1LjMT+V5
 xDIg==
X-Gm-Message-State: APjAAAVYtKMhrJuRWSsX/Bx0KL3x0XSgF9ifyfJxQBYhHmq4OJTSDyZP
 ub4pnjwf4Gdm06vMzTxiU7J0X91Pki7xwawzIXSi2w==
X-Google-Smtp-Source: APXvYqxTAEN55Hi4n404sGxe5/oMDfTK3qYhtSibFhpCiew17vX1FZ0iWAA+sEUEDbLslT1dhSUwoqJjOXPGrIC7SLw=
X-Received: by 2002:a65:6412:: with SMTP id a18mr14625753pgv.10.1582319387058; 
 Fri, 21 Feb 2020 13:09:47 -0800 (PST)
MIME-Version: 1.0
References: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
 <20200205235440.GW25745@shell.armlinux.org.uk>
In-Reply-To: <20200205235440.GW25745@shell.armlinux.org.uk>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 21 Feb 2020 13:09:36 -0800
Message-ID: <CAKwvOdkxg8vG4FZAFJehMouUHNqXaKT+J2AWtK7mn2EXJKOE5g@mail.gmail.com>
Subject: Re: [PATCH] ARM: kexec: drop invalid assembly argument
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_130950_924919_F16C4086 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 5, 2020 at 3:54 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Feb 05, 2020 at 11:59:26PM +0100, Stefan Agner wrote:
> > The tst menomic has only a single #<const> argument in Thumb mode. There
> > is an ARM variant which allows to write #<const> as #<byte>, #<rot>
> > which probably is where the current syntax comes from.
> >
> > It seems that binutils does not care about the additional parameter.
> > Clang however complains in Thumb2 mode:
> > arch/arm/kernel/relocate_kernel.S:28:12: error: too many operands for
> > instruction
> >  tst r3,#1,0
> >            ^
> >
> > Drop the unnecessary parameter. This fixes building this file in Thumb2
> > mode with the Clang integrated assembler.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/770
> > Signed-off-by: Stefan Agner <stefan@agner.ch>
>
> Please drop it in the patch system, thanks.

Hi Stefan, did you add this to the patch tracking system? Looks like a
bunch got accepted, but I didn't see it in:
https://www.armlinux.org.uk/developer/patches/section.php?section=20&page=132

>
> > ---
> >  arch/arm/kernel/relocate_kernel.S | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm/kernel/relocate_kernel.S b/arch/arm/kernel/relocate_kernel.S
> > index 7eaa2ae7aff5..72a08786e16e 100644
> > --- a/arch/arm/kernel/relocate_kernel.S
> > +++ b/arch/arm/kernel/relocate_kernel.S
> > @@ -25,26 +25,26 @@ ENTRY(relocate_new_kernel)
> >       ldr     r3, [r0],#4
> >
> >       /* Is it a destination page. Put destination address to r4 */
> > -     tst     r3,#1,0
> > +     tst     r3,#1
> >       beq     1f
> >       bic     r4,r3,#1
> >       b       0b
> >  1:
> >       /* Is it an indirection page */
> > -     tst     r3,#2,0
> > +     tst     r3,#2
> >       beq     1f
> >       bic     r0,r3,#2
> >       b       0b
> >  1:
> >
> >       /* are we done ? */
> > -     tst     r3,#4,0
> > +     tst     r3,#4
> >       beq     1f
> >       b       2f
> >
> >  1:
> >       /* is it source ? */
> > -     tst     r3,#8,0
> > +     tst     r3,#8
> >       beq     0b
> >       bic r3,r3,#8
> >       mov r6,#1024
> > --
> > 2.25.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200205235440.GW25745%40shell.armlinux.org.uk.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
