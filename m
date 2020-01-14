Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B416013AFC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouepkZyN3qG/a41hIFsol9N0nankpeATFNjRgjX5UIs=; b=egC76GNfRrfdTg
	l9Vm8rjPNcwptL/dC39n5CUClkCa8NQiHPWUM1euZjzfYrRvg8D9w5bQmJs7cmLNFcSRtcM34g3gA
	kXCGjYBeOBcwg62N0+LLHXLBo2A6gERBVh8q9DGNYkOmTZHZO8oZOxfreJYjI1LUOffRHUn+UiVPH
	Gx0j1m40qrqFuTErHcO5fcn1l4Qdo34Pb66bWii+PRB3fRJPbJHDU513DZQIuM8P9qj6LmlTzZrKt
	fdbF3FrqimWyBPBlmngiEX1O1XidQ+uV8bFsf8lWGRSM8L5k48P4gHovyNQqnjiNazx1JSTpPjm0t
	5FKQFWuyfX7C9o+3gcUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPKL-0007IB-US; Tue, 14 Jan 2020 16:46:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPK9-0007HA-UN
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 16:45:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61ED72075B;
 Tue, 14 Jan 2020 16:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579020349;
 bh=rH/RDxa3aDON1h6odC8ATdFjCaRm+9u0dtk/K0hiIXQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hmsaowv+R3R8eS752gOgWAxq6ARtQoXDTAs36J0Y07vEKJc1daHBkPor8BVcONK6I
 Uvz3JrLvGLDQqzFaa7XbpaR6i4AK5K8hPJZai1epyL7ftf4czsPSdaZnFPfRtTuz1R
 s5XgCnLah2e0bPTkqUvV384qlEgPKXqID8lB+H/c=
Date: Tue, 14 Jan 2020 16:45:44 +0000
From: Will Deacon <will@kernel.org>
To: Steven Price <steven.price@arm.com>, maz@kernel.org
Subject: Re: [PATCH v5 0/3] arm64: Workaround for Cortex-A55 erratum 1530923
Message-ID: <20200114164543.GD2579@willie-the-truck>
References: <20191216115631.17804-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216115631.17804-1-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_084550_000993_81D26A4C 
X-CRM114-Status: GOOD (  12.46  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:56:28AM +0000, Steven Price wrote:
> Version 5 is a rebasing of version 4 (no changes).
> 
> This series enables a workaround for Cortex-A55 erratum 1530923. The
> erratum potentially allows TLB entries to be allocated as a result of a
> speculative AT instruction. This may happen in the middle of a guest
> world switch while the relevant VMSA configuration is in an inconsistent
> state, leading to erroneous content being allocated into TLBs.
> 
> There are existing workarounds for similar issues, 1165522 is
> effectively the same, and 1319367/1319537 is similar but without VHE
> support.  Rather than add to the selection of errata, the first patch
> renames 1165522 to WORKAROUND_SPECULATIVE_AT which can be reused (in the
> final patch) for 1530923.
> 
> The workaround for errata 1319367 and 1319537 although similar cannot
> use VHE (not available on those CPUs) so cannot share the workaround.
> However, to keep some sense of symmetry the workaround is renamed to
> SPECULATIVE_AT_NVHE.
> 
> Changes since v4:
>  * Rebased to v5.5-rc1

Looks fine to me. Marc, are you ok with me queueing this via arm64 (that's
where the existing workarounds came from), or would you prefer to take them
via kvm-arm?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
