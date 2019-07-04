Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59BB5F87C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 14:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkGr1Xj6kigkhveI32tcThOgeS6IQ/NBoO8cabrib0E=; b=nP8e3Nh6pfdOME
	gl8nLHKOPYzAQ4QejokZyecWrk9T4le6u6DW62DWXsKNv2OhkuPKtwXKJv3P7D8rNg9xGTdrTW/sk
	/eH8U5XML6CgV2gD8dY0lTlQmGVavFFz1aGuj2q0ns8O414TZcxpuW8HxHaMzIVHun7DalikqC4H9
	RBu3UH7Wj8lS4yXv847wcqgqjfeJNPZXDPxRIMZT1qMS6PzFEg8+pblSiNXf//sqXeZ1ddze5svj3
	98qgXVVXcMcUkdZNwinULOnwDqE0G7MU6nT0b30iqiroHHicSDHs7rJkQUoE5DakRk3OXsLvjhyOH
	YgDoYxVbmqfkU7RaA6EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj195-0003Mm-Dq; Thu, 04 Jul 2019 12:47:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj18u-0003Lr-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 12:47:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5368928;
 Thu,  4 Jul 2019 05:47:14 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 820843F718;
 Thu,  4 Jul 2019 05:47:12 -0700 (PDT)
Date: Thu, 4 Jul 2019 13:47:10 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
Message-ID: <20190704124709.GB2790@e103592.cambridge.arm.com>
References: <1562175770-10952-1-git-send-email-Dave.Martin@arm.com>
 <86wogynrbt.wl-marc.zyngier@arm.com>
 <1f39cc48-12d5-2e56-c218-b6b0dd05d8ce@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f39cc48-12d5-2e56-c218-b6b0dd05d8ce@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_054716_625920_DE291614 
X-CRM114-Status: GOOD (  13.04  )
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
Cc: Okamoto Takayuki <tokamoto@jp.fujitsu.com>,
 Christoffer Dall <cdall@kernel.org>, kvm <kvm@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 02:24:42PM +0200, Paolo Bonzini wrote:
> On 04/07/19 10:20, Marc Zyngier wrote:
> > +KVM, Paolo and Radim,
> > 
> > Guys, do you mind picking this single patch and sending it to Linus?
> > That's the only fix left for 5.2. Alternatively, I can send you a pull
> > request, but it feels overkill.
> 
> Sure, will do.
> 
> Paolo

Thanks all for the quick turnaround!

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
