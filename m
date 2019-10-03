Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7E1C9917
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfJPwEASMPxjRRHm6Rda1pWDHET+EuYv9U7Q2EaNXCY=; b=QL60B/EjvSXGgc
	dcAVZDpB1rOU8LC49/y9LkNFG2pWLeVtKbq3AH8nHcKM3TgnoxWmrEiqohsZrt1nnFxRcGogSkNpp
	TQ/zOUTe4Piw89XVCQwUvIt2hTXFFc5gStiHz8wJuPbOF3nMKJtFSczVd27XOqYJ3hX9sCIAFhoIT
	wuRQj5DqMI6TpMY1mheiMf3ZN0ZvswNnK/Uwrm6stk7uRSy+uIDFm6Ewl59x/wFYXvfQiymh+Rnno
	fMNybXNHqRH18r4f8YYIGUmLLSRVbbBmgsXVY+em+lAsSWUhLdrIyJck6pudkcSiRrBrmI/3hWyRg
	3TosaagFLB7vCaLsIR0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvjT-0001BQ-D2; Thu, 03 Oct 2019 07:41:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvjM-0001AU-0J
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:40:57 +0000
Received: by mail-lj1-x242.google.com with SMTP id f5so1515205ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 00:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E7iqFe1lhn8LdVCxH7rgleIidp2/4wVxSz9as/XPLSU=;
 b=CjfB28DMRCqGQ++ofQBR0em6Kgtij9ayqHRRVD7m/As54ZH4FBQpZ14boAO5HnGqkR
 sAjU8jX8jETg5g6za2V3pd/MT1a09N58Wo/2WDdURo/zHLYH5ckEFHPWp5O2Gqxt+9pa
 UY4g5m+O0Z65ChGAr6wOP4T7JXFL4DXjRpI2UJ8AwKv+F6Iffpikg52L1+iwwJKL7gQX
 PUt5HQoUO7929q0IwmWtbhEG3dbbmTCT2i3UbmbiqUNtbz7aYWBs5MOJu+c3tcjwWGBX
 gLhaQt3y2tjryDIy4u4SmCyrIDvzYpmwBcPy51x7ncF6VzYSYhzp7mHQOGyuK6Wkru3Q
 It5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7iqFe1lhn8LdVCxH7rgleIidp2/4wVxSz9as/XPLSU=;
 b=ZzhKf1vbrr98eqLWMWcs1zPGxaQDDRHaa0SgPoISAc4b75hJmAMNNHx21MyinvbURP
 zwyYaLhDX75U0+ZP0+PA3rnCQ+9ftHYq6QoahPywdfyInFNHlS/7a6zH9LgZLEKc75yB
 d4Lz4GNySvT0Ji0JSyQL4IUhetE1La4vqhcpiwlYy1YQMDKQIITwKQRdlrYB12jZAcwU
 TarKny5dXQCuHsMuDQbfOIKuEFGWjF9ZReudel/cVYvZsSm0HqVxQ2khVBmyq853Gaev
 zGwWmRlUTRL9SYleLyqRngBAWDAtDyXAOyWk+CJIqUH2hhj8dffe96pjosph/5RfbE/6
 t2WA==
X-Gm-Message-State: APjAAAU1gDRg2weRrJYDcO0LESjVFUiM+tOhE8Cp2COQgcC03TF0ZlIl
 RHB47XkZY4UA35FsfsiPVXs07qvQArBGyJ4baUlePw==
X-Google-Smtp-Source: APXvYqwZknb69/TYERw7YCBTe+s8V/JXOBxcZNJEdeGG35NyM+62662ZhUSQhFi5nm0jtPXJNq/2DOQgLPo1HLs58rY=
X-Received: by 2002:a2e:530d:: with SMTP id h13mr5131568ljb.109.1570088451104; 
 Thu, 03 Oct 2019 00:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
In-Reply-To: <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Thu, 3 Oct 2019 09:40:40 +0200
Message-ID: <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_004056_047100_AB708014 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 1 Oct 2019 at 16:04, John Garry <john.garry@huawei.com> wrote:
>
> On 26/09/2019 20:30, Anders Roxell wrote:
> > When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> > CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
> > people wants.
>
> Today allmodconfig does not enable CONFIG_ACPI due to BE config, which
> is quite unfortunate, I'd say.

right.

>
> >
> > Rework so that we disable CONFIG_CPU_BIG_ENDIAN in the defcinfig file so
>
> defconfig

thanks.

>
> > it doesn't get enabled when building allmodconfig kernels. When doing a
> > 'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be dropped.
>
> So without having to pass KCONFIG_ALLCONFIG or do anything else, what
> about a config for CONFIG_CPU_LITTLE_ENDIAN instead? I'm not sure if
> that was omitted for a specific reason.

Oh, I tried to elaborate on the idea in the cover letter, that using
the defconfig
as base and then configure the rest as modules is to get a bootable kernel
that have as many features turned on as possible. That will make it possible
to run as wide a range of testsuites as possible on a single kernel.

Does that make it clearer ?

Cheers,
Anders


>
> Thanks,
> John
>
> >
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 878f379d8d84..c9aa6b9ee996 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -855,3 +855,4 @@ CONFIG_DEBUG_KERNEL=y
> >  # CONFIG_SCHED_DEBUG is not set
> >  CONFIG_MEMTEST=y
> >  # CONFIG_CMDLINE_FORCE is not set
> > +# CONFIG_CPU_BIG_ENDIAN is not set
> >
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
