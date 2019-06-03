Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0354632E8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1GW0LwWbG5dT+n7PJVd14SEi+p5zpfYunYhnpBM78k=; b=dLCh9t/4wv2DRK
	oS3Za8QFOUEei22PkNWYreP0oV6IQt4X5YqwBQ834Gr71VvTFKuOvAoPCOC6pb2pu6VSo6xisbjq9
	5LN/Xm216b9JY1165KxKmdhFhCQ3p71MNRxzCjxL/JSH0aN2Nwb6P6FaTjLeP0Ypj28vL1y4OlaVV
	jzu8t8Lj9/AUvKrbTz4oqAN6vfNy2BEWZ1to4ASdS4hp0SeiasntxAtfep4wmdRgxbfsClsSNjwbO
	iBzeuqCywjXgTLizR/LRGhugjYkT15JcoWMNz3Xzx0dHx42qI2zl8CoXJ2gaPhsDxOGlCYU10Cimq
	RnUFjm6wk0aJ03ZECFfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXl3a-00071q-CT; Mon, 03 Jun 2019 11:23:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXl3T-00071M-Bp
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:23:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B817A78;
 Mon,  3 Jun 2019 04:23:07 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E43B3F5AF;
 Mon,  3 Jun 2019 04:23:05 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:23:03 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 5/9] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
Message-ID: <20190603112302.GN28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-6-git-send-email-Dave.Martin@arm.com>
 <20190531180416.3e87f5ad@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180416.3e87f5ad@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_042307_404868_84C5A4C2 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 06:04:16PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:10 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > From: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > 
> > This patch adds a runtime capabality for KVM tool to enable Arm64 8.3
> > Pointer Authentication in guest kernel. Two vcpu features
> > KVM_ARM_VCPU_PTRAUTH_[ADDRESS/GENERIC] are supplied together to enable
> > Pointer Authentication in KVM guest after checking the capability.
> > 
> > Command line options --enable-ptrauth and --disable-ptrauth are added
> > to use this feature. However, if those options are not provided then
> > also this feature is enabled if host supports this capability.
> 
> I don't really get the purpose of two options, I think that's quite
> confusing. Should the first one either be dropped at all or called
> something with "force"?
> 
> I guess the idea is to fail if pointer auth isn't available, but the
> option is supplied?
> 
> Or maybe have one option with parameters?
> --ptrauth[,=enable,=disable]

So, I was following two principles here, either or both of which may be
bogus:

1) There should be a way to determine whether KVM turns a given feature
on or off (instead of magically defaulting to something).

2) To a first approaximation, kvmtool should allow each major KVM ABI
feature to be exercised.

3) By default, kvmtool should offer the maximum feature set possible to
the guest.


(3) is well established, but (1) and (2) may be open to question?

If we hold to both principles, it makes sense to have options
functionally equivalent to what I suggested (where KVM provides the
control in the first place), but there may be more convenient ways
to respell the options.

If we really can't decide, maybe it's better to drop the options
altogether until we have a real use case.

I've found the options very useful for testing and debugging on the SVE
side, but I can't comment on ptrauth.  Maybe someone else has a view?

> > The macros defined in the headers are not in sync and should be replaced
> > from the upstream.
> 
> This is no longer true, I guess?

Ah yes, that comment can go.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
