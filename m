Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C6D11216F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47JaAlg1N2YTto2nxDR1gETqeFOXLNZzFGYPBEiu2LM=; b=Rh1hN02KUu+llb
	vRsiu85IpAu2bd4+3InBKc3TO59LW4AwQc4FcDZB9HcrJ+8+ZJZbFlDH7qwjuzi9nXqMdFFkjE9Mz
	x2EWxBkhvGgwW222k/taA3psFcYKzCU4LLaUvaKM8tUbbT2RarDipwf5flSEKq9cb8ltfzYC8HPgG
	ajIDpHd/LKalNDW4OJuEPMgrAF7uzbljzAv2sZJmfUuNOmOoN0jgxMyNbwuMo8qgtI3ut8LDZIixv
	ImjPCHf18fZRwPCRcrvpEbtG0Gho9ttNLt6LW1eCnmWHONymkQlPp+1q6EundsQe5qUvGCVqxS+Nl
	gA1ZD3+4xBlKFtX70msg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icKSw-0001OY-V5; Wed, 04 Dec 2019 02:32:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icKSl-0001NL-QT; Wed, 04 Dec 2019 02:32:25 +0000
X-UUID: fac4cf6271d546b7835ef9d060587002-20191203
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gASy9TDuVsH5zwpxeW0BE8bxVb8mYW76DT6995xQhXA=; 
 b=QOHYHgfvSFD8m0DDWMic4GaD7zRffTP057Ws/SsQ1lzOhPCh3ga0IqjcmI/q4SbsWBKQZETxYEECbKtQFrKxv++xGGl9RZ7/J8ZXJdIbkji55JlP82QR1jYNIWi1oqgTPlTwy1VxLGwLqfEtrtULsmD3/Cv4N6yU+hnZYI5ienI=;
X-UUID: fac4cf6271d546b7835ef9d060587002-20191203
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 764643841; Tue, 03 Dec 2019 18:32:19 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 18:23:06 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 10:22:03 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Dec 2019 10:21:56 +0800
Message-ID: <1575426135.31411.2.camel@mtksdaap41>
Subject: Re: [PATCH] soc: mediatek: cmdq: avoid racing condition with mutex
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>, Jassi Brar
 <jassisinghbrar@gmail.com>
Date: Wed, 4 Dec 2019 10:22:15 +0800
In-Reply-To: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
References: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_183223_873078_5E67B11D 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Nicolas
 Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jassi:

Are mbox_send_message() and mbox_client_txdone() thread-safe? If these
two are thread-safe, this bug should be fixed in mailbox core not
client.

Regards,
CK

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
