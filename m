Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AE1144286
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YulqNjBGQ8rQt0vNXcGi9hUYeOb+DZRfL8GoBvsJdBQ=; b=Pg70wtQWIVDeY6
	sEQmcqbYhIZ5uBqoCOsGP162jug2hWzbOMshv2qLbLlcTWmE/6mRP6nx+2YNSEx0BQga/u92IdUev
	Q5CWOUcy5L9Q1D2rpOTp4y0GWRVInHnt/l8VifTYRhKuTE4/qGYE3QtitdaUJ2K0IK/zV4PKqjVaL
	sYSjevI5EfavNybbtrDGNRCZ4im41sa6+DUSj7u99ySULBb1J7Sbxtr4HV7NVZVXuNuMlO5SwEGb1
	gOA0cV3fEfrwrkydu3NMJtg2pCZ93xakPNoe5uA1Q/sOiOswmd0RmsYI/3J6OReYRDXo9EYSB6OIY
	zHgWQCkdpqv91HsCKaBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwm0-0006Mh-2B; Tue, 21 Jan 2020 16:53:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwlu-0006MI-4y
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:52:59 +0000
Received: from arrakis.emea.arm.com (fw-tnat-cam2.arm.com [217.140.106.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B73CB21569;
 Tue, 21 Jan 2020 16:52:55 +0000 (UTC)
Date: Tue, 21 Jan 2020 16:52:53 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 09/16] arm64: mask PAC bits of __builtin_return_address
Message-ID: <20200121165253.GD3117281@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-10-git-send-email-amit.kachhap@arm.com>
 <20200117101432.GA26090@arrakis.emea.arm.com>
 <1735949f-a8c2-4cb5-d7e7-63efcfd4e96c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1735949f-a8c2-4cb5-d7e7-63efcfd4e96c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_085258_205237_C9186B44 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 02:20:17PM +0000, Amit Kachhap wrote:
> On 1/17/20 10:14 AM, Catalin Marinas wrote:
> > On Mon, Dec 16, 2019 at 02:17:11PM +0530, Amit Daniel Kachhap wrote:
> > > diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> > > new file mode 100644
> > > index 0000000..3cb06f9
> > > --- /dev/null
> > > +++ b/arch/arm64/include/asm/compiler.h
> > > @@ -0,0 +1,20 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +#ifndef __ASM_COMPILER_H
> > > +#define __ASM_COMPILER_H
> > > +
> > > +#if defined(CONFIG_ARM64_PTR_AUTH)
> > > +
> > > +/*
> > > + * The EL0/EL1 pointer bits used by a pointer authentication code.
> > > + * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
> > > + */
> > > +#define ptrauth_user_pac_mask()		GENMASK_ULL(54, vabits_actual)
> > 
> > That's the current behaviour but I guess we could extend the mask to 63
> > here without breaking anything since we don't expect instruction
> > addresses to be tagged. I also think we should turn TCR_EL1.TBID0 on
> > when we have PAC present (in a separate patch for both the mask change
> > and the TCR_EL1 bit as this may be slightly more controversial, a
> > theoretical ABI change).
> 
> ok. For this there has to be 2 mask then as ptrace passes both the masks to
> user.
> 
> #define ptrauth_user_ins_pac_mask()	GENMASK_ULL(63, vabits_actual)
> 
> #define ptrauth_user_data_pac_mask()	GENMASK_ULL(54, vabits_actual)

Yes. But as I said, keep this patch as is and change the above in a
separate patch, possibly even a separate series.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
