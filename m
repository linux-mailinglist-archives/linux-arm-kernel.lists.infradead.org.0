Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF4D13437F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qq/m5rULnNIJbAU0VH2rTXq4kQeP4YgVXFNG83c6xWc=; b=DbxZQwHtZkqjmr
	PNFM55ywY/pU91fGrvE8IPhGpa/saBI2aKcDsI9/P5Ct4JjhbE9uC6HsKJpuOc9+Apao5THggiVF6
	KrSf8AqkIqZh5liC118aRrhEKIvgTQDnfh4fCguTtpEAe9kPn+fZ6NVuCVOM1aDkJlfq9ubAGKyq5
	nL18hTjyHFIbCiw5nwu2kbtIeLEIiAlJPZt7f9+/BZJrZ95k/TACiTbKDlkyhSZB96W23Frfryt1E
	7KFUsL5xRdrWgeBEgvyhII119mL6XsEOMC4PslIAl3KuWUZ8dxyZ10NxAK6oNvFKtTbZ+9ufksZhN
	vHrBIh9CpbKT4hfoLF5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipB6f-0000lE-VL; Wed, 08 Jan 2020 13:10:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipB6W-0000jC-62
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:10:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C341205F4;
 Wed,  8 Jan 2020 13:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578489031;
 bh=YWAjQGTx7BqSwb3NRHw94BdAJ9TevBImfPuZnNeApRg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vRA4td7eQhe14Dw6kpIUT5AKCpVJ8eThPzcv196v8clU/e8IxC95MhZ6KcIvPoIeX
 qVPjTikfCVOQRgH1/xQ6KhfVPAKUb+1NEa9acZrQpZjUEFj8shK2R3dmC/aeYUOF/Q
 BAC1G1isw5RJkjwuJG3xXL5lg7An+xfY0JjHe77c=
Date: Wed, 8 Jan 2020 13:10:21 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore
 full SPE profiling buffer controls
Message-ID: <20200108131020.GB16658@willie-the-truck>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-10-andrew.murray@arm.com>
 <20191221141325.5a177343@why>
 <20200107151328.GW42593@e119886-lin.cambridge.arm.com>
 <fc222fef381f4ada37966db0a1ec314a@kernel.org>
 <20200108115816.GB15861@willie-the-truck>
 <745529f7e469b898b74dfc5153e3daf6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <745529f7e469b898b74dfc5153e3daf6@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_051032_282836_FC3EFAB1 
X-CRM114-Status: GOOD (  27.88  )
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

On Wed, Jan 08, 2020 at 12:36:11PM +0000, Marc Zyngier wrote:
> On 2020-01-08 11:58, Will Deacon wrote:
> > On Wed, Jan 08, 2020 at 11:17:16AM +0000, Marc Zyngier wrote:
> > > On 2020-01-07 15:13, Andrew Murray wrote:
> > > > Looking at the vcpu_load and related code, I don't see a way of saying
> > > > 'don't schedule this VCPU on this CPU' or bailing in any way.
> > > 
> > > That would actually be pretty easy to implement. In vcpu_load(), check
> > > that that the CPU physical has SPE. If not, raise a request for that
> > > vcpu.
> > > In the run loop, check for that request and abort if raised, returning
> > > to userspace.
> > > 
> > > Userspace can always check /sys/devices/arm_spe_0/cpumask and work out
> > > where to run that particular vcpu.
> > 
> > It's also worth considering systems where there are multiple
> > implementations
> > of SPE in play. Assuming we don't want to expose this to a guest, then
> > the
> > right interface here is probably for userspace to pick one SPE
> > implementation and expose that to the guest. That fits with your idea
> > above,
> > where you basically get an immediate exit if we try to schedule a vCPU
> > onto
> > a CPU that isn't part of the SPE mask.
> 
> Then it means that the VM should be configured with a mask indicating
> which CPUs it is intended to run on, and setting such a mask is mandatory
> for SPE.

Yeah, and this could probably all be wrapped up by userspace so you just
pass the SPE PMU name or something and it grabs the corresponding cpumask
for you.

> > > > One solution could be to allow scheduling onto non-SPE VCPUs but wrap
> > > > the
> > > > SPE save/restore code in a macro (much like kvm_arm_spe_v1_ready) that
> > > > reads the non-sanitised feature register. Therefore we don't go bang,
> > > > but
> > > > we also increase the size of any black-holes in SPE capturing. Though
> > > > this
> > > > feels like something that will cause grief down the line.
> > > >
> > > > Is there something else that can be done?
> > > 
> > > How does userspace deal with this? When SPE is only available on
> > > half of
> > > the CPUs, how does perf work in these conditions?
> > 
> > Not sure about userspace, but the kernel driver works by instantiating
> > an
> > SPE PMU instance only for the CPUs that have it and then that instance
> > profiles for only those CPUs. You also need to do something similar if
> > you had two CPU types with SPE, since the SPE configuration is likely to
> > be
> > different between them.
> 
> So that's closer to what Andrew was suggesting above (running a guest on a
> non-SPE CPU creates a profiling black hole). Except that we can't really
> run a SPE-enabled guest on a non-SPE CPU, as the SPE sysregs will UNDEF
> at EL1.

Right. I wouldn't suggest the "black hole" approach for VMs, but it works
for userspace so that's why the driver does it that way.

> Conclusion: we need a mix of a cpumask to indicate which CPUs we want to
> run on (generic, not-SPE related), and a check for SPE-capable CPUs.
> If any of these condition is not satisfied, the vcpu exits for userspace
> to sort out the affinity.
> 
> I hate heterogeneous systems.

They hate you too ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
