Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D094352F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc8VFc912+OnoDk9+GrHoliUy+974w/mtIX746UQuVc=; b=BObztP43EnOzrW
	y+a3iuBee4Y3UU2/R1hliJwE9wbYY9GFVQnzY4rYja6wb+uicsOMGydiw5ZLCxx68TZuJtzToJ2VB
	Cn6lgmpPcXw1PkkDIY1b0TRXJcdF5FDLZzt5t7KQX46DufCLHhGRbTvSDCbIjZsXt3FNi6//oqxbs
	vQphUDrTFm8inrcrlETQEVf12SqTAIqSwyz8cFZYgtjshaWcpDnW3G1JXc/VSEvBB09na6ANyAMGL
	v7lMprZaIhN+893uL7agb+Z+B0oblWP19DMWvsSuASmX7FGgOPpi4U4CBqTvms2ZU1DasygeeG7nY
	9gLX2VlyMjOev1bW4PFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMnf-0002wM-0w; Thu, 13 Jun 2019 10:17:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMnT-0002vp-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:17:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB767367;
 Thu, 13 Jun 2019 03:17:30 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D41B33F694;
 Thu, 13 Jun 2019 03:19:12 -0700 (PDT)
Date: Thu, 13 Jun 2019 11:17:27 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 1/3] arm64/sve: Fix missing SVE/FPSIMD endianness
 conversions
Message-ID: <20190613101727.GE17331@fuggles.cambridge.arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
 <771b0099-9217-4e55-b73a-b03434c61655@arm.com>
 <20190613100031.GU28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613100031.GU28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_031731_396186_5A3AC5DD 
X-CRM114-Status: GOOD (  13.88  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, gdb@sourceware.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 Alan Hayward <alan.hayward@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 11:00:34AM +0100, Dave Martin wrote:
> On Wed, Jun 12, 2019 at 06:46:04PM +0100, Julien Grall wrote:
> > On 12/06/2019 17:00, Dave Martin wrote:
> > >diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> > >index 7b7ac0f..072ea1e 100644
> > >--- a/arch/arm64/include/uapi/asm/kvm.h
> > >+++ b/arch/arm64/include/uapi/asm/kvm.h
> > >@@ -260,6 +260,13 @@ struct kvm_vcpu_events {
> > >  	 KVM_REG_SIZE_U256 |						\
> > >  	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
> > >+/*
> > >+ * Register values for KVM_REG_ARM64_SVE_ZREG(), KVM_REG_ARM64_SVE_PREG() and
> > >+ * KVM_REG_ARM64_SVE_FFR() and represented in memory in an endianness-
> > 
> > NIT: s/and represented/are represented/ I think.
> > 
> > >+ * invariant layout which differs from the layout used for the FPSIMD
> > >+ * V-registers on big-endian systems: see sigcontext.h for more explanaion.
> > 
> > NIT: s/explanaion/explanation/
> 
> Dang, the first of these two is quite confusing.
> 
> I might send a fix for that, but I guess it's not urgent.  Thanks for
> spotting it.

I've pushed an updated version out so hopefully no need to do anything more.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
