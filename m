Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E981E92A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 18:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nlf5k57QoKFK5xw6vAazD1pyMmF2qtoQtVkUBQYfvMA=; b=fWZCx45yvzSBTg2fYeinmfVAC
	ZFjrY1Gd7dIzC1g8E1i3C8i1PkJll/NS5A661r5tAC5Sc/1kR5zYI2uZEEgsL+QUCaAuJQ/zRe6uk
	BkB6a/niUaArFMFQEupjb1XzuZrSZSCxSWqsqb6Tept5PQByvvW7JOJ0ztXaw9Z2BoasBjrdWND2m
	d9IZicZ3JeET8EWFoo2bBqKGmlxzXFiCnywq8nu5PyaZqahNSZQd36UGiNB2dYQqLKeUCoeP9Sulp
	xSbtsl60fX/l9bQUScpg+3WSLlbd1ODqg2r6WsCP01YzdovNsDkPvCNpfGEBc7AoCOHr6xDd6rofO
	5pxxpATjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf4Oi-0000HG-8O; Sat, 30 May 2020 16:31:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf4OY-0000Gv-UB
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 16:31:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C55DD207F9;
 Sat, 30 May 2020 16:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590856297;
 bh=JfAXX86jsFaQs68I//x89vYrH6wJwLVZOjVj42YlNnQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H3jV1cd/WX6RtRn97g2b7AdNitzkpiJv2wMpkibU2NjBic0MddIGijSa/TM2c8hCl
 sAzSe/r3kR1TfdQ7O9hH9p0NEBirfE9ej7aRtsqQ+ZQgjW8VEIwB56uY2jdp9qPtLv
 Yx012vWn1cr+EWTen+4jLGJfToIf5L0mQIXYz7Hc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jf4OW-00GYve-3E; Sat, 30 May 2020 17:31:36 +0100
MIME-Version: 1.0
Date: Sat, 30 May 2020 17:31:36 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH RFC] KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset
 when S2FWB is supported
In-Reply-To: <a1a1961a-2eae-b26c-e607-ab5c0c929f37@arm.com>
References: <20200415072835.1164-1-yuzenghui@huawei.com>
 <e99bc07d-0dd4-055c-808f-fd9cde88d2fc@arm.com>
 <a1a1961a-2eae-b26c-e607-ab5c0c929f37@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <13db879dff56d091f98f7c5416ab1535@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com, yuzenghui@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_093139_013856_43F3F580 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On 2020-05-30 11:46, Alexandru Elisei wrote:
> Hi,

[...]

>>> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
>>> index 48d0ec44ad77..e6378162cdef 100644
>>> --- a/virt/kvm/arm/arm.c
>>> +++ b/virt/kvm/arm/arm.c
>>> @@ -983,8 +983,11 @@ static int kvm_arch_vcpu_ioctl_vcpu_init(struct 
>>> kvm_vcpu *vcpu,
>>>  	/*
>>>  	 * Ensure a rebooted VM will fault in RAM pages and detect if the
>>>  	 * guest MMU is turned off and flush the caches as needed.
>>> +	 *
>>> +	 * S2FWB enforces all memory accesses to RAM being cacheable, we
>>> +	 * ensure that the cache is always coherent.
>>>  	 */
>>> -	if (vcpu->arch.has_run_once)
>>> +	if (vcpu->arch.has_run_once && 
>>> !cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
>> I think userspace does not invalidate the icache when loading a new 
>> kernel image,
>> and if the guest patched instructions, they could potentially still be 
>> in the
>> icache. Should the icache be invalidated if FWB is present?
> 
> I noticed that this was included in the current pull request and I
> remembered that
> I wasn't sure about this part. Did some more digging and it turns out 
> that FWB
> implies no cache maintenance needed for *data to instruction*
> coherence. From ARM
> DDI 0487F.b, page D5-2635:
> 
> "When ARMv8.4-S2FWB is implemented, the architecture requires that
> CLIDR_EL1.{LOUU, LOIUS} are zero so that no levels of data cache need 
> to be
> cleaned in order to manage coherency with instruction fetches".
> 
> However, there's no mention that I found for instruction to data 
> coherence,
> meaning that the icache would still need to be invalidated on each vcpu 
> in order
> to prevent fetching of patched instructions from the icache. Am I
> missing something?

I think you are right, and this definitely matches the way we deal with
the icache on the fault path. For some bizarre reason, I always assume
that FWB implies DIC, which isn't true at all.

I'm planning to address it as follows. Please let me know what you 
think.

Thanks,

         M.

 From f7860d1d284f41afea176cc17e5c9d895ae665e9 Mon Sep 17 00:00:00 2001
 From: Marc Zyngier <maz@kernel.org>
Date: Sat, 30 May 2020 17:22:19 +0100
Subject: [PATCH] KVM: arm64: Flush the instruction cache if not 
unmapping the
  VM on reboot

On a system with FWB, we don't need to unmap Stage-2 on reboot,
as even if userspace takes this opportunity to repaint the whole
of memory, FWB ensures that the data side stays consistent even
if the guest uses non-cacheable mappings.

However, the I-side is not necessarily coherent with the D-side
if CTR_EL0.DIC is 0. In this case, invalidate the i-cache to
preserve coherency.

Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
Fixes: 892713e97ca1 ("KVM: arm64: Sidestep stage2_unmap_vm() on vcpu 
reset when S2FWB is supported")
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
  arch/arm64/kvm/arm.c | 14 ++++++++++----
  1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index b0b569f2cdd0..d6988401c22a 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -989,11 +989,17 @@ static int kvm_arch_vcpu_ioctl_vcpu_init(struct 
kvm_vcpu *vcpu,
  	 * Ensure a rebooted VM will fault in RAM pages and detect if the
  	 * guest MMU is turned off and flush the caches as needed.
  	 *
-	 * S2FWB enforces all memory accesses to RAM being cacheable, we
-	 * ensure that the cache is always coherent.
+	 * S2FWB enforces all memory accesses to RAM being cacheable,
+	 * ensuring that the data side is always coherent. We still
+	 * need to invalidate the I-cache though, as FWB does *not*
+	 * imply CTR_EL0.DIC.
  	 */
-	if (vcpu->arch.has_run_once && 
!cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
-		stage2_unmap_vm(vcpu->kvm);
+	if (vcpu->arch.has_run_once) {
+		if (!cpus_have_final_cap(ARM64_HAS_STAGE2_FWB))
+			stage2_unmap_vm(vcpu->kvm);
+		else
+			__flush_icache_all();
+	}

  	vcpu_reset_hcr(vcpu);

-- 
2.26.2


-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
