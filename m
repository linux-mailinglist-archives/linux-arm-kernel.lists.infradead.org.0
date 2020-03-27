Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91337195BBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5s4es8umLkHSVxiPC2vyMJjGujYhYagoO5T8urPGTo=; b=WSYetWWsSOmZal
	qi4+JEcWbNLv5EFYaCg/+U54QGqgjPakQQwr2GzWyaS7BN84Y0nMFa3YT4fczz0x+BMg3ThU4Ug1j
	vpd40bzPr7mDAOLyqSS5R3K6Qetn/GTH9PmfaBgAjTu8RrgDx5Mcn4d6EgNmHp8/PY3yJ64wqJS5I
	+j40cQv+/4levIzg0UA448OKthNqalnkOTo5hTS+p0uV7o9QYeYhU5XVbCUCaxRArY3vjVO0Mum0e
	yk2PdU4lQ7f8CLDvF1tm/eJg+bs61QoQkQ+XfTjft++00k63CX7PTkVE1s95kPGHpxjmDTRHb1H+K
	HIIpAWeVnUvLDzkK5wzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsKk-0006dN-Lk; Fri, 27 Mar 2020 16:59:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsKc-0006cz-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:59:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88AE8206E6;
 Fri, 27 Mar 2020 16:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585328381;
 bh=MvORsB1dXvIVi4W8/BF44aEMuNPoatu951ma4R+Bhj4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z0W/GFfjVghNGtgiyX/lazsrRNOG8cF7ZTfPdUa9Whbcb6+vCtT+MV7NU3NJGMMPS
 YS5wzuPN1pf0X4Le2OxCBz+OVqoBQWXP4l6++a732vJdT5WJKVUKgYNt1IMmiRiJ7K
 bVYUEumFyaZ7E+SvP9FdCNdDrAwCGbghojU7ipJU=
Date: Fri, 27 Mar 2020 16:59:36 +0000
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200327165935.GA8048@willie-the-truck>
References: <20200327143941.195626-1-ascull@google.com>
 <a8cc7a17-cb84-3e52-15f4-87b27a01876b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8cc7a17-cb84-3e52-15f4-87b27a01876b@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_095942_114520_E22E5393 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: qwandor@google.com, qperret@google.com, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, tabba@google.com,
 Steven Price <steven.price@arm.com>, wedsonaf@google.com,
 Andrew Scull <ascull@google.com>, dbrazdil@google.com, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Fri, Mar 27, 2020 at 04:11:56PM +0000, James Morse wrote:
> On 3/27/20 2:39 PM, Andrew Scull wrote:
> > Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
> > allocated as a result of a speculative AT instruction. In order to
> > avoid mandating VHE on certain affected CPUs, apply the workaround to
> > both the nVHE and the VHE case for all affected CPUs.
> 
> You're booting a VHE capable system without VHE, and need KVM?
> Do tell!

I'll stick my neck out for this part...

Basically, we're looking at enabling virtualisation on Android through
KVM and we're going to be upstreaming more of this as it gets going.
One of the goals of this work is to provide an environment where virtual
machines can run in isolation from the KVM host; in such a design, the
guest memory must not be accessible to the host, so this doesn't lend
itself at all to VHE. Our current work is focussing on extending the nVHE
__hyp_text so that things like stage-2 page table and vCPU state is all
handled there, with a stage-2 put over the host kernel to prevent access
to guest memory. The host is still responsible for scheduling vCPUs, so
a compromised host can cause a DoS but it's the data integrity that we
really care about. We're looking at implementing this on top of the SPCI
spec from Arm, where the VMs are a lot less dynamic than a traditional
KVM invocation but implement message passing and shared memory interfaces
so that we can still use things like virtio. We're also aiming to support
SPCI partitions alongside traditional VMs, although the stage-2 must still
be handled at EL2 for both types of guest.

It's a bit like a Type-1.5 hypervisor ;)

Anyway, there's plenty to do, but one of the exercises is removing some of
the artificial Kconfig dependencies we have on VHE. This erratum workaround
is one of them, but there are others such as SVE and Pointer Auth.

> Would enabling the nVHE workaround on a VHE capable part solve your problem?

Could do, but it seems a bit weird to enable the workarounds independently
once both VHE and nVHE are supported. We probably need to use has_vhe() to
distinguish the two paths, rather than rely on the presence of the
workaround as a proxy for that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
