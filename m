Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54892E0415
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kJAepYVchucqoXmWUUidJ8+NCKY4zkRo/c/IrUzeP0A=; b=dt2L4egUSpKLpH1xFzYVm5h6z
	S9zK4GSs/WTJMGwCViH8MpdYLO9L1kpH0jAdHopaY4T9SMaqrfwGgBu5kRPVWl3G+bfjmqXQwUiUG
	zrQKxca4h5ty5WC1kaHFFhwChkXVs/ZyFTP+cSnbuK1lyE9iWxlBnSbhwETvImmQzsjn9w8J2QL2l
	gCcUapS3w3H5W+AmWGwQdqNCBhopExOMzbS/dsD/7ECZvdbke4i1BbZcOHuJ5kEuuTTqjn99ZEDt+
	DWQ7piJRIz7a5T86PTqBZbpb/Ac3/QLLnp++sD34tBrrNbXU8Pnc9hJco46ywq0K2ybc02CvXtdY+
	JIEAGomQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtXE-0000pq-5i; Tue, 22 Oct 2019 12:45:12 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtWv-0000pI-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:44:54 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iMtWo-0006QL-Cu; Tue, 22 Oct 2019 14:44:46 +0200
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Use the exact ITSList for VMOVP
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 13:44:46 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1571742366-21008-1-git-send-email-yuzenghui@huawei.com>
References: <1571742366-21008-1-git-send-email-yuzenghui@huawei.com>
Message-ID: <34e9236f057b22d49f40146b21f81282@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, tglx@linutronix.de,
 jason@lakedaemon.net, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 jiayanlei@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_054453_349663_77557BB8 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: jason@lakedaemon.net, jiayanlei@huawei.com, wanghaibin.wang@huawei.com,
 tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2019-10-22 12:06, Zenghui Yu wrote:
> On a system without Single VMOVP support (say GITS_TYPER.VMOVP == 0),
> we will map vPEs only on ITSs that will actually control interrupts
> for the given VM.  And when moving a vPE, the VMOVP command will be
> issued only for those ITSs.
>
> But when issuing VMOVPs we seemed fail to present the exact ITSList
> to ITSs who are actually included in the synchronization operation.
> The its_list_map we're currently using includes all ITSs in the 
> system,
> even though some of them don't have the corrsponding vPE mapping at 
> all.
>
> Introduce get_its_list() to get the per-VM its_list_map, to indicate
> which ITSs have vPE mappings for the given VM, and use this map as
> the expected ITSList when building VMOVP.
>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>
> I haven't seen any broken with the current its_list_map, but behavior
> might differ between implementations.  Let's do what the spec expects
> us to do and try not to confuse the implementation.  Or is there any
> points I've missed?

No, I think you're right, and this is just an oversight on my part:
for example, we seem to do the right thing when handling a guest 
invall,
where we scan the ITS nodes and only emit a vinvall on an ITS that
has VLPI mapped in.

I don't think this is likely to cause any harm (after all, a DISCARD 
and
a VMOVP could race at any time), but it is certainly a performance gain
not to throw extra commands at unsuspecting ITSs. So thanks for 
spotting this.

A couple of comments below:

>
>  drivers/irqchip/irq-gic-v3-its.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/irqchip/irq-gic-v3-its.c
> b/drivers/irqchip/irq-gic-v3-its.c
> index c81da27044bf..eebee588ea30 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -175,6 +175,19 @@ static DEFINE_IDA(its_vpeid_ida);
>  #define gic_data_rdist_rd_base()	(gic_data_rdist()->rd_base)
>  #define gic_data_rdist_vlpi_base()	(gic_data_rdist_rd_base() + 
> SZ_128K)
>
> +static inline u16 get_its_list(struct its_vm *vm)

Please drop the inline, the compiler will do it for you.

> +{
> +	struct its_node *its;
> +	unsigned long its_list;
> +
> +	list_for_each_entry(its, &its_nodes, entry) {

You probably want to skip non v4 ITSs, as they don't have a list_nr 
associated
to them (and you'd probably end-up hitting ITS #0 for no good reason).

> +		if (vm->vlpi_count[its->list_nr])
> +			set_bit(its->list_nr, &its_list);

We don't need to be atomic here, so __set_bit would be just as fine.

> +	}
> +
> +	return (u16)its_list;
> +}
> +
>  static struct its_collection *dev_event_to_col(struct its_device 
> *its_dev,
>  					       u32 event)
>  {
> @@ -982,7 +995,6 @@ static void its_send_vmovp(struct its_vpe *vpe)
>  	int col_id = vpe->col_idx;
>
>  	desc.its_vmovp_cmd.vpe = vpe;
> -	desc.its_vmovp_cmd.its_list = (u16)its_list_map;

Careful here, you're leaving the its_list field uninitialized, and it
really should be 0 when GITS_TYPER.VMOVP == 1 (i.e. when its_list_map
is zero). Just initialize the whole descriptor to zero.
>
>  	if (!its_list_map) {
>  		its = list_first_entry(&its_nodes, struct its_node, entry);
> @@ -1003,6 +1015,7 @@ static void its_send_vmovp(struct its_vpe *vpe)
>  	raw_spin_lock_irqsave(&vmovp_lock, flags);
>
>  	desc.its_vmovp_cmd.seq_num = vmovp_seq_num++;
> +	desc.its_vmovp_cmd.its_list = get_its_list(vpe->its_vm);
>
>  	/* Emit VMOVPs */
>  	list_for_each_entry(its, &its_nodes, entry) {

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
