Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB630160EA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVoaSQnVTyCfFxoiVl7n3Oq27MSO1s/BtNMpA+1WYuU=; b=IqRSlUlspycvEb
	nHFmSTpueDxsgcL1inKl/qJLv4TkeaXF8EUpvLaitTf01A9pPeqWUEf+WNUjcQtSsj8uEiYi/GR4i
	qx1yinoO/olh+CTXtCTrjyDQkFB0pV/pe1NpgKqLFM0FXIZHZMZV8mCAMMuVCyHfXMXteqXLi4OfB
	t26D6XpGHlB3XmsmsMCAUoclv9D6MP0u6xW217nq7Z/mx/deKOX1LSMAAP8pDILwqS+Ay20jDB55O
	MkHF9bS0ElS/GfOnjXC4Ew55zDFDb8xjCy1ODfAabZyS5XcIh0DH6lFxC2Z8V4t4sAqRMOjrq0NZJ
	1oOmPaXRFbNxU9gTDZvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cm5-0003H3-F1; Mon, 17 Feb 2020 09:33:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cif-0006wR-Tq; Mon, 17 Feb 2020 09:29:39 +0000
X-UUID: 468e4642296e46f28bfccc384afe54ad-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=+AZRRBU+eXyDNfzUrhQQGTkVM4JM0kpcUBh6dZge9tA=; 
 b=RDCvw7tHLfWuqmOGS911L2SXvA9CN9I/QCntQmRrc4VGTjml9DqeQNDiCsMEJAgxO6Vvx9S5J2s8E+8K9iyuOX1LGmyMMP2AiYWwwYl6TeCK8S8zaroegAj8Kw9dj98NG2G/V3WVJ1EIxW9QOrigMu7cTCRUinOPcnsCF7Bter0=;
X-UUID: 468e4642296e46f28bfccc384afe54ad-20200217
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1712034361; Mon, 17 Feb 2020 01:29:34 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 01:29:52 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 17:28:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 17:27:27 +0800
Message-ID: <1581931765.12547.0.camel@mtksdaap41>
Subject: Re: [PATCH v1 2/3] mailbox: mediatek: implement flush function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 17 Feb 2020 17:29:25 +0800
In-Reply-To: <20200217090532.16019-3-bibby.hsieh@mediatek.com>
References: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
 <20200217090532.16019-3-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012937_986872_EFFEB178 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 2020-02-17 at 17:05 +0800, Bibby Hsieh wrote:
> For client driver which need to reorganize the command buffer, it could
> use this function to flush the send command buffer.
> If the channel doesn't be started (usually in waiting for event), this
> function will abort it directly.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 52 ++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 9a6ce9f5a7db..0da5e2dc2c0e 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -432,10 +432,62 @@ static void cmdq_mbox_shutdown(struct mbox_chan *chan)
>  {
>  }
>  
> +static int cmdq_mbox_flush(struct mbox_chan *chan, unsigned long timeout)
> +{
> +	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
> +	struct cmdq_task_cb *cb;
> +	struct cmdq_cb_data data;
> +	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
> +	struct cmdq_task *task, *tmp;
> +	unsigned long flags;
> +	u32 enable;
> +
> +	spin_lock_irqsave(&thread->chan->lock, flags);
> +	if (list_empty(&thread->task_busy_list))
> +		goto out;
> +
> +	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> +	if (!cmdq_thread_is_in_wfe(thread))
> +		goto wait;
> +
> +	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
> +				 list_entry) {
> +		cb = &task->pkt->async_cb;
> +		if (cb->cb) {
> +			data.sta = CMDQ_CB_ERROR;
> +			data.data = cb->data;
> +			cb->cb(data);
> +		}
> +		list_del(&task->list_entry);
> +		kfree(task);
> +	}
> +
> +	cmdq_thread_resume(thread);
> +	cmdq_thread_disable(cmdq, thread);
> +	clk_disable(cmdq->clock);
> +
> +out:
> +	spin_unlock_irqrestore(&thread->chan->lock, flags);
> +	return 0;
> +
> +wait:
> +	cmdq_thread_resume(thread);
> +	spin_unlock_irqrestore(&thread->chan->lock, flags);
> +	if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_ENABLE_TASK,
> +				      enable, enable == 0, 1, timeout)) {
> +		dev_err(cmdq->mbox.dev, "Fail to wait GCE thread 0x%x done\n",
> +			(u32)(thread->base - cmdq->base));
> +
> +		return -EFAULT;
> +	}
> +	return 0;
> +}
> +
>  static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
>  	.send_data = cmdq_mbox_send_data,
>  	.startup = cmdq_mbox_startup,
>  	.shutdown = cmdq_mbox_shutdown,
> +	.flush = cmdq_mbox_flush,
>  };
>  
>  static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
