Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8036648191
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drmR123sd98Fuy23i/d9kU9JFiHK04HUkn7N0jtNwHk=; b=fFKbNp3vOkJ947
	3m+LXWRG8o5HMwFtZ7liQR8590g0PU+2DN991C+j1JSza0yJ1iHK2QUgOMbRwbNlr9zXCOEXt197g
	W6TXeQjgZuszGWZaDtIEu2HzoK7jyIKBeoGLu8ns3lXUPqIBJp3ZdgEBUAQl4UPtnBDAVH4VGMXPh
	JKhnpTEOpnRMsf7puYxOTMEPiECITlOL9G4HAjml97bfSycPhe40STV08IHsgClPpIr23/Sl/wo7D
	YgO44P4xGrhNW/L8HxDZ8Va73IFcvYbYpwKR7QViBXXBIOe9KWc2V3fZuAajBG7/n2XaZ3Frnt63K
	WlrgbZFiqFnPaWRa84JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqTY-0007Zc-Pr; Mon, 17 Jun 2019 12:11:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqTP-0007Z4-QI
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:10:57 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 252A82084D;
 Mon, 17 Jun 2019 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560773454;
 bh=pAmixHP+Rk/P6yHQsB5WBMUJpjuBXLP2sDa10q1VBvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VLSgi0WWOgH2nFbVnYYt/lXpgkDb+uTU8eZqxnOpmplQHYTfIcK2lhQW4F8DPqFxc
 r0kDm9Xm+SmXBVKUhQV3iFbCpWM7lBbGy5v4L2BdzCE/KX+4bDd+KP2pA3/lw0t/sI
 GzKguTF/VdGVAhiGIb2FOBoxFZT4pdFconoseSaM=
Date: Mon, 17 Jun 2019 14:10:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 00/45] V4.4 backport of arm64 Spectre patches
Message-ID: <20190617121052.GA1456@kroah.com>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_051055_874353_F96E89AF 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 08:37:43AM +0530, Viresh Kumar wrote:
> Hello,
> 
> Here is an attempt to backport arm64 spectre patches to v4.4 stable
> tree.
> 
> I have started this backport with Mark Rutland's backport of Spectre to
> 4.9 [1] and tried applying the upstream version of them over 4.4 and
> resolved conflicts by checking how they have been resolved in 4.9.
> 
> I had to pick few extra upstream patches to avoid unnecessary conflicts
> (upstream commit ids mentioned):
> 
>   a842789837c0 arm64: remove duplicate macro __KERNEL__ check
>   64f8ebaf115b mm/kasan: add API to check memory regions
>   bffe1baff5d5 arm64: kasan: instrument user memory access API
>   92406f0cc9e3 arm64: cpufeature: Add scope for capability check
>   9eb8a2cdf65c arm64: cputype info for Broadcom Vulcan
>   0d90718871fe arm64: cputype: Add MIDR values for Cavium ThunderX2 CPUs
>   98dd64f34f47 ARM: 8478/2: arm/arm64: add arm-smccc
> 
> 
> I had to drop few patches as well as they weren't getting applied
> properly due to missing files/features (upstream commit id mentioned):
> 
>   93f339ef4175 arm64: cpufeature: __this_cpu_has_cap() shouldn't stop early
>   3c31fa5a06b4 arm64: Run enable method for errata work arounds on late CPUs
>   6840bdd73d07 arm64: KVM: Use per-CPU vector when BP hardening is enabled
>   90348689d500 arm64: KVM: Make PSCI_VERSION a fast path
> 
> 
> Since v4.4 doesn't contain arch/arm/kvm/hyp/switch.c file, changes for
> it are dropped from some of the patches. The commit log of specific
> patches are updated with this information.
> 
> Also for commit id (from 4.9 stable):
>   c24c205d2528 arm64: Add ARM_SMCCC_ARCH_WORKAROUND_1 BP hardening support
> 
> I have dropped arch/arm64/crypto/sha256-core.S and sha512-core.S files
> as they weren't part of the upstream commit. Not sure why it was
> included by Mark as the commit log doesn't provide any reasoning for it.
> 
> The patches in this series are pushed here [2].
> 
> This is only build/boot tested by me as I don't have access to the
> required test-suite which can verify spectre mitigations.

Thanks for doing this work.

> @Julien: Can you please help reviewing / testing them ? Thanks.

Julien, I need yours, or someone from ARM to sign off on these patches
as working properly before I can accept them.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
