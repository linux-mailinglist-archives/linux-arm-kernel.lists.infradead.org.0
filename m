Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108E02C40A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hu2K9fWVrNZ/TTGfh1jwc2Sm2IyVFKbZYsc2P00DSJI=; b=HqsxIh6DC1ru94
	+ALb6W3h8z01xWT3TIrfVrJ3UsP26TgX7YWj2pIXBPI5zwDOl2QvqPGveCtZw90kM95p/Z2Cc6+F0
	nWqt2tqrl9qCGMGySg2zZN5y22Tlg77N+jp+PzdmfykPv17GKvs5aqEvu+Ur/nov/s40OVWPXhNNI
	i8UNz7ed4qrSfQOVCPnjfdDUImLcSdbTn+FZ7eyNfjyIMPD97g1uQ2uK3Wa77sgQ37Fd35p3rmwwk
	Bdu7ITduIaU1R6+z3NziXYBHQFxJ5VGOmMDjcDySxJO6/Yjy4kY8HBGTupEvUhsSFSzVNF6otBRPA
	muBCccK+P5fSMIer8AIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZ58-00072O-01; Tue, 28 May 2019 10:11:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZ50-00071c-8C
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:11:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E041341;
 Tue, 28 May 2019 03:11:35 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B45033F59C;
 Tue, 28 May 2019 03:11:33 -0700 (PDT)
Date: Tue, 28 May 2019 11:11:31 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [kvmtool PATCH v10 5/5] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
Message-ID: <20190528101128.GB28398@e103592.cambridge.arm.com>
References: <1555994558-26349-1-git-send-email-amit.kachhap@arm.com>
 <1555994558-26349-6-git-send-email-amit.kachhap@arm.com>
 <20190423154625.GP3567@e103592.cambridge.arm.com>
 <3b7bafc9-5d6a-7845-ef1f-577ea59000e2@arm.com>
 <20190424134120.GW3567@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424134120.GW3567@e103592.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_031138_303456_6A818C63 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 02:41:21PM +0100, Dave Martin wrote:
> On Wed, Apr 24, 2019 at 12:32:22PM +0530, Amit Daniel Kachhap wrote:
> > Hi,
> > 
> > On 4/23/19 9:16 PM, Dave Martin wrote:

[...]

> > >>diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
> > >>index 7780251..acd1d5f 100644
> > >>--- a/arm/kvm-cpu.c
> > >>+++ b/arm/kvm-cpu.c
> > >>@@ -68,6 +68,18 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
> > >>  		vcpu_init.features[0] |= (1UL << KVM_ARM_VCPU_PSCI_0_2);
> > >>  	}
> > >>+	/* Check Pointer Authentication command line arguments. */
> > >>+	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
> > >>+		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
> > >
> > >Preferably, print the leading dashes, the same as the user would see
> > >on the command line (e.g., --enable-ptrauth, --disable-ptrauth).
> > >
> > >For brevity, we could write something like:
> > >
> > >		die("--enable-ptrauth conflicts with --disable-ptrauth");

[...]

> > >>@@ -106,8 +118,12 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
> > >>  			die("Unable to find matching target");
> > >>  	}
> > >>-	if (err || target->init(vcpu))
> > >>-		die("Unable to initialise vcpu");
> > >>+	if (err || target->init(vcpu)) {
> > >>+		if (kvm->cfg.arch.enable_ptrauth)
> > >>+			die("Unable to initialise vcpu with pointer authentication feature");
> > >
> > >We don't special-case this error message for any other feature yet:
> > >there are a variety of reasons why we might have failed, so suggesting
> > >that the failure is something to do with ptrauth may be misleading to
> > >the user.
> > >
> > >If we want to be more informative, we could do something like the
> > >following:
> > >
> > >	bool supported;
> > >
> > >	supported = kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
> > >		    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC);
> > >
> > >	if (kvm->cfg.arch.enable_ptrauth && !supported)
> > >		die("--enable-ptrauth not supported on this host");
> > >
> > >	if (supported && !kvm->cfg.arch.disable_ptrauth)
> > >		vcpu_init.features[0] |= ARM_VCPU_PTRAUTH_FEATURE;
> > >
> > >	/* ... */
> > >
> > >	if (err || target->init(vcpu))
> > >		die("Unable to initialise vcpu");
> > >
> > >We don't do this for any other feature today, but since it helps the
> > >user to understand what went wrong it's probably a good idea.
> > Yes this is more clear. As Mark has picked the core guest ptrauth patches. I
> > will post this changes as standalone.
> 
> Sounds good.  (I also need to do that separately for SVE...)

Were you planning to repost this?

Alternatively, I can fix up the diagnostic messages discussed here and
post it together with the SVE support.  I'll do that locally for now,
but let me know what you plan to do.  I'd like to get the SVE support
posted soon so that people can test it.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
