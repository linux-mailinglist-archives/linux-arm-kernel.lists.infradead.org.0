Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B46211D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 03:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yyylTqHpAMbp0RjpANmcVUkzxdSWwJII/lfWiw8K0c=; b=HCMbJ+RlmOwWu9
	5Q8AjkelFV44ExqdGQJu+yQ1sQRgZwnyzMrZ3//axWlLjbYVSZuekBlIGXScMGT6k3FyO3YCidFsn
	VQs1qQyhopecT48spntsmna284HfqgSD0rAH+ixwOa7RyBKf7YLdKGte1CHYgJnXYbj9tmDBvJwAr
	/jvu3qBhO5qwvLNxhI3/mMlKszchPv+vpqa+NUrFezURmLPRZJ3niFgENvW+Aujo0k+CQollGu3QM
	JEa0yXB1kAipVSafcOoi1DogjExSa+4DQe57IrWWtFVaeqguL41sFrB9U7t9flf9VKK0KjKCpNYhx
	vMvvM4Iwl+yuDw+9bBYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRRuY-00084B-M9; Fri, 17 May 2019 01:43:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRRuR-00083O-Ay; Fri, 17 May 2019 01:43:44 +0000
X-UUID: e4f1eb935b4b42098a0befc42933676c-20190516
X-UUID: e4f1eb935b4b42098a0befc42933676c-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 952465102; Thu, 16 May 2019 17:43:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 18:43:38 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 May 2019 09:43:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 17 May 2019 09:43:30 +0800
Message-ID: <1558057410.14401.7.camel@mtksdaap41>
Subject: Re: [PATCH v6 10/12] soc: mediatek: cmdq: add cmdq_dev_get_subsys
 function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 17 May 2019 09:43:30 +0800
In-Reply-To: <20190516090224.59070-11-bibby.hsieh@mediatek.com>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
 <20190516090224.59070-11-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3998765BEF12231DA372060CB9BFDD6D6C26BD1427123C3EADA0958FB374F4BB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_184343_385175_F3CF7309 
X-CRM114-Status: GOOD (  16.61  )
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
 Houlong Wei <houlong.wei@mediatek.com>, YT
 Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dennis-YC Hsieh
 <dennis-yc.hsimediatek/mtkcam/drv/fdvt/4.0/cam_fdvt_v4l2.cppeh@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-05-16 at 17:02 +0800, Bibby Hsieh wrote:
> GCE cannot know the register base address, this function
> can help cmdq client to get the relationship of subsys
> and register base address.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 25 +++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 18 ++++++++++++++++++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index a53cdd71cfc2..a64060a34e01 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -27,6 +27,31 @@ struct cmdq_instruction {
>  	u8 op;
>  };
>  
> +struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx)
> +{
> +	struct cmdq_subsys *subsys;
> +	struct of_phandle_args spec;
> +
> +	subsys = devm_kzalloc(dev, sizeof(*subsys), GFP_KERNEL);
> +	if (!subsys)
> +		return NULL;
> +
> +	if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
> +				       "#subsys-cells", idx, &spec)) {
> +		dev_err(dev, "can't parse gce-client-reg property");

print the idx info.

> +

I think you should free the buffer you allocate. Don't expect this
function is called in caller's probe function.

> +		return (struct cmdq_subsys *)-ENODEV;

Why not return NULL?

> +	}
> +
> +	subsys->id = spec.args[0];
> +	subsys->offset = spec.args[1];
> +	subsys->size = spec.args[2];
> +	of_node_put(spec.np);
> +
> +	return subsys;
> +}
> +EXPORT_SYMBOL(cmdq_dev_get_subsys);
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>  	struct cmdq_client *client = from_timer(client, t, timer);
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 0651a0bffa54..574006c5cd76 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -15,6 +15,12 @@
>  
>  struct cmdq_pkt;
>  
> +struct cmdq_subsys {

May be cmdq_client_reg.

> +	u8 id;

May be subsys.

Regards,
CK

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
> + * cmdq_dev_get_subsys() - parse sub system from the device node of CMDQ client
> + * @dev:	device of CMDQ mailbox client
> + * @idx:	the index of desired subsys
> + *
> + * Return: CMDQ subsys pointer
> + *
> + * Help CMDQ client pasing the sub system number
> + * from the device node of CMDQ client.
> + */
> +struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx);
> +
>  #endif	/* __MTK_CMDQ_H__ */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
