Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC646089
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iVmkSM6ZGG1bm0ovWc7NtsxLx+gibTTg1rw1so8Rm0=; b=P/pRHcdWe605Gz
	Fu1o2Pe8JxH/tTYFsXVcwJKuwGcsCkUhksvajceeGrVTuDUhqDtfjjd9sE3Zn331EFP5veaOkN9fl
	Scbc8rmo7GSc+id85DInREM5hPBA8NVyh2NN0dRyCRFVlkpp1uubxgPg09E05enHwSq4jtQNo3dQa
	U8MlSAqqEGhO4IPzoz63jYH4DtwyiPFNQTOFAKxpHt5y8Ne9i5srNz4s3HCk1vtGqb/M63SCAUYWb
	e7bvUC/m/lS7slxjJLK8gFhFKZvtkVgjr7u30tBg4iJBZKUVnCuy4SupyxP3uBpT2uRwgx0u0db2u
	eyGAILLDrNfGvhADZHxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbn6P-0003AU-Bc; Fri, 14 Jun 2019 14:22:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbn6H-0003A3-2U
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:22:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FA17344;
 Fri, 14 Jun 2019 07:22:40 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BF923F246;
 Fri, 14 Jun 2019 07:22:38 -0700 (PDT)
Date: Fri, 14 Jun 2019 15:22:31 +0100
From: Will Deacon <will.deacon@arm.com>
To: Anisse Astier <aastier@freebox.fr>
Subject: Re: [PATCH] arm64/sve: <uapi/asm/ptrace.h> should not depend on
 <uapi/linux/prctl.h>
Message-ID: <20190614142231.GA29231@fuggles.cambridge.arm.com>
References: <20190613163801.21949-1-aastier@freebox.fr>
 <20190613171432.GA2790@e103592.cambridge.arm.com>
 <20190614112222.GA47082@anisse-station>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614112222.GA47082@anisse-station>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_072241_160755_D12A7FAD 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, Rich Felker <dalias@aerifal.cx>,
 linux-kernel@vger.kernel.org, Kristina Martsenko <kristina.martsenko@arm.com>,
 "Dmitry V . Levin" <ldv@altlinux.org>, Ricardo Salveti <ricardo@foundries.io>,
 Richard Henderson <richard.henderson@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anisse, Dave,

On Fri, Jun 14, 2019 at 01:22:22PM +0200, Anisse Astier wrote:
> On Thu, Jun 13, 2019 at 06:14:44PM +0100, Dave Martin wrote:
> > On Thu, Jun 13, 2019 at 06:38:01PM +0200, Anisse Astier wrote:
> > > -#define SVE_PT_VL_INHERIT		(PR_SVE_VL_INHERIT >> 16)
> > > -#define SVE_PT_VL_ONEXEC		(PR_SVE_SET_VL_ONEXEC >> 16)
> > > +#define SVE_PT_VL_INHERIT		(1 << 1) /* PR_SVE_VL_INHERIT */
> > > +#define SVE_PT_VL_ONEXEC		(1 << 2) /* PR_SVE_SET_VL_ONEXEC */
> > 
> > Makes sense, but...
> > 
> > Since sve_context.h was already introduced to solve a closely related
> > problem, I wonder whether we can provide shadow definitions there,
> > similarly to way the arm64/include/uapi/asm/ptrace.h definitions are
> > derived.  Although it's a slight abuse of that header, I think that
> > would be my preferred approach.
> 
> Yes I saw this, and I considered doing something similar. But, those
> defines are in uapi/linux/prctl.h, which does not include any asm/*.h
> header. This would have then required adding a full infrastructure for
> asm/prctl.h (that could then include sve_context.h for example), which
> does not exist yet, instead of copying these two values.

x86 appears to have an asm/prctl.h implementation, but it's not included
by anybody so I guess that doesn't really help us here.

> Since this is part of the kernel-userspace ABI, I don't see this values
> changing anytime soon, which is why I thought copying them shouldn't be
> a big issue.

Certainly not a big issue, just that the harder we make this to change
the better.

> A simple solution would be to to include sve_context.h or a third
> header, maybe linux/prctl_arm64_sve.h (with only these two/five
> defines), in linux/prctl.h, and reuse it in uapi/asm/ptrace.h; but this
> would break the self-contained nature of linux/prctl.h.
> > 
> > Otherwise, at least make the required relationship between ptrace.h and
> > prctl.h constants a bit more obvious, say,
> > 
> > 	#define SVE_PT_VL_INHERIT ((1 << 17) /* PR_SVE_SET_VL_INHERIT */ >> 16)
> 
> This one is much simpler and closer to what I had in mind with this
> patch.
> 
> Will, what do you think of this second approach Dave proposed ?

Duplication is grotty, but it does the job so I'm ok with it. I don't have
any better ideas.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
