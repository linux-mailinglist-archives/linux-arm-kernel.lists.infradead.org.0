Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2843C9FD2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBt60j+ByxSqxQuUt7ZeNO3PUtQYuEz1y294Efsbd34=; b=qWyPlF9xhePSAh
	lyCiemp2p3u554HoGRvl28Xxs/VrTDS459kIva60/r+5Oo3i62jdmtUDAtUmDlGB6SBWwLMby6U4/
	NO6OMKNRRSEw+3XzRZJr7jo1o6cGeswOfIjUv/R9j26fiLGud3IE8xVNVmvOliPS2NJwOjJDHN5jT
	/yxLJ7V6+G7Od6vq24nd7v8xAdzPQ08ZCvGM6tn/OLBX3hH1vNwK5qjKyJGIt8pltElXhafqojzvn
	D/hJdKhwHVJothuG+hO2mgw66UcMZ7qJJmFLD8cKJ947trLJ4RVwQOMe2bh8KbbhhhfEI1tvkcOGp
	8au4ay/WMeVWmU1bTLlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tOI-0002TQ-BQ; Wed, 28 Aug 2019 08:33:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tNw-0002RH-87; Wed, 28 Aug 2019 08:32:58 +0000
X-UUID: 21542a7a968e47939bc50bf205fc52ee-20190828
X-UUID: 21542a7a968e47939bc50bf205fc52ee-20190828
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 276950135; Wed, 28 Aug 2019 00:32:58 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 01:32:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 16:32:53 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 16:32:53 +0800
Message-ID: <1566981166.31833.21.camel@mtksdaap41>
Subject: Re: [RESEND, PATCH v13 11/12] soc: mediatek: cmdq: add
 cmdq_dev_get_client_reg function
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 28 Aug 2019 16:32:46 +0800
In-Reply-To: <f8945f1b-aaa7-4f4a-59e5-8e817aeb46ae@gmail.com>
References: <20190820084932.22282-1-bibby.hsieh@mediatek.com>
 <20190820084932.22282-12-bibby.hsieh@mediatek.com>
 <ccd3782e-b1bb-7887-f4a5-d7774183c7b7@gmail.com>
 <1566878368.29523.1.camel@mtksdaap41>
 <f8945f1b-aaa7-4f4a-59e5-8e817aeb46ae@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3A49F78DCF6A33DAF3FCCD33C1485A7F22BDB34F6B84E8949B1A3282971FEA442000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_013256_304091_0C512396 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Tue, 2019-08-27 at 12:13 +0200, Matthias Brugger wrote:
> 
> On 27/08/2019 05:59, Bibby Hsieh wrote:
> > On Fri, 2019-08-23 at 16:21 +0200, Matthias Brugger wrote:
> >>
> >> On 20/08/2019 10:49, Bibby Hsieh wrote:
> >>> GCE cannot know the register base address, this function
> >>> can help cmdq client to get the cmdq_client_reg structure.
> >>>
> >>> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> >>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> >>> ---
> >>>  drivers/soc/mediatek/mtk-cmdq-helper.c | 29 ++++++++++++++++++++++++++
> >>>  include/linux/soc/mediatek/mtk-cmdq.h  | 21 +++++++++++++++++++
> >>>  2 files changed, 50 insertions(+)
> >>>
> >>> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> >>> index c53f8476c68d..80f75a1075b4 100644
> >>> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> >>> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> >>> @@ -27,6 +27,35 @@ struct cmdq_instruction {
> >>>  	u8 op;
> >>>  };
> >>>  
> >>> +int cmdq_dev_get_client_reg(struct device *dev,
> >>> +			    struct cmdq_client_reg *client_reg, int idx)
> >>> +{
> >>
> >> Can't we do/call this in cmdq_mbox_create parsing the number of gce-client-reg
> >> properties we have and allocating these using a pointer to cmdq_client_reg in
> >> cmdq_client?
> >> We will have to free the pointer then in cmdq_mbox_destroy.
> >>
> >> Regards,
> >> Matthias
> > 
> > I don't think we need to keep the cmdq_client_reg in cmdq_client
> > structure.
> > Because our client will have own data structure, they will copy the
> > client_reg information into their own structure.
> > 
> > In the design now, we do not allocate the cmdq_client_reg, client pass
> > the cmdq_client_reg pointer into this API.
> > Client will destroy the pointer after they get the information they
> > want.
> > 
> 
> My point wasn't so much about the lifecycle of the object, but the fact that we
> add another call, which can be already full-filled by a necessary previous call
> to cmdq_mbox_create. So I would prefer to add the information gathering for
> cmdq_client_reg in this call, and let it live there for the time cmdq_client
> lives. In the end we are talking about 40 bits of memory.
> 

Thanks for the comments. :D

Actually, I'm working for developing the chandes for MTK DRM apply cmdq
interface.
For MTK DRM, all the components included in MTK_CRTC use one mailbox
channel. According to [1], we create mailbox channel by mmsys device
node after get all the informations (include cmdq_client_reg) about
every device node of display components respectively. Please refer to
[2], [3] and [4], I'm going to upstream them recently.

If create mailbox channel and get the cmdq_client_reg in the same device
node, your suggestion is good for me.
But from display and mdp's viewpoint now, I don't think it is convenient
for them.

So I still prefer separate this function out of cmdq_mbox_create.:D


[1]
https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt8173.dtsi#907
[2] get cmdq_client_reg in mtk_ddp_comp_init()
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1746354/12/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c#431
[3] create mailbox channel in mtk_drm_crtc_create()
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1746354/12/drivers/gpu/drm/mediatek/mtk_drm_crtc.c#814
[4] After component_bind_all(), the mtk_drm_crtc_create will be called 
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/e15c2dc6ceb4810a2090cd11a512932095866559/drivers/gpu/drm/mediatek/mtk_drm_drv.c#452

Thanks.
Bibby

> Regards,
> Matthias
> 
> > Thanks for the comments so much.
> > 
> > Bibby
> > 
> >>
> >>> +	struct of_phandle_args spec;
> >>> +	int err;
> >>> +
> >>> +	if (!client_reg)
> >>> +		return -ENOENT;
> >>> +
> >>> +	err = of_parse_phandle_with_fixed_args(dev->of_node,
> >>> +					       "mediatek,gce-client-reg",
> >>> +					       3, idx, &spec);
> >>> +	if (err < 0) {
> >>> +		dev_err(dev,
> >>> +			"error %d can't parse gce-client-reg property (%d)",
> >>> +			err, idx);
> >>> +
> >>> +		return err;
> >>> +	}
> >>> +
> >>> +	client_reg->subsys = (u8)spec.args[0];
> >>> +	client_reg->offset = (u16)spec.args[1];
> >>> +	client_reg->size = (u16)spec.args[2];
> >>> +	of_node_put(spec.np);
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +EXPORT_SYMBOL(cmdq_dev_get_client_reg);
> >>> +
> >>>  static void cmdq_client_timeout(struct timer_list *t)
> >>>  {
> >>>  	struct cmdq_client *client = from_timer(client, t, timer);
> >>> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> >>> index a345870a6d10..02ddd60b212f 100644
> >>> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> >>> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> >>> @@ -15,6 +15,12 @@
> >>>  
> >>>  struct cmdq_pkt;
> >>>  
> >>> +struct cmdq_client_reg {
> >>> +	u8 subsys;
> >>> +	u16 offset;
> >>> +	u16 size;
> >>> +};
> >>> +
> >>>  struct cmdq_client {
> >>>  	spinlock_t lock;
> >>>  	u32 pkt_cnt;
> >>> @@ -24,6 +30,21 @@ struct cmdq_client {
> >>>  	u32 timeout_ms; /* in unit of microsecond */
> >>>  };
> >>>  
> >>> +/**
> >>> + * cmdq_dev_get_client_reg() - parse cmdq client reg from the device
> >>> + *			       node of CMDQ client
> >>> + * @dev:	device of CMDQ mailbox client
> >>> + * @client_reg: CMDQ client reg pointer
> >>> + * @idx:	the index of desired reg
> >>> + *
> >>> + * Return: 0 for success; else the error code is returned
> >>> + *
> >>> + * Help CMDQ client parsing the cmdq client reg
> >>> + * from the device node of CMDQ client.
> >>> + */
> >>> +int cmdq_dev_get_client_reg(struct device *dev,
> >>> +			    struct cmdq_client_reg *client_reg, int idx);
> >>> +
> >>>  /**
> >>>   * cmdq_mbox_create() - create CMDQ mailbox client and channel
> >>>   * @dev:	device of CMDQ mailbox client
> >>>
> > 
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
