Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BA214DCA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 15:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WZzfn14BGh5oahrOlpQfo///eDXPTbPcdadC+eQ33A4=; b=V9hB7AZBpScxA49EKeOq57jSM
	OuFUGpllKBDiESV44lAOmWJCOQ3x0Ucibv1Agib7DlGMK19OkYtKbEKURsX/6nx/837epeQu2+gRP
	MaNXJ2isF5bv3E/Wd4JiiPHd8B0Me6+hqHWsSpwmkhkb5M7rV5npzBdpto10SHiKLfWrCxWw8Mjdq
	efcSfaT/dS4I4cS+x7Mfphy0J2MU1Vh47rq9BPBfsvWInz94jzqFRMXjgFXkQ5Hhlkjd74XhCRXx3
	tunlbrWQyd0CedVQ6lDwjyrsBA2qQdnTpPhIFE3JGewnpm92bUf546O2hFLm8RackP4kgbPzD4/Tu
	gc8HfpMyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAbE-0004LB-Pj; Thu, 30 Jan 2020 14:15:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixAb2-0003qu-4U
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 14:15:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53C3420658;
 Thu, 30 Jan 2020 14:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580393703;
 bh=fLFS4MsI4Xqb1q1b9ZZYwHXmgmXnIzhWE8jaSJpBJnw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zawswnw40D17Q1KUd03C6hPxIndcJI5s2TZeJo6VFYYy5ucA3alcao9/hf6EqGLYR
 PjJsxO5AE8c/e8qs94nzYRBolHmEkXUlAEotO/IWphwKKXx6bKdk6HpLEWoTBezxnH
 yQesQwLUpAVuVw5/aKKSdzdx/IoP/veeZ1lFuBy8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ixAaz-002CVK-JM; Thu, 30 Jan 2020 14:15:01 +0000
MIME-Version: 1.0
Date: Thu, 30 Jan 2020 14:15:01 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH 23/23] KVM: arm64: Treat emulated TVAL TimerValue as a
 signed 32-bit integer
In-Reply-To: <aec2c75e-24d0-8157-14bd-72883a9df6bf@arm.com>
References: <20200130132558.10201-1-maz@kernel.org>
 <20200130132558.10201-24-maz@kernel.org>
 <aec2c75e-24d0-8157-14bd-72883a9df6bf@arm.com>
Message-ID: <6898d36c8453756418924bf4718219fd@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com, pbonzini@redhat.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_061504_223042_1333B291 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-30 14:11, Alexandru Elisei wrote:
> Hi,
> 
> On 1/30/20 1:25 PM, Marc Zyngier wrote:
>> From: Alexandru Elisei <alexandru.elisei@arm.com>
>> 
>> According to the ARM ARM, registers CNT{P,V}_TVAL_EL0 have bits 
>> [63:32]
>> RES0 [1]. When reading the register, the value is truncated to the 
>> least
>> significant 32 bits [2], and on writes, TimerValue is treated as a 
>> signed
>> 32-bit integer [1, 2].
>> 
>> When the guest behaves correctly and writes 32-bit values, treating 
>> TVAL
>> as an unsigned 64 bit register works as expected. However, things 
>> start
>> to break down when the guest writes larger values, because
>> (u64)0x1_ffff_ffff = 8589934591. but (s32)0x1_ffff_ffff = -1, and the
>> former will cause the timer interrupt to be asserted in the future, 
>> but
>> the latter will cause it to be asserted now.  Let's treat TVAL as a
>> signed 32-bit register on writes, to match the behaviour described in
>> the architecture, and the behaviour experimentally exhibited by the
>> virtual timer on a non-vhe host.
>> 
>> [1] Arm DDI 0487E.a, section D13.8.18
>> [2] Arm DDI 0487E.a, section D11.2.4
>> 
>> Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
>> [maz: replaced the read-side mask with lower_32_bits]
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> Fixes: 8fa761624871 ("KVM: arm/arm64: arch_timer: Fix CNTP_TVAL 
>> calculation")
>> Link: 
>> https://lore.kernel.org/r/20200127103652.2326-1-alexandru.elisei@arm.com
>> ---
>>  virt/kvm/arm/arch_timer.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
>> index f182b2380345..c6c2a9dde00c 100644
>> --- a/virt/kvm/arm/arch_timer.c
>> +++ b/virt/kvm/arm/arch_timer.c
>> @@ -805,6 +805,7 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu 
>> *vcpu,
>>  	switch (treg) {
>>  	case TIMER_REG_TVAL:
>>  		val = timer->cnt_cval - kvm_phys_timer_read() + timer->cntvoff;
>> +		val &= lower_32_bits(val);
> 
> This is correct, but how about making it val = lower_32_bits(val) for 
> more
> clarity? Apologies for not spotting it earlier :(

That's what it should have been, but I obviously typoed it. As it passed
all my tests, I didn't notice the issue. I'll queue a cleanup once Paolo
has a chance to pull this.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
