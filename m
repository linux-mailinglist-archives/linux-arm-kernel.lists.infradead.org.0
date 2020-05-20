Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A6E1DBBA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWMAOrXwY6CVp3uoxC/Q8WzbYO1GzPKQqPTGAH1pz48=; b=JZQ3pyZLypL7AI
	ALsqe0YZHuJOR+NZpxPQTfsJGfbFfP2/LPiLNdBewdSdpZClH1lgkA5Ne1nVJbbOKQMEVteirbKms
	bHoCuBgzRJaSvvNd//09i/ACu4klo+IkKW+SXsDQsHOXb59Wma0HWPW586VtudpSIdeeFfZWNXwoU
	E0XHZ2KIBQi/e3WhMDbDjTVsBOr+YRx6gaCBQAI4BJ16KzBFkovWowezvl2gZp/z6DNwvL/tg/MHt
	R8Qx0MnWRy1XfccujLhk7MMCFaqO9hyUEQFjQGwXw8tW/1njMqeZQZWbj5BPHtWWLaP9PP+YmqdDV
	p/+dkgmPUxjZh/LYFGZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSf3-0003Yl-Vr; Wed, 20 May 2020 17:37:45 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSes-0003Xx-GA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:37:35 +0000
Received: by mail-ed1-x529.google.com with SMTP id k19so4005915edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 10:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mmBeTVpzB/DzVdgmfy0S9L/02sdF04lqneOZ7tnCtPI=;
 b=Xul/5Xq7xcFUbllvoWstZn3MB7L5Klcwsqi5DdhaF4Pv4rc03Lur/rSBZr/vz6rUr/
 Vl6Fk/5+RTZAdE3d71RO1scQQVh1bX3z/lX5huSB4R5y2Mev3Vu4LVSXgjwLrrgbHM16
 wfnmirpJoWcFLIUTYmJVqsvKB1yKngHrHytVcwnxyLl/1MAKurdSA3sZX15WC4l/qsCC
 +z7IzqqEsuL67vJ1HNbORCbhc976Qv1eOFObX0jcLFy2vT1XfaJqXa9Ai6F5xrrKiqft
 BKdDFIy8PFbwnBiQN/VuA5+oLzIkdkZNjVtpdS//a8btqix48So1bMeTM8yf44XXiOLQ
 nuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mmBeTVpzB/DzVdgmfy0S9L/02sdF04lqneOZ7tnCtPI=;
 b=Pue6XUI357mYFR39Eiu6wEDvlACNPKobYImkk1F7Ib/d8gmIxj7SzdzmrTo6+iv7vr
 ASQj65cuBgpxWqyDpgEHU7uL/+WKnGHMwdlkQpOjaP1+01kCzn9/u2E+4sbN9eG7Mfds
 V5rKnGlw58PBuyURj1XMNA+6AdURYjZzIAicxu9Zi2D0NjVOEK/2j714HQpBmeCzAZ4z
 ytVzbWRyiN9SRoM/YvaWvETWZ26acBCysrSZ+SHKcAKIyBKtE4BK2PJViOV2Za5v+jIW
 CTsuAZ94+aGBHsVIa7ryj8ngPBxfLLVTR5Q0+hsFpmSJViPLoRXRkCbC/YPLA3BbCNli
 kfMg==
X-Gm-Message-State: AOAM533Z/5xyP8OA4utnHzZ2xWsleXVkAYCLkf5yFefkJQxnHk4uwJ2R
 2PyLAcUnG9T6dKw1+pVTvT7aDJqKQl41clLKWhHNwQ==
X-Google-Smtp-Source: ABdhPJyJwzTDvAbgVM2MH8BC7eeK6/2/ofGx+NX2F066K38tAjEtz5ZgJ4pulVOJF6Lrz8rTeXP7OWknIoM1hEqteLk=
X-Received: by 2002:aa7:d44a:: with SMTP id q10mr4574205edr.386.1589996252654; 
 Wed, 20 May 2020 10:37:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAHhmWiezrmtChuowQ4gyn8qhSUnfjc574P_riqHzTqifZK=dg@mail.gmail.com>
 <20200520082856.GA24293@willie-the-truck>
 <CAAHhmWhum+s5OopKMcNOqvGN5aYek-BJRseN8wS47LiH+hJcKg@mail.gmail.com>
 <20200520090317.GD24293@willie-the-truck>
In-Reply-To: <20200520090317.GD24293@willie-the-truck>
From: Linu Cherian <linuc.decode@gmail.com>
Date: Wed, 20 May 2020 23:07:21 +0530
Message-ID: <CAAHhmWjFF8xN+QMxe8RDYRtw1rzWq+i-qthMHFs+0nA3iSuLkw@mail.gmail.com>
Subject: Re: Clarification on necessary barriers before generating IPI
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_103734_571696_C08A31F9 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linuc.decode[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: maz@kernel.org, Linu Cherian <lcherian@marvell.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Wed, May 20, 2020 at 2:33 PM Will Deacon <will@kernel.org> wrote:
>
> On Wed, May 20, 2020 at 02:23:25PM +0530, Linu Cherian wrote:
> > On Wed, May 20, 2020 at 1:59 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Wed, May 20, 2020 at 01:38:24PM +0530, Linu Cherian wrote:
> > > > How is it ensured that system register write using msr instruction(gic_send_sgi)
> > > > doesnt get reordered before the stores to IPI call processing
> > > > list(call_single_queue in kernel/smp.c), so that IPI is guaranteed to
> > > > be generated after the stores get completed.
> > >
> > > I think the flow is:
> > >
> > >         <store to memory>
> > >         DSB     ST
> >
> > Dont we need an extra ISB here to ensure that the subsequent MSR SGI1R doesnt
> > get executed before <store to memory> and DSB ST ?
> >
> > This is on the assumption that DSB ST doesnt enforce the ordering of MSR SGI1R.
>
> I don't think that's a valid assumption. The architecture says:
>
>   | A DSB instruction executed by a PE, PEe, completes when [...] all explicit
>   | memory accesses of the required access types appearing in program order
>   | before the DSB are complete for the set of observers in the required
>   | shareability domain.
>
> and:
>
>   | In addition, no instruction that appears in program order after the DSB
>   | instruction can alter any state of the system or perform any part of its
>   | functionality until the DSB completes other than:
>   |
>   | * Being fetched from memory and decoded.
>   | * Reading the general-purpose, SIMD and floating-point, Special-purpose, or
>   |   System registers that are directly or indirectly read without causing
>   |   side-effects.
>

Thats clear. Thanks.


> Are you seeing a problem in practice?
>

Just came across this code, while trying to debug something related.
Will let you know if i have further followup.

> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
