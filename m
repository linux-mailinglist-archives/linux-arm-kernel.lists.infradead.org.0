Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B6DDF7D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 00:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7mN2AVroFHznc59q5WVAV0VSJRyAkEjgYxIuaBt2tg=; b=H2pho+8c+te/rg
	wKlCaPqkriLyP2tRnWJ+s4/3l/aeaiUmmZ/fAez8J4H35pevMzLKP/Y/Jr9X5priNb6bTjrCx8CDQ
	oT1tKUYdZSenAdc+1CGwgQIRy+hy0d3V/D/k1w1rqtLUE+2YVILqaQl+siGxX1Z2yPpuJVElsQxlT
	2gZxH02umaAAX46h49xOBJ4pHiGk9nDO7jTYwW2U8kgP1kXwoePw7Ygzr1n/+B8/DPGHzPtP9F1Pj
	0leFh44qBjTxy6uUuiuOm7WheOXIFc7Dy0G8ghjUr8QFObNiUZmCX/h/PwybxtO1YZ8jjJR82TMY+
	s3WHQCBlckI/UcQO+sZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMftl-0003KT-Fw; Mon, 21 Oct 2019 22:11:33 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMftc-0003K9-7k
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 22:11:26 +0000
Received: by mail-oi1-f195.google.com with SMTP id w144so12474228oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 15:11:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AVWauA2uNxWXhbatFT0jdg/LbLg2y15EPeDl4ltv22c=;
 b=VrNGvVsIdeTfaY+5ujmampDa/ENA0KQ+TRzVuyfQg2Hie+uCsPdw/o5/q0IG6BRvpw
 lYft/YgKDezjSCziGQ9YFy52hfP1YAdFYgaKgjeufQ1Gas0TAgc5imHK03Nas7rTPoaY
 zg+EODK3rkdrM0Rr8r5ToCKJKr+sjLUuybtlcDY3pCz6zyKV9a5w+vW8UdpQVTgUPTJU
 WhltU1wpS2UduALOsLzWXcoAYt81PDX/o+S2LHKNBIE1Ca1DWa6E3N9xneF42d1SEgsq
 ICG8fNZrbJFHnQfnctXqdwaL/cxoR/fm5Mwt53gqUt+NXJxM5+xC+MflV6vFtKtk3Vuo
 61Iw==
X-Gm-Message-State: APjAAAV3xTXfjaW5JQ/aBpSLeEgBopMW8pNXCsO3qSsvp6JITXA+giUU
 rEuASiopsS0uE80Gtvc9xEHViOun
X-Google-Smtp-Source: APXvYqy9CUOFaP2aXdCtfUrPjg40D+51VboCDr/kQTWoFxLSOVFsx67AUp+h9w5ebQMo6F7rSPxkDw==
X-Received: by 2002:aca:682:: with SMTP id 124mr260509oig.83.1571695882549;
 Mon, 21 Oct 2019 15:11:22 -0700 (PDT)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com.
 [209.85.167.177])
 by smtp.gmail.com with ESMTPSA id 17sm4084500oiz.3.2019.10.21.15.11.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 15:11:22 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id x3so12491303oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 15:11:22 -0700 (PDT)
X-Received: by 2002:aca:d88b:: with SMTP id p133mr259539oig.51.1571695881836; 
 Mon, 21 Oct 2019 15:11:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
 <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
 <679bf33b-8c05-b77a-0cb2-d79dc5bfbe75@rasmusvillemoes.dk>
In-Reply-To: <679bf33b-8c05-b77a-0cb2-d79dc5bfbe75@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 21 Oct 2019 17:11:10 -0500
X-Gmail-Original-Message-ID: <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
Message-ID: <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_151124_276573_06B3F7F6 
X-CRM114-Status: GOOD (  33.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Timur Tabi <timur@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 3:46 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 18/10/2019 23.52, Li Yang wrote:
> > On Fri, Oct 18, 2019 at 3:54 PM Rasmus Villemoes
> > <linux@rasmusvillemoes.dk> wrote:
> >>
> >> On 18/10/2019 22.16, Leo Li wrote:
> >>>
> >>>>
> >>>> There have been several attempts in the past few years to allow building the
> >>>> QUICC engine drivers for platforms other than PPC. This is (the beginning of)
> >>>> yet another attempt. I hope I can get someone to pick up these relatively
> >>>> trivial patches (I _think_ they shouldn't change functionality at all), and then
> >>>> I'll continue slowly working towards removing the PPC32 dependency for
> >>>> CONFIG_QUICC_ENGINE.
> >>>
> >>> Hi Rasmus,
> >>>
> >>> I don't fully understand the motivation of this work.  As far as I know the QUICC ENGINE is only used on PowerPC based SoCs.
> >>
> >> Hm, you're not the Leo Li that participated in this thread
> >> <https://lore.kernel.org/lkml/AM3PR04MB11857AE8D2B0BE56121B97D391C90@AM3PR04MB1185.eurprd04.prod.outlook.com/T/#u>?
> >
> > Oops, I totally forgot about this discussion which is just three years
> > ago.  :)  The QE-HDLC on LS1021a is kind of a special case.
> >
> >>
> >>
> >>  Can you give an example on how is it used on ARM system?
> >>
> >> LS1021A, for example, which is the one I'm aiming for getting fully
> >> supported in mainline.
> >> <https://www.nxp.com/products/processors-and-microcontrollers/arm-processors/layerscape-communication-process/qoriq-layerscape-1021a-dual-core-communications-processor-with-lcd-controller:LS1021A>
> >>
> >> The forks at https://github.com/qoriq-open-source/linux.git have various
> >> degrees of support (grep for commits saying stuff like "remove PPCisms"
> >> - some versions can be found on
> >> <https://lore.kernel.org/lkml/?q=remove+ppcisms>). Our current kernel is
> >> based on commits from the now-vanished 4.1 branch, and unfortunately at
> >> least the 4.14 branch (LSDK-18.06-V4.14) trivially doesn't build on ARM,
> >> despite the PPC32 dependency having been removed from CONFIG_QUICC_ENGINE.
> >
> > Can you try the 4.14 branch from a newer LSDK release?  LS1021a should
> > be supported platform on LSDK.  If it is broken, something is wrong.
>
> What newer release? LSDK-18.06-V4.14 is the latest -V4.14 tag at
> https://github.com/qoriq-open-source/linux.git, and identical to the

That tree has been abandoned for a while, we probably should state
that in the github.  The latest tree can be found at
https://source.codeaurora.org/external/qoriq/qoriq-components/linux/

> linux-4.14 branch. And despite commit 4c33e2d0576b removing the PPC32
> dependency from QUICC_ENGINE, it clearly hasn't been built on arm, since
> back around v4.12, mainline's qe.c grew a call to pvr_version_is which
> is ppc-only. So from that I sort of assumed that NXP had dropped trying
> to support the LS1021A even in their own kernels.
>
> In any case, we have zero interest in running an NXP kernel. Maybe I
> should clarify what I meant by "based on commits from" above: We're
> currently running a mainline 4.14 kernel on LS1021A, with a few patches
> inspired from the NXP 4.1 branch applied on top - but also with some
> manual fixes for e.g. the pvr_version_is() issue. Now we want to move
> that to a 4.19-based kernel (so that it aligns with our MPC8309 platform).

We also provide 4.19 based kernel in the codeaurora repo.  I think it
will be helpful to reuse patches there if you want to make your own
tree.

>
> >> This is just some first few steps, and I'm not claiming
> >> that this is sufficient to make the QE drivers build on ARM yet. But I
> >> have a customer with both mpc8309-based and ls1021a-based platforms, and
> >> they want to run the same, as-close-to-mainline-as-possible, kernel on
> >> both. So I will take a piecemeal approach, and try to make sure I don't
> >> break the ppc boards in the process (just building and booting one board
> >> is of course not sufficient, but better than nothing). Once I get to
> >> actually build some of the QE drivers for ARM, I'll of course also test
> >> them.
> >
> > Understood.  Zhao Qiang also maintains some patches similar to your
> > patchset and I think they are tested on ARM.  But the review of these
> > patches from last submission didn't finish.  It looks like your
> > patches are better divided but not really verified on ARM.  Zhao
> > Qiang's patches are tested but maybe need some final touch for
> > cleaning up.  I will let you guys decide what is the best approach to
> > make this upstreamed.
>
> Yes, as I said, I wanted to try a fresh approach since Zhao
> Qiang's patches seemed to be getting nowhere. Splitting the patches into
> smaller pieces is definitely part of that - for example, the completely
> trivial whitespace fix in patch 1 is to make sure the later coccinelle
> generated patch is precisely that (i.e., a later respin can just rerun
> the coccinelle script, with zero manual fixups). I also want to avoid
> mixing the ppcism cleanups with other things (e.g. replacing some
> of_get_property() by of_property_read_u32()). And the "testing on ARM"
> part comes once I get to actually building on ARM. But there's not much
> point doing all that unless there's some indication that this can be
> applied to some tree that actually feeds into Linus', which is why I
> started with a few trivial patches and precisely to start this discussion.

Right.  I'm really interested in getting this applied to my tree and
make it upstream.  Zhao Qiang, can you help to review Rasmus's patches
and comment?

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
