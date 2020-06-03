Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E771ECE0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Huc4UfJxc06vSEs/v2gGX82muY/MVeyjzpuV7QnfITM=; b=H1SBD2iPpi4Et9
	Wv2aeWPwjKI3e6DtFR4YHin59RYZBr3bpUBke5vUV3VTRLY2AEj/m82Tn/ZVX913qyFOC+xN/0HjB
	hFiwrXJVGhyFHb/fHqoucRyH9Na0nfP6l+Mte++pdx3KWwnHxL8My/iJj5j7Znt+CQSpITuNKotzy
	8Qf+hmhNPlwKG64Lwu+iX3RLDMb43HF4QbWE1an5SpOarn+l3jPE3njLnmqaPnt9xcB65auJmHODb
	JEScTAP8WxrP6kyeairlUisJtEpiqj+YMFG32iKn6SFyQmdiPrKuzUxuaaaf/qcD8zktctpSe3vmO
	eNtrCuPFTtewfwlf4WnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRJe-0008Se-IP; Wed, 03 Jun 2020 11:12:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRJV-0008Ru-N9
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:12:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30E882067B;
 Wed,  3 Jun 2020 11:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591182724;
 bh=Xza7Kf3c+nc+4WelfKWntJ9cpTKEbMrpBSWK718FdBc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NANcdNB0vCZOqbyeeJf8M2LCgAsngzmzsHvZLb86tzCuCPkSpOIa/lju/l9/CcnG/
 CYfCtPG9X5ls7k40e8pb3GV5gopQoeV3XY4yGLR/+ZEZ3LWxRkTgd5ynPDZhnUNsPu
 24iaoPVLFdOoXINYwwq+YkYBnVvIjrrZnikV25og=
Date: Wed, 3 Jun 2020 12:11:59 +0100
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200603111159.GA8408@willie-the-truck>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
 <20200514193249.GE279327@builder.lan>
 <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
 <20200527110343.GD11111@willie-the-truck>
 <20200602063210.GT11847@yoga>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602063210.GT11847@yoga>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_041205_798764_EE1FCFA7 
X-CRM114-Status: GOOD (  34.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Thierry Reding <thierry.reding@gmail.com>,
 John Stultz <john.stultz@linaro.org>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 11:32:10PM -0700, Bjorn Andersson wrote:
> On Wed 27 May 04:03 PDT 2020, Will Deacon wrote:
> 
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
> 
> Thanks for taking the time to get back to us on this!
> 
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
> > 
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
> 
> This sounded straight forward and cleaner, so I implemented it...
> 
> Unfortunately the hypervisor is playing tricks on me when writing to
> S2CR registers:
> - TRANS writes lands as requested
> - BYPASS writes ends up in the register as requested, with type FAULT
> - FAULT writes are ignored
> 
> In other words, the Qualcomm firmware prevents us from relying on
> marking the relevant streams as BYPASS type.

Is this for all S2CR registers, or only the ones in use by the display
controller? Is there any scope for stopping the hypervisor from doing this?

It makes it really difficult for the driver when the hardware is emulated
in a way that doesn't match the architecture...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
