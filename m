Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C469E18B1D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7w5WPQhrsJ6BkxtQN0WxPGP3vRsRSzXvmltjMj1KK0I=; b=BfO6FybcVYz2lWEpPFKUyWIna
	wI+NxyAVPUBKLsjrAGRMzZgiTUfkpfP+7613in3H0yFnwdMWOPPfjd8etzPl4J5ls62iILYXt0xpm
	rQSpznAY8IxmNYTsptb8I5xPEXVNs6os9ywrx8hFwELDL5oarFDt3bSdAvX3QBg4ToNmslmUbWBhr
	KWWPVKzp8EVnzahVutucAYoAbqPj5U9QR7K6wzKS4of+ktyEXHFGUs8JfBV8aarUc9eOPEd0YHP4a
	7NJf2mj13XpANaTA88PRpU4Opv4L8LsRtJRiIOgJGZtVwINYiQsg8JcHQ8X2e99DpQk53ZWxmZ8pX
	gk/Cl5yGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsqe-00021o-8S; Thu, 19 Mar 2020 10:56:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsqH-0001zt-Qs
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:56:03 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37C3A20752;
 Thu, 19 Mar 2020 10:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584615361;
 bh=FgL+vAAVjsz7UBPASMA+6v+M3lCJAwKJ3E3l89+r2xk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xEgMD21+sF/isioXATJ90/m2wi0y1eRKeruTMs8rk9CD1Q9iumXQAdXmWUS4B/RRd
 2Pg+TkmzhNP7c2ra6Akbn061od5ZXeDR2Wk54YMhNqPJefcJMb2XGDcsB2JHpKbS6w
 qxW/nfnI4iwDHFmUPTI+FYcBjJkfVWLyVAQM+xHQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEsqF-00Duty-9Q; Thu, 19 Mar 2020 10:55:59 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 10:55:59 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 16/23] irqchip/gic-v4.1: Eagerly vmap vPEs
In-Reply-To: <2817cb89-4cc2-549f-6e40-91d941aa8a5f@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-17-maz@kernel.org>
 <2817cb89-4cc2-549f-6e40-91d941aa8a5f@huawei.com>
Message-ID: <d45e7ddfd51d4d8229e02efc42c8da04@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_035601_951869_28CE9E07 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-17 02:49, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/3/5 4:33, Marc Zyngier wrote:
>> Now that we have HW-accelerated SGIs being delivered to VPEs, it
>> becomes required to map the VPEs on all ITSs instead of relying
>> on the lazy approach that we would use when using the ITS-list
>> mechanism.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
> 
> Before GICv4.1, we use vlpi_count to evaluate whether the vPE has been
> mapped on the specified ITS, and use this refcount to only issue VMOVP
> to those involved ITSes. It's broken after this patch.
> 
> We may need to re-evaluate "whether the vPE is mapped" now that we're 
> at
> GICv4.1, otherwise *no* VMOVP will be issued on the v4.1 capable 
> machine
> (I mean those without single VMOVP support).
> 
> What I'm saying is something like below (only an idea, it even can't
> compile), any thoughts?
> 
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
> b/drivers/irqchip/irq-gic-v3-its.c
> index 2e12bc52e3a2..3450b5e847ca 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -198,7 +198,8 @@ static u16 get_its_list(struct its_vm *vm)
>  		if (!is_v4(its))
>  			continue;
> 
> -		if (vm->vlpi_count[its->list_nr])
> +		if (vm->vlpi_count[its->list_nr] ||
> +		    gic_requires_eager_mapping())
>  			__set_bit(its->list_nr, &its_list);
>  	}
> 
> @@ -1295,7 +1296,8 @@ static void its_send_vmovp(struct its_vpe *vpe)
>  		if (!is_v4(its))
>  			continue;
> 
> -		if (!vpe->its_vm->vlpi_count[its->list_nr])
> +		if (!vpe->its_vm->vlpi_count[its->list_nr] &&
> +		    !gic_requires_eager_mapping())
>  			continue;
> 
>  		desc.its_vmovp_cmd.col = &its->collections[col_id];

It took me a while to wrap my head around that one, but you're as usual 
spot on.

The use of gic_requires_eager_mapping() is a bit confusing here, as it 
isn't
so much that the VPE is eagerly mapped, but the predicate on which we 
evaluate
the need for a VMOVP. How about this:

diff --git a/drivers/irqchip/irq-gic-v3-its.c 
b/drivers/irqchip/irq-gic-v3-its.c
index cd6451e190c9..348f7a909a69 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -189,6 +189,15 @@ static DEFINE_IDA(its_vpeid_ida);
  #define gic_data_rdist_rd_base()	(gic_data_rdist()->rd_base)
  #define gic_data_rdist_vlpi_base()	(gic_data_rdist_rd_base() + SZ_128K)

+/*
+ * Skip ITSs that have no vLPIs mapped, unless we're on GICv4.1, as we
+ * always have vSGIs mapped.
+ */
+static bool require_its_list_vmovp(struct its_vm *vm, struct its_node 
*its)
+{
+	return (gic_rdists->has_rvpeid || vm->vlpi_count[its->list_nr]);
+}
+
  static u16 get_its_list(struct its_vm *vm)
  {
  	struct its_node *its;
@@ -198,7 +207,7 @@ static u16 get_its_list(struct its_vm *vm)
  		if (!is_v4(its))
  			continue;

-		if (vm->vlpi_count[its->list_nr])
+		if (require_its_list_vmovp(vm, its))
  			__set_bit(its->list_nr, &its_list);
  	}

@@ -1295,7 +1304,7 @@ static void its_send_vmovp(struct its_vpe *vpe)
  		if (!is_v4(its))
  			continue;

-		if (!vpe->its_vm->vlpi_count[its->list_nr])
+		if (!require_its_list_vmovp(vpe->its_vm, its))
  			continue;

  		desc.its_vmovp_cmd.col = &its->collections[col_id];


Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
