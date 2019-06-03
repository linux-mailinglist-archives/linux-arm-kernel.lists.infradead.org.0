Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1A6331AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjYdhCs54qFpAxpfcrluG2uaLbCUtLLIiVzo5uTR8Ps=; b=UrWIUYfDq0pVIu
	PVw8xn5wvMMzF0cSMQKHHLlQB25HIzSdAh1ydCplzn7AgsD3K2Z8EKiJIysIT9f+4YkOaThFUony/
	RktYz81QHZLqU07avw5/tMgDrpkeL0uAm0L2dJ0xGORvNCUe3p0cJ1IaMtkn/4TBfLB/8apjB+OXd
	NuLKX3fgIa0BCCGEdo4165eCcmdI8I9QuSakBUWJ9MKKhs8C17Skg/UTXXwstl4DInFzVZVezsBk/
	bQ06t3AmnTtNEDoyb1wMez0E4dlaWexb4Vh06pNyq66oa19xYjEzNBRpAyOuUrfgsLx5rynQsRR/S
	yyp1I6GFgHEeB8xDJ2UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnZD-0002Uc-Ch; Mon, 03 Jun 2019 14:04:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnZ6-0002U8-32
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:03:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FEDB15A2;
 Mon,  3 Jun 2019 07:03:53 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBAAB3F246;
 Mon,  3 Jun 2019 07:03:51 -0700 (PDT)
Date: Mon, 3 Jun 2019 15:03:48 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v3 5/9] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
Message-ID: <20190603150348.47368256@donnerap.cambridge.arm.com>
In-Reply-To: <20190603112302.GN28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-6-git-send-email-Dave.Martin@arm.com>
 <20190531180416.3e87f5ad@donnerap.cambridge.arm.com>
 <20190603112302.GN28398@e103592.cambridge.arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_070356_143976_B7A3E422 
X-CRM114-Status: GOOD (  30.56  )
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

On Mon, 3 Jun 2019 12:23:03 +0100
Dave Martin <Dave.Martin@arm.com> wrote:

Hi Dave,

> On Fri, May 31, 2019 at 06:04:16PM +0100, Andre Przywara wrote:
> > On Thu, 30 May 2019 16:13:10 +0100
> > Dave Martin <Dave.Martin@arm.com> wrote:
> >   
> > > From: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > > 
> > > This patch adds a runtime capabality for KVM tool to enable Arm64 8.3
> > > Pointer Authentication in guest kernel. Two vcpu features
> > > KVM_ARM_VCPU_PTRAUTH_[ADDRESS/GENERIC] are supplied together to enable
> > > Pointer Authentication in KVM guest after checking the capability.
> > > 
> > > Command line options --enable-ptrauth and --disable-ptrauth are added
> > > to use this feature. However, if those options are not provided then
> > > also this feature is enabled if host supports this capability.  
> > 
> > I don't really get the purpose of two options, I think that's quite
> > confusing. Should the first one either be dropped at all or called
> > something with "force"?
> > 
> > I guess the idea is to fail if pointer auth isn't available, but the
> > option is supplied?
> > 
> > Or maybe have one option with parameters?
> > --ptrauth[,=enable,=disable]  
> 
> So, I was following two principles here, either or both of which may be
> bogus:
> 
> 1) There should be a way to determine whether KVM turns a given feature
> on or off (instead of magically defaulting to something).
> 
> 2) To a first approaximation, kvmtool should allow each major KVM ABI
> feature to be exercised.
> 
> 3) By default, kvmtool should offer the maximum feature set possible to
> the guest.
> 
> 
> (3) is well established, but (1) and (2) may be open to question?
> 
> If we hold to both principles, it makes sense to have options
> functionally equivalent to what I suggested (where KVM provides the
> control in the first place), but there may be more convenient ways
> to respell the options.
> 
> If we really can't decide, maybe it's better to drop the options
> altogether until we have a real use case.

In general I prefer the lack of a *need* for options over tuneability, but my concern is not so much exposing this knob, but more how it's done ...

> I've found the options very useful for testing and debugging on the SVE
> side, but I can't comment on ptrauth.  Maybe someone else has a view?

Given that kvmtool was designed as a hacker tool, I find it quite useful to play around with those setting. I just have my gripes with those enable/disable pair, which are two related, but actually separate options, both polluting the command line options space and also being confusing to the user.
I would be much happier if we would have one option per feature and a parameter: "--ptrauth={enable,disable}". Omitting the option altogether defaults to "enabled-if-available". Specifying it will force it on or off, accompanied by an error message if either(?) if not possible. This would also remove the need for the somewhat awkward "don't enable both" check.
It would also more easily allow a common parser, to be used by both ptrauth and SVE, for instance.
We could even introduce an explicit "default" parameter value, just in case people want to spell this case out.

What do you think about this?

Cheers,
Andre.
> 
> > > The macros defined in the headers are not in sync and should be replaced
> > > from the upstream.  
> > 
> > This is no longer true, I guess?  
> 
> Ah yes, that comment can go.
> 
> Cheers
> ---Dave


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
