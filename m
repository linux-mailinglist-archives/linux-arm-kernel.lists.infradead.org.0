Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661201358C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X/L4+MUoZInf3Tg96ysRMqMvvvDrnky7K/ITJ0Iq44=; b=WluVDYuAO1mxJV
	YAatYE0MBQJzpYw7naFfrPrZvKy8jqaNOBHXYHWpSekLMvtxTqldxc1QgB/Zez9GZMit+Q/5nPy4f
	fQFgF7BerdUJa1SKYxdUf5p9qis2BtX2E6fCKZQ+OM+6RAoprpdhYP0nLX+yfrvElhPY3TvKRcHbr
	FWVOZgR9Hc4wS6Et7QVcgeLHpoaDtUYpzDHtbla8YG9tYwIAByQIOKSaq6bD1/NI79rTp6AtrqXai
	C8glkYbRmf/d+DOcEqoJzg2s2MbsYbg/3AGpIqwLA2ucn4YBcjILX7b/39hz8zpbSw0ZAgZu8570W
	3TaxRKG5DDO6FEhtxbKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWVv-0005jB-Lb; Thu, 09 Jan 2020 12:02:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWVV-0005SI-HB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:01:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5177F2075D;
 Thu,  9 Jan 2020 12:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578571304;
 bh=wykY2q8q14HRcxcgRn9igHW61k+IWSYOGFm/09lGxGE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zJiKDhH8Jx3JQmDdSWbVx+GYxcI51ag8Rfy+g+aMsGE5xIQopgNubFHIlCNU3SpiT
 3ZiibELRBbcmZeS9pO1hkBHiJciD66To1K1kvN+0cl6sgfK69LyHvTvCTSIhGiWFdY
 c0z+BLx63ADXa50pFBUBtUvYV7miN+DENeqJp7kU=
Date: Thu, 9 Jan 2020 12:01:39 +0000
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore
 full SPE profiling buffer controls
Message-ID: <20200109120139.GA7512@willie-the-truck>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-10-andrew.murray@arm.com>
 <20191221141325.5a177343@why>
 <20200107151328.GW42593@e119886-lin.cambridge.arm.com>
 <fc222fef381f4ada37966db0a1ec314a@kernel.org>
 <20200108115816.GB15861@willie-the-truck>
 <745529f7e469b898b74dfc5153e3daf6@kernel.org>
 <20200108131020.GB16658@willie-the-truck>
 <20200109112336.GY42593@e119886-lin.cambridge.arm.com>
 <20200109112504.GZ42593@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109112504.GZ42593@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_040145_613950_5B537B2F 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <maz@kernel.org>, kvm@vger.kernel.org,
 Catalin Marinas <Catalin.Marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sudeep Holla <Sudeep.Holla@arm.com>, kvmarm <kvmarm@lists.cs.columbia.edu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 11:25:04AM +0000, Andrew Murray wrote:
> On Thu, Jan 09, 2020 at 11:23:37AM +0000, Andrew Murray wrote:
> > On Wed, Jan 08, 2020 at 01:10:21PM +0000, Will Deacon wrote:
> > > On Wed, Jan 08, 2020 at 12:36:11PM +0000, Marc Zyngier wrote:
> > > > On 2020-01-08 11:58, Will Deacon wrote:
> > > > > On Wed, Jan 08, 2020 at 11:17:16AM +0000, Marc Zyngier wrote:
> > > > > > On 2020-01-07 15:13, Andrew Murray wrote:
> > > > > > > Looking at the vcpu_load and related code, I don't see a way of saying
> > > > > > > 'don't schedule this VCPU on this CPU' or bailing in any way.
> > > > > > 
> > > > > > That would actually be pretty easy to implement. In vcpu_load(), check
> > > > > > that that the CPU physical has SPE. If not, raise a request for that
> > > > > > vcpu.
> > > > > > In the run loop, check for that request and abort if raised, returning
> > > > > > to userspace.
> > 
> > I hadn't really noticed the kvm_make_request mechanism - however it's now
> > clear how this could be implemented.
> > 
> > This approach gives responsibility for which CPUs should be used to userspace
> > and if userspace gets it wrong then the KVM_RUN ioctl won't do very much.
> > 
> > 
> > > > > > 
> > > > > > Userspace can always check /sys/devices/arm_spe_0/cpumask and work out
> > > > > > where to run that particular vcpu.
> > > > > 
> > > > > It's also worth considering systems where there are multiple
> > > > > implementations
> > > > > of SPE in play. Assuming we don't want to expose this to a guest, then
> > > > > the
> > > > > right interface here is probably for userspace to pick one SPE
> > > > > implementation and expose that to the guest.
> > 
> > If I understand correctly then this implies the following:
> > 
> >  - If the host userspace indicates it wants support for SPE in the guest (via 
> >    KVM_SET_DEVICE_ATTR at start of day) - then we should check in vcpu_load that
> >    the minimum version of SPE is present on the current CPU. 'minimum' because
> >    we don't know why userspace has selected the given cpumask.
> > 
> >  - Userspace can get it wrong, i.e. it can create a CPU mask with CPUs that
> >    have SPE with differing versions. If it does, and all CPUs have some form of
> >    SPE then errors may occur in the guest. Perhaps this is OK and userspace
> >    shouldn't get it wrong?
> 
> Actually this could be guarded against by emulating the ID_AA64DFR0_EL1 such to
> cap the version to the minimum SPE version - if absolutely required.

The problem is, it's not as simple as checking a version field. Instead,
you'd have to look at all of the ID registers for SPE so that you don't end
up with funny differences such as minimum sampling interval, or hardware RNG
support. Ultimately though, *much* of the trace is going to be describing
IMP DEF stuff because it's so micro-architectural, and there's very little
you can do to hide that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
