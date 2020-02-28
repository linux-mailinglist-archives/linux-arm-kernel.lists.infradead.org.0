Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F015173B4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58vy8KCCZE9XWV0H3X9tdqZdaDMywFvlW52aZMzItCM=; b=GWfHrz+HWRM+MI
	kpiOV4HVZI8qcgdZuByc7rUk5dXU7vcBZNHEpNd6DCNDlgVRkJHulU8/qtJn2VNcooIk1CPrPEFPA
	cgvUv70ENG+Zlocc77Kfc4FeqQZiALm6WH+yy3AnxVQmmzJw7pWs0O8SrAmU+g6jNQqVYerdIv3sS
	stddSkqXu2IotIhmFcU0D6iDoXzDgUGm3pnsnyluaFpM7EodKcSHwRQ0ls+vFc+aGMnKJ2egiEWe/
	T2H13bJdUM8sNX6tbo5sJayMhfb+w1e4KJdmuZzybLZbQzn/DzQrg+QJnX/IL5z3z3KvJqpf3mi/m
	+gyuc0X9l7FHIrG7kpuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hUj-0005U3-RD; Fri, 28 Feb 2020 15:24:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hTq-0004q2-KE; Fri, 28 Feb 2020 15:23:12 +0000
X-UUID: a7f527ad11c64f85bf0eef5e9483ffd4-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ifFGmBxdS0EJEl6Bjk1aR1VMhenXnvQtJT+O9VME79I=; 
 b=pb/NYfTolnqw16DbUvgWS6XEbA+BavrBRFbS51xZEBf7wsURNGb0+HmyoJ/HBV0JmLVD4UMj1ZzsuGGoT/3Du0EDFucQNmwoUdLbulgJCw20YUY2mVGknYsVV80dzBjgb96kNPmg9zeu7VqonS+TAbK4qqqCdv+a2f2fgLNQGiQ=;
X-UUID: a7f527ad11c64f85bf0eef5e9483ffd4-20200228
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1692798686; Fri, 28 Feb 2020 07:23:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 07:22:58 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 23:22:03 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Feb 2020 23:22:39 +0800
Message-ID: <1582903376.14824.16.camel@mtksdaap41>
Subject: Re: [PATCH v3 02/13] mailbox: cmdq: variablize address shift in
 platform
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Fri, 28 Feb 2020 23:22:56 +0800
In-Reply-To: <1582897461-15105-4-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582897461-15105-4-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072310_698502_186DFBBE 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Fri, 2020-02-28 at 21:44 +0800, Dennis YC Hsieh wrote:
> Some gce hardware shift pc and end address in register to support
> large dram addressing.
> Implement gce address shift when write or read pc and end register.
> And add shift bit in platform definition.
> 
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c       | 57 ++++++++++++++++++------
>  drivers/soc/mediatek/mtk-cmdq-helper.c   |  3 +-
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  2 +
>  3 files changed, 48 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 9a6ce9f5a7db..a98f0357dd7d 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -76,8 +76,22 @@ struct cmdq {
>  	struct cmdq_thread	*thread;
>  	struct clk		*clock;
>  	bool			suspended;
> +	u8			shift_pa;
>  };
>  
> +struct gce_plat {
> +	u32 thread_nr;
> +	u8 shift;
> +};
> +
> +u8 cmdq_mbox_shift(struct mbox_chan *chan)
> +{
> +	struct cmdq *cmdq = container_of(chan->mbox, struct cmdq, mbox);
> +
> +	return cmdq->shift_pa;
> +}
> +EXPORT_SYMBOL(cmdq_mbox_shift);
> +
>  static int cmdq_thread_suspend(struct cmdq *cmdq, struct cmdq_thread *thread)
>  {
>  	u32 status;
> @@ -183,7 +197,7 @@ static void cmdq_task_remove_wfe(struct cmdq_task *task)
>  	for (i = 0; i < CMDQ_NUM_CMD(task->pkt); i++)
>  		if (cmdq_command_is_wfe(base[i]))
>  			base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
> -				  CMDQ_JUMP_PASS;
> +				  CMDQ_JUMP_PASS >> task->cmdq->shift_pa;
>  	dma_sync_single_for_device(dev, task->pa_base, task->pkt->cmd_buf_size,
>  				   DMA_TO_DEVICE);
>  }
> @@ -221,13 +235,15 @@ static void cmdq_task_handle_error(struct cmdq_task *task)
>  {
>  	struct cmdq_thread *thread = task->thread;
>  	struct cmdq_task *next_task;
> +	struct cmdq *cmdq = task->cmdq;
>  
>  	dev_err(task->cmdq->mbox.dev, "task 0x%p error\n", task);
>  	WARN_ON(cmdq_thread_suspend(task->cmdq, thread) < 0);

If you invent local variable 'cmdq', I think you could replace all
task->cmdq with cmdq in this function.

>  	next_task = list_first_entry_or_null(&thread->task_busy_list,
>  			struct cmdq_task, list_entry);
>  	if (next_task)
> -		writel(next_task->pa_base, thread->base + CMDQ_THR_CURR_ADDR);
> +		writel(next_task->pa_base >> cmdq->shift_pa,
> +		       thread->base + CMDQ_THR_CURR_ADDR);
>  	cmdq_thread_resume(thread);
>  }
>  
> @@ -257,7 +273,7 @@ static void cmdq_thread_irq_handler(struct cmdq *cmdq,
>  	else
>  		return;
>  
> -	curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
> +	curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR) << cmdq->shift_pa;
>  
>  	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
>  				 list_entry) {
> @@ -373,16 +389,20 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
>  		WARN_ON(clk_enable(cmdq->clock) < 0);
>  		WARN_ON(cmdq_thread_reset(cmdq, thread) < 0);
>  
> -		writel(task->pa_base, thread->base + CMDQ_THR_CURR_ADDR);
> -		writel(task->pa_base + pkt->cmd_buf_size,
> +		writel(task->pa_base >> cmdq->shift_pa,
> +		       thread->base + CMDQ_THR_CURR_ADDR);
> +		writel((task->pa_base + pkt->cmd_buf_size) >> cmdq->shift_pa,
>  		       thread->base + CMDQ_THR_END_ADDR);
> +
>  		writel(thread->priority, thread->base + CMDQ_THR_PRIORITY);
>  		writel(CMDQ_THR_IRQ_EN, thread->base + CMDQ_THR_IRQ_ENABLE);
>  		writel(CMDQ_THR_ENABLED, thread->base + CMDQ_THR_ENABLE_TASK);
>  	} else {
>  		WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> -		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
> -		end_pa = readl(thread->base + CMDQ_THR_END_ADDR);
> +		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR) <<
> +			cmdq->shift_pa;
> +		end_pa = readl(thread->base + CMDQ_THR_END_ADDR) <<
> +			cmdq->shift_pa;
>  
>  		/*
>  		 * Atomic execution should remove the following wfe, i.e. only
> @@ -395,7 +415,7 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
>  				cmdq_thread_wait_end(thread, end_pa);
>  				WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
>  				/* set to this task directly */
> -				writel(task->pa_base,
> +				writel(task->pa_base >> cmdq->shift_pa,
>  				       thread->base + CMDQ_THR_CURR_ADDR);
>  			} else {
>  				cmdq_task_insert_into_thread(task);
> @@ -407,14 +427,14 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
>  			if (curr_pa == end_pa - CMDQ_INST_SIZE ||
>  			    curr_pa == end_pa) {
>  				/* set to this task directly */
> -				writel(task->pa_base,
> +				writel(task->pa_base >> cmdq->shift_pa,
>  				       thread->base + CMDQ_THR_CURR_ADDR);
>  			} else {
>  				cmdq_task_insert_into_thread(task);
>  				smp_mb(); /* modify jump before enable thread */
>  			}
>  		}
> -		writel(task->pa_base + pkt->cmd_buf_size,
> +		writel((task->pa_base + pkt->cmd_buf_size) >> cmdq->shift_pa,
>  		       thread->base + CMDQ_THR_END_ADDR);
>  		cmdq_thread_resume(thread);
>  	}
> @@ -461,6 +481,7 @@ static int cmdq_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	struct cmdq *cmdq;
>  	int err, i;
> +	struct gce_plat *plat_data;
>  
>  	cmdq = devm_kzalloc(dev, sizeof(*cmdq), GFP_KERNEL);
>  	if (!cmdq)
> @@ -479,7 +500,14 @@ static int cmdq_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -	cmdq->thread_nr = (u32)(unsigned long)of_device_get_match_data(dev);
> +	plat_data = (struct gce_plat *)of_device_get_match_data(dev);
> +	if (!plat_data) {
> +		dev_err(dev, "failed to get match data\n");
> +		return -EINVAL;
> +	}
> +
> +	cmdq->thread_nr = plat_data->thread_nr;
> +	cmdq->shift_pa = plat_data->shift;
>  	cmdq->irq_mask = GENMASK(cmdq->thread_nr - 1, 0);
>  	err = devm_request_irq(dev, cmdq->irq, cmdq_irq_handler, IRQF_SHARED,
>  			       "mtk_cmdq", cmdq);
> @@ -542,9 +570,12 @@ static const struct dev_pm_ops cmdq_pm_ops = {
>  	.resume = cmdq_resume,
>  };
>  
> +static const struct gce_plat gce_plat_v2 = {.thread_nr = 16};
> +static const struct gce_plat gce_plat_v3 = {.thread_nr = 24};
> +
>  static const struct of_device_id cmdq_of_ids[] = {
> -	{.compatible = "mediatek,mt8173-gce", .data = (void *)16},
> -	{.compatible = "mediatek,mt8183-gce", .data = (void *)24},
> +	{.compatible = "mediatek,mt8173-gce", .data = (void *)&gce_plat_v2},
> +	{.compatible = "mediatek,mt8183-gce", .data = (void *)&gce_plat_v3},
>  	{}
>  };
>  
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index de20e6cba83b..2e1bc513569b 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -291,7 +291,8 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  
>  	/* JUMP to end */
>  	inst.op = CMDQ_CODE_JUMP;
> -	inst.value = CMDQ_JUMP_PASS;
> +	inst.value = CMDQ_JUMP_PASS >>
> +		cmdq_mbox_shift(((struct cmdq_client *)pkt->cl)->chan);

Why not just cmdq_mbox_shift(pkt->cl->chan) ?

Regards,
CK

>  	err = cmdq_pkt_append_command(pkt, inst);
>  
>  	return err;
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index a4dc45fbec0a..dfe5b2eb85cc 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -88,4 +88,6 @@ struct cmdq_pkt {
>  	void			*cl;
>  };
>  
> +u8 cmdq_mbox_shift(struct mbox_chan *chan);
> +
>  #endif /* __MTK_CMDQ_MAILBOX_H__ */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
