Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C873A331B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kh1Bsz9PNlFbiLkBD87PG0n9UA4FH9N2Lx/Iz3mVkek=; b=Mzmyug4m679QDl
	RLhNiUdqSuhUVvW9CKK3yQDMVrNXTTzMMRpawFK2bJgT0CN5I17n1PZmi3RuR1vSIqo6bLBRJrkQs
	WiKN5qpoxjc2lBS2I42k+RP2UmI+UYXFdx0E+ywEcp+7rX4RbANbd/rmaJlTas9iTrxtJNlwdIpgX
	0JUZRRKpWbIeucIjpDwMHYp4GjlDcEB1ULLdFwy71o9vyE3Kv+Tg/GTm21+QbF1HeJjGY+aCr4ov1
	wphZyVzr/PvCiD+lzbJg+xNWU51gA9bvwR/MiK8uia3gUtEQkBh1X+iMfNhMrDqhy0VkLkq6R1Deg
	0xc0B43QNPd2nLe4xVYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXncL-0004nQ-CD; Mon, 03 Jun 2019 14:07:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXncF-0004n4-0t
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:07:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E51515A2;
 Mon,  3 Jun 2019 07:07:10 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73AA43F246;
 Mon,  3 Jun 2019 07:07:08 -0700 (PDT)
Date: Mon, 3 Jun 2019 15:07:06 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v3 5/9] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
Message-ID: <20190603140706.GB28296@fuggles.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-6-git-send-email-Dave.Martin@arm.com>
 <20190531180416.3e87f5ad@donnerap.cambridge.arm.com>
 <20190603112302.GN28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603112302.GN28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_070711_072445_C44EF1B6 
X-CRM114-Status: GOOD (  26.28  )
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
 Andre Przywara <andre.przywara@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 12:23:03PM +0100, Dave Martin wrote:
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
> 
> I've found the options very useful for testing and debugging on the SVE
> side, but I can't comment on ptrauth.  Maybe someone else has a view?

I'd prefer to drop them, to be honest. Whilst they may have been useful
during SVE development, it's not clear to me that they will continue to
be as useful now that things should be settling down. It's probably useful
to print out any features that we've explicitly enabled (or failed to
enable), but I'd stop there for the time being.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
