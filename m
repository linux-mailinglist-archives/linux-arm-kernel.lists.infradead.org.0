Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09199D7724
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 15:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujU36c2+MRbHpoLMGUrID0Vv4HNw2GjFJqrNCEbae70=; b=S+jeOt9Jg4zBN7
	8eN5t4n6wGDcEWkY0p9+0d/KRu8CiSd/PzBH3o+l7kKJQ3v7OOhcTSu7JnGPTKwMAVt1l6cBvlzza
	iZl2OxRLJAKzXcuV+TwNxd5G0+bQaGhKXxxgMdrX5WE9q3hHM3zYdI7bPDll3gv6vARvZwkJz8PEk
	tXX7VV4wCq0vpMHJyB3fja1De1OrUTAfjEkCR2puxcJX8W0jbDCqtbODJ8ZyhYykKbcjVIpGvarDh
	L05YGtvUCON49/kCyfDDBp4E6eUoQMyiJgNh9yKtUrBT+NXFkoljxDpqZgKzzxct5YwXcYmEEvKjm
	VZb54bFTWfQjf/HHv97w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKMcJ-0003f4-65; Tue, 15 Oct 2019 13:11:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMcA-0003dv-J0
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 13:11:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so20840922wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 06:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=junNhP9gCsnSqnPVo5u2+J+8221y/y9z+WspBQGN5dY=;
 b=pG5zZ5p9vGBVNimp3UOKKkr+buBHVDRbo7psOns0H0BZx0rA6cm1ItierlcQWa7O4Z
 UcZ7G4/y0n8i6P63dyPYBdqFZae02DUyDeU6BvDdVXkv5uOz6PMK4uTcSe/dc0PiNIds
 h6APE3FhTxy6jKTDs7mSdBO+HWrgbC3SJLNp3heKWTj9bba8i9Cotb63aX7J9i05gkj9
 n/S8R5zkMumtkuJuQ0aIg4eEebB2n8kHGyqthshfhV6aEtElpVA8QQUB8MSQXiv+b1F8
 ukozvwqx7Jp7HHOEP/rNVKCGflICt5eIK8JNQ/dhr2AWf85xdT1Qsd73OFgN5g9C8GnD
 YvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=junNhP9gCsnSqnPVo5u2+J+8221y/y9z+WspBQGN5dY=;
 b=A4aVgfLGWrmHZH0eKYuuxBvYDzPAkoekAJSNfnRnCMS8dJaYL9i4N2vvUGzQz09B08
 7RV0MAEp+mbQkoZ7oWWH+TSupTKcnXjFigZpcFPjbVd12po/jlE7V6Gk9PKxlivclTAE
 pecQR6xLEoX/vplW2rjmkQLL15Ms5BgBUcMi0xH9AimPldio8p6Xn70jfLim4tGYlP7G
 ET6y5JKSwKZhD5h+zHZH1uW3P2Ay9pRvrGyBD/gA9y2IRxun8Zd4K8oQETAnP+fuDm9L
 gxI3FmovwJ557gntELOLsbBMBqnd/BI2vi8aHorQuELgidAQyugVr0bjHx7aZ+kdd9pB
 TVcg==
X-Gm-Message-State: APjAAAVlFZGe83jWLQBQ7cgorAJv35POg7sPoF9XBb+3eXdEGfxwhT3b
 ubi0kWdxX4bgdNQ2hgi97JBGwvhlIhyToUQQFNWbk7Eu0AtuVQ==
X-Google-Smtp-Source: APXvYqwNBwSOny55XqPPDJh10sin1sP5dhZyd1o+28Lx1d871n7oMCHkaC0P9Wg0nb9ScRHgvH3htMiZX+D9L6iU4Ww=
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr19886226wml.10.1571145106093; 
 Tue, 15 Oct 2019 06:11:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
 <20191010171517.28782-2-suzuki.poulose@arm.com>
 <20191011113620.GG27757@arm.com>
 <4ba5c423-4e2a-d810-cd36-32a16ad42c91@arm.com>
 <20191011142137.GH27757@arm.com>
 <418b0c4b-cbcd-4263-276d-1e9edc5eee0b@arm.com>
 <20191014145204.GS27757@arm.com>
 <12e002e7-42e8-c205-e42c-3348359d2f98@arm.com>
 <20191014155009.GM24047@e103592.cambridge.arm.com>
 <CAKv+Gu83oa3+DKNFowVkE=mZfLorAvGQ3GVPiZtsXzQBcsMCWg@mail.gmail.com>
 <20191015102459.GV27757@arm.com>
 <CAKv+Gu_=jw94Hj5Vo=5w+hb5RcPR4SQvxOM02WQr9hDhyzE67g@mail.gmail.com>
 <4b4ead8e-383e-67ee-672d-247a52f6c7f3@arm.com>
In-Reply-To: <4b4ead8e-383e-67ee-672d-247a52f6c7f3@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 15 Oct 2019 15:11:34 +0200
Message-ID: <CAKv+Gu-4uVXXj+gbiWhQqsdnoJsYnPfZ38CLUR-zWys4mG3N4A@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_061150_656183_36DD4A52 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019 at 15:03, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
>
>
> On 15/10/2019 11:30, Ard Biesheuvel wrote:
> > On Tue, 15 Oct 2019 at 12:25, Dave Martin <Dave.Martin@arm.com> wrote:
> >>
> >> On Mon, Oct 14, 2019 at 06:57:30PM +0200, Ard Biesheuvel wrote:
> >>> On Mon, 14 Oct 2019 at 17:50, Dave P Martin <Dave.Martin@arm.com> wrote:
> >>>>
> >>>> On Mon, Oct 14, 2019 at 04:45:40PM +0100, Suzuki K Poulose wrote:
> >>>>>
> >>>>>
> >>>>> On 14/10/2019 15:52, Dave Martin wrote:
> >>>>>>
...
> >>>>>> I'm now wondering what happens if anything tries to use kernel-mode NEON
> >>>>>> before SVE is initialised -- which doesn't happen until cpufeatures
> >>>>>> configures the system features.
> >>>>>>
> >>>>>> I don't think your proposed change makes anything worse here, but it may
> >>>>>> need looking into.
> >>>>>
> >>>>> We could throw in a WARN_ON() in kernel_neon() to make sure that the SVE
> >>>>> is initialised ?
> >>>>
> >>>> Could do, at least as an experiment.
> >>>>
> >>>> Ard, do you have any thoughts on this?
> >>>>
> >>>
> >>> All in-kernel NEON code checks whether the NEON is usable, so I'd
> >>> expect that check to return 'false' if it is too early in the boot for
> >>> the NEON to be used at all.
> >>
> >> My concern is that the check may be done once, at probe time, for crypto
> >> drivers.  If probing happens before system_supports_fpsimd() has
> >> stabilised, we may be stuck with the wrong probe decision.
> >>
> >> So: are crypto drivers and kernel_mode_neon() users definitely only
> >> probed _after_ all early CPUs are up?
> >>
> >
> > Isn't SMP already up when initcalls are processed?
>
> Not all of them. Booting with initcall_debug=1 shows the following :
>
> --
>
>   // trimmed //
>
...
> [    0.027033] initcall dummy_timer_register+0x0/0x54 returned 0 after 0 usecs
>
>
> [    0.035949] Detected PIPT I-cache on CPU1
>
> [    0.036049] CPU1: found redistributor 1 region 0:0x000000002f120000
> [    0.036082] CPU1: Booted secondary processor [410fd0f0]
> [    0.048049] Detected PIPT I-cache on CPU2
>
> [    0.048149] CPU2: found redistributor 2 region 0:0x000000002f140000
> [    0.048168] CPU2: Booted secondary processor [410fd0f0]
> [    0.060249] Detected PIPT I-cache on CPU3
>
> [    0.060349] CPU3: found redistributor 3 region 0:0x000000002f160000
> [    0.060402] CPU3: Booted secondary processor [410fd0f0]
> [    0.060620] Brought up 4 CPUs
> [    0.060949] SMP: Total of 4 processors activated.
>
>

These are all early initcalls, which are actually documented as
running before SMP, and before 'pure' initcalls, which should only be
used to initialize global variables that cannot be initialized
statically. So I think we can safely disregard these as uses of kernel
mode NEON we should care about.

But I would still expect may_use_simd() to return the right value
here, independently of the logic that reasons about whether we have a
NEON in the first place.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
