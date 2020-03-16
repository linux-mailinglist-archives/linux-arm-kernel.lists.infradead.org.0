Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E0418711A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:26:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78dfmHJ1hxTW8jyjWalKF9CsDyP1W7vg1YuiY7A59ZM=; b=n0e73akDChndPC
	OobyzQ1zkzZDqnWXVrr6Y1SrPrKulu2ql2+J3EbrMbSmC3xaN8UtBmzOz0i5bOgOVCsiZwbxeT67S
	KPb06OlgvpZMlUeozzkpROJNAbJKxyNHXL1++CKYUwbSPo1FqdKrJcZHJVd70XQJDP2XV319lQdg0
	UPxh6bkvGD7GSlbEl+T2VzGFJe06CLEGjWcjUkpSGtxWNp54Y1as9ko2C3D9vUQdPF6j0QWYcapAw
	3eVJrVDO6rWXcZOlNzGddO5hyylCDHITzDVryT6uUfgKRzPj0k05xI66b3ilfezfhLuIT3JHUxHwL
	XRXp8DDVlIFLeXifLFUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtVE-0005oO-TF; Mon, 16 Mar 2020 17:26:12 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtV0-0005nU-IZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584379556;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=14nagzG00kW25fpr2NHXBqWB0Eexn4LV6EB16qmcCL8=;
 b=e6szJR7eY2W2OrTxSPp1ixE+WH0DdobMWFZ1zmtFhrqUXvomqwMeOSW3UPFVmLKOMhPc9e
 e0Y/WWZmX6s7bjoq8HgAqrLkvtYCAma0lvQJb/bdCg4wcYpfU5BVuJgVC7feymOwZMo2qc
 XDmG4QKz0OSAi9qZn7dAJ1xWKNp5u7Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-118-EMPcXmZHMUiXheWWQm3ZJg-1; Mon, 16 Mar 2020 13:25:52 -0400
X-MC-Unique: EMPcXmZHMUiXheWWQm3ZJg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D116126CBE7;
 Mon, 16 Mar 2020 17:10:28 +0000 (UTC)
Received: from [10.36.118.12] (ovpn-118-12.ams2.redhat.com [10.36.118.12])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C032560BFB;
 Mon, 16 Mar 2020 17:10:23 +0000 (UTC)
Subject: Re: [PATCH v5 07/23] irqchip/gic-v4.1: Map the ITS SGIR register page
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-8-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <0f0b3613-0306-a43c-b935-c842c1025b6b@redhat.com>
Date: Mon, 16 Mar 2020 18:10:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-8-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_102558_685417_176368FC 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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

Hi Marc,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> One of the new features of GICv4.1 is to allow virtual SGIs to be
> directly signaled to a VPE. For that, the ITS has grown a new
> 64kB page containing only a single register that is used to
> signal a SGI to a given VPE.
> 
> Add a second mapping covering this new 64kB range, and take this
> opportunity to limit the original mapping to 64kB, which is enough
> to cover the span of the ITS registers.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index bcc1a0957cda..54d6fdf7a28e 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -96,6 +96,7 @@ struct its_node {
>  	struct mutex		dev_alloc_lock;
>  	struct list_head	entry;
>  	void __iomem		*base;
> +	void __iomem		*sgir_base;
>  	phys_addr_t		phys_base;
>  	struct its_cmd_block	*cmd_base;
>  	struct its_cmd_block	*cmd_write;
> @@ -4456,7 +4457,7 @@ static int __init its_probe_one(struct resource *res,
>  	struct page *page;
>  	int err;
>  
> -	its_base = ioremap(res->start, resource_size(res));
> +	its_base = ioremap(res->start, SZ_64K);
>  	if (!its_base) {
>  		pr_warn("ITS@%pa: Unable to map ITS registers\n", &res->start);
>  		return -ENOMEM;
> @@ -4507,6 +4508,13 @@ static int __init its_probe_one(struct resource *res,
>  
>  		if (is_v4_1(its)) {
>  			u32 svpet = FIELD_GET(GITS_TYPER_SVPET, typer);
> +
> +			its->sgir_base = ioremap(res->start + SZ_128K, SZ_64K);
> +			if (!its->sgir_base) {
> +				err = -ENOMEM;
> +				goto out_free_its;
> +			}
> +
>  			its->mpidr = readl_relaxed(its_base + GITS_MPIDR);
>  
>  			pr_info("ITS@%pa: Using GICv4.1 mode %08x %08x\n",
> @@ -4520,7 +4528,7 @@ static int __init its_probe_one(struct resource *res,
>  				get_order(ITS_CMD_QUEUE_SZ));
>  	if (!page) {
>  		err = -ENOMEM;
> -		goto out_free_its;
> +		goto out_unmap_sgir;
>  	}
>  	its->cmd_base = (void *)page_address(page);
>  	its->cmd_write = its->cmd_base;
> @@ -4587,6 +4595,9 @@ static int __init its_probe_one(struct resource *res,
>  	its_free_tables(its);
>  out_free_cmd:
>  	free_pages((unsigned long)its->cmd_base, get_order(ITS_CMD_QUEUE_SZ));
> +out_unmap_sgir:
> +	if (its->sgir_base)
> +		iounmap(its->sgir_base);
>  out_free_its:
>  	kfree(its);
>  out_unmap:
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
