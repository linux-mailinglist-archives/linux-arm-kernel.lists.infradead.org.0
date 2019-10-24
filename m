Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C6CE3481
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BRaAZe2IDg6N6NFAVzu8EQ3ZkO9AavPJsT75tITz/Y8=; b=PI9lylRvQlO2JUBL8tWVjsT4x
	jc3E4sIa2bLmYz02k53k+abkX2JhPXUfPKDzttGs+ljHVH32VnnXv0mBWUn0zjHNNoTBTQ7eHvbvk
	2Dof1A+VkFMH6ivHweuEvC78/Td01WHKmI9V59OIUn3FyfYQ/RDKPDCyeoG5vnphhNvRW+IbcsRPD
	9WshFd7/v+sE+DpJYyXA/B3Al37BLt22EK/l6gcrvpVVOQeX5L8GqHHbKeIf8ooaByLAMqAp0VX2w
	QJuz85k2fC8QOkdX8jc7COd3gaefKlO59fosVfoxyHhOase1AjIbv7iEAYHseGI6ZgIPZ/byA2gGJ
	lGlWV8Fgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdNQ-0006VZ-SA; Thu, 24 Oct 2019 13:42:08 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNdMy-0006E1-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:41:42 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNdMr-0000ve-QZ; Thu, 24 Oct 2019 15:41:33 +0200
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH RFC 0/7] Support KVM being compiled as a kernel module on
 arm64
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 14:41:33 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
 <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
Message-ID: <c17e8b0f32902a0811cc6a4ed71e607e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: james.morse@arm.com, shannon.zhao@linux.alibaba.com,
 kvmarm@lists.cs.columbia.edu, suzuki.poulose@arm.com, christoffer.dall@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_064140_630935_360562C9 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-24 11:58, James Morse wrote:
> Hi Shannon,
>
> On 24/10/2019 11:27, Shannon Zhao wrote:
>> Curently KVM ARM64 doesn't support to compile as a kernel module. 
>> It's
>> useful to compile KVM as a module.
>
>> For example, it could reload kvm without rebooting host machine.
>
> What problem does this solve?
>
> KVM has some funny requirements that aren't normal for a module. On
> v8.0 hardware it must
> have an idmap. Modules don't usually expect their code to be
> physically contiguous, but
> KVM does. KVM influences they way some of the irqchip stuff is set up
> during early boot
> (EOI mode ... not that I understand it).

We change the EOImode solely based on how we were booted (EL2 or not).
KVM doesn't directly influences that (it comes in the picture much
later).

> (I think KVM-as-a-module on x86 is an artifact of how it was 
> developed)
>
>
>> This patchset support this feature while there are some limitations
>> to be solved. But I just send it out as RFC to get more suggestion 
>> and
>> comments.
>
>> Curently it only supports for VHE system due to the hyp code section
>> address variables like __hyp_text_start.
>
> We still need to support !VHE systems, and we need to do it with a
> single image.
>
>
>> Also it can't call
>> kvm_update_va_mask when loading kvm module and kernel panic with 
>> below
>> errors. So I make kern_hyp_va into a nop funtion.
>
> Making this work for the single-Image on v8.0 is going to be a
> tremendous amount of work.
> What is the payoff?

I can only agree. !VHE is something we're going to support for the 
foreseeable
future (which is roughly equivalent to "forever"), and modules have 
properties
that are fundamentally incompatible with the way KVM works with !VHE.

If the only purpose of this work is to be able to swap KVM 
implementations
in a development environment, then it really isn't worth the effort.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
