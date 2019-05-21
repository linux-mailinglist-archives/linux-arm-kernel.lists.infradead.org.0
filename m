Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44BF24658
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 05:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlZBGzVVSpzsXUEGUvt0030Z2ZrpE+7iuc/4yaiu0Do=; b=kLD+KPmFdJT9HC
	jv9gv/qAH71FZzfKXUyFLVDzjHzyv6OXkaD1HT8MHUEMt6Fa/xr+h1yEkj2rCo3o7vA8+hhKeN0dy
	SFkE5n4SatyzsKk5yPrJqiVIXIdAQ8aBVFCsZE4FVEZ6a/t6zE8808BKepDVA7O4KeyeOFpkWNVj1
	aJD3kzxltETWyEDQDjQq1f8yCWyc7QZupv5koBZKUt8V60AvQNAF/9ES079Op5nVl4jwn0dt8t0aJ
	Gk4dbX7w9ZA9t3GmSyYU//h9TXIDj5VUElDZ3SQLuVH8I8zOA1Rx79gU24x2iAh9k3tgC0s8ixg1P
	sdk++Tf/NXZolUJWjj3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSvUf-0003vf-N0; Tue, 21 May 2019 03:31:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSvUY-0003us-C5; Tue, 21 May 2019 03:31:08 +0000
X-UUID: 0814620f792946e2b1bc9347a65ff692-20190520
X-UUID: 0814620f792946e2b1bc9347a65ff692-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 684936289; Mon, 20 May 2019 19:30:29 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 20:30:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 11:30:25 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 May 2019 11:30:25 +0800
Message-ID: <1558409425.25526.13.camel@mtksdaap41>
Subject: Re: [PATCH v7 11/12] soc: mediatek: cmdq: add
 cmdq_dev_get_client_reg function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 21 May 2019 11:30:25 +0800
In-Reply-To: <20190521011108.40428-12-bibby.hsieh@mediatek.com>
References: <20190521011108.40428-1-bibby.hsieh@mediatek.com>
 <20190521011108.40428-12-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 798B638221290F7BC5D8959C66269264E402B2FA60D529F582211C428B8D881B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_203106_415202_739FE11C 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, YT
 Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-05-21 at 09:11 +0800, Bibby Hsieh wrote:
> GCE cannot know the register base address, this function
> can help cmdq client to get the cmdq_client_reg structure.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 25 +++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 18 ++++++++++++++++++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 70ad4d806fac..815845bb5982 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -27,6 +27,31 @@ struct cmdq_instruction {
>  	u8 op;
>  };
>  
> +struct cmdq_client_reg  *cmdq_dev_get_client_reg(struct device *dev, int idx)
> +{
> +	struct cmdq_client_reg *client_reg;
> +	struct of_phandle_args spec;
> +
> +	client_reg  = devm_kzalloc(dev, sizeof(*client_reg), GFP_KERNEL);
> +	if (!client_reg)
> +		return NULL;
> +
> +	if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
> +				       "#subsys-cells", idx, &spec)) {
> +		dev_err(dev, "can't parse gce-client-reg property (%d)", idx);

I think you should call devm_kfree(client_reg) here because this
function may not be called in client driver's probe function. But in
another view point, I would like you to move the memory allocation out
of this function. When client call cmdq_dev_get_client_reg() to get a
pointer, it's easy that client does not free it because you does not
provide free API, Some client may embed struct cmdq_client_reg with its
client structure together,

struct client {
	struct cmdq_client_reg client_reg;
};

Because each client may have different memory allocation strategy, so I
would like you to move memory allocation out of this function to let
client driver have the flexibility.

Regards,
CK

> +
> +		return NULL;
> +	}
> +
> +	client_reg->subsys = spec.args[0];
> +	client_reg->offset = spec.args[1];
> +	client_reg->size = spec.args[2];
> +	of_node_put(spec.np);
> +
> +	return client_reg;
> +}
> +EXPORT_SYMBOL(cmdq_dev_get_client_reg);
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>  	struct cmdq_client *client = from_timer(client, t, timer);
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index a345870a6d10..d0dea3780f7a 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -15,6 +15,12 @@
>  
>  struct cmdq_pkt;
>  
> +struct cmdq_client_reg {
> +	u8 subsys;
> +	u16 offset;
> +	u16 size;
> +};
> +
>  struct cmdq_client {
>  	spinlock_t lock;
>  	u32 pkt_cnt;
> @@ -142,4 +148,16 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
>   */
>  int cmdq_pkt_flush(struct cmdq_pkt *pkt);
>  
> +/**
> + * cmdq_dev_get_client_reg() - parse cmdq client reg from the device node of CMDQ client
> + * @dev:	device of CMDQ mailbox client
> + * @idx:	the index of desired reg
> + *
> + * Return: CMDQ client reg pointer
> + *
> + * Help CMDQ client pasing the cmdq client reg
> + * from the device node of CMDQ client.
> + */
> +struct cmdq_client_reg  *cmdq_dev_get_client_reg(struct device *dev, int idx);
> +
>  #endif	/* __MTK_CMDQ_H__ */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
