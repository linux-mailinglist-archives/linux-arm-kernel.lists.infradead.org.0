Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA863187231
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 19:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7chALWxkSqTB1DhUwhyx07GVWs9UwnWOJQ8QE38qCg=; b=L0FI7bzKKfDnM6
	bMzZj6P/Q/DirI7J9nLrq0cK8Zsj+IegjN+dv0VZOrXGTkAHMr4ZX3VwYdt1bghV7/TPtEaEioA5/
	FhLKFF71/k46PY/C1/MNa90pMWS/YlMQZ+OQK7zvfaYnceORMPs/srug9xt3dXuoddl9CDDrI/ihD
	smbKI4Kv+rqekKYpcyKAeuc/eaRN9H1h4+YXGeIgnxGwJhl/USVwgpoSXPbKYTdhjLhEWSrQm+UCD
	5mYg2h4kaKDkELnLzJuBJEsdsRyp10+Urd7hec6DSyMbjoyNPtbAo41E3Oud7meifdX56Pj46NpfJ
	hQXq7V9xW8onrEygBpBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDuND-0002nS-KQ; Mon, 16 Mar 2020 18:21:59 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDuN3-0002ms-HM
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 18:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584382908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VJKpl0rDZzg6gkXBWfuB1lB9uS4rYX4lRTgcaLzb37w=;
 b=F3nVad7s6OnsGoWEyZGIJRspGeJqYxfpU+vNOjAVuXDKGbxSdodhYRLALCo0yTZAGM+hwz
 a/e1pB0fRNumRmO2Erw5Y7oV2kFgXG6mRKo18DI6u5Wf6lMCT63iEw9CHkBm2bZ5slN0kL
 /4Ep0ryWCLfgsAJkZ+QfVsu8lrr7768=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363-JPjx595BP4a7LmyWorbVlg-1; Mon, 16 Mar 2020 14:21:44 -0400
X-MC-Unique: JPjx595BP4a7LmyWorbVlg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4624914ECEB;
 Mon, 16 Mar 2020 18:15:58 +0000 (UTC)
Received: from [10.36.118.12] (ovpn-118-12.ams2.redhat.com [10.36.118.12])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0147810027A7;
 Mon, 16 Mar 2020 18:15:52 +0000 (UTC)
Subject: Re: [PATCH v5 10/23] irqchip/gic-v4.1: Plumb mask/unmask SGI callbacks
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-11-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <c6bfa8bb-d311-153f-ef72-b1f9759ccf6e@redhat.com>
Date: Mon, 16 Mar 2020 19:15:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-11-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_112149_658767_096AE63E 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



On 3/4/20 9:33 PM, Marc Zyngier wrote:
> Implement mask/unmask for virtual SGIs by calling into the
> configuration helper.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index e0db3f906f87..c93f178914ee 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -3939,6 +3939,22 @@ static void its_configure_sgi(struct irq_data *d, bool clear)
>  	its_send_single_vcommand(find_4_1_its(), its_build_vsgi_cmd, &desc);
>  }
>  
> +static void its_sgi_mask_irq(struct irq_data *d)
> +{
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +
> +	vpe->sgi_config[d->hwirq].enabled = false;
> +	its_configure_sgi(d, false);
> +}
> +
> +static void its_sgi_unmask_irq(struct irq_data *d)
> +{
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +
> +	vpe->sgi_config[d->hwirq].enabled = true;
> +	its_configure_sgi(d, false);
> +}
> +
>  static int its_sgi_set_affinity(struct irq_data *d,
>  				const struct cpumask *mask_val,
>  				bool force)
> @@ -3948,6 +3964,8 @@ static int its_sgi_set_affinity(struct irq_data *d,
>  
>  static struct irq_chip its_sgi_irq_chip = {
>  	.name			= "GICv4.1-sgi",
> +	.irq_mask		= its_sgi_mask_irq,
> +	.irq_unmask		= its_sgi_unmask_irq,
>  	.irq_set_affinity	= its_sgi_set_affinity,
>  };
>  
> 
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
