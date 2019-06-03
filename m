Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3875331E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zfRLeq9UUomSZINKbR8KkiTiGoGKb3DG8fOi3J3plE=; b=L9umAMTceOI8WS
	NmmtsH8661RBqIx01vpiL+wmoRQCmr+bRr9usULhy6B/l79grqBi095QZjhS6vpdrq+hMqbbg0WzW
	SqMeFaefyxv9+0WwLC6vxiTbinBKSRgekJMzSycsn55GNelfG+ZBbfZcb0gkctgk9DbD3jNgxmShP
	QTYgoM3S3qiCohUChFbEZQ1EIsFrGFnW+hoxVG7zOoFE06FD7JF75cqyOcyoPuJW5NT9R7qxZG0cV
	dgTTJa86+UU3E553l0aN/1hWgY5gbx9GPnSRFnuan1PGZQRP93GBy/zA1/pJzvZLNoNy+j8cYd5Oe
	WFJYZIyFUXLND92Ky1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnnD-0000mv-Rb; Mon, 03 Jun 2019 14:18:31 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnn7-0000ma-Kz
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:18:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DB8A15A2;
 Mon,  3 Jun 2019 07:18:25 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 948143F246;
 Mon,  3 Jun 2019 07:18:23 -0700 (PDT)
Date: Mon, 3 Jun 2019 15:18:21 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 5/9] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
Message-ID: <20190603141820.GQ28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-6-git-send-email-Dave.Martin@arm.com>
 <20190531180416.3e87f5ad@donnerap.cambridge.arm.com>
 <20190603112302.GN28398@e103592.cambridge.arm.com>
 <20190603150348.47368256@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603150348.47368256@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_071825_702410_D2C94F47 
X-CRM114-Status: GOOD (  32.90  )
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

On Mon, Jun 03, 2019 at 03:03:48PM +0100, Andre Przywara wrote:
> On Mon, 3 Jun 2019 12:23:03 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> Hi Dave,
> 
> > On Fri, May 31, 2019 at 06:04:16PM +0100, Andre Przywara wrote:
> > > On Thu, 30 May 2019 16:13:10 +0100
> > > Dave Martin <Dave.Martin@arm.com> wrote:
> > >   
> > > > From: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > > > 
> > > > This patch adds a runtime capabality for KVM tool to enable Arm64 8.3
> > > > Pointer Authentication in guest kernel. Two vcpu features
> > > > KVM_ARM_VCPU_PTRAUTH_[ADDRESS/GENERIC] are supplied together to enable
> > > > Pointer Authentication in KVM guest after checking the capability.
> > > > 
> > > > Command line options --enable-ptrauth and --disable-ptrauth are added
> > > > to use this feature. However, if those options are not provided then
> > > > also this feature is enabled if host supports this capability.  
> > > 
> > > I don't really get the purpose of two options, I think that's quite
> > > confusing. Should the first one either be dropped at all or called
> > > something with "force"?
> > > 
> > > I guess the idea is to fail if pointer auth isn't available, but the
> > > option is supplied?
> > > 
> > > Or maybe have one option with parameters?
> > > --ptrauth[,=enable,=disable]  
> > 
> > So, I was following two principles here, either or both of which may be
> > bogus:
> > 
> > 1) There should be a way to determine whether KVM turns a given feature
> > on or off (instead of magically defaulting to something).
> > 
> > 2) To a first approaximation, kvmtool should allow each major KVM ABI
> > feature to be exercised.
> > 
> > 3) By default, kvmtool should offer the maximum feature set possible to
> > the guest.
> > 
> > 
> > (3) is well established, but (1) and (2) may be open to question?
> > 
> > If we hold to both principles, it makes sense to have options
> > functionally equivalent to what I suggested (where KVM provides the
> > control in the first place), but there may be more convenient ways
> > to respell the options.
> > 
> > If we really can't decide, maybe it's better to drop the options
> > altogether until we have a real use case.
> 
> In general I prefer the lack of a *need* for options over tuneability, but my concern is not so much exposing this knob, but more how it's done ...
> 
> > I've found the options very useful for testing and debugging on the SVE
> > side, but I can't comment on ptrauth.  Maybe someone else has a view?
> 
> Given that kvmtool was designed as a hacker tool, I find it quite useful to play around with those setting. I just have my gripes with those enable/disable pair, which are two related, but actually separate options, both polluting the command line options space and also being confusing to the user.
> I would be much happier if we would have one option per feature and a parameter: "--ptrauth={enable,disable}". Omitting the option altogether defaults to "enabled-if-available". Specifying it will force it on or off, accompanied by an error message if either(?) if not possible. This would also remove the need for the somewhat awkward "don't enable both" check.
> It would also more easily allow a common parser, to be used by both ptrauth and SVE, for instance.
> We could even introduce an explicit "default" parameter value, just in case people want to spell this case out.
> 
> What do you think about this?

Happy to do something like that, though it looks like the decision to
drop the options altogether may preempt that...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
