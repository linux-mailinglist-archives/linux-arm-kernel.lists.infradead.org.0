Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27E012CD35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 07:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utGVtZK4r3hDQAtPJN208lM7/2oyBp9L96lKbpmpZR4=; b=Bgl1fJQrN8CFFD
	JWeU6oYsXWaulR2g5hZusDFjBrVGJjUXFSFZFF3fb6XT1klqGw2pgUsjVdahq7be8fy6vM/4BTFQx
	vlTDE/dyQg/1BEa/3cvf2hgBiZPqb1Wc5lY+ptd6/WfPg8/wR4DTuTxn3B7p8llYZHdeD5+7uI3YF
	yyaM5WuVZEHVvhMGj1Sgiu3LLJz9Yi7zSko4Bc1P0xIrbZfYYJZMLgZg7QcsFQ7XcMwC+Ef0CgZTi
	/yfIlalzfokXEzmOepWhRdUuiPJ6FtTEMx7pv+wQJ6mw1LroaT7Y4kmuGXSjv6pY3Se36ouKsje/z
	SoW2JH8QeKJ/Ke0UWqmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilonC-0007K5-Ct; Mon, 30 Dec 2019 06:44:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilon1-0007It-A8; Mon, 30 Dec 2019 06:44:33 +0000
X-UUID: 7fed1a5df5754e17925f4f2aff74ee8f-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2JEQv42DFUUU456BpXiLJVg53m301BGWjGWt9M3Fzlk=; 
 b=CKwzmNAP1rTKSzbkV2j7fTUsbsmVECe4+IZdSxgi86YLM8WBxSkQrAYldL3zQCCIDZtckDOYMGMIgQy03Lk6IOWpG7W4rWB2tdS6Z4GyCNzhPl7wFCNp6/nRaTo37Vj0Qe7ZkJ8s3WPSG8f/g5GHKkFusVrYIO6cRKvYEqwSSII=;
X-UUID: 7fed1a5df5754e17925f4f2aff74ee8f-20191229
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2016859193; Sun, 29 Dec 2019 22:44:23 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 22:44:37 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 14:43:51 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Dec 2019 14:44:36 +0800
Message-ID: <1577688253.17931.11.camel@mtksdaap41>
Subject: Re: [PATCH] soc: mediatek: cmdq: avoid racing condition with mutex
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 30 Dec 2019 14:44:13 +0800
In-Reply-To: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
References: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_224431_357879_DBBEA025 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 2019-11-21 at 15:29 +0800, Bibby Hsieh wrote:
> If cmdq client is multi thread user, racing will occur without mutex
> protection. It will make the C message queued in mailbox's queue
> always need D message's triggering.
> 
> Thread A		Thread B		  Thread C		Thread D...
> -----------------------------------------------------------------------------------
> mbox_send_message()
> 	send_data()
> 			mbox_send_message()
> 				*exit
> 						mbox_send_message()
> 							*exit
> mbox_client_txdone()
> 	tx_tick()
> 			mbox_client_txdone()
> 				tx_tick()
> 						mbox_client_txdone()
> 							tx_tick()
> msg_submit()
> 	send_data()
> 			msg_submit()
> 				*exit
> 						msg_submit()
> 							*exit
> -----------------------------------------------------------------------------------
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 3 +++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 9add0fd5fa6c..9e35e0beffaa 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -81,6 +81,7 @@ struct cmdq_client *cmdq_mbox_create(struct device *dev, int index, u32 timeout)
>  	client->client.dev = dev;
>  	client->client.tx_block = false;
>  	client->chan = mbox_request_channel(&client->client, index);
> +	mutex_init(&client->mutex);
>  
>  	if (IS_ERR(client->chan)) {
>  		long err;
> @@ -352,9 +353,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
>  		spin_unlock_irqrestore(&client->lock, flags);
>  	}
>  
> +	mutex_lock(&client->mutex);
>  	mbox_send_message(client->chan, pkt);
>  	/* We can send next packet immediately, so just call txdone. */
>  	mbox_client_txdone(client->chan, 0);
> +	mutex_unlock(&client->mutex);


In [1], Mediatek DRM is the first client to use cmdq and it already has
its own mutex to protect this. I think helper is something help many
user but now I just see Mediatek MDP [2] need this. For DRM, there are
so many useless code in cmdq_pkt_flush_async(). DRM does not need the
timer to check timeout. DRM could do dma_sync_single_for_cpu() in its
callback and need not to create a intermediate callback to do this. I
would agree this patch only when I see two or more user need this.


[1]
https://github.com/ckhu-mediatek/linux.git-tags/commit/4df12ed1866d1104f631e06218bd15fde512a79e
[2] https://patchwork.kernel.org/patch/10945609/

Regards,
CK

>  
>  	return 0;
>  }
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index a74c1d5acdf3..0f9071cd1bc7 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -28,6 +28,7 @@ struct cmdq_client {
>  	struct mbox_chan *chan;
>  	struct timer_list timer;
>  	u32 timeout_ms; /* in unit of microsecond */
> +	struct mutex mutex;
>  };
>  
>  /**

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
