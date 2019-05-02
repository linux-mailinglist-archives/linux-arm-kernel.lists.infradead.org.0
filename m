Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65691115CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Xb1DhM08Er0ewTOFDZvT/JmV7UjnkeMPs18qf102io=; b=SIGNnXSmn868/w
	I+zxE31XNZNUpniBKz1eL/o/1DgkhwaPJPT/WAHGGyuKWYSDQE4Ci7NmLlw3Y4Xh0K6Ow6FK+lx3/
	0m/8E4nOpEmFTVzP0uJa9kZqj+GKy7uVgMEi/ALogOS1fEPEd9mMU268ujJnZQiD3Cj+z7zprQHvB
	LSAvKPiSXarU9XKCEo1cx6JVPAOW7mPer7+WCQFBxEMnQTPWYmj8ZEnGTRzLFqr6qtKhaTxUeN5R2
	Zia7PfpuGHHHhiPa7ybfsTADo6hrwLtmmjvya9VzG6qxDp/tQBSjDj/hZD3gwqXaGChl1KARNN6xd
	LxLKmzdut4iLGirSS4BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7TE-00027V-JD; Thu, 02 May 2019 08:53:36 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7T7-00026g-Tb
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:53:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BBA5374;
 Thu,  2 May 2019 01:53:27 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D51253F5AF;
 Thu,  2 May 2019 01:53:25 -0700 (PDT)
Date: Thu, 2 May 2019 09:53:23 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] KVM: arm64: fix ptrauth ID register masking logic
Message-ID: <20190502085322.GN3567@e103592.cambridge.arm.com>
References: <20190501161008.31498-1-kristina.martsenko@arm.com>
 <5dbccc2a-655b-00d4-a168-e9ff60a455a7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dbccc2a-655b-00d4-a168-e9ff60a455a7@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015329_956349_51C92FFB 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Amit Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 05:20:49PM +0100, Marc Zyngier wrote:
> On 01/05/2019 17:10, Kristina Martsenko wrote:
> > When a VCPU doesn't have pointer auth, we want to hide all four pointer
> > auth ID register fields from the guest, not just one of them.
> > 
> > Fixes: 384b40caa8af ("KVM: arm/arm64: Context-switch ptrauth registers")
> > Reported-by: Andrew Murray <andrew.murray@arm.com>
> > Fsck-up-by: Marc Zyngier <marc.zyngier@arm.com>
> > Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> > ---
> >  arch/arm64/kvm/sys_regs.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 9d02643bc601..857b226bcdde 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -1088,10 +1088,10 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
> >  	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
> >  		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> >  	} else if (id == SYS_ID_AA64ISAR1_EL1 && !vcpu_has_ptrauth(vcpu)) {
> > -		val &= ~(0xfUL << ID_AA64ISAR1_APA_SHIFT) |
> > -			(0xfUL << ID_AA64ISAR1_API_SHIFT) |
> > -			(0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
> > -			(0xfUL << ID_AA64ISAR1_GPI_SHIFT);
> > +		val &= ~((0xfUL << ID_AA64ISAR1_APA_SHIFT) |
> > +			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
> > +			 (0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
> > +			 (0xfUL << ID_AA64ISAR1_GPI_SHIFT));
> >  	}
> >  
> >  	return val;
> > 
> 
> Applied and pushed to -next. Thanks Andrew for reporting it, and
> Kristina for putting me right!

I was worried this was my mistake... but it looks like my original
suggstion did have the extra ().

Anyway, FWIW,

Acked-by: Dave Martin <Dave.Martin@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
