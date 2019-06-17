Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C96480BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mD6MdOger8phZkGPZWngRo64jurqXpAA8N+WgKWNosk=; b=VGAuiRrQNO/X1q
	wpAANeDbfihrg66txlN9BtmVHcD6WjaVq2XTe+k8GRdCflyuo+FdwaCMu1yCn+ek6epPMyApNNndd
	1Mj3hZjmQz37jQ8BKDasksyuv4LqdPO8KftPmxrKGFvomEAcdNiYVIX0e3oE9WUYheLzAAaGOV1mw
	hdWdQ94I291gcrxIZqWEptVgxly9n2RYCso6PQ9g+RhVGA2nJstDvbRGBd95Yhe/ZS6HsjjfpkGOJ
	T+Mi3NZtM1v4vICA3hS+tQ48oI9m7xH/SWWn6Ono7YpOctQkTKHos17dGcxe06JsOEVfQHLm05tCY
	6edF57LzV+i+ktYYThkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcptP-0005gk-3L; Mon, 17 Jun 2019 11:33:43 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcptF-0005g4-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:33:34 +0000
Received: by mail-io1-xd2a.google.com with SMTP id k8so20461602iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uTaQurjF4DAEz2YA58sq1itwNB0DAFLlJ/DDxkRjQXs=;
 b=YlBxHyckiHCNw4pcv1L+3aipakmvWHdfu1oxzwefcQcVWnyNIn5NGlNqYIN/7QC0ey
 ioGaBXAv5AJACbpMWAaAsdLvLID96zO5uFRnyIa/tNH4W41NImVSVkxrQ0LVv/5lBHZz
 iEw6edvCS3C/y6wdXkjdsW3dJBbRBA4SU1vFKgiJzgFxZZEW6e1ELjhVW+MpsfItpE7h
 ZcLT9Ml5vwbXxOJ18xbKM2fo2/VHFZmbasZ2ki93QAjNEpwdH9E6TdwQqBrr5CEXoFeL
 rxMZ9NE4l66LJ1eS2LKTv6F9j1x+5ianNQxSP60RRxrfI+gX25JRg2p+ejEoCSKNrw9Y
 sWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uTaQurjF4DAEz2YA58sq1itwNB0DAFLlJ/DDxkRjQXs=;
 b=EsclvX/o56NzU2YLB247IIhVME0//1DjhghsPwad5em+dtZ7K2E25viuiIlvtthQxx
 Y1wxtLq9B0EMFbcgRFZOq0yUlw/Gg86GKn3GguIekbQzZJIYKOyEXjlNr+NFt+qm2282
 OSg+OhdG/3ocH1DktFNRo32WQeOlAKfoBBt44l1OiSpaE/C1pQ6z2gerAZEAB1Y12RfK
 jXOD8SkGyZdKqwe0TIBWMKY0p5R+Dvkib8+dEF7BuOOSnobl4Vg8bT06FdpubeL/QTO4
 GjOBGM6ekUvKJOxrd2uWP/kuHiHVo+7njGv6YQ6yzucbXY2KoSZ9uh9sTqM00yNX/48v
 Z4IQ==
X-Gm-Message-State: APjAAAWCs2eCL6SG72WUfF771qPsfwdcwM7pZYUdOSq1VALFiv6p8DoE
 Fab3TImxL07F1bIp3G+zsuIfGZXbInKJ7z65PFfCWg==
X-Google-Smtp-Source: APXvYqzOD8mZdWMW5nl/G9kBu3RjbewHkgd/pSd8u227vGW4RBm64bgLB0Ejnt8SWGd0xJ5w7k3raGX9tSnxFEfpahY=
X-Received: by 2002:a02:3308:: with SMTP id c8mr15420974jae.103.1560771211244; 
 Mon, 17 Jun 2019 04:33:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
 <201906150654.FF4400F7C8@keescook>
 <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
 <201906161429.BCE1083@keescook>
In-Reply-To: <201906161429.BCE1083@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 17 Jun 2019 13:33:19 +0200
Message-ID: <CAKv+Gu_8ibO4D01DZv6KjL2GnvKuVBVnt=doxkN0w=4utJ7NvQ@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_043333_264897_410583AC 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 16 Jun 2019 at 23:31, Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Jun 15, 2019 at 04:18:21PM +0200, Ard Biesheuvel wrote:
> > Yes, I am using the same saturation point as x86. In this example, I
> > am not entirely sure I understand why it matters, though: the atomics
> > guarantee that the write by CPU2 fails if CPU1 changed the value in
> > the mean time, regardless of which value it wrote.
> >
> > I think the concern is more related to the likelihood of another CPU
> > doing something nasty between the moment that the refcount overflows
> > and the moment that the handler pins it at INT_MIN/2, e.g.,
> >
> > > CPU 1                   CPU 2
> > > inc()
> > >   load INT_MAX
> > >   about to overflow?
> > >   yes
> > >
> > >   set to 0
> > >                          <insert exploit here>
> > >   set to INT_MIN/2
>
> Ah, gotcha, but the "set to 0" is really "set to INT_MAX+1" (not zero)
> if you're using the same saturation.
>

Of course. So there is no issue here: whatever manipulations are
racing with the overflow handler can never result in the counter to
unsaturate.

And actually, moving the checks before the stores is not as trivial as
I thought, E.g., for the LSE refcount_add case, we have

        "       ldadd           %w[i], w30, %[cval]\n"                  \
        "       adds            %w[i], %w[i], w30\n"                    \
        REFCOUNT_PRE_CHECK_ ## pre (w30))                               \
        REFCOUNT_POST_CHECK_ ## post                                    \

and changing this into load/test/store defeats the purpose of using
the LSE atomics in the first place.

On my single core TX2, the comparative performance is as follows

Baseline: REFCOUNT_TIMING test using REFCOUNT_FULL (LSE cmpxchg)
      191057942484      cycles                    #    2.207 GHz
      148447589402      instructions              #    0.78  insn per
cycle

      86.568269904 seconds time elapsed

Upper bound: ATOMIC_TIMING
      116252672661      cycles                    #    2.207 GHz
       28089216452      instructions              #    0.24  insn per
cycle

      52.689793525 seconds time elapsed

REFCOUNT_TIMING test using LSE atomics
      127060259162      cycles                    #    2.207 GHz
                 0      instructions              #    0.00  insn per
cycle

      57.243690077 seconds time elapsed

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
