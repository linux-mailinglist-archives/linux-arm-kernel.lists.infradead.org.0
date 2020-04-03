Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6741D19D5B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cv8V8hOBoKgfbpnTiYckF7x76UOcQpY1x4+tb+Z4vdY=; b=kNQ2c0AKgLiBkc
	Y1TuKNiO51kjh5Q2UstUVM6qGJeFG+UUGqxAWmTfyv7eUe/Qun7LUvpEinfr/lOInurLaKH7wSIV/
	dXBK+i1SrrcHyiCIOXEt+05F1swulw4Cv8z/oaab0P9Wn9Ui2R1G24iuhM/TqtU1/OjF5JHJplQT9
	yuAN6CXOw2OYkfRt0XmdI4oCaUCJBLj0xB94RXqPR+7XspFJmYbZkDtKsnuqpdY2bvtIoPiPLsdGo
	Dow4wZjQjP1RVFEBj4u4LQLlgpiXTKuQq2XT47PNya6ts231cpuy5MVhr071GfmpfCKHFtgNKlZfq
	Qv+7eZSRAp7PS4eVN8NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKNI-00029C-Ti; Fri, 03 Apr 2020 11:20:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKNB-00027k-En
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 11:20:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A994520737;
 Fri,  3 Apr 2020 11:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585912828;
 bh=VkbijjM+51iknoUD0yZ0gT3cXkNqrNfBcoLbQJeIJAM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Il47vERBim2JDy7oDA2LDIWqFNH+EnkbYyI8P8YBHlsP657q8CEuD0Rb2ZRtfQ04+
 WhbBrw/kMlQnXm+0hHylvFuMd/H7bTbcOB3JpCxiw2tl/EBZw8rDUYV1wcrqV5q8+H
 MU9H1dEB+kPMAyzG6CIW/FnWNe+APKgHh6Ss7+AA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jKKN9-000U4Y-0m; Fri, 03 Apr 2020 12:20:27 +0100
Date: Fri, 3 Apr 2020 12:20:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH 0/2] KVM: arm64: PSCI fixes
Message-ID: <20200403122024.60dcec10@why>
In-Reply-To: <23107386-bbad-6ee1-c1cc-03dd70868905@arm.com>
References: <20200401165816.530281-1-maz@kernel.org>
 <23107386-bbad-6ee1-c1cc-03dd70868905@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Christoffer.Dall@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_042029_542795_26B54A3B 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandru,

On Fri, 3 Apr 2020 11:35:00 +0100
Alexandru Elisei <alexandru.elisei@arm.com> wrote:

> Hi,
> 
> On 4/1/20 5:58 PM, Marc Zyngier wrote:
> > Christoffer recently pointed out that we don't narrow the arguments to
> > SMC32 PSCI functions called by a 64bit guest. This could result in a
> > guest failing to boot its secondary CPUs if it had junk in the upper
> > 32bits. Yes, this is silly, but the guest is allowed to do that. Duh.
> >
> > Whist I was looking at this, it became apparent that we allow a 32bit
> > guest to call 64bit functions, which the spec explicitly forbids. Oh
> > well, another patch.
> >
> > This has been lightly tested, but I feel that we could do with a new
> > set of PSCI corner cases in KVM-unit-tests (hint, nudge... ;-).  
> 
> Good idea. I was already planning to add new PSCI and timer tests, I'm waiting for
> Paolo to merge the pull request from Drew, which contains some fixes for the
> current tests.
> 
> >
> > Marc Zyngier (2):
> >   KVM: arm64: PSCI: Narrow input registers when using 32bit functions
> >   KVM: arm64: PSCI: Forbid 64bit functions for 32bit guests
> >
> >  virt/kvm/arm/psci.c | 40 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 40 insertions(+)
> >  
> I started reviewing the patches and I have a question. I'm probably missing
> something, but why make the changes to the PSCI code instead of making them in the
> kvm_hvc_call_handler function? From my understanding of the code, making the
> changes there would benefit all firmware interface that use SMCCC as the
> communication protocol, not just PSCI.

The problem is that it is not obvious whether other functions have
similar requirements. For example, the old PSCI 0.1 functions are
completely outside of the SMCCC scope (there is no split between 32 and
64bit functions, for example), and there is no generic way to discover
the number of arguments that you would want to narrow.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
