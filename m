Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E421ACE9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q2QQsXcrHQCMA1aG2fnPLLzmMTBzQ5E8rURHA9Z3/rA=; b=UxryM2tq+2DVfzu2AOZHBFR+e
	cG0g6+a9XyGwRyHLtE2JAgAak2RcG2D9oybu7WWguQ4AtfTwHd0XGKDLbc3yweA8CG//BRavFaxck
	JGn2veFIRZU6kohxzJHiummXFNZ1h7Zt/1Q655HPWWZC72rprEufJqurr46SyB66G7xed5OVrwG2y
	O+LUjgcSxh4R6TubQJJDVaquCdZHmwkWNGZeZpn1dzzmO9pFrQGIMPJubUrOp9URPQ48VUXEr78Ke
	WjMOuS/wuldjqXywQ05rfG6VcOlSlJGaRzrNWf/acCE4D9c9njqJR2gCorqwHTC2NFZCNZro7EGe5
	woT/J3DWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8F0-0005xI-Py; Thu, 16 Apr 2020 17:23:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8Et-0005wC-1k
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:23:48 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 621042076D;
 Thu, 16 Apr 2020 17:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587057826;
 bh=Dnm0mMP7sM6v2yRBoZW9YSazaAPo3hTRbZ0BkC844Z0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rkLhDD4qLp8KP0RMHSLSNkm+a9R8itTqzZcRU6uHqEpSdfcDBpKQU4gy+moAUKA6s
 K3q0EbbWzED59GDX/yx+5pTv9236qIu06jiOhGUfN0KnGmhFU4mqZb9204qDbu2jwM
 WXbUH9EgXwILz6UIGPvBkmqXKhZHwZIkkj2z+KQ4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jP8Eq-003x6L-Pt; Thu, 16 Apr 2020 18:23:44 +0100
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 18:23:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 2/2] KVM: arm64: vgic-its: Fix memory leak on the error
 path of vgic_add_lpi()
In-Reply-To: <610f2195-f85d-4beb-b711-47d63bb393d0@huawei.com>
References: <20200414030349.625-1-yuzenghui@huawei.com>
 <20200414030349.625-3-yuzenghui@huawei.com>
 <610f2195-f85d-4beb-b711-47d63bb393d0@huawei.com>
Message-ID: <2173e13527cc9578838f0364ad29f6cc@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, kvmarm@lists.cs.columbia.edu,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 wanghaibin.wang@huawei.com, yezengruan@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_102347_133984_8B9DBF85 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, yezengruan@huawei.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-16 02:17, Zenghui Yu wrote:
> On 2020/4/14 11:03, Zenghui Yu wrote:
>> If we're going to fail out the vgic_add_lpi(), let's make sure the
>> allocated vgic_irq memory is also freed. Though it seems that both
>> cases are unlikely to fail.
>> 
>> Cc: Zengruan Ye <yezengruan@huawei.com>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>   virt/kvm/arm/vgic/vgic-its.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>> 
>> diff --git a/virt/kvm/arm/vgic/vgic-its.c 
>> b/virt/kvm/arm/vgic/vgic-its.c
>> index d53d34a33e35..3c3b6a0f2dce 100644
>> --- a/virt/kvm/arm/vgic/vgic-its.c
>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>> @@ -98,12 +98,16 @@ static struct vgic_irq *vgic_add_lpi(struct kvm 
>> *kvm, u32 intid,
>>   	 * the respective config data from memory here upon mapping the 
>> LPI.
>>   	 */
>>   	ret = update_lpi_config(kvm, irq, NULL, false);
>> -	if (ret)
>> +	if (ret) {
>> +		kfree(irq);
>>   		return ERR_PTR(ret);
>> +	}
>>     	ret = vgic_v3_lpi_sync_pending_status(kvm, irq);
>> -	if (ret)
>> +	if (ret) {
>> +		kfree(irq);
>>   		return ERR_PTR(ret);
>> +	}
> 
> Looking at it again, I realized that this error handling is still not
> complete. Maybe we should use a vgic_put_irq() instead so that we can
> also properly delete the vgic_irq from lpi_list.

Yes, this is a more correct fix indeed. There is still a bit of a 
bizarre
behaviour if you have two vgic_add_lpi() racing to create the same 
interrupt,
which is pretty dodgy anyway (it means we have two MAPI at the same 
time...).
You end-up with re-reading the state from memory... Oh well.

> Marc, what do you think? Could you please help to fix it, or I can
> resend it.

I've fixed it as such (with a comment for a good measure):

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index 3c3b6a0f2dce..c012a52b19f5 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -96,16 +96,19 @@ static struct vgic_irq *vgic_add_lpi(struct kvm 
*kvm, u32 intid,
  	 * We "cache" the configuration table entries in our struct 
vgic_irq's.
  	 * However we only have those structs for mapped IRQs, so we read in
  	 * the respective config data from memory here upon mapping the LPI.
+	 *
+	 * Should any of these fail, behave as if we couldn't create the LPI
+	 * by dropping the refcount and returning the error.
  	 */
  	ret = update_lpi_config(kvm, irq, NULL, false);
  	if (ret) {
-		kfree(irq);
+		vgic_put_irq(kvm, irq);
  		return ERR_PTR(ret);
  	}

  	ret = vgic_v3_lpi_sync_pending_status(kvm, irq);
  	if (ret) {
-		kfree(irq);
+		vgic_put_irq(kvm, irq);
  		return ERR_PTR(ret);
  	}


Let me know if you agree with that.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
