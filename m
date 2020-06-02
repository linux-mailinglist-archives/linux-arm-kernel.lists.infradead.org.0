Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99011EC2CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2f9pLQqZJYHQwyNeIcYYmh9R4qFzO7Z7gBFysFszP0=; b=XYmDoqYgw45x/W
	+cjchJOHgLxSenoXQQuSTXqL0CMkG4xhP8a8sCr//UuUQVJigVM9kXNCNF4h1RsM/e6FYfBMXLLcN
	ySEj2HAWvrEbViLWChoKG7qxsXI8ocBU87XtjNRCDkwsHyNOS218V2WRYE8ssf0q/z0DX5+w/mthp
	LDNpICQorEj4b9kY/PzWxx7vH36qgZmc3/APActWlLja/tA+TKUVUx+Z5VehszlzrL6HoMlfjkWwn
	xi6D9TTjHerYfjPiEk1oJl5NcBb6ismbk/TzYRbnfVMUIo3GG9t9j/WsSzSGcTaKcecKfmnQ/ermx
	oZUl2CvICeUSDTawaYAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCfc-000650-8f; Tue, 02 Jun 2020 19:33:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCfU-00064O-G7
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:33:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id z64so5641387pfb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 12:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=j2731q8TZbNlQF3Z/Bp/V56dsnSlRnzdVVRnH3OA0YQ=;
 b=u+KiM8rkKC+5ACEm+D37UxEKMAjZpNWVemeVjQ2DlN/fbrQljAtpcLea19wo9SJ3zZ
 tQD9Muiy3zxy6qdkHFEJTgb6g9vfXw5yNvNf50QdKL9StCfj1dQx4T74d2GFrwnesuve
 3y2hdJMz2NeBaNDZCPcbB1beX/WCymmiYkJ6ajWy16pHf2psCTbQaaxkhMwZNJUtUiiM
 A/kug+5FjorSKZRndPov3hQGuBYD8lAxS4Yu6dNmw6n5B1YOo1h0G6fUxDqT7uDBpSL2
 BZ3mKtdCY9SIwElxLu9t82mJ2t/CGRZYxVV3ZKd5e55Z+N8Yy9TCalBwiFSp2GgYyAw8
 Qg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j2731q8TZbNlQF3Z/Bp/V56dsnSlRnzdVVRnH3OA0YQ=;
 b=WPTk5Hi72ycQd3U3jh/CIy4eKjjZ4snCVJ5GZT+huINPKCTdDm/8Tc5XHm7PgC/EbB
 uLTKKj2E3FyeCLHqCkQ0NgkGgcpiqZU9TaHKbgRFMF2ajuNgYVEw9t8bg7JBO+sXZE/q
 O3jJfAkPlkcIH2I0UC8y28U3Iw8gEmxRjSxyPJc3WhXuOsIjHOSWtQnugfD5qE28JWoj
 gUGPqSoOJ3Elr+Cf50kOxfQBGw2jqmf3RD/6iccQM594vELy29iTYS+JKzGngic7SWLR
 4fivP4GTL6TnQc4sViHq4EozIxggBY3L71mHOhIxbHxzn1gaI1DbnZCKM0GJ7DAeJial
 ijaQ==
X-Gm-Message-State: AOAM530aJQmNHFcuBcBvqEAwvIilIo/k0UhfL27mEEjHkbxJIW2EJj09
 5sc8XrqSWLt54f1fI9PiRoMrOw==
X-Google-Smtp-Source: ABdhPJyUesfEHfZc8D0N1MFN1N5Jd1zZeoohNWHEhngaOfdDpGXggsJuQz2Z7OJYnatzZFTs893Z9A==
X-Received: by 2002:a63:cc12:: with SMTP id x18mr25062622pgf.140.1591126427475; 
 Tue, 02 Jun 2020 12:33:47 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m2sm2955054pjk.52.2020.06.02.12.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 12:33:46 -0700 (PDT)
Date: Tue, 2 Jun 2020 12:32:49 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200602193249.GC1799770@builder.lan>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
 <20200514193249.GE279327@builder.lan>
 <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
 <20200527110343.GD11111@willie-the-truck>
 <20200602110216.GA3354422@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602110216.GA3354422@ulmo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_123348_544182_584F630E 
X-CRM114-Status: GOOD (  36.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, John Stultz <john.stultz@linaro.org>,
 linux-tegra@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 02 Jun 04:02 PDT 2020, Thierry Reding wrote:

> On Wed, May 27, 2020 at 12:03:44PM +0100, Will Deacon wrote:
> > Hi John, Bjorn,
> > 
> > On Tue, May 26, 2020 at 01:34:45PM -0700, John Stultz wrote:
> > > On Thu, May 14, 2020 at 12:34 PM <bjorn.andersson@linaro.org> wrote:
> > > >
> > > > On Thu 27 Feb 18:57 PST 2020, Bjorn Andersson wrote:
> > > >
> > > > Rob, Will, we're reaching the point where upstream has enough
> > > > functionality that this is becoming a critical issue for us.
> > > >
> > > > E.g. Lenovo Yoga C630 is lacking this and a single dts patch to boot
> > > > mainline with display, GPU, WiFi and audio working and the story is
> > > > similar on several devboards.
> > > >
> > > > As previously described, the only thing I want is the stream mapping
> > > > related to the display controller in place, either with the CB with
> > > > translation disabled or possibly with a way to specify the framebuffer
> > > > region (although this turns out to mess things up in the display
> > > > driver...)
> > > >
> > > > I did pick this up again recently and concluded that by omitting the
> > > > streams for the USB controllers causes an instability issue seen on one
> > > > of the controller to disappear. So I would prefer if we somehow could
> > > > have a mechanism to only pick the display streams and the context
> > > > allocation for this.
> > > >
> > > >
> > > > Can you please share some pointers/insights/wishes for how we can
> > > > conclude on this subject?
> > > 
> > > Ping? I just wanted to follow up on this discussion as this small
> > > series is crucial for booting mainline on the Dragonboard 845c
> > > devboard. It would be really valuable to be able to get some solution
> > > upstream so we can test mainline w/o adding additional patches.
> > 
> > Sorry, it's been insanely busy recently and I haven't had a chance to think
> > about this on top of everything else. We're also carrying a hack in Android
> > for you :)
> > 
> > > The rest of the db845c series has been moving forward smoothly, but
> > > this set seems to be very stuck with no visible progress since Dec.
> > > 
> > > Are there any pointers for what folks would prefer to see?
> > 
> > I've had a chat with Robin about this. Originally, I was hoping that
> > people would all work together towards an idyllic future where firmware
> > would be able to describe arbitrary pre-existing mappings for devices,
> > irrespective of the IOMMU through which they master and Linux could
> > inherit this configuration. However, that hasn't materialised (there was
> > supposed to be an IORT update, but I don't know what happened to that)
> > and, in actual fact, the problem that you have on db845 is /far/ more
> > restricted than the general problem.
> 
> It doesn't sound to me like implementing platform-specific workarounds
> is a good long-term solution (especially since, according to Bjorn, they
> aren't as trivial to implement as it sounds). And we already have all
> the infrastructure in place to implement what you describe, so I don't
> see why we shouldn't do that. This patchset uses standard device tree
> bindings that were designed for exactly this kind of use-case.
> 

I think my results would imply that we would have to end up with (at
least) some special case of your proposal (i.e. we need a context bank
allocated).

> So at least for device-tree based boot firmware can already describe
> these pre-existing mappings. If something standard materializes for ACPI
> eventually I'm sure we can find ways to integrate that into whatever we
> come up with now for DT.
> 
> I think between Bjorn, John, Laurentiu and myself there's pretty broad
> consensus (correct me if I'm wrong, guys) that solving this via reserved
> memory regions is a good solution that works. So I think what's really
> missing is feedback on whether the changes proposed here or Laurentiu's
> updated proposal[0] are acceptable, and if not, what the preference is
> for getting something equivalent upstream.
> 

As described in my reply to your proposal, the one problem I ran into
was that I haven't figured out how to reliably "move" my display streams
from one mapping entry to another.

With the current scheme I see that their will either be gaps in time
with no mapping for my display, or multiple mappings.


The other thing I noticed in your proposal was that I have a whole bunch
of DT nodes with both iommus and memory-region properties that I really
don't care to set up mappings for, but I've not finalized my thoughts on
this causing actual problems...

> Just to highlight: the IOMMU framework already provides infrastructure
> to create direct mappings (via iommu_get_resv_regions(), called from
> iommu_create_device_direct_mappings()). I have patches that make use of
> this on Tegra210 and earlier where a non-ARM SMMU is used and where the
> IOMMU driver enables translations (and doesn't fault by default) only at
> device attachment time. That works perfectly using reserved-memory
> regions. Perhaps that infrastructure could be extended to cover the
> kinds of early mappings that we're discussing here. On the other hand it
> might be a bit premature at this point because the ARM SMMU is the only
> device that currently needs this, as far as I can tell.
> 

For Qualcomm we got patches picked up for 5.8 that will cause the
display controller to be attached with direct mapping, so I think all
missing now is the lack of stream mappings between arm-smmu probe and
display driver probe...

Regards,
Bjorn

> Thierry
> 
> [0]: https://patchwork.ozlabs.org/project/linux-tegra/list/?series=164853
> 
> > Could you please try hacking something along the following lines and see
> > how you get on? You may need my for-joerg/arm-smmu/updates branch for
> > all the pieces:
> > 
> >   1. Use the ->cfg_probe() callback to reserve the SMR/S2CRs you need
> >      "pinning" and configure for bypass.
> > 
> >   2. Use the ->def_domain_type() callback to return IOMMU_DOMAIN_IDENTITY
> >      for the display controller
> > 
> > I /think/ that's sufficient, but note that it differs from the current
> > approach because we don't end up reserving a CB -- bypass is configured
> > in the S2CR instead. Some invalidation might therefore be needed in
> > ->cfg_probe() after unhooking the CB.
> > 
> > Thanks, and please yell if you run into problems with this approach.
> > 
> > Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
