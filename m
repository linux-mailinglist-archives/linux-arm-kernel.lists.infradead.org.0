Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5951EE7B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4OiIUeUiQr0hT2VehjK+UshERcPQYCqDoFlCXmL0bAo=; b=f3JIZRI1hJMoGHN6CNZPGwVx0
	eqPMMER6g7AGSzfDtbM5pHTpd0gEkEKtuW06O4pJeeKW9fzd74FMG+er87LzFRncpSKNJDSIFcMUC
	Jcw78SQCVEgXtDrCWFLLqZvzBbR5v6Il/qtC5mmFKnLl8wRrNRXlUc1fmxy9IlO49A8zmklXHoQQ5
	o464T9zTFO7NjgWEzTYA9bTHqkwf1TJZFEkCFV27k907yRXxIENAIGv95C3DKNQH8kKLOziEFwnyl
	3BuLbG20jGgmXtmNyhTYg/wexW97gSXh/tjWZm5GWToV/G++B+hpS0g1mTlfccyVoe0DZiNfZS0at
	TImuvT5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrku-0004xm-7W; Thu, 04 Jun 2020 15:26:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrkd-0004x4-GP
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:25:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 037392063A;
 Thu,  4 Jun 2020 15:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591284351;
 bh=3NdFHDaY9HllPwJPcfCKGbdFqO+3yifo5hEKT887Uy4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HNPHDr5SXEA1XDXd8X3W9d7+FSC7XNV7kbTcsToB4pwfruti+OYCKAcds7BVWdcz4
 /W7jTcdotRFstbDm6q4ARPCosrTlU/fm4NRspRfvPFlfPmbJMctd/wd7ReKcOJGwJo
 CXzZr/u6FU5wt7nyGJZE4UNvxqwhn9neu3R86bpM=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgrkb-000HeM-HZ; Thu, 04 Jun 2020 16:25:49 +0100
MIME-Version: 1.0
Date: Thu, 04 Jun 2020 16:25:49 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
In-Reply-To: <20200604150122.GA3650@willie-the-truck>
References: <20200415082922.32709-1-ardb@kernel.org>
 <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
 <20200604154141.4983aeaa@why> <20200604150122.GA3650@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <fab4fb9e66fe48d82c9856a7d5839335@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, james.morse@arm.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_082557_678953_0DC66ED5 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-04 16:01, Will Deacon wrote:
> On Thu, Jun 04, 2020 at 03:41:41PM +0100, Marc Zyngier wrote:
>> Hi all,
>> 
>> On Tue, 28 Apr 2020 15:49:35 +0100
>> Will Deacon <will@kernel.org> wrote:
>> 
>> > On Wed, 15 Apr 2020 10:29:22 +0200, Ard Biesheuvel wrote:
>> > > TEXT_OFFSET on arm64 is a historical artifact from the early days of
>> > > the arm64 port where the boot protocol was basically 'copy this image
>> > > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
>> > > to put the swapper page tables. When the arm64 port was merged for
>> > > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
>> > > to allow the bootloader to discover it dynamically rather than hardcode
>> > > it to 512 KB.
>> > >
>> > > [...]
>> >
>> > Applied to arm64 (for-next/misc), thanks!
>> >
>> > [1/1] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it entirely
>> >       https://git.kernel.org/arm64/c/cfa7ede20f13
>> 
>> This breaks a guest kernel booted with kvmtool (tested on my d05).
>> Reverting it on top of 6929f71e46bd makes it work again. I haven't yet
>> investigated what is happening here though.
> 
> Weird, that's a combination I test, just not on d05. Are you using
> defconfig? Can you share your full kvmtool invication please?

Ah, good point. Not defconfig, but one that allows me to run the same
kernel on my whole zoo[1]. As for the kvmtool invocation, it is pretty
basic:

lkvm run -m 512 -c 4 -p earlycon -k arch/arm64/boot/Image

Thanks,

         M.

[1] http://www.loen.fr/tmp/Config-arm64-full
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
