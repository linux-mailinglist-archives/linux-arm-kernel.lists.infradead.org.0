Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC4B187120
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDw/s2VZ7ykYUl8aOUmTMjtvkw24NxIEY8zB43sQ2Zw=; b=QKQGNfTBgon8o4
	N0ggRExE4Ym9Oqy1v8U99kLIprOJ30temXYpPvyC/CJ1kx+KICQawqUcqEoA/0NM0jseqvw2CO0ls
	XW3J9A4efSd1rRf0Incn1zh7k7hGm8UMYPeNoJF2C6GzwEf8z2EzVDzj2iorC/TmE0ce1i4hiJEQI
	E9CHePk7Hhw4T9nHBQg0fiNx6Asu8EPtBmgrmQyTdSkG7H8CV3O4Rp3xKwqQWZ5JOTaVu4R/9G+jc
	5CsS2jA0Eth8pN+/YqGRHCL61SOyZIgfmjCF4bclV+IGPXtKB5Hsab0MrCncmsR4lkE0WvdyAb92i
	p1/UmxdY8UmVbwRnurtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtWg-00069P-Bb; Mon, 16 Mar 2020 17:27:42 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtWV-00068f-Bx
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:27:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584379650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=msg6kUjRhvxAi8DnVd/GQrZEQ8stJK5YC+wnR0yoRxI=;
 b=BZTDcJa+RDxrLpW9uEiyiVuGWWDcbxHK5c5DcNHGxuuyQuSxFdAkW/A1DmD7XzpvjkvXEt
 gKIGgSRrIXP+hEyFKvF6sp0WW4zp2B1Mhy9mzfP2L+tQJf8gZYhz54WgcAeYtD8HYrEDSU
 py/Wg4S3a5vO1dgKtW32N8SPxyo3HzQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-RNprkJGONFC63U9Ydr7DQQ-1; Mon, 16 Mar 2020 13:27:27 -0400
X-MC-Unique: RNprkJGONFC63U9Ydr7DQQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84060915510;
 Mon, 16 Mar 2020 17:10:29 +0000 (UTC)
Received: from [10.36.118.12] (ovpn-118-12.ams2.redhat.com [10.36.118.12])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E26CB9B900;
 Mon, 16 Mar 2020 17:10:25 +0000 (UTC)
Subject: Re: [PATCH v5 06/23] irqchip/gic-v4.1: Advertise support v4.1 to KVM
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-7-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <12d3a655-1caf-39c0-7d80-f43b0d90677c@redhat.com>
Date: Mon, 16 Mar 2020 18:10:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-7-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_102731_499280_573F7FEF 
X-CRM114-Status: GOOD (  18.42  )
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

Hi Marc,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> Tell KVM that we support v4.1. Nothing uses this information so far.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

> ---
>  drivers/irqchip/irq-gic-v3-its.c       | 9 ++++++++-
>  drivers/irqchip/irq-gic-v3.c           | 2 ++
>  include/linux/irqchip/arm-gic-common.h | 2 ++
>  3 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index fc5788584df7..bcc1a0957cda 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -4870,6 +4870,7 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
>  	struct device_node *of_node;
>  	struct its_node *its;
>  	bool has_v4 = false;
> +	bool has_v4_1 = false;
>  	int err;
>  
>  	gic_rdists = rdists;
> @@ -4890,8 +4891,14 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
>  	if (err)
>  		return err;
>  
> -	list_for_each_entry(its, &its_nodes, entry)
> +	list_for_each_entry(its, &its_nodes, entry) {
>  		has_v4 |= is_v4(its);
> +		has_v4_1 |= is_v4_1(its);
> +	}
> +
> +	/* Don't bother with inconsistent systems */
> +	if (WARN_ON(!has_v4_1 && rdists->has_rvpeid))
> +		rdists->has_rvpeid = false;
>  
>  	if (has_v4 & rdists->has_vlpis) {
>  		if (its_init_vpe_domain() ||
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index ba405becab53..03e4eadefb00 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -1785,6 +1785,7 @@ static void __init gic_of_setup_kvm_info(struct device_node *node)
>  		gic_v3_kvm_info.vcpu = r;
>  
>  	gic_v3_kvm_info.has_v4 = gic_data.rdists.has_vlpis;
> +	gic_v3_kvm_info.has_v4_1 = gic_data.rdists.has_rvpeid;
>  	gic_set_kvm_info(&gic_v3_kvm_info);
>  }
>  
> @@ -2100,6 +2101,7 @@ static void __init gic_acpi_setup_kvm_info(void)
>  	}
>  
>  	gic_v3_kvm_info.has_v4 = gic_data.rdists.has_vlpis;
> +	gic_v3_kvm_info.has_v4_1 = gic_data.rdists.has_rvpeid;
>  	gic_set_kvm_info(&gic_v3_kvm_info);
>  }
>  
> diff --git a/include/linux/irqchip/arm-gic-common.h b/include/linux/irqchip/arm-gic-common.h
> index b9850f5f1906..fa8c0455c352 100644
> --- a/include/linux/irqchip/arm-gic-common.h
> +++ b/include/linux/irqchip/arm-gic-common.h
> @@ -32,6 +32,8 @@ struct gic_kvm_info {
>  	struct resource vctrl;
>  	/* vlpi support */
>  	bool		has_v4;
> +	/* rvpeid support */
> +	bool		has_v4_1;
>  };
>  
>  const struct gic_kvm_info *gic_get_kvm_info(void);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
