Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDE818B11B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEWwi4/b1B98vPZ+YFOy1PEnTNIo5WteKxuAkyI7Trg=; b=Nnr8Nm1MCxc3c5ZBBzugRKNhC
	7b454gaPLgpHGuf9zi/Nogw+jN9xA5MSbEh/XLgsRIvMSa28ccI/r5fLVj3guLwOoszyO9pe+AD+B
	IitGJMysBkWdCJD/U9DKaGhCDh/dxEzjK2P8WaEMgBIEQDT34jju47IWqU7w7nK9QmtYYcmjp+7B+
	UmQ1YEav2Pb6zBzauOVc9xIBajfabQJjlWhoDZPgRV2LoOpr/w2x89jINfbELjAtRKPRRnMhn9oiV
	VDEU91LYhBxc15J6cRIx9FNuZcSYlFDEZH9CqxzoLJrirxVYgBqDt63ZjLC1A5E41SAPlkTkg9rSr
	wYbsh4qcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsHs-00045G-28; Thu, 19 Mar 2020 10:20:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsHj-00044d-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:20:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D10020739;
 Thu, 19 Mar 2020 10:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584613219;
 bh=7RbgCqMe4aXwMbkiWFY/Nl4FmGbcu1BJz4zLIijhgLE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bQ4mFhvqdLtgNjmeQVR0TbJmmJjL5N+77PGLEE1zxWP0rHsEmF+8ZYjA8iiA9ljBC
 T1t8LPDjRbpBHLUYqfDaCXbzQjq0XRfUeLe5Ax9Zf+DwjOLuOMRd7wFG2gvouVdfkp
 6e2KscxYs8m37xs9tsr//3ASZ9hYqi5FyYFzOw+w=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEsHh-00DuRj-Jm; Thu, 19 Mar 2020 10:20:17 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 10:20:17 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 09/23] irqchip/gic-v4.1: Add initial SGI configuration
In-Reply-To: <4ccc36c5-1e0a-b4f6-b014-8691fdb50c84@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-10-maz@kernel.org>
 <4ccc36c5-1e0a-b4f6-b014-8691fdb50c84@redhat.com>
Message-ID: <c0bb83dc4ef331cb0b1ad30085ccb079@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_032020_036578_860CA823 
X-CRM114-Status: GOOD (  23.91  )
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
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-16 17:53, Auger Eric wrote:
> Hi Marc,
> 
> On 3/4/20 9:33 PM, Marc Zyngier wrote:
>> The GICv4.1 ITS has yet another new command (VSGI) which allows
>> a VPE-targeted SGI to be configured (or have its pending state
>> cleared). Add support for this command and plumb it into the
>> activate irqdomain callback so that it is ready to be used.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>  drivers/irqchip/irq-gic-v3-its.c   | 79 
>> +++++++++++++++++++++++++++++-
>>  include/linux/irqchip/arm-gic-v3.h |  3 +-
>>  2 files changed, 80 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index 112b452fcb40..e0db3f906f87 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -380,6 +380,15 @@ struct its_cmd_desc {
>>  		struct {
>>  			struct its_vpe *vpe;
>>  		} its_invdb_cmd;
>> +
>> +		struct {
>> +			struct its_vpe *vpe;
>> +			u8 sgi;
>> +			u8 priority;
>> +			bool enable;
>> +			bool group;
>> +			bool clear;
>> +		} its_vsgi_cmd;
>>  	};
>>  };
>> 
>> @@ -528,6 +537,31 @@ static void its_encode_db(struct its_cmd_block 
>> *cmd, bool db)
>>  	its_mask_encode(&cmd->raw_cmd[2], db, 63, 63);
>>  }
>> 
>> +static void its_encode_sgi_intid(struct its_cmd_block *cmd, u8 sgi)
>> +{
>> +	its_mask_encode(&cmd->raw_cmd[0], sgi, 35, 32);
>> +}
>> +
>> +static void its_encode_sgi_priority(struct its_cmd_block *cmd, u8 
>> prio)
>> +{
>> +	its_mask_encode(&cmd->raw_cmd[0], prio >> 4, 23, 20);
>> +}
>> +
>> +static void its_encode_sgi_group(struct its_cmd_block *cmd, bool grp)
>> +{
>> +	its_mask_encode(&cmd->raw_cmd[0], grp, 10, 10);
>> +}
>> +
>> +static void its_encode_sgi_clear(struct its_cmd_block *cmd, bool clr)
>> +{
>> +	its_mask_encode(&cmd->raw_cmd[0], clr, 9, 9);
>> +}
>> +
>> +static void its_encode_sgi_enable(struct its_cmd_block *cmd, bool en)
>> +{
>> +	its_mask_encode(&cmd->raw_cmd[0], en, 8, 8);
>> +}
>> +
>>  static inline void its_fixup_cmd(struct its_cmd_block *cmd)
>>  {
>>  	/* Let's fixup BE commands */
>> @@ -893,6 +927,26 @@ static struct its_vpe *its_build_invdb_cmd(struct 
>> its_node *its,
>>  	return valid_vpe(its, desc->its_invdb_cmd.vpe);
>>  }
>> 
>> +static struct its_vpe *its_build_vsgi_cmd(struct its_node *its,
>> +					  struct its_cmd_block *cmd,
>> +					  struct its_cmd_desc *desc)
>> +{
>> +	if (WARN_ON(!is_v4_1(its)))
>> +		return NULL;
>> +
>> +	its_encode_cmd(cmd, GITS_CMD_VSGI);
>> +	its_encode_vpeid(cmd, desc->its_vsgi_cmd.vpe->vpe_id);
>> +	its_encode_sgi_intid(cmd, desc->its_vsgi_cmd.sgi);
>> +	its_encode_sgi_priority(cmd, desc->its_vsgi_cmd.priority);
>> +	its_encode_sgi_group(cmd, desc->its_vsgi_cmd.group);
>> +	its_encode_sgi_clear(cmd, desc->its_vsgi_cmd.clear);
>> +	its_encode_sgi_enable(cmd, desc->its_vsgi_cmd.enable);
>> +
>> +	its_fixup_cmd(cmd);
>> +
>> +	return valid_vpe(its, desc->its_vsgi_cmd.vpe);
>> +}
>> +
>>  static u64 its_cmd_ptr_to_offset(struct its_node *its,
>>  				 struct its_cmd_block *ptr)
>>  {
>> @@ -3870,6 +3924,21 @@ static struct irq_chip its_vpe_4_1_irq_chip = {
>>  	.irq_set_vcpu_affinity	= its_vpe_4_1_set_vcpu_affinity,
>>  };
>> 
>> +static void its_configure_sgi(struct irq_data *d, bool clear)
>> +{
>> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>> +	struct its_cmd_desc desc;
>> +
>> +	desc.its_vsgi_cmd.vpe = vpe;
>> +	desc.its_vsgi_cmd.sgi = d->hwirq;
>> +	desc.its_vsgi_cmd.priority = vpe->sgi_config[d->hwirq].priority;
>> +	desc.its_vsgi_cmd.enable = vpe->sgi_config[d->hwirq].enabled;
>> +	desc.its_vsgi_cmd.group = vpe->sgi_config[d->hwirq].group;
>> +	desc.its_vsgi_cmd.clear = clear;
>> +
>> +	its_send_single_vcommand(find_4_1_its(), its_build_vsgi_cmd, &desc);
> I see we pick up the first 4.1 ITS with find_4_1_its(). Can it happen
> that not all of them have a mapping for that vPEID and if so we should
> rather use one that has this mapping?
> 
> The spec says:
> The ITS controls must only be used on an ITS that has a mapping for 
> that
> vPEID.
> Where multiple ITSs have a mapping for the vPEID, any ITS with a 
> mapping
> may be used.

As Zenghui pointed out, we eagerly map all the VPEs, as we need the 
vSGIs
to be delivered by the ITS (yes, this is pretty backward, both in the 
series
and the architecture).

I'll add this coment to lift the ambiguity:

	/*
	 * GICv4.1 allows us to send VSGI commands to any ITS as long as the
	 * destination VPE is mapped there. Since we map them eagerly at
	 * activation time, we're pretty sure the first GICv4.1 ITS will do.
	 */

> 
>> +}
>> +
>>  static int its_sgi_set_affinity(struct irq_data *d,
>>  				const struct cpumask *mask_val,
>>  				bool force)
>> @@ -3915,13 +3984,21 @@ static void its_sgi_irq_domain_free(struct 
>> irq_domain *domain,
>>  static int its_sgi_irq_domain_activate(struct irq_domain *domain,
>>  				       struct irq_data *d, bool reserve)
>>  {
>> +	/* Write out the initial SGI configuration */
>> +	its_configure_sgi(d, false);
>>  	return 0;
>>  }
>> 
>>  static void its_sgi_irq_domain_deactivate(struct irq_domain *domain,
>>  					  struct irq_data *d)
>>  {
>> -	/* Nothing to do */
>> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>> +
>> +	/* First disable the SGI */
>> +	vpe->sgi_config[d->hwirq].enabled = false;
>> +	its_configure_sgi(d, false);
>> +	/* Now clear the potential pending bit (yes, this is clunky) */
> nit: Without carefuly reading the VSGI cmd notes, it is difficult to
> understand why those 2 steps are needed: maybe replace this comment by
> something like:
> to change the config, clear must be set to false. Then clear is set and
> this leaves the config unchanged. Both steps cannot be done 
> concurrently.

I've added this:

	/*
	 * The VSGI command is awkward:
	 *
	 * - To change the configuration, CLEAR must be set to false,
	 *   leaving the pending bit unchanged.
	 * - To clear the pending bit, CLEAR must be set to true, leaving
	 *   the configuration unchanged.
	 *
	 * You just can't do both at once, hence the two commands below.
	 */

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
