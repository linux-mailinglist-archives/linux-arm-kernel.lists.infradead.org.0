Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BEB2036D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xWCdts8ok55NamLXwPkM9CM9U8uhRKT6v/JtTJtlLc=; b=RBErlhrjSTOn4C
	KHSprZ8MCoBod89E8utOo9m4i5zQjzWcfIzK1nTChFxZ3RZP6suLLapPJhusE64V7PGQzjL8hlM3N
	EbjuF82kI/2iOlbyobjnhzajW0zUHjJ3Mcj0yvoqiwXSg1yOyq/36AZFCMIc9JrwasdxQUSUWRb14
	7uE1+EuUrf0dFEgtc1xljOn/T7A2lRtTO9pV5muC7LmG4neGFPbaHI0Hlg8ZwxM5H2pKZkOoxY3aY
	KhbdNGExfJQ7Ajs6mdrV50f7x727RUgYDPw3ShYqgJ2uyEjIDoiyohIbXWimIpEkNBkAVNcLs0EsV
	PD88jMy96468bFbAKXsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDcU-0001PF-1G; Thu, 16 May 2019 10:28:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDcL-0001OP-Iw; Thu, 16 May 2019 10:28:07 +0000
X-UUID: f22237e06cb44df39af6b13a240a5779-20190516
X-UUID: f22237e06cb44df39af6b13a240a5779-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1623016907; Thu, 16 May 2019 02:27:56 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 03:27:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 18:27:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 16 May 2019 18:27:52 +0800
Message-ID: <1558002472.26743.2.camel@mtksdaap41>
Subject: Re: [PATCH v6 11/12] soc: mediatek: cmdq: add cmdq_dev_get_event
 function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Thu, 16 May 2019 18:27:52 +0800
In-Reply-To: <20190516090224.59070-12-bibby.hsieh@mediatek.com>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
 <20190516090224.59070-12-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 340E37131E274E309CCD55145B936522FE76AA128486110F5FC92DCAA60C875A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_032805_654031_A07550A8 
X-CRM114-Status: GOOD (  14.10  )
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
> When client ask gce to clear or wait for event,
> client need to pass event number to the API.
> We suggest client store the event information in device node,
> so we provide an API for client parse the event property.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 18 ++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 12 ++++++++++++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index a64060a34e01..e9658063c3d4 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -52,6 +52,24 @@ struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx)
>  }
>  EXPORT_SYMBOL(cmdq_dev_get_subsys);
>  
> +s32 cmdq_dev_get_event(struct device *dev, int index)
> +{
> +	s32 result;
> +
> +	if (!dev)
> +		return -EINVAL;
> +
> +	if (of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
> +				       index, &result)) {
> +		dev_err(dev, "can't parse gce-events property");
> +
> +		return -ENODEV;
> +	}
> +
> +	return result;

This function just does one thing, so client driver could just directly
call of_property_read_u32_index().

Regards,
CK

> +}
> +EXPORT_SYMBOL(cmdq_dev_get_event);
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>  	struct cmdq_client *client = from_timer(client, t, timer);
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 574006c5cd76..525713bf79b5 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -160,4 +160,16 @@ int cmdq_pkt_flush(struct cmdq_pkt *pkt);
>   */
>  struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx);
>  
> +/**
> + * cmdq_dev_get_event() - parse event from the device node of CMDQ client
> + * @dev:	device of CMDQ mailbox client
> + * @index:	the index of desired event
> + *
> + * Return: CMDQ event number
> + *
> + * Help CMDQ client pasing the event number
> + * from the device node of CMDQ client.
> + */
> +s32 cmdq_dev_get_event(struct device *dev, int index);
> +
>  #endif	/* __MTK_CMDQ_H__ */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
