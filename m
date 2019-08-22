Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77E89897B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 04:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4nZ+Oh6Tr+LLIwQ7RcG1REQfNdkqAsRfbnHllyMRSI=; b=kKK9uNqwmarQ/a
	wRqm8v0B2EBx1j+b6t8HfTaFWxcJmcHhQUVCPPoNdfe9B1ffjdy7QfIUCL9MLG/IAYjFMyfUiu43x
	V/X8Lul0TzPFckZAUA21FdLb/pxyktnjaTbkaXQofl19Osx9xFFODwiqciQsE7bJSMDxWuKIdpnph
	ZPZsquuHnmqeH9ceVLxWWjUGoGGdrsI7kOdBM5sZ79DF+8ACX84B9pdNsBiY7I1T4+emEwGx8Dtl7
	7jP8D+DSQZygqSHh83Sjrqq0DLWUz6yezs22BMhrBQJf8dEb1PtucXv4DARseG1wxgiZfl9f6fsW4
	68n+Klkc6y6HMZHVGUyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cul-0000Xi-IA; Thu, 22 Aug 2019 02:33:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cuc-0000WN-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 02:33:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id d85so2820489pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 19:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+tDasAzwNiV2HiRhPGR1ntFxNV2BKl3GP2YTPs2bTao=;
 b=FdCFi7GWOi0sBNctiSyST5JgiXFc3Dpm4Ny9r0Z8N6YB1RGX4IGNdRSGDqXckQLFiP
 kP41+izIX1OKcH3u/ztOWxFdyj4NNtvjgdKMMZdMcwRcLwAzWfRnEtq3kQbenMlQFwuM
 ByhsEOohxtooyNcFYI9nrAsc9n/4HVDoK/Eo2eZ0f869f60fP4KBgjSrN/n/79Kol50B
 NAVSKjMgtGXrrJeh9fiX/PJg8E1gtuVMK3I/3ZJhREsqOnOmwtX0NGSafNXqjQjk8z1P
 FaN57WfagrT/k8a88PaMBOG6M2dxJ0KzK5GN1gENWohFwhBq3GhckEjAK4qYbZuuy1Iy
 m0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+tDasAzwNiV2HiRhPGR1ntFxNV2BKl3GP2YTPs2bTao=;
 b=WIdchhc99jq3ypgjsiQdt68+DMMzWd3qZCtj0ijwjYzJkVWV01SbGHYPMtbkCPXqYB
 ebO7uK8UzHt/Dkp7yLIBwg7dWb3Wodsc5kzqeB//NbuRkW7EUiPBePQB39LSiAyFl264
 zxLJ+ee8S7GIbMkZBU9bwj3M682csu6/sA6BcO33fV6En/B23LeEzVxajFAVqsbW2Fnv
 XxL5qe7hc3WwtkYYAoU0IHX8vuvxdjRMwpPNjlymDVmAmwHqca10Nixdrw+VQ6C1Kb7y
 AQN6K3T7wQSzrEyroEyxfvAhJwzkDPYWLSmZE+RbxS4gZ/H2gJsaM7qB1AGqrt3G/XjP
 O0aA==
X-Gm-Message-State: APjAAAVdTO6mQ0uc1pF3Yi4P4cZAJAPLRqUFhSx7ie2VhTZ6tldgONSp
 24LW9HeS0dK4DYhWURsiHraeHHV8afkO5xtk5ijpOQ==
X-Google-Smtp-Source: APXvYqz3Wvbr27kKwSLKzNFjnFQjspOUDKGv55jK/OXyb9guHXmQpT5LPH9sicMq4DgljVSA6U/iNJtBNCDviS3stlw=
X-Received: by 2002:aa7:8085:: with SMTP id v5mr39314885pff.165.1566441194307; 
 Wed, 21 Aug 2019 19:33:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190820194351.107486-1-nhuck@google.com>
 <CAKwvOdm+sGyKfAMNbL10ME=DrG5=4d5kvzdMxjNC22JLLr1h=g@mail.gmail.com>
 <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
In-Reply-To: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 21 Aug 2019 19:33:02 -0700
Message-ID: <CAKwvOd=Uvzw5_azQuSjUovSEDTNAaB=pTht1-zMiA8mqfmJ0zw@mail.gmail.com>
Subject: Re: [PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_193318_238782_AEDD6E62 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tri Vo <trong@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:43 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> On Tue, Aug 20, 2019 at 2:39 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Aug 20, 2019 at 12:44 PM Nathan Huckleberry <nhuck@google.com> wrote:
...snip...
> > > +tst    r1, #0x10               @ 26 or 32-bit mode?
> > > +moveq  mask, #0xfc000003
> >
> > Should we be using different masks for ARM vs THUMB as per the
> > reference implementation?
> The change that introduces the arm/thumb code looked like a script
> that was run over all arm in the kernel. Neither this code nor the
> reference solution is compatible with arm, so there's no need for the
> change.

Looks like you're referring to commit 8b592783a2e8 ("Thumb-2:
Implement the unified arch/arm/lib functions").

Currently, arch/arm/Kconfig.debug has:
  57 config UNWINDER_FRAME_POINTER
  58   bool "Frame pointer unwinder"
  59   depends on !THUMB2_KERNEL && !CC_IS_CLANG

So it looks like UNWINDER_FRAME_POINTER and THUMB2_KERNEL are mutually
exclusive.  Probably could send a patch cleaning that up. (ie.
removing the different masks; essentially removing the hunk from
arch/arm/lib/backtrace.S from 8b592783a2e8).

> > > +for_each_frame:        tst     frame, mask             @ Check for address exceptions
> > > +               bne     no_frame
> > > +
> > > +/*
> > > + * sv_fp is the stack frame with the locals for the current considered
> > > + *     function.
> > > + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> > > + *     code address within the current considered function, but
> > > + *     it is not the function start. This value gets updated to be
> > > + *     the function start later if it is possible.
> > > + */
> > > +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> > > +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> >
> > The reference implementation applies the mask to sv_pc and sv_fp.  I
> > assume we want to, too?
> The mask is already applied to both. See for_each_frame:

ah, under the finished_setup label.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
