Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AADE8EA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtBNHs+g/p8NdMdVMROT5MJVMiRG+wxCyDHXPKEN4cU=; b=gU9QAUbvnIptDE
	trV7B4OPDuYscbB+Nb0Mxl1HrggOz12tVXR2O+pobEAHOZWqP6L8qPZ9xkgUrQr+wyFDXuqsQ7sRV
	/iArZGBEjhV6cFMhMeeNul9x5AeavbXLFNuw/GP8bl6BH+yTe1ni6ZYeUoRy1JRbaGlQXQq+fpAhC
	39ZFte4GcThjVPg6WgVsoOSbZIUJFTQzP48C1X6+Wty/1Ng3G0dKKfbLcjSz/kLjzwiLKUTD/F0a8
	M5ZKrCMOvt19pz+Ak34GM46XfdhSzNR6O8PmeBnx1Frgvams03YheYPjsbna3UI5dov5rZGzb1sAI
	lWh/Ieg7mxYQQnci02JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVdd-0000o7-18; Tue, 29 Oct 2019 17:50:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVdS-0000mq-KR
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:50:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id u9so5367356pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fmMddgqe/zb0sEYHSbXlOXxTKS7tgsQKFOtlLEuJ5V0=;
 b=ejqJimG8hqkVhLIQiH0RsJip/ZA3WwsEnlbFxmtdtALtgYItOiAfJEY5eN1ADd48ZB
 c/TRBy9WCsShuBOUi8ii+hHaNAwVaNb/cUfkrBLjtbb0FViWoWmF6gGNB0fP9ZsB/F3y
 YcHxB3yMK9c+iSB9cqzkZLecXpb0X0TwaO+4pw10Xf2ekhIZ97iv1Ns1f4x/ro0gpNBz
 wEecB9mjSLFePd7CX6rVRD88ICMKvMHoxeU6+HnFneMmB0pl4SV+9fthqE1dOXK1dfHj
 HO0U5Ky/qfArYrF/KZPFYLAayD9hhYPZrCs5meOf7SLDGqbJ9AoH2tioTIBhSz9QsbE9
 lj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fmMddgqe/zb0sEYHSbXlOXxTKS7tgsQKFOtlLEuJ5V0=;
 b=oTBl3dYTinB+6wLzWLkvmceOFNqo7N46nGr3JtCR5vilEWiuE0pYh8aAGln/iSuzCG
 W+7szr4wxCFEtRTGJ1EhYWaKDLdnKfXCFOyN3WlIY3mRlQrHT3obz+yf97QE4Zz9rNMv
 3tqESZ+bgVUmt4aVCPa2/R+OQcXo/7aTazyQQOUQXUYMrXPRp3B7FSBDC9IPAC3pg1P1
 3frN1GFUZZYtN3qJrRzbFjEblZaFUI85YsqY+CDjCUNc/bac+Il2ym2v+cVgi9/X9KEc
 2EwgQk4IHMhaW8TC3IuO3L3J3BjVhus6uBevmw8z7eQ7rPsKYaLsrLEy2LjfmowVaBQQ
 hopQ==
X-Gm-Message-State: APjAAAUgfP0gNArC5ofR17dS0Pc93YbG+IDfHs45W7mv1XJ1BCwEJHwK
 itMx+yNV6W+YDDys8m5YU5W4G/Vmihzq3qy6scnoyQ==
X-Google-Smtp-Source: APXvYqx1czlrIX0WGFJGaoanzAOq7ph8ZusLB+0AZ/AnudyLqLjHgkQWvFEeVa3dxjR9ZxlAenpHLxpc67RHem7VEO0=
X-Received: by 2002:a63:541e:: with SMTP id i30mr28747681pgb.130.1572371420847; 
 Tue, 29 Oct 2019 10:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
 <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
 <6f9fdf16-33fc-3423-555b-56059925c2b6@arm.com>
In-Reply-To: <6f9fdf16-33fc-3423-555b-56059925c2b6@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 29 Oct 2019 18:50:09 +0100
Message-ID: <CAAeHK+yP2vK06tnx2p=NT8cD_qz_gV_xkuPZ40b2OAe+zxM-EA@mail.gmail.com>
Subject: Re: Makefile kernel address tag sanitizer.
To: Matthew Malcomson <Matthew.Malcomson@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_105026_700467_5E2BE0BF 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nd <nd@arm.com>, kasan-dev <kasan-dev@googlegroups.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 6:45 PM Matthew Malcomson
<Matthew.Malcomson@arm.com> wrote:
>
> Hi Andrey,

Hi Matthew,

>
> Thanks for the clarification on that bit, could I ask another question?
>
> I seem to have non-stack compiling with GCC running ok, but would like
> to have some better testing than I've managed so far.

Great! =)

>
> I'm running on an instrumented kernel, but haven't seen a crash yet.
>
> Is there a KASAN testsuite to run somewhere so I can proove that bad
> accesses would be caught?

Kind of. There's CONFIG_TEST_KASAN which produces lib/test_kasan.ko,
which you can insmod and it will do all kinds of bad accesses.
Unfortunately there's no automated checker for it, so you'll need to
look through the reports manually and check if they make sense.

Thanks!

>
> Cheers,
> Matthew
>
> On 16/10/19 14:47, Andrey Konovalov wrote:
> > On Wed, Oct 16, 2019 at 3:12 PM Matthew Malcomson
> > <Matthew.Malcomson@arm.com> wrote:
> >>
> >> Hello,
> >>
> >> If this is the wrong list & person to ask I'd appreciate being shown who
> >> to ask.
> >>
> >> I'm working on implementing hwasan (software tagging address sanitizer)
> >> for GCC (most recent upstream version here
> >> https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).
> >>
> >> I have a working implementation of hwasan for userspace and am now
> >> looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
> >> CONFIG_KASAN_OUTLINE for now).
> >>
> >> I notice the current scripts/Makefile.kasan hard-codes the parameter
> >> `-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
> >> variables, and found an email mentioning that stack instrumentation is
> >> not yet supported.
> >> https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/
> >>
> >>
> >> What is the support that to be added for stack instrumentation?
> >
> > Hi Matthew,
> >
> > The plan was to upstream tag-based KASAN without stack instrumentation
> > first, and then enable stack instrumentation as a separate effort. I
> > didn't yet get to this last part. I remember when I tried enabling
> > stack instrumentation I was getting what looked like false-positive
> > reports coming from the printk related code. I didn't investigate them
> > though. It's possible that some tweaks to the runtime implementation
> > will be required.
> >
> > Thanks!
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
