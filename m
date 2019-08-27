Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC48F9DC42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 06:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBagKJjmWqLScXI5/MVzGqbN+uNts1X4PTkJtUlXqt0=; b=SM9FM0dpP2Wk2H
	YHxvA0IpINOPu0/2yFZyYjZYjZ4LVrZte0Bf8kGqZ5Ri/PBRIV94csSJPg+esKmFg1Qoud8OwWt0+
	neSncft9rvhklMKN0bQs8vAgY+sDmgCjdUgQKX8HbOxNzYQUNTdPWwtzsWzjZyYUiFeaMdf/8R+QY
	N9B8AUZvpG7ajHLlLGDJZOWTgyUaSwdzA8Y/NFpFKJi1xgGGZ1hB8kOYXCaG50RR+gScTf48A16tH
	VT64kvYu9ewLJRy0Ct6BP5A3JXLyGkIQgu0mb/PwMUmJNTNhbGTUIwNNLo/HW4tXgAODWto+O3d5E
	d3SU9ocZcAJLlzImWA8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SeK-0000vi-Ud; Tue, 27 Aug 2019 04:00:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Sdv-0000iT-Fa; Tue, 27 Aug 2019 03:59:41 +0000
X-UUID: a3084e7f475844389de2bfae69922be5-20190826
X-UUID: a3084e7f475844389de2bfae69922be5-20190826
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1580231592; Mon, 26 Aug 2019 19:59:40 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 26 Aug 2019 20:59:38 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 11:59:37 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 27 Aug 2019 11:59:36 +0800
Message-ID: <1566878368.29523.1.camel@mtksdaap41>
Subject: Re: [RESEND, PATCH v13 11/12] soc: mediatek: cmdq: add
 cmdq_dev_get_client_reg function
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 27 Aug 2019 11:59:28 +0800
In-Reply-To: <ccd3782e-b1bb-7887-f4a5-d7774183c7b7@gmail.com>
References: <20190820084932.22282-1-bibby.hsieh@mediatek.com>
 <20190820084932.22282-12-bibby.hsieh@mediatek.com>
 <ccd3782e-b1bb-7887-f4a5-d7774183c7b7@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_205939_716871_EFF69F07 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>, Sascha
 Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, YT Shen <yt.shen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Houlong Wei <houlong.wei@mediatek.com>, Sascha
 Hauer <kernel@pengutronix.de>, CK HU <ck.hu@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-23 at 16:21 +0200, Matthias Brugger wrote:
> 
> On 20/08/2019 10:49, Bibby Hsieh wrote:
> > GCE cannot know the register base address, this function
> > can help cmdq client to get the cmdq_client_reg structure.
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 29 ++++++++++++++++++++++++++
> >  include/linux/soc/mediatek/mtk-cmdq.h  | 21 +++++++++++++++++++
> >  2 files changed, 50 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index c53f8476c68d..80f75a1075b4 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -27,6 +27,35 @@ struct cmdq_instruction {
> >  	u8 op;
> >  };
> >  
> > +int cmdq_dev_get_client_reg(struct device *dev,
> > +			    struct cmdq_client_reg *client_reg, int idx)
> > +{
> 
> Can't we do/call this in cmdq_mbox_create parsing the number of gce-client-reg
> properties we have and allocating these using a pointer to cmdq_client_reg in
> cmdq_client?
> We will have to free the pointer then in cmdq_mbox_destroy.
> 
> Regards,
> Matthias

I don't think we need to keep the cmdq_client_reg in cmdq_client
structure.
Because our client will have own data structure, they will copy the
client_reg information into their own structure.

In the design now, we do not allocate the cmdq_client_reg, client pass
the cmdq_client_reg pointer into this API.
Client will destroy the pointer after they get the information they
want.

Thanks for the comments so much.

Bibby

> 
> > +	struct of_phandle_args spec;
> > +	int err;
> > +
> > +	if (!client_reg)
> > +		return -ENOENT;
> > +
> > +	err = of_parse_phandle_with_fixed_args(dev->of_node,
> > +					       "mediatek,gce-client-reg",
> > +					       3, idx, &spec);
> > +	if (err < 0) {
> > +		dev_err(dev,
> > +			"error %d can't parse gce-client-reg property (%d)",
> > +			err, idx);
> > +
> > +		return err;
> > +	}
> > +
> > +	client_reg->subsys = (u8)spec.args[0];
> > +	client_reg->offset = (u16)spec.args[1];
> > +	client_reg->size = (u16)spec.args[2];
> > +	of_node_put(spec.np);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(cmdq_dev_get_client_reg);
> > +
> >  static void cmdq_client_timeout(struct timer_list *t)
> >  {
> >  	struct cmdq_client *client = from_timer(client, t, timer);
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index a345870a6d10..02ddd60b212f 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -15,6 +15,12 @@
> >  
> >  struct cmdq_pkt;
> >  
> > +struct cmdq_client_reg {
> > +	u8 subsys;
> > +	u16 offset;
> > +	u16 size;
> > +};
> > +
> >  struct cmdq_client {
> >  	spinlock_t lock;
> >  	u32 pkt_cnt;
> > @@ -24,6 +30,21 @@ struct cmdq_client {
> >  	u32 timeout_ms; /* in unit of microsecond */
> >  };
> >  
> > +/**
> > + * cmdq_dev_get_client_reg() - parse cmdq client reg from the device
> > + *			       node of CMDQ client
> > + * @dev:	device of CMDQ mailbox client
> > + * @client_reg: CMDQ client reg pointer
> > + * @idx:	the index of desired reg
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + *
> > + * Help CMDQ client parsing the cmdq client reg
> > + * from the device node of CMDQ client.
> > + */
> > +int cmdq_dev_get_client_reg(struct device *dev,
> > +			    struct cmdq_client_reg *client_reg, int idx);
> > +
> >  /**
> >   * cmdq_mbox_create() - create CMDQ mailbox client and channel
> >   * @dev:	device of CMDQ mailbox client
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
