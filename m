Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC41C3757
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OJW3HQnTqzAaWsldqtAB+uspymWqU9bz58jUXOTH10=; b=kIrV0rCuwLnzkF
	RQjcPAEosZhi38TwO+ILzjcPvHrt93V7XR79kjMutgmMBGGUeB31vg0T8etYhDKOf6VrcAQRv52LZ
	PG/tVC4rRwfahB/OZ7dnL6NdXSMVgEpnKJCYG66seCG/HAO1bqUOFyEQsQfM6See6nVADHgSnwpyf
	1GczXtkrxLB+piy0DgX+JTGGrxwkZbTZqvRKgJqgfzniUDHURszJuUEszj2bH2QX70BArk4JEllpn
	Lp6bVSpwM7gso+HBN+VK43boIEMDu44DNTIAMyQ5WGY4N8Y3yrPiLX2dtEclVVHRzjvhfrvcEoERM
	4vZlDkpQ2TA+HQsNYMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYlv-0000Yw-WF; Mon, 04 May 2020 10:56:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYlP-000097-3O
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 10:55:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3ED82206A5;
 Mon,  4 May 2020 10:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588589753;
 bh=yimknkycNhWKt9Dg66qxN0A5QA1czHX/skfD4nGVYdA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d5ARQv/l7m/8JjOJrMvKHd+HbrsIPm1PW9uqlGLcf+qdxGSrka6vO82Sdqk2iiTc7
 zK1vovQgtpE/1y5rWL8vVqn4+mZEU67cwcMCdfGb1yhtWicPOAp2bT6qXRqBYEZT37
 sWGvKBIRlFj0ENPMvRYnGudRXI+SbU/ujaxwkTNA=
Date: Mon, 4 May 2020 11:55:49 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH v3] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200504105539.GA4879@willie-the-truck>
References: <20200504094858.108917-1-ascull@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504094858.108917-1-ascull@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_035555_175858_D909F310 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 10:48:58AM +0100, Andrew Scull wrote:
> Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
> allocated as a result of a speculative AT instruction. In order to
> avoid mandating VHE on certain affected CPUs, apply the workaround to
> both the nVHE and the VHE case for all affected CPUs.
> 
> Signed-off-by: Andrew Scull <ascull@google.com>
> CC: Marc Zyngier <maz@kernel.org>
> CC: James Morse <james.morse@arm.com>
> CC: Suzuki K Poulose <suzuki.poulose@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: Steven Price <steven.price@arm.com>
> ---
> From v2 <20200422161346.67325-1-ascull@google.com>:
>  - const_cap -> final_cap merge correction
>  - based on 5.7 rc4
> ---
>  arch/arm64/Kconfig                | 39 ++++++++++++++-----------------
>  arch/arm64/include/asm/cpucaps.h  | 15 ++++++------
>  arch/arm64/include/asm/kvm_host.h |  4 ----
>  arch/arm64/include/asm/kvm_hyp.h  |  2 +-
>  arch/arm64/kernel/cpu_errata.c    | 25 +++++++++-----------
>  arch/arm64/kvm/hyp/switch.c       |  6 ++---
>  arch/arm64/kvm/hyp/sysreg-sr.c    |  6 +++--
>  arch/arm64/kvm/hyp/tlb.c          | 11 +++++----
>  8 files changed, 50 insertions(+), 58 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

We'll probably run into some trivial conflicts with the arm64 tree, but
I'm happy to put this on a branch if it helps. Marc?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
