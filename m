Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A884A2CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXWpPNwiKgkSkUQJDUd/V1eip/yn0ye4YhLxK7lh0lU=; b=pFXPjT5/A3zDr8
	q/t1prPuIoVsHIxExZikGIMGgCRl02umPvSO/cNJQjNZblD1lQPKF19uedtsocHBCB6yRZ44T5pQ0
	AMMgPdT07OSZEygJD0LbnTChIMZaIlP3exC64jXh9bx+5X9HhTM6jux14sUIMNk577HFvL4h/Nxzt
	iHLrOW34Jf3Ynkf5wKrSpTXiFtohC+H3MI80JbZttZPi4Du9hGvLzTOYqysGYomy0Vag8+RNT79Em
	aN27eRcRYLzMVn3mFEomAuWdo9UQ374crtwi9YZgoV2yKPk0oxLXLUrD4RkHr1v6PafOBdR9DnXs9
	b93jh7jtnhJnIjCt4+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEVu-00008K-Qc; Tue, 18 Jun 2019 13:51:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEVe-000075-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:50:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC7CD2B;
 Tue, 18 Jun 2019 06:50:49 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 412343F718;
 Tue, 18 Jun 2019 06:50:48 -0700 (PDT)
Date: Tue, 18 Jun 2019 14:50:46 +0100
From: Will Deacon <will.deacon@arm.com>
To: Anisse Astier <aastier@freebox.fr>
Subject: Re: [PATCH v3 2/2] arm64/sve: <uapi/asm/ptrace.h> should not depend
 on <uapi/linux/prctl.h>
Message-ID: <20190618135046.GH31041@fuggles.cambridge.arm.com>
References: <20190617084545.GA38959@anisse-station>
 <20190617132222.32182-1-aastier@freebox.fr>
 <20190617132222.32182-2-aastier@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617132222.32182-2-aastier@freebox.fr>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_065050_450438_210737DE 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "Dmitry V . Levin" <ldv@altlinux.org>, Ricardo Salveti <ricardo@foundries.io>,
 Rich Felker <dalias@aerifal.cx>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 03:22:22PM +0200, Anisse Astier wrote:
> Otherwise this will create userspace build issues for any program
> (strace, qemu) that includes both <sys/prctl.h> (with musl libc) and
> <linux/ptrace.h> (which then includes <asm/ptrace.h>), like this:
> 
> 	error: redefinition of 'struct prctl_mm_map'
> 	 struct prctl_mm_map {
> 
> See https://github.com/foundriesio/meta-lmp/commit/6d4a106e191b5d79c41b9ac78fd321316d3013c0
> for a public example of people working around this issue.
> 
> Copying the defines is a bit imperfect here, but better than creating a
> whole other header for just two defines that would never change, as part
> of the kernel ABI.
> 
> This patch depends on patch "arm64: ssbd: explicitly depend on
> <linux/prctl.h>" for kernel >= 4.18
> 
> Fixes: 43d4da2c45b2 ("arm64/sve: ptrace and ELF coredump support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anisse Astier <aastier@freebox.fr>
> ---
>  arch/arm64/include/uapi/asm/ptrace.h | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)

I've pushed these two out to the arm64 fixes branch [1], with Dave's Ack
on this one. Note that I reworked the commit messages a bit to explain
better what's going on.

Cheers,

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/fixes

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
