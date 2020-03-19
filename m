Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E62318BA57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3cEAmKinGUXwl8TyeHv1jWlssSnOMnLx4JJ281aOzg=; b=PaRcqwudtiqExN
	gJefXzrESfsCaB186QpusTOdwjCmVFkFYU51EZvFyPWTNFJR+aseQWViN0X6KldTpySxqep5gQULk
	3UJDkdyGi4tmVNbBxhZwhtmUXChBrkU4Sqh9MY++Ft9WNwKclg+L3vi73n3GqIEAWvgX48ykOPaZL
	4+dWJPgZKnH6Gsa0ensBATevJH6IVdiGOV4LyJ9bfvQiXA/RkP7+NuJvM49yFJZYz/iGxxy0qHSex
	Nud3VhkbQpYr+RSYAfXOzI5hcbUvR3ck81B7F7z6UZeDPCASRa9IKSaKM1nkM7Un/EJgbDPOlMKb6
	PkPzinBt8o7tgrZMg0+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwko-0000Nc-AW; Thu, 19 Mar 2020 15:06:38 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwkd-0000Jp-NR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584630382;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=74WKfLExhu1TCeh0PZbO5Glf65zWrT+Fd+frCpLn2rU=;
 b=C33tuJOEj8Hlasjv69LeiytjxO7tpBAglDwSwHffEaq0xgep7yocdVPEMZOyFKekCcgBUO
 BMvP4zrm3JZ1oJB8rRDiznKqUwBT5ElmW8IFOsv98XJrUmGbVs6yrQVtYk4F48vVJG62Hx
 02OKW4QXxy0LFguL6Xk5MI5XTLNgw6g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-jfJBNrxdPtCgGuFEhYASkA-1; Thu, 19 Mar 2020 11:06:06 -0400
X-MC-Unique: jfJBNrxdPtCgGuFEhYASkA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5FA3100550E;
 Thu, 19 Mar 2020 15:06:03 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 906618D55E;
 Thu, 19 Mar 2020 15:06:00 +0000 (UTC)
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
Date: Thu, 19 Mar 2020 16:05:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-24-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_080627_843349_AD0F41A5 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> The vgic-state debugfs file could do with showing the pending state
> of the HW-backed SGIs. Plug it into the low-level code.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/vgic/vgic-debug.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-debug.c b/virt/kvm/arm/vgic/vgic-debug.c
> index cc12fe9b2df3..b13a9e3f99dd 100644
> --- a/virt/kvm/arm/vgic/vgic-debug.c
> +++ b/virt/kvm/arm/vgic/vgic-debug.c
> @@ -178,6 +178,8 @@ static void print_irq_state(struct seq_file *s, struct vgic_irq *irq,
>  			    struct kvm_vcpu *vcpu)
>  {
>  	char *type;
> +	bool pending;
nit: can be directly initialized to irq->pending_latch
> +
>  	if (irq->intid < VGIC_NR_SGIS)
>  		type = "SGI";
>  	else if (irq->intid < VGIC_NR_PRIVATE_IRQS)
> @@ -190,6 +192,16 @@ static void print_irq_state(struct seq_file *s, struct vgic_irq *irq,
>  	if (irq->intid ==0 || irq->intid == VGIC_NR_PRIVATE_IRQS)
>  		print_header(s, irq, vcpu);
>  
> +	pending = irq->pending_latch;
> +	if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +		int err;
> +
> +		err = irq_get_irqchip_state(irq->host_irq,
> +					    IRQCHIP_STATE_PENDING,
> +					    &pending);
> +		WARN_ON_ONCE(err);
> +	}
> +
>  	seq_printf(s, "       %s %4d "
>  		      "    %2d "
>  		      "%d%d%d%d%d%d%d "
> @@ -201,7 +213,7 @@ static void print_irq_state(struct seq_file *s, struct vgic_irq *irq,
>  		      "\n",
>  			type, irq->intid,
>  			(irq->target_vcpu) ? irq->target_vcpu->vcpu_id : -1,
> -			irq->pending_latch,
> +			pending,
>  			irq->line_level,
>  			irq->active,
>  			irq->enabled,
> 
The patch looks good to me but I am now lost about how we retrieve the
pending stat of other hw mapped interrupts. Looks we use
irq->pending_latch always. Is that correct?

For the patch:
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
