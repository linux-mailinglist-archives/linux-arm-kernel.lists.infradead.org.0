Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D158198DF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdOY3N3uPNsDhVOnNhO2T07D6acCDirkPOr3XPShUKg=; b=ix5p3ihq1dr/yt
	LnCRZxYUimOUjfub/ssGFwxIS0Z3a5iAloe/PBuputJNkqS/duQLxUaqAHREC5ske1mQM7fNvZ83b
	guADXpWE2KWHcKXK21au0YgEkscOV44PgmUUsRsVjHcFHcI8/YnIYlemH+qr0KvKm7OCkTEzyhOHu
	bHoVHYSoMYmy2r6r95b+Wa/T0PQcQrKEtPwrGSL7bqtGKmhATl26cT/61h58GsndQfwVOYpR3l0V3
	HHYu3ksFb9iSmizG2L7CXdqkNeBfLlVdJm1XCAaskVp7S4M23gEZvXm5YEYEnJm+8ef+aX7BVd9TQ
	BxP8Bl5lcRH1od85fv5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBvh-0005yi-MF; Tue, 31 Mar 2020 08:07:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBvX-0005xk-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:07:16 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7D09206F6;
 Tue, 31 Mar 2020 08:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585642033;
 bh=pR3KtS9JqxSwtoxlI+XX4Uem3z/HcC5CN+Wr9J/Rekc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UpShdRnjDu/kmIuKs89/r7lQiwaTpOxhwEmaJs7lpMZHTQnNgqbdTu6hLdxMd5cSf
 rUrj1KwPVPB8loOZlZxt13HURDwSwcZL+jZ6qisDn4NvI4BpFecTIzKjtbRk+Fp4xi
 ojOj2Y/dah/9X7NNozyrA7rzRnLRfZzniOmHE+W8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJBvT-00H774-TH; Tue, 31 Mar 2020 09:07:12 +0100
Date: Tue, 31 Mar 2020 09:07:09 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] KVM: arm64: vgic-v3: Clear pending bit in guest memory
 after synchronization
Message-ID: <20200331090709.17d2087d@why>
In-Reply-To: <20200331031245.1562-1-yuzenghui@huawei.com>
References: <20200331031245.1562-1-yuzenghui@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, kvmarm@lists.cs.columbia.edu,
 eric.auger@redhat.com, andre.przywara@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_010715_491647_CC6C09A0 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: suzuki.poulose@arm.com, andre.przywara@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On Tue, 31 Mar 2020 11:12:45 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

> When LPI support is enabled at redistributor level, VGIC will potentially
> load the correspond LPI penging table and sync it into the pending_latch.
> To avoid keeping the 'consumed' pending bits lying around in guest memory
> (though they're not used), let's clear them after synchronization.
> 
> The similar work had been done in vgic_v3_lpi_sync_pending_status().
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  virt/kvm/arm/vgic/vgic-its.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index d53d34a33e35..905760bfa404 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -435,6 +435,7 @@ static int its_sync_lpi_pending_table(struct kvm_vcpu *vcpu)
>  
>  	for (i = 0; i < nr_irqs; i++) {
>  		int byte_offset, bit_nr;
> +		bool status;
>  
>  		byte_offset = intids[i] / BITS_PER_BYTE;
>  		bit_nr = intids[i] % BITS_PER_BYTE;
> @@ -447,22 +448,32 @@ static int its_sync_lpi_pending_table(struct kvm_vcpu *vcpu)
>  			ret = kvm_read_guest_lock(vcpu->kvm,
>  						  pendbase + byte_offset,
>  						  &pendmask, 1);
> -			if (ret) {
> -				kfree(intids);
> -				return ret;
> -			}
> +			if (ret)
> +				goto out;
>  			last_byte_offset = byte_offset;
>  		}
>  
> +		status = pendmask & (1 << bit_nr);
> +
>  		irq = vgic_get_irq(vcpu->kvm, NULL, intids[i]);
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> -		irq->pending_latch = pendmask & (1U << bit_nr);
> +		irq->pending_latch = status;
>  		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>  		vgic_put_irq(vcpu->kvm, irq);
> +
> +		if (status) {
> +			/* clear consumed data */
> +			pendmask &= ~(1 << bit_nr);
> +			ret = kvm_write_guest_lock(vcpu->kvm,
> +						   pendbase + byte_offset,
> +						   &pendmask, 1);
> +			if (ret)
> +				goto out;
> +		}
>  	}
>  
> +out:
>  	kfree(intids);
> -
>  	return ret;
>  }
>  

I've been thinking about this, and I wonder why we don't simply clear
the whole pending table instead of carefully wiping it one bit at a
time. My reasoning is that if a LPI isn't mapped, then it cannot be made
pending the first place.

And I think there is a similar issue in vgic_v3_lpi_sync_pending_status().
Why sync something back from the pending table when the LPI wasn't
mapped yet? This seems pretty bizarre, as the GITS_TRANSLATER spec says
that the write to this register is ignored when:

"- The EventID is mapped to an Interrupt Translation Table and the
EventID is within the range specified by MAPD on page 5-107, but the
EventID is unmapped."

(with the added bonus in the form of a type: the first instance of
"EventID" here should obviously be "DeviceID").

What do you think?

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
