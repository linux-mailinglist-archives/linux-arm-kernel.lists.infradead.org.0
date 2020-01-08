Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA5713414C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/HHb4yL93OpvA11MBGegN4IgtYJTqqQcnheDSqk9LY=; b=lTw5jZjiSx3DA1
	kxhaBNaEutwSw14LY3npoT3BUtmfa9ztgpxpoNWR1arw41dVOzJTsMj3oqFmi2LrnHv7fmqSMPz2R
	5yrJfe1XhIdRAt+uxgtSE1nfi5eYqT/Tsm+HOVyOKz86DhOvOBdGEcS9YaC8PNLvm0ed7FvXPRpts
	EditAOzAkbsFbE9vtdqrN/d5ivg70yd/VVJOq6nhBYawWzrQx1kG9NM9VU+BK6T0V5YVvDGK6nj9r
	nPvbaDC/O8vrmRCbu94C75y5H4JRfPNmuNTDXtYPGQIgKjfexQOo9oXRt5trdQUI0Z3Z/rlJWFbj2
	1755Y6+HLXWKYnBlYV/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9yq-0003bj-Pw; Wed, 08 Jan 2020 11:58:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9yl-0003bH-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:58:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60C4E206DA;
 Wed,  8 Jan 2020 11:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578484706;
 bh=vw48TG6VhKIFdgjzyzo2ERgtSK1lHZF/IJpQOpT3km4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U6CgaRzqEC7uwX/YgsDOLCpB46/uXVTTPUc/oyYmrkfgGYqhWutbtf4LXtKtxtVSj
 OtzHDVwriyEeF9LJ6Aacoq2DL1EtSwJSczVnOd0pqx3u2snfzUvJggtStlN2pWWigE
 pwc5yrVc6FLtGiW1dyK5CYwqWOCN7DxOzrepsBRk=
Date: Wed, 8 Jan 2020 11:58:17 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore
 full SPE profiling buffer controls
Message-ID: <20200108115816.GB15861@willie-the-truck>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-10-andrew.murray@arm.com>
 <20191221141325.5a177343@why>
 <20200107151328.GW42593@e119886-lin.cambridge.arm.com>
 <fc222fef381f4ada37966db0a1ec314a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fc222fef381f4ada37966db0a1ec314a@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_035827_433090_53A9C533 
X-CRM114-Status: GOOD (  28.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, kvm@vger.kernel.org,
 Catalin Marinas <Catalin.Marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sudeep Holla <Sudeep.Holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 11:17:16AM +0000, Marc Zyngier wrote:
> On 2020-01-07 15:13, Andrew Murray wrote:
> > On Sat, Dec 21, 2019 at 02:13:25PM +0000, Marc Zyngier wrote:
> > > On Fri, 20 Dec 2019 14:30:16 +0000
> > > Andrew Murray <andrew.murray@arm.com> wrote:
> > > 
> > > [somehow managed not to do a reply all, re-sending]
> > > 
> > > > From: Sudeep Holla <sudeep.holla@arm.com>
> > > >
> > > > Now that we can save/restore the full SPE controls, we can enable it
> > > > if SPE is setup and ready to use in KVM. It's supported in KVM only if
> > > > all the CPUs in the system supports SPE.
> > > >
> > > > However to support heterogenous systems, we need to move the check if
> > > > host supports SPE and do a partial save/restore.
> > > 
> > > No. Let's just not go down that path. For now, KVM on heterogeneous
> > > systems do not get SPE.
> > 
> > At present these patches only offer the SPE feature to VCPU's where the
> > sanitised AA64DFR0 register indicates that all CPUs have this support
> > (kvm_arm_support_spe_v1) at the time of setting the attribute
> > (KVM_SET_DEVICE_ATTR).
> > 
> > Therefore if a new CPU comes online without SPE support, and an
> > existing VCPU is scheduled onto it, then bad things happen - which I
> > guess
> > must have been the intention behind this patch.
> 
> I guess that was the intent.
> 
> > > If SPE has been enabled on a guest and a CPU
> > > comes up without SPE, this CPU should fail to boot (same as exposing a
> > > feature to userspace).
> > 
> > I'm unclear as how to prevent this. We can set the FTR_STRICT flag on
> > the sanitised register - thus tainting the kernel if such a non-SPE CPU
> > comes online - thought that doesn't prevent KVM from blowing up. Though
> > I don't believe we can prevent a CPU coming up. At the moment this is
> > my preferred approach.
> 
> I'd be OK with this as a stop-gap measure. Do we know of any existing
> design where only half of the CPUs have SPE?

No, but given how few CPUs implement SPE I'd say that this configuration
is inevitable. I certainly went out of my way to support it in the driver.

> > Looking at the vcpu_load and related code, I don't see a way of saying
> > 'don't schedule this VCPU on this CPU' or bailing in any way.
> 
> That would actually be pretty easy to implement. In vcpu_load(), check
> that that the CPU physical has SPE. If not, raise a request for that vcpu.
> In the run loop, check for that request and abort if raised, returning
> to userspace.
> 
> Userspace can always check /sys/devices/arm_spe_0/cpumask and work out
> where to run that particular vcpu.

It's also worth considering systems where there are multiple implementations
of SPE in play. Assuming we don't want to expose this to a guest, then the
right interface here is probably for userspace to pick one SPE
implementation and expose that to the guest. That fits with your idea above,
where you basically get an immediate exit if we try to schedule a vCPU onto
a CPU that isn't part of the SPE mask.

> > One solution could be to allow scheduling onto non-SPE VCPUs but wrap
> > the
> > SPE save/restore code in a macro (much like kvm_arm_spe_v1_ready) that
> > reads the non-sanitised feature register. Therefore we don't go bang,
> > but
> > we also increase the size of any black-holes in SPE capturing. Though
> > this
> > feels like something that will cause grief down the line.
> > 
> > Is there something else that can be done?
> 
> How does userspace deal with this? When SPE is only available on half of
> the CPUs, how does perf work in these conditions?

Not sure about userspace, but the kernel driver works by instantiating an
SPE PMU instance only for the CPUs that have it and then that instance
profiles for only those CPUs. You also need to do something similar if
you had two CPU types with SPE, since the SPE configuration is likely to be
different between them.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
