Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEA5187E70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXbiMKYNQafqhhC+o4vrc/TWxvHbbpgELt451Y8YIUQ=; b=qMTPqbcMzmbUWb
	e0utOE4px3tR/vN+Mr/XdNHx/epzUmDhAvil1uypWU8JBEPhdIWN2pumIIWCsSKgjHZmy8bBq7RfC
	MLjiKDK+K5h4vGkv4YVSZS4zxbWQ4RMAHxXkbsaahI0qTosE4AfF4frTprf2Gp3zOHwhQAUZGiV7d
	jzVIF2zVhq76tG5KAubc1eEI7pLGp8nWym1GO3XfNgswgecoJCxFf7re1a4FdMXcsN4+Im7nu43Rk
	DqQubOxjNoWQDhkZwrR5GL2PPsYsy9Z/r7qOMKx4YaB5v0fkXFrNwdEdiQNtuRvXu6EcBX56CvUsA
	mn2n5hgMYkMi9BqoD52A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9ZO-0004YG-92; Tue, 17 Mar 2020 10:35:34 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9ZB-0004Xo-93
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584441320;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PDF9KX2gWP/KQxi7FPC/r6zYWiKxTIB+y9Tt6qr75x0=;
 b=LTy4UdqpBNBBc3aSHY0F8dFlzuqCWbH/8UU2MItDnqXEsmYJ36iHxIp0Q+0I81Hg5hj165
 ofK9ebV7x/h/3HkxaZlKElW9TtLwxm41dW+a9wgsI8FDia/A7Rv5IUU7o084FwucRDQEaT
 8y4YXk5yv584g79LZeKIOFLp4VXEOak=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-362-MHeVK9nTPLqv1JiyvpOjEw-1; Tue, 17 Mar 2020 06:35:18 -0400
X-MC-Unique: MHeVK9nTPLqv1JiyvpOjEw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0656118A551B;
 Tue, 17 Mar 2020 10:35:16 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F33D75C1C3;
 Tue, 17 Mar 2020 10:35:12 +0000 (UTC)
Subject: Re: [PATCH v5 12/23] irqchip/gic-v4.1: Plumb set_vcpu_affinity SGI
 callbacks
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-13-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <2f981328-92e8-7554-ccf7-962c79add0c3@redhat.com>
Date: Tue, 17 Mar 2020 11:35:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-13-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_033521_431150_97CB257D 
X-CRM114-Status: GOOD (  19.38  )
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
> Just like for vLPIs, there is some configuration information that cannot
> be directly communicated through the normal irqchip API, and we have to
> use our good old friend set_vcpu_affinity as a side-band communication
> mechanism.
> 
> This is used to configure group and priority for a given vSGI.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c   | 18 ++++++++++++++++++
>  include/linux/irqchip/arm-gic-v4.h |  5 +++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index fb2b836c31ff..effb0e0b0c9d 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -4033,6 +4033,23 @@ static int its_sgi_get_irqchip_state(struct irq_data *d,
>  	return 0;
>  }
>  
> +static int its_sgi_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
> +{
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +	struct its_cmd_info *info = vcpu_info;
> +
> +	switch (info->cmd_type) {
> +	case PROP_UPDATE_SGI:
PROP_UPDATE_VSGI directly?
> +		vpe->sgi_config[d->hwirq].priority = info->priority;
> +		vpe->sgi_config[d->hwirq].group = info->group;
> +		its_configure_sgi(d, false);
> +		return 0;
> +
extra line
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
>  static struct irq_chip its_sgi_irq_chip = {
>  	.name			= "GICv4.1-sgi",
>  	.irq_mask		= its_sgi_mask_irq,
> @@ -4040,6 +4057,7 @@ static struct irq_chip its_sgi_irq_chip = {
>  	.irq_set_affinity	= its_sgi_set_affinity,
>  	.irq_set_irqchip_state	= its_sgi_set_irqchip_state,
>  	.irq_get_irqchip_state	= its_sgi_get_irqchip_state,
> +	.irq_set_vcpu_affinity	= its_sgi_set_vcpu_affinity,
>  };
>  
>  static int its_sgi_irq_domain_alloc(struct irq_domain *domain,
> diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
> index 44e8c19e3d56..b4dbf899460b 100644
> --- a/include/linux/irqchip/arm-gic-v4.h
> +++ b/include/linux/irqchip/arm-gic-v4.h
> @@ -103,6 +103,7 @@ enum its_vcpu_info_cmd_type {
>  	SCHEDULE_VPE,
>  	DESCHEDULE_VPE,
>  	INVALL_VPE,
> +	PROP_UPDATE_SGI,
>  };
>  
>  struct its_cmd_info {
> @@ -115,6 +116,10 @@ struct its_cmd_info {
>  			bool		g0en;
>  			bool		g1en;
>  		};
> +		struct {
> +			u8		priority;
> +			bool		group;
> +		};
>  	};
>  };
>  
> 
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
