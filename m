Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84AE162181
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:26:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JIOH2yiojkV55+RO94VswPsicZAxFfYCzhykjr7vjK0=; b=fvQPEtNmi+3+pkfbUuix9cdVN
	t6/x9sN96vQi/MB3o+TVXz8tGNpKcdoeDXvkEkBhVzyaWKd38VQl8DacG/yX5PyGg7tbggL16pq1O
	wTOsgJZVQLa6SxJATV+4beJF+84uXeC+aED1XaYvDfpU2Fdj46AM2b/d3sEinvLZyDA+02Xe6REp3
	KTe5cdjVHKXTvL7mLW+Ml/+UWXzzKOkWcqNUDKxZhN/w1ZAVLzJwe1jFVCxSDjqDyCksKu6b43jGu
	kxArVzRGGd4x/4XloxmSN/VazAw9MxauBz8I0Mwz8DeSKAx0EpagfFgP7twPVGP0rQ6WEAmby8ypc
	6/1i/yK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xGp-0002Hg-Dw; Tue, 18 Feb 2020 07:26:15 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xGg-0002Ge-QC
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 07:26:08 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B097B8991C3C8B467C50;
 Tue, 18 Feb 2020 15:25:58 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Tue, 18 Feb 2020
 15:25:50 +0800
Subject: Re: [PATCH v4 06/20] irqchip/gic-v4.1: Add initial SGI configuration
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-7-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <e47baffb-83a5-57d7-1721-eaee28aaaabf@huawei.com>
Date: Tue, 18 Feb 2020 15:25:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-7-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_232607_026942_06072B85 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/2/14 22:57, Marc Zyngier wrote:
> The GICv4.1 ITS has yet another new command (VSGI) which allows
> a VPE-targeted SGI to be configured (or have its pending state
> cleared). Add support for this command and plumb it into the
> activate irqdomain callback so that it is ready to be used.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   drivers/irqchip/irq-gic-v3-its.c   | 76 +++++++++++++++++++++++++++++-
>   include/linux/irqchip/arm-gic-v3.h |  3 +-
>   2 files changed, 77 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 6121c8f2a8ce..229e4ae9c59b 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -354,6 +354,15 @@ struct its_cmd_desc {
>   		struct {
>   			struct its_vpe *vpe;
>   		} its_invdb_cmd;
> +
> +		struct {
> +			struct its_vpe *vpe;
> +			u8 sgi;
> +			u8 priority;
> +			bool enable;
> +			bool group;
> +			bool clear;
> +		} its_vsgi_cmd;
>   	};
>   };
>   
> @@ -502,6 +511,31 @@ static void its_encode_db(struct its_cmd_block *cmd, bool db)
>   	its_mask_encode(&cmd->raw_cmd[2], db, 63, 63);
>   }
>   
> +static void its_encode_sgi_intid(struct its_cmd_block *cmd, u8 sgi)
> +{
> +	its_mask_encode(&cmd->raw_cmd[0], sgi, 35, 32);
> +}
> +
> +static void its_encode_sgi_priority(struct its_cmd_block *cmd, u8 prio)
> +{
> +	its_mask_encode(&cmd->raw_cmd[0], prio >> 4, 23, 20);
> +}
> +
> +static void its_encode_sgi_group(struct its_cmd_block *cmd, bool grp)
> +{
> +	its_mask_encode(&cmd->raw_cmd[0], grp, 10, 10);
> +}
> +
> +static void its_encode_sgi_clear(struct its_cmd_block *cmd, bool clr)
> +{
> +	its_mask_encode(&cmd->raw_cmd[0], clr, 9, 9);
> +}
> +
> +static void its_encode_sgi_enable(struct its_cmd_block *cmd, bool en)
> +{
> +	its_mask_encode(&cmd->raw_cmd[0], en, 8, 8);
> +}
> +
>   static inline void its_fixup_cmd(struct its_cmd_block *cmd)
>   {
>   	/* Let's fixup BE commands */
> @@ -867,6 +901,26 @@ static struct its_vpe *its_build_invdb_cmd(struct its_node *its,
>   	return valid_vpe(its, desc->its_invdb_cmd.vpe);
>   }
>   
> +static struct its_vpe *its_build_vsgi_cmd(struct its_node *its,
> +					  struct its_cmd_block *cmd,
> +					  struct its_cmd_desc *desc)
> +{
> +	if (WARN_ON(!is_v4_1(its)))
> +		return NULL;
> +
> +	its_encode_cmd(cmd, GITS_CMD_VSGI);
> +	its_encode_vpeid(cmd, desc->its_vsgi_cmd.vpe->vpe_id);
> +	its_encode_sgi_intid(cmd, desc->its_vsgi_cmd.sgi);
> +	its_encode_sgi_priority(cmd, desc->its_vsgi_cmd.priority);
> +	its_encode_sgi_group(cmd, desc->its_vsgi_cmd.group);
> +	its_encode_sgi_clear(cmd, desc->its_vsgi_cmd.clear);
> +	its_encode_sgi_enable(cmd, desc->its_vsgi_cmd.enable);
> +
> +	its_fixup_cmd(cmd);
> +
> +	return valid_vpe(its, desc->its_vsgi_cmd.vpe);
> +}
> +
>   static u64 its_cmd_ptr_to_offset(struct its_node *its,
>   				 struct its_cmd_block *ptr)
>   {
> @@ -3823,6 +3877,21 @@ static struct irq_chip its_vpe_4_1_irq_chip = {
>   	.irq_set_vcpu_affinity	= its_vpe_4_1_set_vcpu_affinity,
>   };
>   
> +static void its_configure_sgi(struct irq_data *d, bool clear)
> +{
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +	struct its_cmd_desc desc;
> +
> +	desc.its_vsgi_cmd.vpe = vpe;
> +	desc.its_vsgi_cmd.sgi = d->hwirq;
> +	desc.its_vsgi_cmd.priority = vpe->sgi_config[d->hwirq].priority;
> +	desc.its_vsgi_cmd.enable = vpe->sgi_config[d->hwirq].enabled;
> +	desc.its_vsgi_cmd.group = vpe->sgi_config[d->hwirq].group;
> +	desc.its_vsgi_cmd.clear = clear;
> +
> +	its_send_single_vcommand(find_4_1_its(), its_build_vsgi_cmd, &desc);
> +}
> +
>   static int its_sgi_set_affinity(struct irq_data *d,
>   				const struct cpumask *mask_val,
>   				bool force)
> @@ -3868,13 +3937,18 @@ static void its_sgi_irq_domain_free(struct irq_domain *domain,
>   static int its_sgi_irq_domain_activate(struct irq_domain *domain,
>   				       struct irq_data *d, bool reserve)
>   {
> +	/* Write out the initial SGI configuration */
> +	its_configure_sgi(d, false);
>   	return 0;
>   }
>   
>   static void its_sgi_irq_domain_deactivate(struct irq_domain *domain,
>   					  struct irq_data *d)
>   {
> -	/* Nothing to do */
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +
> +	vpe->sgi_config[d->hwirq].enabled = false;
> +	its_configure_sgi(d, true);

The spec says, when C==1, VSGI clears the pending state of the vSGI,
leaving the configuration unchanged.  So should we first clear the
pending state and then disable vSGI (let E==0)?


Thanks,
Zenghui

>   }
>   
>   static struct irq_domain_ops its_sgi_domain_ops = {
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index c29a02678a6f..a89578884263 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -502,8 +502,9 @@
>   #define GITS_CMD_VMAPTI			GITS_CMD_GICv4(GITS_CMD_MAPTI)
>   #define GITS_CMD_VMOVI			GITS_CMD_GICv4(GITS_CMD_MOVI)
>   #define GITS_CMD_VSYNC			GITS_CMD_GICv4(GITS_CMD_SYNC)
> -/* VMOVP and INVDB are the odd ones, as they dont have a physical counterpart */
> +/* VMOVP, VSGI and INVDB are the odd ones, as they dont have a physical counterpart */
>   #define GITS_CMD_VMOVP			GITS_CMD_GICv4(2)
> +#define GITS_CMD_VSGI			GITS_CMD_GICv4(3)
>   #define GITS_CMD_INVDB			GITS_CMD_GICv4(0xe)
>   
>   /*
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
