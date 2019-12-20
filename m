Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4DA127B7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 14:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nm1WJq2OxsS6MrvJXBfm3c37ox+7VBBCmmx9QhyPGQM=; b=fdUHndSUfvAY2725bv2NKP94V
	6h0VJLMkcLGX1yeK/ch6dOFZ6GbUnNIUWAnFxpYri/2L8cMhuM7o7cLu/RTMnIxADlrIPO9jaFGLX
	0He7Z3GANrVjUNRZUZMw2fLHcvTBrDRjYQ6U1SpX0qtg75OGO+xrWi53CVwSejZoSaZ/UqhRNbiEd
	tHRNQJauvtpTw00BqR+OUh2DzLxRRrjV/cwWLOM8oYl2fgetk7QM7ighRDVNNcObECopxMgtnHwRM
	Qd8kcrUyZzlrgiNtxaFfHDSbhMW42i4Ls0nXDK8b+5hzD1shyXe8fOIX0UwuW/wOS8jPHU1ikcw1+
	EI88WYioA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiI01-0006DW-IS; Fri, 20 Dec 2019 13:07:21 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiHzq-0006D1-S4
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 13:07:12 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iiHzl-0005uV-GW; Fri, 20 Dec 2019 14:07:05 +0100
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle =?UTF-8?Q?GICR=5FPENDBAS?=
 =?UTF-8?Q?ER=2EPTZ=20filed=20as=20RAZ?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 20 Dec 2019 13:07:05 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191220111833.1422-1-yuzenghui@huawei.com>
References: <20191220111833.1422-1-yuzenghui@huawei.com>
Message-ID: <71e3dcc00ad5ab8dffd732bfe7381705@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, andre.przywara@arm.com,
 eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_050711_053984_0DE9EC79 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: andre.przywara@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-20 11:18, Zenghui Yu wrote:
> Although guest will hardly read and use the PTZ (Pending Table Zero)
> bit in GICR_PENDBASER, let us emulate the architecture strictly.
> As per IHI 0069E 9.11.30, PTZ field is WO, and reads as 0.
>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>
> Noticed when checking all fields of GICR_PENDBASER register.
> But _not_ sure whether it's worth a fix, as Linux never sets
> the PTZ bit before enabling LPI (set GICR_CTLR_ENABLE_LPIS).
>
> And I wonder under which scenarios can this bit be written as 1.
> It seems difficult for software to determine whether the pending
> table contains all zeros when writing this bit.

This is a useless HW optimization, where it can avoid reading the
pending table the very first time you write to this register if
it is told that it is all zero. A decent ITS implementation
already has a mechanism to find out about the pending bits by
looking into the IMPDEF area (the first 1kB) of the pending table.
PTZ is just yet another way to do the same thing.

This can only happen once in the lifetime of the system (when 
allocating
the table), and Linux doesn't really care. As usual, the GIC is setting
the level of useless complexity pretty high...

>
>  virt/kvm/arm/vgic/vgic-mmio-v3.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index 7dfd15dbb308..ebc218840fc2 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -414,8 +414,11 @@ static unsigned long
> vgic_mmio_read_pendbase(struct kvm_vcpu *vcpu,
>  					     gpa_t addr, unsigned int len)
>  {
>  	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
> +	u64 value = vgic_cpu->pendbaser;
>
> -	return extract_bytes(vgic_cpu->pendbaser, addr & 7, len);
> +	value &= ~GICR_PENDBASER_PTZ;
> +
> +	return extract_bytes(value, addr & 7, len);
>  }
>
>  static void vgic_mmio_write_pendbase(struct kvm_vcpu *vcpu,

Otherwise looks good. I'll queue it with Eric's correction
to the subject line.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
