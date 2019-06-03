Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4944032E5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1j9e1SeLxB8Y/bkLX8H4LkGrkXj4cDwfeqc0wrgvdR4=; b=LDWlAX3veyATa8
	c4/OUieo6W1SwVb0uCbTyjRnlISZWuoTTkX2QlqMREOyZucA9V29R/ZlZINwRbyAVZs78LNSHXOlO
	fZ2UDNhyxJ5y1415rsD8meL/na9g7lP43jjrhNtNx8J7BmILYtrZlmadhaGickYs5lWgeqSE2qfik
	/egsDFq3TAoYJOz3HYepgwyOKJ9J1aLXC7c05QMIjZkEQDFln5jLr48zeSDKqi8ImkEjSDdyOUvD7
	3QHPAgBD78sJoX4ilviwY2d2GhY32V7VXrMUqkVMu0FE6paT894I9VevBv8Ps2D+JGmUQYmXegAYY
	K3tiZQvmCAhoKjjNy4Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkv8-0002h0-63; Mon, 03 Jun 2019 11:14:30 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkv1-0002gE-8j
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:14:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE85B15AB;
 Mon,  3 Jun 2019 04:14:22 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FB5E3F5AF;
 Mon,  3 Jun 2019 04:14:20 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:14:18 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 7/9] arm64: Make ptrauth enable/disable
 diagnostics more user-friendly
Message-ID: <20190603111418.GL28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-8-git-send-email-Dave.Martin@arm.com>
 <20190531180501.51459aef@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180501.51459aef@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041423_308839_2A54B365 
X-CRM114-Status: GOOD (  22.19  )
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

On Fri, May 31, 2019 at 06:05:01PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:12 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > To help the user understand what is going on, amend ptrauth
> > configuration diagnostic messages to refer to command line options
> > by the exact name used on the command line.
> > 
> > Also, provide a clean diagnostic when ptrauth is requested, but not
> > availble.  The generic "Unable to initialise vcpu" message is
> > rather cryptic for this case.
> 
> Again I don't see much value in having this as a separate patch, as it
> basically just touches code introduced two patches earlier. I think it
> should be merged into 5/9.

Same as with the previous patch, I though it was better to keep it
separate for review purposes for now, since it makes changes on top of
Amit's existing patch.

> > Since we now don't attempt to enable ptrauth at all unless KVM
> > reports the relevant capabilities, remove the error message for
> > that case too: in any case, we can't diagnose precisely why
> > KVM_ARM_VCPU_INIT failed, so the message may be misleading.
> 
> So this leaves the only point where we use .enable_ptrauth to that error
> message about the host not supporting it. Not sure if that's worth this
> separate option?

There is indeed a question to be resolved here.  See my response to the
penultimate patch.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
