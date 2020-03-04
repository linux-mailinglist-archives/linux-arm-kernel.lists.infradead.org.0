Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6666A1788A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 03:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68fykKdrT8ky5FuXLNRIQ3c+j3uS9HsBnqggLWiA+us=; b=ighHBoN7ktdMv+
	VYfejqerp5/0h8Y26XGVBM/8B6VnAoVqJz31vSVy39we1N8er/DcfMj2TGjYnf9+fJiSTdoSvRX+R
	qefXH8Dm7uqpDe1a1dGYeESOXqEUANdGC9ms7vvJ0nvgxv9BDc/i2npPq1SvG64Nsbq3gxGcnswmF
	B24fBKAxyKvTrI7T9U3dVLOa1WCJCDNGfx8HTusL1Uy8QqyRNwqcuH3GvdyVRulRdhKEOjFdz/3KH
	CYTw/V6fUa8RLcW0MsfedWDTsRqlT8I2ei5PKR4fO8unUUBhfVUEsvO7drvUVNan+0r18Y05dPBvA
	rqC/TrClaN8Xm5kCIXZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9K49-0000b2-Kh; Wed, 04 Mar 2020 02:47:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9K3c-0008Ut-2S; Wed, 04 Mar 2020 02:46:49 +0000
X-UUID: 61504c32c92b466d8dd4c095977e48bf-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=N8uzmfi4oZf5SjaF1khnb5BTauSzbMkMnOjjAfK7Xwg=; 
 b=kUv+Q1W63A1dnmFWptEDLaQr7gyze9SehA222Fyqr7zllZKbNIHIf1F0EGqReLd6ka4+p/1Rgd3Kknmz+q33UEJoyThY6z4k9bHCjdynbyilnP58GhkJMgF49xLrDBYnlqIeIHnIbzsr+BM84pff+IG5qmD0tZrypsAxt+bV1OI=;
X-UUID: 61504c32c92b466d8dd4c095977e48bf-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 167182700; Tue, 03 Mar 2020 18:46:45 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:36:42 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 10:35:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Mar 2020 10:36:01 +0800
Message-ID: <1583289401.32049.2.camel@mtksdaap41>
Subject: Re: [PATCH v4 04/13] mailbox: mediatek: cmdq: clear task in channel
 before shutdown
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Wed, 4 Mar 2020 10:36:41 +0800
In-Reply-To: <1583233125-7827-5-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1583233125-7827-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583233125-7827-5-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_184648_117099_CF1D0549 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, wsd_upstream@mediatek.com, David
 Airlie <airlied@linux.ie>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Tue, 2020-03-03 at 18:58 +0800, Dennis YC Hsieh wrote:
> Do success callback in channel when shutdown. For those task not finish,
> callback with error code thus client has chance to cleanup or reset.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 38 ++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 9994ac9426d6..b56d340c8982 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -387,6 +387,12 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
>  
>  	if (list_empty(&thread->task_busy_list)) {
>  		WARN_ON(clk_enable(cmdq->clock) < 0);
> +		/*
> +		 * The thread reset will clear thread related register to 0,
> +		 * including pc, end, priority, irq, suspend and enable. Thus
> +		 * set CMDQ_THR_ENABLED to CMDQ_THR_ENABLE_TASK will enable
> +		 * thread and make it running.
> +		 */
>  		WARN_ON(cmdq_thread_reset(cmdq, thread) < 0);
>  
>  		writel(task->pa_base >> cmdq->shift_pa,
> @@ -450,6 +456,38 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
>  
>  static void cmdq_mbox_shutdown(struct mbox_chan *chan)
>  {
> +	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
> +	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
> +	struct cmdq_task *task, *tmp;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&thread->chan->lock, flags);
> +	if (list_empty(&thread->task_busy_list))
> +		goto done;
> +
> +	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> +
> +	/* make sure executed tasks have success callback */
> +	cmdq_thread_irq_handler(cmdq, thread);
> +	if (list_empty(&thread->task_busy_list))
> +		goto done;
> +
> +	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
> +				 list_entry) {
> +		cmdq_task_exec_done(task, CMDQ_CB_ERROR);
> +		kfree(task);
> +	}
> +
> +	cmdq_thread_disable(cmdq, thread);
> +	clk_disable(cmdq->clock);
> +done:
> +	/*
> +	 * The thread->task_busy_list empty means thread already disable. The
> +	 * cmdq_mbox_send_data() always reset thread which clear disable and
> +	 * suspend statue when first pkt send to channel, so there is no need
> +	 * to do any operation here, only unlock and leave.
> +	 */
> +	spin_unlock_irqrestore(&thread->chan->lock, flags);
>  }
>  
>  static const struct mbox_chan_ops cmdq_mbox_chan_ops = {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
