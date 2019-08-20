Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D2995B74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m75rardDcjnfeAu6p/PDgLAvRRNYhChhrQqi01lhY2E=; b=o3RR7fg5/XkLiP
	7o0uFyuwnvmdkth4bvTc4wRZxq4yN6eZREezmQ0AuQctH+cSk3ST2zRl9kRf3U4oN07oYAztWOY5n
	h2Vzwtej8qXMCsovlDKMJdzF26gzb6Ux28hzP0829sYavQp8acxeNvuMlydwsyTy8rhePnH8MHN2o
	CGyXArjccL0v7hxjKu2rPi6aSQGorNmw5g3MkK4Gs8R9/tQxTEWCM/L5FSaeF63rN19IdbW5tiG5y
	pjYD/Z+chn6kb2NDQYeEKJprXlvx2iDEFlUDTHzluxBTFdB/LKGtgUmgy48yjNwq73KbgpSEgJkrB
	1kAxOhEvrxXln1uNmQ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00ju-0002ye-Te; Tue, 20 Aug 2019 09:47:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00ji-0002yC-4R; Tue, 20 Aug 2019 09:47:31 +0000
X-UUID: a3f814ec676b4425926d0f9e22137ee8-20190820
X-UUID: a3f814ec676b4425926d0f9e22137ee8-20190820
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1816535308; Tue, 20 Aug 2019 01:47:20 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 02:47:18 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 20 Aug 2019 17:47:12 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 17:47:11 +0800
Message-ID: <1566294433.24117.19.camel@mhfsdcap03>
Subject: Re: [RESEND, PATCH v13 11/12] soc: mediatek: cmdq: add
 cmdq_dev_get_client_reg function
From: houlong wei <houlong.wei@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 20 Aug 2019 17:47:13 +0800
In-Reply-To: <20190820084932.22282-12-bibby.hsieh@mediatek.com>
References: <20190820084932.22282-1-bibby.hsieh@mediatek.com>
 <20190820084932.22282-12-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 19F0B51F11D00E4BF64D21CFC255C9982F54076338FC708A02C7A792C47C71E82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_024730_179181_B4B06CF4 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, srv_heupstream <srv_heupstream@mediatek.com>,
 Daoyuan Huang =?UTF-8?Q?=28=E9=BB=83=E9=81=93=E5=8E=9F=29?=
 <Daoyuan.Huang@mediatek.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Daniel
 Kurtz <djkurtz@chromium.org>, houlong.wei@mediatek.com, YT
 Shen =?UTF-8?Q?=28=E6=B2=88=E5=B2=B3=E9=9C=86=29?= <Yt.Shen@mediatek.com>,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Ginny Chen =?UTF-8?Q?=28=E9=99=B3=E6=B2=BB=E5=82=91=29?=
 <ginny.chen@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang =?UTF-8?Q?=28=E5=BC=A0=E5=8A=A0=E5=B9=BF=29?=
 <Jiaguang.Zhang@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Dennis-YC Hsieh =?UTF-8?Q?=28=E8=AC=9D=E5=AE=87=E5=93=B2=29?=
 <Dennis-YC.Hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 16:49 +0800, Bibby Hsieh wrote:
> GCE cannot know the register base address, this function
> can help cmdq client to get the cmdq_client_reg structure.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 29 ++++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 21 +++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index c53f8476c68d..80f75a1075b4 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -27,6 +27,35 @@ struct cmdq_instruction {
>  	u8 op;
>  };
>  
> +int cmdq_dev_get_client_reg(struct device *dev,
> +			    struct cmdq_client_reg *client_reg, int idx)
> +{
> +	struct of_phandle_args spec;
> +	int err;
> +
> +	if (!client_reg)
> +		return -ENOENT;
> +
> +	err = of_parse_phandle_with_fixed_args(dev->of_node,
> +					       "mediatek,gce-client-reg",
> +					       3, idx, &spec);
> +	if (err < 0) {
> +		dev_err(dev,
> +			"error %d can't parse gce-client-reg property (%d)",
> +			err, idx);
> +
> +		return err;
> +	}
> +
> +	client_reg->subsys = (u8)spec.args[0];
> +	client_reg->offset = (u16)spec.args[1];
> +	client_reg->size = (u16)spec.args[2];
> +	of_node_put(spec.np);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(cmdq_dev_get_client_reg);
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>  	struct cmdq_client *client = from_timer(client, t, timer);
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index a345870a6d10..02ddd60b212f 100644
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
> @@ -24,6 +30,21 @@ struct cmdq_client {
>  	u32 timeout_ms; /* in unit of microsecond */
>  };
>  
> +/**
> + * cmdq_dev_get_client_reg() - parse cmdq client reg from the device
> + *			       node of CMDQ client
> + * @dev:	device of CMDQ mailbox client
> + * @client_reg: CMDQ client reg pointer
> + * @idx:	the index of desired reg
> + *
> + * Return: 0 for success; else the error code is returned
> + *
> + * Help CMDQ client parsing the cmdq client reg
> + * from the device node of CMDQ client.
> + */
> +int cmdq_dev_get_client_reg(struct device *dev,
> +			    struct cmdq_client_reg *client_reg, int idx);
> +
>  /**
>   * cmdq_mbox_create() - create CMDQ mailbox client and channel
>   * @dev:	device of CMDQ mailbox client

Reviewed-by: Houlong Wei <houlong.wei@mediatek.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
