Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931049033D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJnLDg4YAQ3OXUJpnjSJ28gLMu5iGVYTcpvFH/FU3vo=; b=bXlaZG9JnDVBUg
	ePINM9MsnFOAw/ABEApzM9/LaplDo9aG33uKRVEL3GkU4P6Ff7DpEIBbU7hECm3L83xnwzPs/TrJ9
	WX75oBplxVQjRVXtPB17PC/PkE6/J82L4IpPkEpiiZz/T0G/W31v9wJTieQQA/2M2+FlAM6UpbCui
	jdPB130KMd/cNg6ra40DWPI9EZDcc9GyNAjpghIEG+EhWatazqHF0ieE/4LaG9XKhYfjoYH+/qmBn
	hgxwIkXjwJUhzf1WhjrIjlNjqvmRfR3QJRB4+fhws0jp3wn2t06OhkRNsumetPeTgNEJroNCE9Fxq
	J14G+51p3UR4GXxT1CDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycSN-0006Y7-UN; Fri, 16 Aug 2019 13:39:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hycS7-0006Xn-2p
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 13:39:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70720344;
 Fri, 16 Aug 2019 06:39:34 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 738CA3F694;
 Fri, 16 Aug 2019 06:39:33 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64/kvm: remove VMID rollover I-cache maintenance
To: Mark Rutland <mark.rutland@arm.com>
References: <20190806155737.39307-1-mark.rutland@arm.com>
Message-ID: <1dca0489-9e85-cb8f-b846-b6da65f41773@arm.com>
Date: Fri, 16 Aug 2019 14:39:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190806155737.39307-1-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_063935_166250_12ACD443 
X-CRM114-Status: GOOD (  12.54  )
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
 Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 06/08/2019 16:57, Mark Rutland wrote:
> For VPIPT I-caches, we need I-cache maintenance on VMID rollover to
> avoid an ABA problem. Consider a single vCPU VM, with a pinned stage-2,
> running with an idmap VA->IPA and idmap IPA->PA. If we don't do
> maintenance on rollover:
> 
>         // VMID A
>         Writes insn X to PA 0xF
>         Invalidates PA 0xF (for VMID A)
> 
>         I$ contains [{A,F}->X]
> 
>         [VMID ROLLOVER]
> 
>         // VMID B
>         Writes insn Y to PA 0xF
>         Invalidates PA 0xF (for VMID B)
> 
>         I$ contains [{A,F}->X, {B,F}->Y]
> 
>         [VMID ROLLOVER]
> 
>         // VMID A
>         I$ contains [{A,F}->X, {B,F}->Y]
> 
>         Unexpectedly hits stale I$ line {A,F}->X.
> 
> However, for PIPT and VIPT I-caches, the VMID doesn't affect lookup or
> constrain maintenance. Given the VMID doesn't affect PIPT and VIPT
> I-caches, and given VMID rollover is independent of changes to stage-2
> mappings, I-cache maintenance cannot be necessary on VMID rollover for
> PIPT or VIPT I-caches.
> 
> This patch removes the maintenance on rollover for VIPT and PIPT
> I-caches. At the same time, the unnecessary colons are removed from the
> asm statement to make it more legible.

Makes sense!

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
