Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D078413F45A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9FM2cwEqRxv8uxD+Tzd+gUmvQ4wGlX+nH+u1Ah5Qvg=; b=edKaHF2fYwcsDj
	BYE+V4Gw6XInHkpL26GfZk5GAiUPPvesiN/52WS4jtnfh4sTUrr7l1YuYjG5lPSCWmFz8KZuoAEdn
	bmSlMUH8/cdiAhui64jO4ghZ0M5q87c3jljtSNh+Ok2/O+j6MJr9eR28P/5fyqtKLeeOW9fgZi+Xg
	MLRE/tNPBj9rqFKjv0bLXTBJalbPDwF00ERqQomSFX5t1YdeeB6WpKsbMUuyX3Bw7h+S19VmQs+HQ
	xiCQ3X/5D/SDMu/9lT+nbcCR29XZjciUpw73HeTwwRsls63OWj9qrg4Mnl3lYq7ntaum06dE+wx03
	PFlV/evshwo3Ko34Xvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isACa-0004j8-Gj; Thu, 16 Jan 2020 18:49:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9vT-0000Xc-Rg
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:31:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D86C206D7;
 Thu, 16 Jan 2020 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579199487;
 bh=n9w+eEwrwKaNFIfJ2uLhExYF95MkN3KncmP+Uf276UI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uxCDOQukU1DhBrpSDVnWCsaQAvjOUjLxlFvtr/Si8XX4qjWwO5+kvOjQYJvYJbUZy
 wyVyxAbmtbScN9ahtoFyN+Nk/a1IMI8TtLXR2Z6Bq9+SbJFFdjoYIMTVp0RdowTi59
 bz0/1+mmMQgW+RhvSzbjNRfefuFbK2bFDC9upZ8s=
Date: Thu, 16 Jan 2020 18:31:22 +0000
From: Will Deacon <will@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
Message-ID: <20200116183121.GE22420@willie-the-truck>
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
 <20200116153235.GA18909@willie-the-truck>
 <1a3f9557fa52ce2528630434e9a49d98@codeaurora.org>
 <CAD=FV=WP1T7gGC=m5FOwuLvZdwrg5f7K6tDuYFT=0BgCQMZf7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WP1T7gGC=m5FOwuLvZdwrg5f7K6tDuYFT=0BgCQMZf7A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103127_949711_A1D0ED18 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, James Morse <james.morse@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 10:27:08AM -0800, Doug Anderson wrote:
> On Thu, Jan 16, 2020 at 8:11 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> > On 2020-01-16 21:02, Will Deacon wrote:
> > > On Thu, Jan 16, 2020 at 07:49:12PM +0530, Sai Prakash Ranjan wrote:
> > >> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
> > >> are not affected by Spectre variant 2. Add them to spectre_v2
> > >> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
> > >> vulnerability sysfs value.
> > >>
> > >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > >> ---
> > >>  arch/arm64/include/asm/cputype.h | 6 ++++++
> > >>  arch/arm64/kernel/cpu_errata.c   | 3 +++
> > >>  2 files changed, 9 insertions(+)
> > >>
> > >> diff --git a/arch/arm64/include/asm/cputype.h
> > >> b/arch/arm64/include/asm/cputype.h
> > >> index aca07c2f6e6e..7219cddeba66 100644
> > >> --- a/arch/arm64/include/asm/cputype.h
> > >> +++ b/arch/arm64/include/asm/cputype.h
> > >> @@ -85,6 +85,9 @@
> > >>  #define QCOM_CPU_PART_FALKOR_V1             0x800
> > >>  #define QCOM_CPU_PART_FALKOR                0xC00
> > >>  #define QCOM_CPU_PART_KRYO          0x200
> > >> +#define QCOM_CPU_PART_KRYO_3XX_SILVER       0x803
> > >> +#define QCOM_CPU_PART_KRYO_4XX_GOLD 0x804
> > >> +#define QCOM_CPU_PART_KRYO_4XX_SILVER       0x805
> > >
> > > Jeffrey is the only person I know who understands the CPU naming here,
> > > so
> > > I've added him in case this needs either renaming or extending to cover
> > > other CPUs. I wouldn't be at all surprised if we need a function call
> > > rather than a bunch of table entries...
> > >
> > > That said, the internet claims that KRYO4XX gold is based on
> > > Cortex-A76,
> > > and so CSV2 should be set...
> > >
> >
> > Yes the internet claims are true and CSV2 is set. SANITY check logs in
> > here show ID_PFR0_EL1 - https://lore.kernel.org/patchwork/patch/1138457/
> 
> I'm probably just being a noob here and am confused, but if CSV2 is
> set then why do you need your patch at all?  The code I see says that
> if CSV2 is set then we don't even check the spectre_v2_safe_list().

You're not being a noob at all -- you're making the same point that I was
trying to make :)

So I think we can take this patch with the KRYO_4XX_GOLD part dropped.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
