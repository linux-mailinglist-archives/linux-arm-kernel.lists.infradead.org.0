Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560E320AF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:18:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugQEEQWYIwDaUbv2jaFU8eTrJlOpmPk7xCUQkmnEgo0=; b=ptzm3vhbDjvsPf
	cz32aMP6mf5PwFZ0VSkhDzpvmRklRGbnl/p52a4AoVBDVsTSABvEPizWdxoy82BkqEKcljvVbPd7H
	5J6+65WSccvuUuQD+BRodyYr6p9eTpDK+WJgqvjvDibDNC8V5FCoyfjljTsTBf4vQ4nZWbboShMAR
	xW75mukzr1WdEBXchQNDGHOZi3BthUZGRUzczlX+x9FfbUUktoRfWx5rzPpus+ZC4BgtKHwgz0QGn
	Li1YGGTib+WjH+hqBC+nMeOSEt4HyWkYDLoUl5AhGrA9TahMisIwUrMrxVDE/pn10tq+x0tasC0L0
	m1PYLUHjfj96+myw3fTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRI9B-00088F-IR; Thu, 16 May 2019 15:18:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRI93-00087q-5S
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:18:10 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A43752166E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 15:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558019888;
 bh=ZM7ppt/S5KJwv0acQCOQ76OkA49Aolc34/4ZQeZCdco=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1O52VzdmaWpclF2Vq5eVFl+XFTl+jyTJm2sXqSL/6DNVKTb2AN2wggy1ABR4GT+Ol
 zeVFkidsdioXrsnfl0X/+MB44YQbSff6eIy59n/HGd+Ejo+ct3oG7wRujt7w+n9Yo/
 I9DS4ya12Up8RU8Y2TZULqMiiYMAP1f0k2jCyYxs=
Received: by mail-qt1-f176.google.com with SMTP id a39so4367959qtk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:18:08 -0700 (PDT)
X-Gm-Message-State: APjAAAUPIdJYOvJB0xLfxOHIjGX8F8/ghBKJ0U4F/t+hPt6JkZEWHFaq
 FEK5po0ovu28KaEKh/syEBHt4tp1U+o0hKJ/Pg==
X-Google-Smtp-Source: APXvYqxt++jGtZr/pMp/Bw9IfigV/iGoq2iy4QQBdyF695i72d1q8vmOqdxvkY39gqqmm4cqUNbklT6HdE7Zolbcags=
X-Received: by 2002:ac8:3862:: with SMTP id r31mr42313002qtb.26.1558019887828; 
 Thu, 16 May 2019 08:18:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
 <20190516144303.GF43059@lakrids.cambridge.arm.com>
In-Reply-To: <20190516144303.GF43059@lakrids.cambridge.arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 May 2019 10:17:56 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Tmht+oxdmjtyhzwrYw4NNAkVnimAuEGODC_2fAprSjg@mail.gmail.com>
Message-ID: <CAL_Jsq+Tmht+oxdmjtyhzwrYw4NNAkVnimAuEGODC_2fAprSjg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_081809_243327_7CDE2F8D 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chintan Pandya <cpandya@codeaurora.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:43 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Thu, May 16, 2019 at 09:37:05AM -0500, Rob Herring wrote:
> > On Thu, May 16, 2019 at 5:28 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > >
> > > Basically does similar things like __fixmap_remap_fdt(). It's supposed
> > > to be called after fixmap_remap_fdt() is called at least once, so region
> > > checking can be skipped. Since it needs to know dt physical address, make
> > > a copy of the value of __fdt_pointer.
> > >
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > ---
> > >  arch/arm64/kernel/setup.c |  2 ++
> > >  arch/arm64/mm/mmu.c       | 17 +++++++++++++++++
> > >  2 files changed, 19 insertions(+)
> >
> > Why not just map the FDT R/W at the start and change it to RO just
> > before calling unflatten_device_tree? Then all the FDT scanning
> > functions or any future fixups we need can just assume R/W. That is
> > essentially what Stephen suggested. However, there's no need for a
> > weak function as it can all be done within the arch code.
> >
> > However, I'm still wondering why the FDT needs to be RO in the first place.
>
> We want to preserve the original FDT in a pristine form for kexec (and
> when exposed to userspace), and mapping it RO was the easiest way to
> catch it being randomly modified (e.g. without fixups applied).

The CRC check already existed for this purpose and that works for
every arch including ones where the FDT is copied.

BTW, This version of the patchset disables the export to userspace
since the CRC will be wrong.

> I'd prefer to keep it RO once we've removed/cleared certain properties
> from the chosen node that don't make sense to pass on for kexec

I want clear rules about when the FDT can be modified or not which are
not arch specific.

It's really only a question of with what granularity it's made R/W.
Wrapping every modification seems like overkill to me.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
