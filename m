Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380AF117D63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 02:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHYPcxiFaMGQ0Bt4FIgno9jZI6M6kXJ9G29LobdyTT4=; b=fsEiLZyGbfmYIB
	bSf2+Vhbz88xAvBvykJWiAN867n1UV+QD1ChH0xPm05khiNpSDain8OqGepChndKE9RNypdO8Mv1l
	/HbCYqkLnIWbH1kMRhW1o6gzZQNEQQgtXZb7fwDlkHq8pxagxkhd8Oe+RDe26RHoReywsnq/9RDFG
	Kp7CeSdmRvSbzrweldSg++TQYglCs3rsWD79EWU2AAVjKVP1DoLSy23KuDGDQtGQgLMIqLHQPjzyi
	Q7Tv6tnyfdyK5HLT5OdDdN6R4y/YIjnTG52r22UMvp+VgdmdczJmF813PUetDE7lJAxXcDiJ4pXvK
	WKI/EyQSu7yH8KgFrmOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieUkI-0003GP-OR; Tue, 10 Dec 2019 01:55:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieUkA-0003Fj-3Y; Tue, 10 Dec 2019 01:55:21 +0000
X-UUID: 381942953cb247da980d37d60d1b8f56-20191209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=982g9dOwewSGMZ2O7hXVzIKUMw7xMt+hL8+JyD3K+Vs=; 
 b=uZaQ7cQe4fjytkh4JOaviVooU/CfNLnDqTsd7oedT2a33v/5AtbbMwfnyzERD/O4/2Gs9EGyjEcrtK8r2uTBHiazzsYDm1X9vKSDCslghqT3n9/0+bGvY6W5LyZx2c2p280Gv54FM3lZB00An0L7m8gfrXVFlz06/q7PIem73VU=;
X-UUID: 381942953cb247da980d37d60d1b8f56-20191209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1284111491; Mon, 09 Dec 2019 17:55:09 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 17:55:23 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 09:54:48 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Dec 2019 09:54:48 +0800
Message-ID: <1575942906.12891.6.camel@mtksdaap41>
Subject: Re: [PATCH v2 02/14] mailbox: cmdq: variablize address shift in
 platform
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Tue, 10 Dec 2019 09:55:06 +0800
In-Reply-To: <1574819937-6246-4-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-4-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_175518_165100_43DD90FF 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
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
> index 9a6ce9f5a7db..d5536563fce1 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -76,8 +76,21 @@ struct cmdq {
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

EXPORT_SYMBOL(cmdq_mbox_shift);

> +
>  static int cmdq_thread_suspend(struct cmdq *cmdq, struct cmdq_thread *thread)
>  {
>  	u32 status;
> @@ -176,6 +189,7 @@ static void cmdq_task_remove_wfe(struct cmdq_task *task)
>  {
>  	struct device *dev = task->cmdq->mbox.dev;
>  	u64 *base = task->pkt->va_base;
> +	struct cmdq *cmdq = task->cmdq;
>  	int i;
>  
>  	dma_sync_single_for_cpu(dev, task->pa_base, task->pkt->cmd_buf_size,
> @@ -183,7 +197,7 @@ static void cmdq_task_remove_wfe(struct cmdq_task *task)
>  	for (i = 0; i < CMDQ_NUM_CMD(task->pkt); i++)
>  		if (cmdq_command_is_wfe(base[i]))
>  			base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
> -				  CMDQ_JUMP_PASS;
> +				  CMDQ_JUMP_PASS >> cmdq->shift_pa;

cmdq is only used here, so I would like

CMDQ_JUMP_PASS >> task->cmdq->shift_pa;

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
> +static const struct gce_plat gce_plat_v2 = {.thread_nr = 16, .shift = 0};
> +static const struct gce_plat gce_plat_v3 = {.thread_nr = 24, .shift = 0};

For global variable, you need not to initialize it to zero.

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
> index 9add0fd5fa6c..274f6f311d05 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -281,6 +281,7 @@ EXPORT_SYMBOL(cmdq_pkt_poll_mask);
>  
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
> +	struct cmdq_client *cl = pkt->cl;
>  	struct cmdq_instruction inst = { {0} };
>  	int err;
>  
> @@ -293,7 +294,7 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  
>  	/* JUMP to end */
>  	inst.op = CMDQ_CODE_JUMP;
> -	inst.value = CMDQ_JUMP_PASS;
> +	inst.value = CMDQ_JUMP_PASS >> cmdq_mbox_shift(cl->chan);

cl is used only here, so I would like

cmdq_mbox_shift(pkt->cl->chan);

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
