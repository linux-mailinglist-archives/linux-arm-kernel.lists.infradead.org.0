Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC5CE2FA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nPZK0zeFxpQj3nR0r7jC/M6Dypusx78FkOZQLmDMLc=; b=qC9I5/DXmiytCG
	ViqUgJFZtb2S6VU6uliKyYUEQzaVe8TERUG2gYtQDfKJ2Gop8rUimTpmrzPW+1V6O8b4jI2pt4r1m
	y2kC31lbFZoPImPFEIP0AmHjLpLXH6NK81grq9Jwomzu17F3JYlD8MzOAdSjXfALIMY6MGc43jlZm
	/jRdxWj4qXVZPHkDxHbvGFLjw2xSi/PiF71/O2QNdt2VSzmSkbgKezO13mFWFfrwhO3ihomx3/h59
	DWrzAClfCPp9It6Pwn/DiQ0/OuVZa+HAhOMe15obRS/ZI1Swb4o0iTeMzXJRxeQn/hTuyG+qv0xVv
	KKAmhg7Sk7AAESrN2C/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNapv-0004It-JH; Thu, 24 Oct 2019 10:59:23 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNapj-0004H5-Gg
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:59:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 050F6497;
 Thu, 24 Oct 2019 03:59:01 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FA893F71A;
 Thu, 24 Oct 2019 03:58:55 -0700 (PDT)
Subject: Re: [PATCH RFC 0/7] Support KVM being compiled as a kernel module on
 arm64
To: Shannon Zhao <shannon.zhao@linux.alibaba.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
From: James Morse <james.morse@arm.com>
Message-ID: <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
Date: Thu, 24 Oct 2019 11:58:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_035911_598776_E74A7A1A 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, christoffer.dall@arm.com,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shannon,

On 24/10/2019 11:27, Shannon Zhao wrote:
> Curently KVM ARM64 doesn't support to compile as a kernel module. It's
> useful to compile KVM as a module.

> For example, it could reload kvm without rebooting host machine.

What problem does this solve?

KVM has some funny requirements that aren't normal for a module. On v8.0 hardware it must
have an idmap. Modules don't usually expect their code to be physically contiguous, but
KVM does. KVM influences they way some of the irqchip stuff is set up during early boot
(EOI mode ... not that I understand it).

(I think KVM-as-a-module on x86 is an artifact of how it was developed)


> This patchset support this feature while there are some limitations
> to be solved. But I just send it out as RFC to get more suggestion and
> comments.

> Curently it only supports for VHE system due to the hyp code section
> address variables like __hyp_text_start.

We still need to support !VHE systems, and we need to do it with a single image.


> Also it can't call
> kvm_update_va_mask when loading kvm module and kernel panic with below
> errors. So I make kern_hyp_va into a nop funtion.

Making this work for the single-Image on v8.0 is going to be a tremendous amount of work.
What is the payoff?


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
