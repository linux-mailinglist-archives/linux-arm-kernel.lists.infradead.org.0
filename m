Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1773175A20
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wpIm1wHMXbTLuLWMjqSo30FzU+n+Lur2iT8rdzEOYnM=; b=nCUIC2/opmX5JwZPw/eG9EHAV
	Ovse/PzvYS2gzHIIqYwbfKB3NDcotzxA+TLK7wXZtjJOzA9AdKIGnIQzngtYZzoJvxi6iXrUFov9R
	WixYZdglA0euMz/qFfAlVTeVjQNrt2tFGskdaeQXBCPvmEGPw1JMr4vXjIR3/mSW5QFNL1ApUS3/X
	Jc45NMx5D1THZ8Ys7yVCdRWb8zZ+wmQbSVN9gn5V0/CyT3BHtwSh841v/EDPWAbqNxztlZe+fPra2
	oMnqGUurIE8y8SpZFOAvfRTGCsO1DcRLndzZ4CX7J38UVtbeMrphBQH2jijiI4LmketRbjI8P6tz7
	psno5mxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jwM-0002n6-VB; Mon, 02 Mar 2020 12:12:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jwH-0002mZ-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 12:12:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AD112173E;
 Mon,  2 Mar 2020 12:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583151168;
 bh=Lymq4yucP910jG3yAZt3+nbi5KerTQ3U6G6bpUjy4to=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dzgfqg0/uVS23vSco9JoTIf3WbWIp+BhFrKQRBlscAYzmJYe1JdXz3LW0em6JDra0
 tHlUlPG/PDhJIX9GqwoQxKCaqE0RTbt1LDJzflgr3/znEysTywuYph/kfJ5dwTwg0Y
 onrCNZAOCAvxq/Pfy0xNMTkNhDf65AnnCIt5R2bQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j8jwE-009N9H-TY; Mon, 02 Mar 2020 12:12:47 +0000
MIME-Version: 1.0
Date: Mon, 02 Mar 2020 12:12:46 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] irqchip/gic-v4.1: Wait for completion of redistributor's
 INVALL operation
In-Reply-To: <20200302092145.899-1-yuzenghui@huawei.com>
References: <20200302092145.899-1-yuzenghui@huawei.com>
Message-ID: <c46464a4c570e4aa12231bbd5ddefc07@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, tglx@linutronix.de, jason@lakedaemon.net,
 wanghaibin.wang@huawei.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_041249_123097_F1FDC14B 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-02 09:21, Zenghui Yu wrote:
> In GICv4.1, we emulate a guest-issued INVALL command by a direct write
> to GICR_INVALLR.  Before we finish the emulation and go back to guest,
> let's make sure the physical invalidate operation is actually completed
> and no stale data will be left in redistributor. Per the specification,
> this can be achieved by polling the GICR_SYNCR.Busy bit (to zero).
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
> b/drivers/irqchip/irq-gic-v3-its.c
> index 83b1186ffcad..fc8c2970cee4 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -3784,6 +3784,8 @@ static void its_vpe_4_1_invall(struct its_vpe 
> *vpe)
>  	/* Target the redistributor this vPE is currently known on */
>  	rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
>  	gic_write_lpir(val, rdbase + GICR_INVALLR);
> +
> +	wait_for_syncr(rdbase);
>  }
> 
>  static int its_vpe_4_1_set_vcpu_affinity(struct irq_data *d, void 
> *vcpu_info)

Yup, well spotted. I'll add that to the series.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
