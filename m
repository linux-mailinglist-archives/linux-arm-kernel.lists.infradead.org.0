Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D55311504C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 13:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ja/5lPFiXwb2zY0961+b/ibPWDMqqZCspMFTt1ryBuo=; b=QEwbS2MZB4CCaJ
	5/terrtvXogEw3fAU5rIzCzCdX/UzcNCwoFGB7ZGN972C/u4xHhPUiNlpZv6BzlpcyeByg6n5DZl0
	h91eod7zsWdwD7cW/6zMtw7cqMzCm+sEDW3AbM5vqrClGLuba2YZ6fhwZvy9WbJXe7klD4GBf7ihQ
	hRxrTK7YVL33CTjTZftpit4hmHCZvUQji25FyGDA623u3RBZKDJohITGrehIxRx+SzZiRONll+ht3
	MNpahLX7Hw+O0a/6c9bAIg+8KJrebq2G34dizQGLWhmOuODrjb+MFOwVEQzI1aGQRkZEUE3hZjq9W
	aVwHoJH0S46D+o9H8lWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idCbx-00027m-Gp; Fri, 06 Dec 2019 12:21:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCbp-00027C-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 12:21:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A225731B;
 Fri,  6 Dec 2019 04:21:20 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6B6E03F52E; Fri,  6 Dec 2019 04:21:19 -0800 (PST)
Date: Fri, 6 Dec 2019 12:21:17 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] arm64: KVM: Invoke compute_layout() before
 alternatives are applied
Message-ID: <20191206122117.GE32767@arrakis.emea.arm.com>
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
 <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
 <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
 <20191206115716.GC32767@arrakis.emea.arm.com>
 <41a90c16d6958e70524c1c54b63a7f50@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41a90c16d6958e70524c1c54b63a7f50@www.loen.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_042121_726432_FC8DBE48 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 12:12:10PM +0000, Marc Zyngier wrote:
> On 2019-12-06 11:57, Catalin Marinas wrote:
> > On Thu, Nov 28, 2019 at 08:58:05PM +0100, Sebastian Andrzej Siewior
> > wrote:
> > > @@ -408,6 +410,8 @@ static void __init hyp_mode_check(void)
> > >  			   "CPU: CPUs started in inconsistent modes");
> > >  	else
> > >  		pr_info("CPU: All CPU(s) started at EL1\n");
> > > +	if (IS_ENABLED(CONFIG_KVM_ARM_HOST))
> > > +		kvm_compute_layout();
> > >  }
> > 
> > It looks like we call this unconditionally here even if the kernel was
> > booted at EL1.
> 
> It has always been the case. My motivation was to be able to debug
> this in a guest, because doing this on the host is... painful! ;-)
> 
> Feel free to condition it on !EL1 though.

I'll leave the patch as is. Thanks for confirming.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
