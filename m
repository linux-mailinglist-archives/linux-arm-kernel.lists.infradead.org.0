Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6A5D7273
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMt7FCrUSKtPLHm88JGwriTb23rfi3dmx2XvvNykavs=; b=fa5akl1Jca4CxC
	h/h9MBLjg3F6mDWC63232PSx8aS+BzY4GZZOhn/6JHiiRfasbfQqVb9qcuJMFv/aCEYkWiV7on3Gq
	VX1o7BLAUX2QcfI9iacHvHJK4Z4g9x9xbZltBIilDYXr3fMTXpxZgZVrruEbwRUxrgIniIwk7ALZL
	r93PYTChCW/LyEHKvZAnc8IRz6HIbGemXTqpMJuXxwcGd2AdGiHSyANYh3Okot6jSRfqm+KXoWxbb
	GBRFBqB9T8bj9/sD0uagzOKThBJbvf18TNilsAh7JAkttn52RGp6RxD84kvA3/lvqbQnFfuS/g1uR
	RWnYKxkXRgMtRrjBdiew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJP7-00054c-G8; Tue, 15 Oct 2019 09:46:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJP0-00054F-02
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:46:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EE1A28;
 Tue, 15 Oct 2019 02:46:01 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 776CD3F68E;
 Tue, 15 Oct 2019 02:46:00 -0700 (PDT)
Date: Tue, 15 Oct 2019 10:45:58 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Don't expose ZFR0 to userspace when
 SVE is not enabled
Message-ID: <20191015094557.GU27757@arm.com>
References: <20191014102113.16546-1-julien.grall@arm.com>
 <20191014164313.hu2dnf5rokntzhhp@willie-the-truck>
 <223c22d0-cfe3-4aed-6a8f-b80e44cb6548@arm.com>
 <20191014172016.w6ehilts4nl5tfva@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014172016.w6ehilts4nl5tfva@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_024602_083906_CBEE90FD 
X-CRM114-Status: GOOD (  22.02  )
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:20:17PM +0100, Will Deacon wrote:
> On Mon, Oct 14, 2019 at 05:57:46PM +0100, Suzuki K Poulose wrote:
> > On 14/10/2019 17:43, Will Deacon wrote:
> > > On Mon, Oct 14, 2019 at 11:21:13AM +0100, Julien Grall wrote:
> > > > The kernel may not support SVE if CONFIG_ARM64_SVE is not set and
> > > > will hide the feature from the from userspace.
> > > 
> > > I don't understand this sentence.
> > > 
> > > > Unfortunately, the fields of ID_AA64ZFR0_EL1 are still exposed and could
> > > > lead to undefined behavior in userspace.
> > > 
> > > Undefined in what way? Generally, we can't stop exposing things that
> > > we've exposed previously in case somebody has started relying on them, so
> > > this needs better justification.
> > 
> > We still expose them with this patch, but zero them out, if the SVE is not
> > supported. When SVE is enabled, we expose them as usual.
> 
> Sure, but if userspace was relying on the non-zero values, it's now broken.
> 
> What's missing from the patch description is the fact that this register is
> RAZ is SVE is not supported. Given that we get both the SVE HWCAP and
> PFR0.SVE field correct when the CONFIG option is disabled, then it's only
> very dodgy userspace which would parse the information in ZFR0 for this
> configuration and I think we can make this change as a bug fix. I'll try to
> write something sensible.

There is no SVE2 hardware yet.  On SVE(1) hardware, ZFR0 is still
reserved and all zero.

In theory userspace could look at the ZFR0 fields and deduce that SVE2 is 
valiable even when the kernel was built with SVE, but I think it highly
unlikely that any software is doing this today.

i.e., I'm pretty sure this horse is still in the stable, and I'd like to
see the door closed ;)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
