Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1789F15D1D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 06:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iR4t2zd5AoQT+6j8ZbnLDLyeZkFhg3evrPI583FXe1A=; b=CfAV0emFKI10Xz
	hqwflzl86IObnILU24r1Yca47bJd1aTUFsJinR2cEaVXzNF/VCt3X4nP7VAobzMqwVvQYmeKXoLxF
	0f5BEYoluYOyVQBsl/rK/gwAT5SznWyVvKC6LtkfG9+mGNUBueF9SSt66i2S4pA9HPmTe7IPRogxv
	87bmMo5AOl6xg0CL/SPFOL86beGnPoX7FswUkQ8hTeaLGiap8hKkOvUEVHhD+/Kg8uQCqXFvtikUL
	GbxhrfygfV1LkWvkx1fWaZtjWJQGWcjDxNDaKQtSDX369wYe/dnt0eUWXdbWLGmE0tW/FZVLsSJI0
	LJH555Ym8PWjm8MoHVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Tuq-0007CS-0x; Fri, 14 Feb 2020 05:53:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Tue-0007B0-N3; Fri, 14 Feb 2020 05:53:18 +0000
X-UUID: 87761b118e744b35b551663bcdaca2ee-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=MKS/tZddzjMcmHkohADijgwvgawrQa6DEYiWy5+7lCc=; 
 b=SwEjsUHCCoWwup1ZGpmd9wDpUm4W36DE2fUJJuABhNzvZ0KbcCdh7kcoj9U+lSCO2vinS1n0Ri97gbFaomlx7I/SIsf7PCV6RgiRkd3AsEK0fj46dybBEBsR/SoZE5t2xHsgUQy5Kf0eBmY6Hzm0oIlhJwTYCwzxubucJ6JAys4=;
X-UUID: 87761b118e744b35b551663bcdaca2ee-20200213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 371677702; Thu, 13 Feb 2020 21:53:13 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 21:53:25 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 13:52:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 13:52:40 +0800
Message-ID: <1581659590.12440.4.camel@mtksdaap41>
Subject: Re: [PATCH 1/3] mailbox: mediatek: implement flush function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 14 Feb 2020 13:53:10 +0800
In-Reply-To: <20200214043325.16618-2-bibby.hsieh@mediatek.com>
References: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
 <20200214043325.16618-2-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_215316_762663_223356B4 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
> For client driver which need to reorganize the command buffer, it could
> use this function to flush the send command buffer.
> If the channel doesn't be started (usually in waiting for event), this
> function will abort it directly.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 50 ++++++++++++++++++++++++++++--
>  1 file changed, 48 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 9a6ce9f5a7db..03e58ff62007 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -5,6 +5,7 @@
>  #include <linux/bitops.h>
>  #include <linux/clk.h>
>  #include <linux/clk-provider.h>
> +#include <linux/completion.h>

Why add this?

>  #include <linux/dma-mapping.h>
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
> @@ -428,14 +429,59 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
>  	return 0;
>  }
>  
> -static void cmdq_mbox_shutdown(struct mbox_chan *chan)
> +static int cmdq_mbox_flush(struct mbox_chan *chan, unsigned long timeout)
>  {
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
> +		list_del(&task->list_entry);
> +		kfree(task);
> +	}
> +
> +	if (cb->cb) {
> +		data.sta = -ENOBUFS;

CMDQ_CB_ERROR?

I do not like cmdq to define itself error code, use standard error code
is better.

> +		data.data = cb->data;
> +		cb->cb(data);
> +	}

Why just callback the latest packet? I think you should move this into
list_for_each_entry_safe{} loop.

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
> +				      enable, enable == 0, 1, timeout))
> +		dev_err(cmdq->mbox.dev, "Fail to wait GCE thread 0x%x done\n",
> +			(u32)(thread->base - cmdq->base));

I think you should return error when timeout.

> +	return 0;
>  }
>  
>  static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
>  	.send_data = cmdq_mbox_send_data,
>  	.startup = cmdq_mbox_startup,
> -	.shutdown = cmdq_mbox_shutdown,

This patch is about flush function, why do you remove shutdown function?

Regards,
CK

> +	.flush = cmdq_mbox_flush,
>  };
>  
>  static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
