Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D89812CBD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 03:09:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MW6y4uO/yh/K5MfdfV4hlPYxNEM3v0SQIw85y9spfM=; b=mWvtWLODk2S7m8
	7oc/4W3PD7+voH7qE54dRu04ByHLaHKikA9fpChrsEIaZz9DFQzFWpNLpVjC6a41WXPNbDzOHzZil
	ycTVYVV/DHH7SpJI+N2v6WrDuUTM/xABaowD1jNp7DSMAVn+z0aoAj0qYYynOlzus5xzSVNZLPPEI
	cc1+C8UaLEWNVB/7DL1xO/D7388HSbky7hXhRj+1yFDqhmKg2La3VaSlnMioIQo3GPxAVJS1iXwhu
	u4b91lkRyjDCe/81GLhPo1qU5cYVDkt+puLjg7AjdcQobVdxBTUh/O6ZO4ViL2/gTO8b8MhYypOn7
	+w5fihIzUDhAWPMbhjkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilkUN-00078W-5O; Mon, 30 Dec 2019 02:08:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilkTt-0006vI-6F; Mon, 30 Dec 2019 02:08:30 +0000
X-UUID: 7c1930e7e0ff4c12994a6919feafa86f-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=zs3wqU0/rTaxSd+jOFQHg8yAjxKsG5qsZDhljNgTpew=; 
 b=Q2umEATIEYiHqozWXZcwK0YOuRDfKw2mUSzZs4rA/HI7fGWtJhA/xeiNU7BDRolk8Cp8JwVIVE5Tmpo1MZ3P3OLVSxAO8qT7ossqzs8D0W0iLTreYRsorvTl8iCNEu7GHRzr4JUD5FLMx47En8ecJ7TssN9/wjdG89XbgB2ws9g=;
X-UUID: 7c1930e7e0ff4c12994a6919feafa86f-20191229
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1442169816; Sun, 29 Dec 2019 18:08:23 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 18:02:58 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 10:02:18 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Dec 2019 10:03:03 +0800
Message-ID: <1577671361.8160.2.camel@mtksdaap41>
Subject: Re: [PATCH] soc: mediatek: cmdq: avoid racing condition with mutex
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 30 Dec 2019 10:02:41 +0800
In-Reply-To: <1575426135.31411.2.camel@mtksdaap41>
References: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
 <1575426135.31411.2.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_180829_232717_79FAD9AA 
X-CRM114-Status: GOOD (  13.88  )
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

Hi, Jassi:

Ping again.

Are mbox_send_message() and mbox_client_txdone() thread-safe? If these
two are thread-safe, this bug should be fixed in mailbox core not
client.

Regards,
CK

On Wed, 2019-12-04 at 10:22 +0800, CK Hu wrote:
> Hi, Jassi:
> 
> Are mbox_send_message() and mbox_client_txdone() thread-safe? If these
> two are thread-safe, this bug should be fixed in mailbox core not
> client.
> 
> Regards,
> CK
> 
> On Thu, 2019-11-21 at 15:29 +0800, Bibby Hsieh wrote:
> > If cmdq client is multi thread user, racing will occur without mutex
> > protection. It will make the C message queued in mailbox's queue
> > always need D message's triggering.
> > 
> > Thread A		Thread B		  Thread C		Thread D...
> > -----------------------------------------------------------------------------------
> > mbox_send_message()
> > 	send_data()
> > 			mbox_send_message()
> > 				*exit
> > 						mbox_send_message()
> > 							*exit
> > mbox_client_txdone()
> > 	tx_tick()
> > 			mbox_client_txdone()
> > 				tx_tick()
> > 						mbox_client_txdone()
> > 							tx_tick()
> > msg_submit()
> > 	send_data()
> > 			msg_submit()
> > 				*exit
> > 						msg_submit()
> > 							*exit
> > -----------------------------------------------------------------------------------
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 3 +++
> >  include/linux/soc/mediatek/mtk-cmdq.h  | 1 +
> >  2 files changed, 4 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 9add0fd5fa6c..9e35e0beffaa 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -81,6 +81,7 @@ struct cmdq_client *cmdq_mbox_create(struct device *dev, int index, u32 timeout)
> >  	client->client.dev = dev;
> >  	client->client.tx_block = false;
> >  	client->chan = mbox_request_channel(&client->client, index);
> > +	mutex_init(&client->mutex);
> >  
> >  	if (IS_ERR(client->chan)) {
> >  		long err;
> > @@ -352,9 +353,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
> >  		spin_unlock_irqrestore(&client->lock, flags);
> >  	}
> >  
> > +	mutex_lock(&client->mutex);
> >  	mbox_send_message(client->chan, pkt);
> >  	/* We can send next packet immediately, so just call txdone. */
> >  	mbox_client_txdone(client->chan, 0);
> > +	mutex_unlock(&client->mutex);
> >  
> >  	return 0;
> >  }
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index a74c1d5acdf3..0f9071cd1bc7 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -28,6 +28,7 @@ struct cmdq_client {
> >  	struct mbox_chan *chan;
> >  	struct timer_list timer;
> >  	u32 timeout_ms; /* in unit of microsecond */
> > +	struct mutex mutex;
> >  };
> >  
> >  /**
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
