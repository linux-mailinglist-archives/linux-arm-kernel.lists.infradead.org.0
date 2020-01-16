Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA08713F442
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+12NZbdceGX7MOGOdnymp67SG11l/0eHCMDcvrJN94=; b=tEl5TUabXyS7qg
	Hvldx2rRO/Noy6+QSCmCA2xW/nPQAmX+o/68GfKCnk/2SwdRaK+Rng10q98vrPWs66hhmQpkE1X5B
	ssaS0TvbuDiX6vqyDTY8NbTdNEu7Vr6chdiuSJH3Cwr3oNabBlMw2RXsrXiTnzK8T6cJEjJ44QbPU
	5+YcUrU8KWAqFD9rBkGbc8VqjHJ7tUfMMcl6hSC4aQsobbUDJFpUNVxV36b/o8iDj+O/aqsiVheAj
	eNOk7i1DoQmCuXGskP4PeIS2FZf7KIvpvBCM8vNesAFoXI87sJ0GgJfZASTy7GpCgfbTedacgAc5E
	6KYUOa18/XM4NSuKFRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAC6-0004Jl-96; Thu, 16 Jan 2020 18:48:38 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9ra-0004fA-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:27:28 +0000
Received: by mail-il1-x144.google.com with SMTP id c4so19110258ilo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hze97wcopQXdVE5g921uVOJcVOqpEK/vGURcI64jlVE=;
 b=dWRsDztqB3VhgUV55hSNrdtZyGqpnJOyocUQd0cwoEdRKhentt/e+E4mCtGbVO+/2D
 YhDXs80IIYc1xT6ywCoJ0c/UXvcO7Dw29JcMGHzPiGk+vI72vYp4XtjkJAe1VVztnOIc
 HI7AOIlFAsMUIHj+htofFGj8RpLb62HYqqgqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hze97wcopQXdVE5g921uVOJcVOqpEK/vGURcI64jlVE=;
 b=UnNLcPLzSnKAE++/CUaag9/m0YhwhX3IGRvbjVfm7H6qTONuEyNENOu8SEwGbuXasm
 FA1vdcavKL+Y3FE5KE2skWztWqSgwWXPo7vvlJWHvJP3uuEEQBUjzb9zJWd0ToWHVe/K
 BSo2ZRSmqHsbqMT9lbAaQ4UK6XEG2n3e5M23fT9wxY+ygsrfBbbTkVBTXXPvcLlGMXVM
 E4zwMwYKGb+Bv5qlVQhkwc8FHCbmndh8vltyTQX4FGRlSXq0mfdQ0YkCyn3uaFvhRZhw
 vnEwyAOKiPeRpjUaG+Y7PU8EMtTVGPvlH1+qLD5wxsELJk9/O6tHzjLDv0gZQm7iO7MY
 6PHg==
X-Gm-Message-State: APjAAAWK2Wdw6W2UtM7pstW09IQ9oGWe5znm3nK2LwOn2n1LfI1t5fYL
 VxSfkeHCrXgvEWX5eW9HPxdlj7HsyVA=
X-Google-Smtp-Source: APXvYqw9N0cRB6AmwyzoYmGyUzFLBTXmKfmkHWvw3uYrw7pS0kAYBdZX6mvObkiRYsXtMCi5aym6zQ==
X-Received: by 2002:a92:485a:: with SMTP id v87mr4705763ila.128.1579199244016; 
 Thu, 16 Jan 2020 10:27:24 -0800 (PST)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com.
 [209.85.166.177])
 by smtp.gmail.com with ESMTPSA id u64sm7081989ilc.78.2020.01.16.10.27.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 10:27:22 -0800 (PST)
Received: by mail-il1-f177.google.com with SMTP id c4so19110142ilo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:27:22 -0800 (PST)
X-Received: by 2002:a92:8d8e:: with SMTP id w14mr4672100ill.187.1579199241984; 
 Thu, 16 Jan 2020 10:27:21 -0800 (PST)
MIME-Version: 1.0
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
 <20200116153235.GA18909@willie-the-truck>
 <1a3f9557fa52ce2528630434e9a49d98@codeaurora.org>
In-Reply-To: <1a3f9557fa52ce2528630434e9a49d98@codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 Jan 2020 10:27:08 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WP1T7gGC=m5FOwuLvZdwrg5f7K6tDuYFT=0BgCQMZf7A@mail.gmail.com>
Message-ID: <CAD=FV=WP1T7gGC=m5FOwuLvZdwrg5f7K6tDuYFT=0BgCQMZf7A@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102726_287116_FAE2E676 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, James Morse <james.morse@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jan 16, 2020 at 8:11 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Will,
>
> On 2020-01-16 21:02, Will Deacon wrote:
> > [+Jeffrey]
> >
> > On Thu, Jan 16, 2020 at 07:49:12PM +0530, Sai Prakash Ranjan wrote:
> >> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
> >> are not affected by Spectre variant 2. Add them to spectre_v2
> >> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
> >> vulnerability sysfs value.
> >>
> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> ---
> >>  arch/arm64/include/asm/cputype.h | 6 ++++++
> >>  arch/arm64/kernel/cpu_errata.c   | 3 +++
> >>  2 files changed, 9 insertions(+)
> >>
> >> diff --git a/arch/arm64/include/asm/cputype.h
> >> b/arch/arm64/include/asm/cputype.h
> >> index aca07c2f6e6e..7219cddeba66 100644
> >> --- a/arch/arm64/include/asm/cputype.h
> >> +++ b/arch/arm64/include/asm/cputype.h
> >> @@ -85,6 +85,9 @@
> >>  #define QCOM_CPU_PART_FALKOR_V1             0x800
> >>  #define QCOM_CPU_PART_FALKOR                0xC00
> >>  #define QCOM_CPU_PART_KRYO          0x200
> >> +#define QCOM_CPU_PART_KRYO_3XX_SILVER       0x803
> >> +#define QCOM_CPU_PART_KRYO_4XX_GOLD 0x804
> >> +#define QCOM_CPU_PART_KRYO_4XX_SILVER       0x805
> >
> > Jeffrey is the only person I know who understands the CPU naming here,
> > so
> > I've added him in case this needs either renaming or extending to cover
> > other CPUs. I wouldn't be at all surprised if we need a function call
> > rather than a bunch of table entries...
> >
> > That said, the internet claims that KRYO4XX gold is based on
> > Cortex-A76,
> > and so CSV2 should be set...
> >
>
> Yes the internet claims are true and CSV2 is set. SANITY check logs in
> here show ID_PFR0_EL1 - https://lore.kernel.org/patchwork/patch/1138457/

I'm probably just being a noob here and am confused, but if CSV2 is
set then why do you need your patch at all?  The code I see says that
if CSV2 is set then we don't even check the spectre_v2_safe_list().

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
