Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84227997B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TtfrkPXbAyjXs/C7OT7VBJ+6RBKVTpDbE8W0KGesGrc=; b=igQQrxuCaBnnkSnfK11KDklG+
	XeOIr4DDjD3cV/WZZB9gcPCAkd/+W/7aYgCR0zgb+fPLG1eF4nRrEykjPlZthty0uHK4d62Q7Tfhe
	O2ix3KlMdtjwQvmpiyFOj9VwC30ISgdvzJ2Pk7NJp2WkV5dG3Q82iCo310MhDFPOJ3H6jwqO3thr2
	GRiyXUOAUgSjJrWvpbQOTcI/l0bbbEae2asQo3bIuZFqP+2sJahdC/w2de/TplfK33d81mk4B5urL
	B9BZjeWCrXdB12JRb1gJQZjEHKFWN5DKE+OB/60xHTEZHWY7X1CKxSyH0J/OLZqsY/UrxUcb3U6Z1
	Xmvn68Rdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ofK-0007qZ-Cs; Thu, 22 Aug 2019 15:06:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0of2-0007pt-Du
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:06:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id 10so5985234wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 08:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f86P8y/bEfM/LNm6Gbw7F3VV00jAjdLsjnLP2BnusNc=;
 b=scbsmQ0WsynE3+iucma4KyewlPzagmL8m2e+Vw3n14Ka/qE8yDTPPOgkqQ4P3KVupS
 iLQaFvVXRrGyoWIoNVpsYKLIuBT/VCISpIxNC9ho5vujFyDe8aGgfXAqnZaI4rQeVeyD
 ApcXU0K8njsXPPJaYSQe0sg+H4axC7fc6HfNzC8gixRIu7ZQ3X+hNXhlNGxjTeqT99Tm
 9aIwFeMiD/81EmrqSVWz0Z3elzu/qtfedT0jBmsRXYvfgNvmlm4lMh3fmcuYMiEuXKZH
 IaUVssJHmKuRHM6ltwkzcoIWxyeMr9+NmID3NjpaiFJSxi+fwR1jphgOQVTRsg2Qbo1i
 yVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f86P8y/bEfM/LNm6Gbw7F3VV00jAjdLsjnLP2BnusNc=;
 b=HAuesuyXFxvLXTUhkBWxwaD838M/5aJgFK8BJ+Wk8C9gatNNyxbJMxjoDTiMy57PQX
 cCVXIYwbCi1bvrTSLWudSQFzMzCly2HIgFnt+iBla3DQH2xGZqOOMpYHJvID9aRTMV58
 +30GCHMoIAIJIIDHsomeff8KRd7ZhN+GECwcnT4Mh9PdKXbaSLhEDQrnyPfx8Mf8K9O9
 YM9OpdDWCFd+FibO0qbJqo7FY1rudS3t7EZtPxnmuYXecpJUUZ3BjEHcGl02qt8spvzw
 IIcFOwKlWctpIblhXxvrEQl1FRLxjpck1trXiqb0q4tl4yKlVdmWGP67RT17czNk9EnC
 Au4g==
X-Gm-Message-State: APjAAAWvPSyHL3YjVquB4JA0I0BjRemB9/X/wFmRqTwzBgLp1d2ZW+zm
 NVQChlLIFSgMJh/QNpPOatHRzgN3
X-Google-Smtp-Source: APXvYqxVvx/3YX34Q402BNXkpuBssIZCO1hsFVIgEgim/PhREvq2JCRoX+bq1Bvv0/3KTPAFdW/2+w==
X-Received: by 2002:a1c:a701:: with SMTP id q1mr6801047wme.72.1566486358273;
 Thu, 22 Aug 2019 08:05:58 -0700 (PDT)
Received: from [192.168.1.67]
 (host81-157-241-155.range81-157.btcentralplus.com. [81.157.241.155])
 by smtp.gmail.com with ESMTPSA id b4sm3541836wma.5.2019.08.22.08.05.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 08:05:57 -0700 (PDT)
Subject: Re: [PATCH v2 06/12] irqchip/gic-v3: Dynamically allocate PPI NMI
 refcounts
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Rob Herring <robh+dt@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-7-maz@kernel.org>
From: Julien <julien.thierry.kdev@gmail.com>
Message-ID: <daa0ff03-cf73-e1de-b4b2-d1382c5d5548@gmail.com>
Date: Thu, 22 Aug 2019 16:05:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20190806100121.240767-7-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_080600_472056_6935D7C4 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 06/08/19 11:01, Marc Zyngier wrote:
> As we're about to have a variable number of PPIs, let's make the
> allocation of the NMI refcounts dynamic. Also apply some minor
> cleanups (moving things around).
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Julien Thierry <julien.thierry.kdev@gmail.com>

Thanks,

> ---
>   drivers/irqchip/irq-gic-v3.c | 47 ++++++++++++++++++++++++++----------
>   1 file changed, 34 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index e03fb6d7c2ce..4253c7f67c86 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -88,7 +88,7 @@ static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
>   static DEFINE_STATIC_KEY_FALSE(supports_pseudo_nmis);
>   
>   /* ppi_nmi_refs[n] == number of cpus having ppi[n + 16] set as NMI */
> -static refcount_t ppi_nmi_refs[16];
> +static refcount_t *ppi_nmi_refs;
>   
>   static struct gic_kvm_info gic_v3_kvm_info;
>   static DEFINE_PER_CPU(bool, has_rss);
> @@ -409,6 +409,16 @@ static void gic_irq_set_prio(struct irq_data *d, u8 prio)
>   	writeb_relaxed(prio, base + offset + index);
>   }
>   
> +static u32 gic_get_ppi_index(struct irq_data *d)
> +{
> +	switch (get_intid_range(d)) {
> +	case PPI_RANGE:
> +		return d->hwirq - 16;
> +	default:
> +		unreachable();
> +	}
> +}
> +
>   static int gic_irq_nmi_setup(struct irq_data *d)
>   {
>   	struct irq_desc *desc = irq_to_desc(d->irq);
> @@ -429,10 +439,12 @@ static int gic_irq_nmi_setup(struct irq_data *d)
>   		return -EINVAL;
>   
>   	/* desc lock should already be held */
> -	if (gic_irq(d) < 32) {
> +	if (gic_irq_in_rdist(d)) {
> +		u32 idx = gic_get_ppi_index(d);
> +
>   		/* Setting up PPI as NMI, only switch handler for first NMI */
> -		if (!refcount_inc_not_zero(&ppi_nmi_refs[gic_irq(d) - 16])) {
> -			refcount_set(&ppi_nmi_refs[gic_irq(d) - 16], 1);
> +		if (!refcount_inc_not_zero(&ppi_nmi_refs[idx])) {
> +			refcount_set(&ppi_nmi_refs[idx], 1);
>   			desc->handle_irq = handle_percpu_devid_fasteoi_nmi;
>   		}
>   	} else {
> @@ -464,9 +476,11 @@ static void gic_irq_nmi_teardown(struct irq_data *d)
>   		return;
>   
>   	/* desc lock should already be held */
> -	if (gic_irq(d) < 32) {
> +	if (gic_irq_in_rdist(d)) {
> +		u32 idx = gic_get_ppi_index(d);
> +
>   		/* Tearing down NMI, only switch handler for last NMI */
> -		if (refcount_dec_and_test(&ppi_nmi_refs[gic_irq(d) - 16]))
> +		if (refcount_dec_and_test(&ppi_nmi_refs[idx]))
>   			desc->handle_irq = handle_percpu_devid_irq;
>   	} else {
>   		desc->handle_irq = handle_fasteoi_irq;
> @@ -1394,7 +1408,19 @@ static void gic_enable_nmi_support(void)
>   {
>   	int i;
>   
> -	for (i = 0; i < 16; i++)
> +	if (!gic_prio_masking_enabled())
> +		return;
> +
> +	if (gic_has_group0() && !gic_dist_security_disabled()) {
> +		pr_warn("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
> +		return;
> +	}
> +
> +	ppi_nmi_refs = kcalloc(gic_data.ppi_nr, sizeof(*ppi_nmi_refs), GFP_KERNEL);
> +	if (!ppi_nmi_refs)
> +		return;
> +
> +	for (i = 0; i < gic_data.ppi_nr; i++)
>   		refcount_set(&ppi_nmi_refs[i], 0);
>   
>   	static_branch_enable(&supports_pseudo_nmis);
> @@ -1472,12 +1498,7 @@ static int __init gic_init_bases(void __iomem *dist_base,
>   			gicv2m_init(handle, gic_data.domain);
>   	}
>   
> -	if (gic_prio_masking_enabled()) {
> -		if (!gic_has_group0() || gic_dist_security_disabled())
> -			gic_enable_nmi_support();
> -		else
> -			pr_warn("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
> -	}
> +	gic_enable_nmi_support();
>   
>   	return 0;
>   
> 

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
