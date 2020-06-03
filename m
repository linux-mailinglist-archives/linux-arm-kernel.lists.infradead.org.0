Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765C81ED4D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZtJOaIOlPZYtVw8ZxYUbBcO66yE92I2uK9uyOMZdRc=; b=S747ArqXctHzLm
	s16lpmnJF9yA2AzadUIMcKcs+gJvs/5ACIaLx3bxw6ieLamKrxppq4xvhDlqgvkzVPnYZcXydo+dm
	hZBUa707rSzIFd36ZoDtFmX7e/m/dx9I1N6xOqgOSK2vFHsMq2JVuTjIiI0AS9Lcehc5aOvu4FDME
	6B7KQefAazlWE0GOAmoxujyRbuCTzVOnV/seg06nG9NInVdSdpnUJ2RkzFgqnOW0k/Tm8PTbOET4V
	YjWEF8wJC2s3fnphdhKZA7mIac0GHvLdaUWbiazTDx0ny79CHTTQ4+VxTGJgLS22p4tqEMxZZi8gg
	CW5VaSbcRcind2JfJkew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgX1C-0004Nj-Ek; Wed, 03 Jun 2020 17:17:34 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgX15-0004NJ-VX
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:17:29 +0000
Received: by mail-qk1-x743.google.com with SMTP id n11so2941277qkn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 10:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tca5PL5G3jMZ5q+yoTDdNeUHtiqDxoLd+E1VkbqOCao=;
 b=ZrySjX+VU3OMH1iSsB4egs/hSq6OcZaGoLE7o62quR4uxuVCmYKlvsdlqjU6TqXmKJ
 Wfl8UIuXwHuGv8wOn9whjYmBCFNcgQgM2Mt1aZ/+G6rEI7Tcf0SN3yFfgXU9eP/JmqA6
 BNCzSCSR+BpiQR6JbFPo/7n2yWADBFjYxyYziaoUe8OzVcXiOwuBMp3R7hLeMarVX/T+
 +jYkNyfRQdvWLK2OjsC4GTxlSTvXHm4j9vXeVfVpLZIMAIch9aiOi10j2OfuPsYXl3va
 5WzjmzUsGxGiuzML4/2j7+U009Th2+QHzf7oRgU9PZfOcmgI/avAqjlWKHlTZ7ADiBrD
 Zc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tca5PL5G3jMZ5q+yoTDdNeUHtiqDxoLd+E1VkbqOCao=;
 b=NMWp83Bw3PAvIXamrFIa+Pzl8S+m8bfgX5XKIgDa/+kZ4eOMeOULJciYyCLqlT4KIU
 qIJvtGN+1yaicSRTeb0dBgk1sGymbO/iBJdAT5k45iSENrH3h6YeRZGIs/S+2wCbGlS/
 /I6Z2xb87lXDsFq4djlQPPt7TIWRU63GKQEuYoq0QGceBuJMLHZrGiK02UXTkXZLmW31
 p7kZ3Uq583BSd6aKDppTBHkZTUbWKeWTwe8k+dcMVz+WBKJtX7NMZ0SxjsRDjYjU+V8x
 BDZAze8RqpopYSSezj1rmjJHnVrSBBmCEIUUMFk/KXDbL5pPGbZJsIwJD3b575gJ1zbc
 Zi+Q==
X-Gm-Message-State: AOAM533/Io/FmwfOIp/qbJFwSGmf3qcGlJ/xJLLd8FllyOt2kQVuWJSd
 96rwPXF+hNo0FnMio+u/91MEog==
X-Google-Smtp-Source: ABdhPJzr+sfCjAiiPvYMFHYu/Lq221Ix+g6cd5j0fefoqQHjk7ENZK/CkBW/NAMM0IO4sJi7Ae8Lgw==
X-Received: by 2002:a05:620a:1525:: with SMTP id
 n5mr713015qkk.328.1591204643913; 
 Wed, 03 Jun 2020 10:17:23 -0700 (PDT)
Received: from yoga ([2607:fb90:84f0:6dc6:b843:e3ff:fe62:cb58])
 by smtp.gmail.com with ESMTPSA id p22sm2507665qtc.7.2020.06.03.10.17.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 10:17:22 -0700 (PDT)
Date: Wed, 3 Jun 2020 10:17:17 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200603171717.GV11847@yoga>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
 <20200514193249.GE279327@builder.lan>
 <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
 <20200527110343.GD11111@willie-the-truck>
 <20200602110216.GA3354422@ulmo>
 <20200602193249.GC1799770@builder.lan>
 <20200603102446.GA3478467@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603102446.GA3478467@ulmo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_101728_021018_1E65AFEF 
X-CRM114-Status: GOOD (  46.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed 03 Jun 03:24 PDT 2020, Thierry Reding wrote:

> On Tue, Jun 02, 2020 at 12:32:49PM -0700, Bjorn Andersson wrote:
> > On Tue 02 Jun 04:02 PDT 2020, Thierry Reding wrote:
> > 
> > > On Wed, May 27, 2020 at 12:03:44PM +0100, Will Deacon wrote:
> > > > Hi John, Bjorn,
> > > > 
> > > > On Tue, May 26, 2020 at 01:34:45PM -0700, John Stultz wrote:
> > > > > On Thu, May 14, 2020 at 12:34 PM <bjorn.andersson@linaro.org> wrote:
> > > > > >
> > > > > > On Thu 27 Feb 18:57 PST 2020, Bjorn Andersson wrote:
> > > > > >
> > > > > > Rob, Will, we're reaching the point where upstream has enough
> > > > > > functionality that this is becoming a critical issue for us.
> > > > > >
> > > > > > E.g. Lenovo Yoga C630 is lacking this and a single dts patch to boot
> > > > > > mainline with display, GPU, WiFi and audio working and the story is
> > > > > > similar on several devboards.
> > > > > >
> > > > > > As previously described, the only thing I want is the stream mapping
> > > > > > related to the display controller in place, either with the CB with
> > > > > > translation disabled or possibly with a way to specify the framebuffer
> > > > > > region (although this turns out to mess things up in the display
> > > > > > driver...)
> > > > > >
> > > > > > I did pick this up again recently and concluded that by omitting the
> > > > > > streams for the USB controllers causes an instability issue seen on one
> > > > > > of the controller to disappear. So I would prefer if we somehow could
> > > > > > have a mechanism to only pick the display streams and the context
> > > > > > allocation for this.
> > > > > >
> > > > > >
> > > > > > Can you please share some pointers/insights/wishes for how we can
> > > > > > conclude on this subject?
> > > > > 
> > > > > Ping? I just wanted to follow up on this discussion as this small
> > > > > series is crucial for booting mainline on the Dragonboard 845c
> > > > > devboard. It would be really valuable to be able to get some solution
> > > > > upstream so we can test mainline w/o adding additional patches.
> > > > 
> > > > Sorry, it's been insanely busy recently and I haven't had a chance to think
> > > > about this on top of everything else. We're also carrying a hack in Android
> > > > for you :)
> > > > 
> > > > > The rest of the db845c series has been moving forward smoothly, but
> > > > > this set seems to be very stuck with no visible progress since Dec.
> > > > > 
> > > > > Are there any pointers for what folks would prefer to see?
> > > > 
> > > > I've had a chat with Robin about this. Originally, I was hoping that
> > > > people would all work together towards an idyllic future where firmware
> > > > would be able to describe arbitrary pre-existing mappings for devices,
> > > > irrespective of the IOMMU through which they master and Linux could
> > > > inherit this configuration. However, that hasn't materialised (there was
> > > > supposed to be an IORT update, but I don't know what happened to that)
> > > > and, in actual fact, the problem that you have on db845 is /far/ more
> > > > restricted than the general problem.
> > > 
> > > It doesn't sound to me like implementing platform-specific workarounds
> > > is a good long-term solution (especially since, according to Bjorn, they
> > > aren't as trivial to implement as it sounds). And we already have all
> > > the infrastructure in place to implement what you describe, so I don't
> > > see why we shouldn't do that. This patchset uses standard device tree
> > > bindings that were designed for exactly this kind of use-case.
> > > 
> > 
> > I think my results would imply that we would have to end up with (at
> > least) some special case of your proposal (i.e. we need a context bank
> > allocated).
> 
> I wasn't talking about implementation details, but rather about the
> surrounding infrastructure. It seemed like Will was suggesting that
> there's no way of conveying what memory regions to direct-map from
> the firmware to the kernel. But that really isn't the problem here,
> is it? What we're really looking for is how to take what we have in
> device tree and use it in the ARM SMMU driver to create an early
> mapping that will stay in place until a device has been properly
> attached to the IOMMU domain.
> 

I agree.

We do have the iommu properties from our display node and we typically
do have a reserved-memory region for the existing framebuffer that we
want to associate with those properties.

The one exception is on devices targeted to run Windows, where the
memory region is passed to the kernel using UEFI GOP.

But as you say, the information is available to the kernel already.

> > > So at least for device-tree based boot firmware can already describe
> > > these pre-existing mappings. If something standard materializes for ACPI
> > > eventually I'm sure we can find ways to integrate that into whatever we
> > > come up with now for DT.
> > > 
> > > I think between Bjorn, John, Laurentiu and myself there's pretty broad
> > > consensus (correct me if I'm wrong, guys) that solving this via reserved
> > > memory regions is a good solution that works. So I think what's really
> > > missing is feedback on whether the changes proposed here or Laurentiu's
> > > updated proposal[0] are acceptable, and if not, what the preference is
> > > for getting something equivalent upstream.
> > > 
> > 
> > As described in my reply to your proposal, the one problem I ran into
> > was that I haven't figured out how to reliably "move" my display streams
> > from one mapping entry to another.
> > 
> > With the current scheme I see that their will either be gaps in time
> > with no mapping for my display, or multiple mappings.
> 
> I think you would inevitably end up with two mappings for a transitional
> period while you prepare the final mapping that you want to switch to.
> 

I think that's fine, I saw that there's a bit to configure if multiple
SMR matches is considered a fault or not, so I will verify if this is
what causes the faults I saw on one of my platforms and if I can change
it.

I still would need that we ensure that we don't have lapses in time
where we're lacking mappings among the SMRs.

> > The other thing I noticed in your proposal was that I have a whole bunch
> > of DT nodes with both iommus and memory-region properties that I really
> > don't care to set up mappings for, but I've not finalized my thoughts on
> > this causing actual problems...
> 
> Can you be more specific? It'd be useful to understand all of the
> existing uses of reserved memory regions in order to make sure we
> accomodate all of them.
> 

I have reserved-memory regions for a number of co-processors, to
facilitate static access configuration, as such I ended up with having
100+MB of various DSP memory mapped into the temporary context.

> I'd be surprised, though, if setting up mappings for any of these
> regions would actually cause breakage. If a device tree node has a
> memory-region property it means that this memory region is eventually
> going to be used by the device and if the device tree node also has an
> iommus property it means that it's meant to use the IOMMU for
> translating memory accesses. It's therefore very likely that the memory
> region will need to be mapped. Whether it needs to be a direct mapping
> or not might be worth having a discussion about.
> 

Right, I think that before any of these are actually used we will have a
device attached and the region properly mapped (as is done today
already).

> > > Just to highlight: the IOMMU framework already provides infrastructure
> > > to create direct mappings (via iommu_get_resv_regions(), called from
> > > iommu_create_device_direct_mappings()). I have patches that make use of
> > > this on Tegra210 and earlier where a non-ARM SMMU is used and where the
> > > IOMMU driver enables translations (and doesn't fault by default) only at
> > > device attachment time. That works perfectly using reserved-memory
> > > regions. Perhaps that infrastructure could be extended to cover the
> > > kinds of early mappings that we're discussing here. On the other hand it
> > > might be a bit premature at this point because the ARM SMMU is the only
> > > device that currently needs this, as far as I can tell.
> > > 
> > 
> > For Qualcomm we got patches picked up for 5.8 that will cause the
> > display controller to be attached with direct mapping, so I think all
> > missing now is the lack of stream mappings between arm-smmu probe and
> > display driver probe...
> 
> Can you point me at those patches? I'd like to look at them and see if
> they match what I have planned for Tegra or if we can somehow converge
> on a common scheme.
> 

You can find this in:

0e764a01015d ("iommu/arm-smmu: Allow client devices to select direct mapping")

Which conceptually follows what is done on x86 machines.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
