Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A525187117
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLIOeVprBFNk6+/nmCk7RUlIBFSeGzeYm4c47hwuFcM=; b=BxJ9E+sukC7lPH
	1a48v31f5xcttK0DTfbGwjS1loa8qEf+EIqV/cFZPYc5LCTrG1/HVd0PSrsxWjLux+KFeIr9hfbkN
	RZ3ehdCVr3iKQnzMiyG932BNeLTKseJhw/d6n6zfFCP4n0ExRnPvAAM4DTbCRujCPdLaJfbn6mhWL
	QwUR2sVA4MTLVdlKTpr9IwS2cYwk2+QlFR2UgZWLWrmUp0sHSct0K67Y6EN9P3ltsA/e85+IvzLZl
	Pv9C1atnXDj9wUOtgnshuyazTXwwmva8Hpt3nSEuN2olzm4gBNmPpC0Xx2qKo0VroC09iAoCHIROx
	vwL85Df8jDZhh+E6pMZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtUO-000530-5O; Mon, 16 Mar 2020 17:25:20 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtU9-0004PD-Di
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:25:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584379503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q1akQPS81W+giPhP70+us9oHf1EnbPYJV9QWBzC/Xbo=;
 b=UbHDBtbTUyEtYPSKIiizJP6R8TmkAPvFPQsAqZQ1WIyPtvAMcW6qJJzfFWb83ekYRdxEpM
 oa9FAtAWUGwK7Zd7J/8NUlokfdTDfZLmcsT5PUo/r0FpRHw8CSolKgYcppzMutbNIKJF99
 MA1CaMC5QYtWBEl6ALur52xcziXT+wg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-Zh47tl5WOg-Nn-jxg_VU_w-1; Mon, 16 Mar 2020 13:24:57 -0400
X-MC-Unique: Zh47tl5WOg-Nn-jxg_VU_w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0168CCF12C;
 Mon, 16 Mar 2020 17:10:27 +0000 (UTC)
Received: from [10.36.118.12] (ovpn-118-12.ams2.redhat.com [10.36.118.12])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FCEC5C1B2;
 Mon, 16 Mar 2020 17:10:22 +0000 (UTC)
Subject: Re: [PATCH v5 02/23] irqchip/gic-v4.1: Skip absent CPUs while
 iterating over redistributors
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-3-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <e17a13d5-e28f-5fad-3c27-2ba75f22fc27@redhat.com>
Date: Mon, 16 Mar 2020 18:10:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-3-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_102505_550856_40A99217 
X-CRM114-Status: GOOD (  18.30  )
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

Hi Marc

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> In a system that is only sparsly populated with CPUs, we can end-up with
sparsely
> redistributors structures that are not initialized. Let's make sure we
redistributor structures
> don't try and access those when iterating over them (in this case when
> checking we have a L2 VPE table).
> 
> Fixes: 4e6437f12d6e ("irqchip/gic-v4.1: Ensure L2 vPE table is allocated at RD level")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 83b1186ffcad..da883a691028 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -2452,6 +2452,10 @@ static bool allocate_vpe_l2_table(int cpu, u32 id)
>  	if (!gic_rdists->has_rvpeid)
>  		return true;
>  
> +	/* Skip non-present CPUs */
> +	if (!base)
> +		return true;
> +
>  	val  = gicr_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
>  
>  	esz  = FIELD_GET(GICR_VPROPBASER_4_1_ENTRY_SIZE, val) + 1;
> 
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
