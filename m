Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F6F1D7D22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KP8fIBt3usoE9Cp58pRV+CqgTkuY41U6VeQPCnVR/rE=; b=WmLCCbRIScZ2dJ
	Rs+NaJagSfij/WskxydLiUxhBswaebg9j6Bju1ZtKdCrkgvN0oINh0lwcU8vlneH/jEWEssK3kBzg
	CMdJr8XLcRidKAj6iFZF+wjSQ+u5BJ0279XEQc8Rm6Uda5CjFc5EHLpm/J1UaMysCtcxYck8lv/AH
	t62e8TIqn0SmoLuMXZElnHoGxeakwGRg/1taDrlf1Q442Q9YmChPxsHcRAfjUrtXRWMnmda/HMe+f
	dq7uEeBLd4tH807zBwioWRq2ghM8ZMa6wF2Zw2of67knVfz7RtphiuTlsFXxq4MEdbYoWrY8TK5Rh
	geIK1PBcFOIR6MGmZkZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahvZ-00071Y-Rw; Mon, 18 May 2020 15:43:41 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahvS-00070h-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:43:35 +0000
Received: by mail-ed1-x541.google.com with SMTP id h16so8834019eds.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 08:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qyyQKzYFu/7h5E836hsgHKMOfWSgn0qWVarFhD2DEKU=;
 b=f8dZ8xIORXQNPBbRYt6xuYG9yfeUK8KLQEncOoSt/DlNVKhrfcCqQsrmToClTv+rDn
 sE3/yNsrV9X+OWjNoF1yI9vpVMHapHaevxWDOBxsCejOCoP+asNHtW9jdIHCp9yiT02/
 kEkpaXhWGTu4YahO4l81RK4NfQqLa7PSTKmp9AjTKFmLw3R9VrMEe+TvCniIGi+f4GnU
 1iEIIT3VYX0Ld4ecoW8mDwn9xDVLlBYiClR0amYTreCm7rtt4eo6HAlOY9QkJBzqiAfD
 p5SMtyGzYzc/Y4HsPGCiM7qIKsHWC+Kqlv9PeoxuDFfGfcUZ5FqyZ1wczQ8aG9Jb5HyO
 2ukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qyyQKzYFu/7h5E836hsgHKMOfWSgn0qWVarFhD2DEKU=;
 b=n3bbPS5fCpPT62syheXkqKclN/F0xtjtEbll8WI1UJ+LlsxvJvFKSyZl+NDfqFFz2Y
 c0oZtVrprzU4y5AiQR4qG6KDgXpf/lwYc0nhtTgeKsNpHPhylLvHMRaS0d8Rezni0s/1
 tdcSQtxsDKSZbySfIuZ1Jzkj0nsOzR88xxedPtko42S1bqvzknmZDF/FqnyBWA0JSEPW
 N02SmugvJuNzU68ku1g7cdNdBiK0yEJCTu7psI983lbm2zE7A2uzF3LYRhcJvV+iCBNG
 +0IyA2qnvce2RhSvuKS0Ixv4RXfAb4apeUahtGJLYXf9dZhbE66PeIoABotOPMBebo7n
 EbjA==
X-Gm-Message-State: AOAM5304wLkUjCy0CVkFhD+QfixSgk8Ny8X1xQ8QU4Htya3U1P3L2fhC
 0d/vUu/ydprRVTizl+HUhe+M1BwB1YUKBnarCtDurA==
X-Google-Smtp-Source: ABdhPJxP1ZGgNfWEZpA7rdeonukC7hlRqJ69qe2XV5mydYq9AF5tI0IPiItsHDjtamtke7kCgi4YwfpVCRybotw6QOM=
X-Received: by 2002:a05:6402:204b:: with SMTP id
 bc11mr13735965edb.114.1589816607562; 
 Mon, 18 May 2020 08:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200515172756.27185-1-will@kernel.org>
 <CABCJKucXmMD82mQ0rSMjfByXD42htTjkde3TsKTVP-jvuqkZwQ@mail.gmail.com>
 <20200518135228.GI32394@willie-the-truck>
In-Reply-To: <20200518135228.GI32394@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 18 May 2020 08:43:16 -0700
Message-ID: <CABCJKudRHeE3VOPK2HDmkg3qCrzNQpmOywrfMfdX+aE8jpUnUg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Clean up Shadow Call Stack patches for 5.8
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_084334_455670_66DF6ADF 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Mark Rutland <mark.rutland@am.com>, kernel-team@android.com,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 6:52 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, May 15, 2020 at 01:42:40PM -0700, Sami Tolvanen wrote:
> > On Fri, May 15, 2020 at 10:28 AM Will Deacon <will@kernel.org> wrote:
> > > Will Deacon (6):
> > >   arm64: scs: Store absolute SCS stack pointer value in thread_info
> > >   scs: Move accounting into alloc/free functions
> > >   arm64: scs: Use 'scs_sp' register alias for x18
> > >   scs: Move scs_overflow_check() out of architecture code
> > >   scs: Remove references to asm/scs.h from core code
> > >   scs: Move DEFINE_SCS macro into core code
> > >
> > >  arch/Kconfig                         |  4 +--
> > >  arch/arm64/include/asm/scs.h         | 29 ++++------------
> > >  arch/arm64/include/asm/thread_info.h |  4 +--
> > >  arch/arm64/kernel/asm-offsets.c      |  2 +-
> > >  arch/arm64/kernel/entry.S            | 10 +++---
> > >  arch/arm64/kernel/head.S             |  2 +-
> > >  arch/arm64/kernel/process.c          |  2 --
> > >  arch/arm64/kernel/scs.c              |  6 +---
> > >  include/linux/scs.h                  | 16 +++++----
> > >  kernel/sched/core.c                  |  3 ++
> > >  kernel/scs.c                         | 52 +++++++++++++---------------
> > >  11 files changed, 55 insertions(+), 75 deletions(-)
> > >
> > > --
> > > 2.26.2.761.g0e0b3e54be-goog
> >
> > Thanks, Will. I tested these on my SCS tree and didn't run into any
> > issues. Looks good to me.
>
> Cheers, Sami. Can I add your 'Tested-by' to the patches, please?

Sure, please feel free to add Tested-by tags.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
