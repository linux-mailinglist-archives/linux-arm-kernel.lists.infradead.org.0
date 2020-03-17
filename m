Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F80187E51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIbY3JBXzlMXV4lLwyjt0F8nmVAVing8hr4usKP9mag=; b=jAoI6o6Nhuc0Jn
	InppO6c/1T+ELIa/0C66ptfGD+UAhMGlZoID40JB0tLBUJxv2UNyo9muR71h1pmT+BC8rz6CigZ69
	LpQrFwMogoy7OEi2//OXWdYUpexR6ZsxM09FSMTlNVdVrTHAU8M9A4B/KZTo2U8+sg9SY7hgjjPE4
	c65EVixVIndsfqnBMdgUkswcCEuyZ0qq9hIAm85tWOx8YSU7iMZ3W4WCznB2mI9np79jC2hrmg3hq
	YljgohzkmbHNy9ClwQBf2ca0CnskHopE7Z5mTdDAb8JXtVBB6x6WMN09jatQMQ7IOiKlbghk595Bn
	cGG+oOcZuuDc4EJC4eZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Uh-0002Li-A8; Tue, 17 Mar 2020 10:30:43 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9UX-0002Ap-MY
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584441030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E3boV3yl7QUZP/2283Qn125pIkCavFJHZDCmoHG9RZ4=;
 b=LnyICXUzPuP3vSO4b1jr2fv4/uiy9Gc/3QUvyj9Hvu1ZTIlkp2I/QVOwLcGB9e2M2pJPd8
 NwjiVMW2v0sMYRGiVu9n1HtZmbuoeOV3UW8+x6wqx/POdorNIyoSDrN1leBmVmpt6wncEj
 KUGgYOLuHLmxU4guK08iULmAv7ShRZg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-q__xEIZcPW-S9ONrSCl3rA-1; Tue, 17 Mar 2020 06:30:27 -0400
X-MC-Unique: q__xEIZcPW-S9ONrSCl3rA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE6F68018A4;
 Tue, 17 Mar 2020 10:30:24 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C12419C58;
 Tue, 17 Mar 2020 10:30:21 +0000 (UTC)
Subject: Re: [PATCH v5 15/23] irqchip/gic-v4.1: Add VSGI property setup
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-16-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <edfc4aa0-3e96-4fb2-731e-76a284c8ce17@redhat.com>
Date: Tue, 17 Mar 2020 11:30:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-16-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_033033_815683_F3C29E24 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Add the SGI configuration entry point for KVM to use.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v3-its.c   |  2 +-
>  drivers/irqchip/irq-gic-v4.c       | 13 +++++++++++++
>  include/linux/irqchip/arm-gic-v4.h |  3 ++-
>  3 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index effb0e0b0c9d..b65fba67bd85 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -4039,7 +4039,7 @@ static int its_sgi_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
>  	struct its_cmd_info *info = vcpu_info;
>  
>  	switch (info->cmd_type) {
> -	case PROP_UPDATE_SGI:
> +	case PROP_UPDATE_VSGI:
This change rather belongs to
[PATCH v5 12/23] irqchip/gic-v4.1: Plumb set_vcpu_affinity SGI callbacks
>  		vpe->sgi_config[d->hwirq].priority = info->priority;
>  		vpe->sgi_config[d->hwirq].group = info->group;
>  		its_configure_sgi(d, false);
> diff --git a/drivers/irqchip/irq-gic-v4.c b/drivers/irqchip/irq-gic-v4.c
> index 99b33f60ac63..0c18714ae13e 100644
> --- a/drivers/irqchip/irq-gic-v4.c
> +++ b/drivers/irqchip/irq-gic-v4.c
> @@ -320,6 +320,19 @@ int its_prop_update_vlpi(int irq, u8 config, bool inv)
>  	return irq_set_vcpu_affinity(irq, &info);
>  }
>  
> +int its_prop_update_vsgi(int irq, u8 priority, bool group)
> +{
> +	struct its_cmd_info info = {
> +		.cmd_type = PROP_UPDATE_VSGI,
> +		{
> +			.priority	= priority,
> +			.group		= group,
> +		},
> +	};
> +
> +	return irq_set_vcpu_affinity(irq, &info);
> +}
> +
>  int its_init_v4(struct irq_domain *domain,
>  		const struct irq_domain_ops *vpe_ops,
>  		const struct irq_domain_ops *sgi_ops)
> diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
> index 0bb111b4a504..6976b8331b60 100644
> --- a/include/linux/irqchip/arm-gic-v4.h
> +++ b/include/linux/irqchip/arm-gic-v4.h
> @@ -105,7 +105,7 @@ enum its_vcpu_info_cmd_type {
>  	SCHEDULE_VPE,
>  	DESCHEDULE_VPE,
>  	INVALL_VPE,
> -	PROP_UPDATE_SGI,
> +	PROP_UPDATE_VSGI,
same
>  };
>  
>  struct its_cmd_info {
> @@ -134,6 +134,7 @@ int its_map_vlpi(int irq, struct its_vlpi_map *map);
>  int its_get_vlpi(int irq, struct its_vlpi_map *map);
>  int its_unmap_vlpi(int irq);
>  int its_prop_update_vlpi(int irq, u8 config, bool inv);
> +int its_prop_update_vsgi(int irq, u8 priority, bool group);
>  
>  struct irq_domain_ops;
>  int its_init_v4(struct irq_domain *domain,
> 
Besides
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
