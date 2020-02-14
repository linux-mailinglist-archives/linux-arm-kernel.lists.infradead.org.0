Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F37715D1D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 06:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYLs8nQsMA/oX/l26swV9jXJEkkAvxTl8mhMKaZ2N4Q=; b=jnlltWdOD7J4uo
	2cs2X0UnkaCd6vJN3dN1HDmHboYLuRiyziqd5dCJ9IorV44BRVYiTK3M1Z2Db4MN2u3419e7L7oVc
	zj73Va/rKhcdis7xjiWRs6YVqFhEOarcgWP17Y46DkKBk5IP//owkVLBpk/f/uZEh9FPiaK6csjVL
	uNJ+IJw+DSZ1h+JcosBdF7TEqVehbZhJxvsSMkDBD5UVK+cj3Ze36uVl8ssICPOn9O603Y0uvddb0
	IgdgON99zFUB1X+gQkvr6bIzVeNqjAKcWjV5UDR4EHdTATVX6fTBxusdC7OjXfHvNYrIecKfd7wgo
	KnazuXw3ZsiyDBKdWfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Tw2-0007WQ-3x; Fri, 14 Feb 2020 05:54:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Tvr-0007V9-Pu; Fri, 14 Feb 2020 05:54:33 +0000
X-UUID: 8009ff7eca704856b2864e16579b090e-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=aq4/Nt3mOflR2npqJVwKlN7pvDCRb3THFi/XCc/6prY=; 
 b=mMe46RpU4MjD2/b8VIVSeyNJUVQtNlvo29DivMBMaZABa5+ulVjBWlyS6pRPov5Zj1Sx24FixOiVzMCoy6eUHux3xbhw7osEs1jBHyO/Pa3KHUL2rjYYM6xGhe/7VujW95IYDoClV4NwTjDKfATudJxdZQaIL7cqC/rkR1wz7p4=;
X-UUID: 8009ff7eca704856b2864e16579b090e-20200213
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1414723014; Thu, 13 Feb 2020 21:54:27 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 21:54:39 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 13:52:44 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 13:53:40 +0800
Message-ID: <1581659650.12440.5.camel@mtksdaap41>
Subject: Re: [PATCH 2/3] mailbox: mediatek: remove implementation related to
 atomic_exec
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 14 Feb 2020 13:54:10 +0800
In-Reply-To: <20200214043325.16618-3-bibby.hsieh@mediatek.com>
References: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
 <20200214043325.16618-3-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C8DF138582729314102426D84EB054128BA229A57B171B48E715190E688E887C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_215431_850073_80D4463D 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Fri, 2020-02-14 at 12:33 +0800, Bibby Hsieh wrote:
> After implement flush, client can flush the executing
> command buffer or abort the still waiting for event
> command buffer, so controller do not need to implement
> atomic_exe feature. remove it.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 76 ++++--------------------------
>  1 file changed, 8 insertions(+), 68 deletions(-)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 03e58ff62007..3ce777001aa5 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -57,7 +57,6 @@ struct cmdq_thread {
>  	void __iomem		*base;
>  	struct list_head	task_busy_list;
>  	u32			priority;
> -	bool			atomic_exec;
>  };
>  
>  struct cmdq_task {
> @@ -163,48 +162,11 @@ static void cmdq_task_insert_into_thread(struct cmdq_task *task)
>  	cmdq_thread_invalidate_fetched_data(thread);
>  }
>  
> -static bool cmdq_command_is_wfe(u64 cmd)
> -{
> -	u64 wfe_option = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
> -	u64 wfe_op = (u64)(CMDQ_CODE_WFE << CMDQ_OP_CODE_SHIFT) << 32;
> -	u64 wfe_mask = (u64)CMDQ_OP_CODE_MASK << 32 | 0xffffffff;
> -
> -	return ((cmd & wfe_mask) == (wfe_op | wfe_option));
> -}
> -
> -/* we assume tasks in the same display GCE thread are waiting the same event. */
> -static void cmdq_task_remove_wfe(struct cmdq_task *task)
> -{
> -	struct device *dev = task->cmdq->mbox.dev;
> -	u64 *base = task->pkt->va_base;
> -	int i;
> -
> -	dma_sync_single_for_cpu(dev, task->pa_base, task->pkt->cmd_buf_size,
> -				DMA_TO_DEVICE);
> -	for (i = 0; i < CMDQ_NUM_CMD(task->pkt); i++)
> -		if (cmdq_command_is_wfe(base[i]))
> -			base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
> -				  CMDQ_JUMP_PASS;
> -	dma_sync_single_for_device(dev, task->pa_base, task->pkt->cmd_buf_size,
> -				   DMA_TO_DEVICE);
> -}
> -
>  static bool cmdq_thread_is_in_wfe(struct cmdq_thread *thread)
>  {
>  	return readl(thread->base + CMDQ_THR_WAIT_TOKEN) & CMDQ_THR_IS_WAITING;
>  }
>  
> -static void cmdq_thread_wait_end(struct cmdq_thread *thread,
> -				 unsigned long end_pa)
> -{
> -	struct device *dev = thread->chan->mbox->dev;
> -	unsigned long curr_pa;
> -
> -	if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_CURR_ADDR,
> -			curr_pa, curr_pa == end_pa, 1, 20))
> -		dev_err(dev, "GCE thread cannot run to end.\n");
> -}
> -
>  static void cmdq_task_exec_done(struct cmdq_task *task, enum cmdq_cb_status sta)
>  {
>  	struct cmdq_task_cb *cb = &task->pkt->async_cb;
> @@ -384,36 +346,15 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
>  		WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
>  		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
>  		end_pa = readl(thread->base + CMDQ_THR_END_ADDR);
> -
> -		/*
> -		 * Atomic execution should remove the following wfe, i.e. only
> -		 * wait event at first task, and prevent to pause when running.
> -		 */
> -		if (thread->atomic_exec) {
> -			/* GCE is executing if command is not WFE */
> -			if (!cmdq_thread_is_in_wfe(thread)) {
> -				cmdq_thread_resume(thread);
> -				cmdq_thread_wait_end(thread, end_pa);
> -				WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> -				/* set to this task directly */
> -				writel(task->pa_base,
> -				       thread->base + CMDQ_THR_CURR_ADDR);
> -			} else {
> -				cmdq_task_insert_into_thread(task);
> -				cmdq_task_remove_wfe(task);
> -				smp_mb(); /* modify jump before enable thread */
> -			}
> +		/* check boundary */
> +		if (curr_pa == end_pa - CMDQ_INST_SIZE ||
> +		    curr_pa == end_pa) {
> +			/* set to this task directly */
> +			writel(task->pa_base,
> +			       thread->base + CMDQ_THR_CURR_ADDR);
>  		} else {
> -			/* check boundary */
> -			if (curr_pa == end_pa - CMDQ_INST_SIZE ||
> -			    curr_pa == end_pa) {
> -				/* set to this task directly */
> -				writel(task->pa_base,
> -				       thread->base + CMDQ_THR_CURR_ADDR);
> -			} else {
> -				cmdq_task_insert_into_thread(task);
> -				smp_mb(); /* modify jump before enable thread */
> -			}
> +			cmdq_task_insert_into_thread(task);
> +			smp_mb(); /* modify jump before enable thread */
>  		}
>  		writel(task->pa_base + pkt->cmd_buf_size,
>  		       thread->base + CMDQ_THR_END_ADDR);
> @@ -495,7 +436,6 @@ static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,
>  
>  	thread = (struct cmdq_thread *)mbox->chans[ind].con_priv;
>  	thread->priority = sp->args[1];
> -	thread->atomic_exec = (sp->args[2] != 0);
>  	thread->chan = &mbox->chans[ind];
>  
>  	return &mbox->chans[ind];

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
