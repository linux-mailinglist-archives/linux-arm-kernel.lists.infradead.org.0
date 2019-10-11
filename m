Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE19AD3DA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwoP6tksxOkkRPKSpxHJcj55exjLbrw7x5Lfmpt8yx0=; b=HSudc6GWJdhqkx
	+b88VW1irP83/85KsKxgfcDPXs8Hy0tFEytTZHbNxUWZTlCSU7aM87zogQtTvBIqeInAvz9axpfmf
	5Ka6auiKmFQAF+KU2qqgqq2BhjVbDTZ0jBO0pAlsdxmYFiExaZsuDZ/Ak8SjN3VS0TG/4um+Jyz+k
	+VOC+KMUoHfMeYiMyWoRPIVU8a0RswHpM7h6os/bvSfS+ju2AzMPU8gKoJOTN1l6hgDG/V4qsxSIv
	yCMcffTEYP2EwFbcXs6KbTGzpmcCNHjg97YZyLPcMTN7+vlNe5CZyBkCyQrJskOyXCUOCAL8a6uOg
	z3EnS1iNeq02DixA7kUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsQ5-0007MN-HX; Fri, 11 Oct 2019 10:45:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsPs-0007As-C7
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:45:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D63B2084C;
 Fri, 11 Oct 2019 10:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570790700;
 bh=bbQgNFwnmbeP7cYb09L5PBaPKxGPa4z3Rigbwq5f1WM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xPSZgAGoy5tmVAYpsur6voRj8yry0H/Txb8PXUOgcBTc+MPrY2ZWSWQAD2CE2VLFI
 TsUI6e/xIKiJUv3ExQmO+OCDNdPaLNJV3dTrHmYTHvSHqPN49vaO0qiGIHjX+IzKye
 jZX3lZ6Z6Xgi4wGUBkqGq8W9UeqRck46gRVha2IE=
Date: Fri, 11 Oct 2019 11:44:55 +0100
From: Will Deacon <will@kernel.org>
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: Re: [PATCH 0/2] Workaround for Cavium ThunderX2 erratum 219
Message-ID: <20191011104454.d7dplgyjcnpfi5p3@willie-the-truck>
References: <1570790105-31829-1-git-send-email-jnair@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570790105-31829-1-git-send-email-jnair@marvell.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_034500_432550_416CFD3A 
X-CRM114-Status: GOOD (  17.65  )
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi JC,

Thanks for posting this.

On Fri, Oct 11, 2019 at 10:35:21AM +0000, Jayachandran Chandrasekharan Nair wrote:
> These two patches are based on the work by Marc Zyngier and addresses
> Cavium ThunderX2 erratum 219.
> 
> This erratum (originally reported by ARM folks) is from an interesting
> use of the prefetch instruction in the KPTI patchset. The prefetch
> was done between a TTBR change and the corresponding ISB, and this
> occasionally caused a crash on ThunderX2.
> 
> The first patch removes the troublesome prefetch for ThunderX2.
> The second patch addresses the case where the issue can be triggered
> from a guest kernel. The workaround in this case is to trap TTBR
> accesses by setting HCR_EL2.TVM for guests and doing the system
> register update from EL2 in a fast path.

FWIW, I was already planning to send the following to Linus:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=errata/tx2-219

so please base any changes on top of that branch.

> Due to the nature of the erratum, the trap-and-emulate is only
> needed when SMT is enabled.
> 
> The overhead of trap-and-emulate is expected to be negligible on most
> workloads. A command line option kvm-arm.vm_msr_trap has been
> provided to override trapping on guest TTBR updates.  This is to
> address a very limited case where a user wants to run SMT enabled,
> with a trustworthy guest kernel, and wants to avoid the performance
> overhead associated with emulating the address translation register
> changes.

Do you have any performance data to show the impact of the workaround on
non-kpti guests? I don't think we can justify the inclusion of a cmdline
option for this without figures showing that it's really necessary.
Otherwise, the "very limited case" really is a niche scenario where the
CONFIG option can simply be disabled.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
