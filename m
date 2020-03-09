Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B908F17D80B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 03:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYYUUt2qhauYrwknX4QunDRxOuFmZ15qG29BJkQftwE=; b=hopkiuyOu9FJJo
	JjdVdZ//PHF+6wQhJV9x3+SnlLEGD9mfFGimQjscERiabsJ//lp2XK2LK4NSfblcWme9+O0kNhuoa
	QeDs/hdhGQHzsHPyQFII/vPTS740mePiakIzrQQCwCChGjiDJlD2Lt62Mof+ymhlLyOmZYS+0Ssyb
	mM8vu2x+5Yo5/KNKW4lIET/tsu7j22QPu4CVExpjLdxIASxmSEjGDXz8lbqs7TspSP1/A6wfQZbb3
	P23P2gPppOMZQnOtxGePalMXwZXu6MEXUya5O0m07sgYkLkZR/hNc5t6CcxQpwYRdHVVz1GbyC8EL
	xEagDSj7zWeyiJeGobRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB7pr-00072o-QU; Mon, 09 Mar 2020 02:08:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB7ph-000719-M9; Mon, 09 Mar 2020 02:07:57 +0000
X-UUID: 30491f7bb51e4adc93d01b5f7359216c-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=17MyIh5es8+oWEfzyMzpzHwqTieeb22zUb4UUI66VDE=; 
 b=GsbEro2QROKwbTUJcqFz6G+vVTLniRBvF+e8J4Z9Qqk/BYiixF5YhWtxizwGfSMXOre02+Wh99mivEJB5iPmzRdP5Dr6kJ9r4bbuv6CMA4bEdilrsllEaj3bEzXIYippAVPJLht7V0yNK8bRg4fiQN09RvTWN5tBZEKjlAodfjA=;
X-UUID: 30491f7bb51e4adc93d01b5f7359216c-20200308
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 928221497; Sun, 08 Mar 2020 18:07:43 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 19:07:40 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 10:08:45 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Mar 2020 10:07:36 +0800
Message-ID: <1583719659.28331.1.camel@mtksdaap41>
Subject: Re: [PATCH v5 12/13] soc: mediatek: cmdq: add clear option in
 cmdq_pkt_wfe api
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Mon, 9 Mar 2020 10:07:39 +0800
In-Reply-To: <1583664775-19382-13-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-13-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_190753_988051_6013989B 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sun, 2020-03-08 at 18:52 +0800, Dennis YC Hsieh wrote:
> Add clear parameter to let client decide if
> event should be clear to 0 after GCE receive it.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 2 +-
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 5 +++--
>  include/linux/mailbox/mtk-cmdq-mailbox.h | 3 +--
>  include/linux/soc/mediatek/mtk-cmdq.h    | 5 +++--
>  4 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 7daaabc26eb1..a065b3a412cf 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -488,7 +488,7 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
>  	if (mtk_crtc->cmdq_client) {
>  		cmdq_handle = cmdq_pkt_create(mtk_crtc->cmdq_client, PAGE_SIZE);
>  		cmdq_pkt_clear_event(cmdq_handle, mtk_crtc->cmdq_event);
> -		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event);
> +		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event, false);
>  		mtk_crtc_ddp_config(crtc, cmdq_handle);
>  		cmdq_pkt_finalize(cmdq_handle);
>  		cmdq_pkt_flush_async(cmdq_handle, ddp_cmdq_cb, cmdq_handle);
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index bb5be20fc70a..ec5637d43254 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -296,15 +296,16 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
>  }
>  EXPORT_SYMBOL(cmdq_pkt_write_s_value);
>  
> -int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
> +int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event, bool clear)
>  {
>  	struct cmdq_instruction inst = { {0} };
> +	u32 clear_option = clear ? CMDQ_WFE_UPDATE : 0;
>  
>  	if (event >= CMDQ_MAX_EVENT)
>  		return -EINVAL;
>  
>  	inst.op = CMDQ_CODE_WFE;
> -	inst.value = CMDQ_WFE_OPTION;
> +	inst.value = CMDQ_WFE_OPTION | clear_option;
>  	inst.event = event;
>  
>  	return cmdq_pkt_append_command(pkt, inst);
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index 3f6bc0dfd5da..42d2a30e6a70 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -27,8 +27,7 @@
>   * bit 16-27: update value
>   * bit 31: 1 - update, 0 - no update
>   */
> -#define CMDQ_WFE_OPTION			(CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | \
> -					CMDQ_WFE_WAIT_VALUE)
> +#define CMDQ_WFE_OPTION			(CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE)
>  
>  /** cmdq event maximum */
>  #define CMDQ_MAX_EVENT			0x3ff
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 1a6c56f3bec1..d63749440697 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -152,11 +152,12 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
>  /**
>   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
>   * @pkt:	the CMDQ packet
> - * @event:	the desired event type to "wait and CLEAR"
> + * @event:	the desired event type to wait
> + * @clear:	clear event or not after event arrive
>   *
>   * Return: 0 for success; else the error code is returned
>   */
> -int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
> +int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event, bool clear);
>  
>  /**
>   * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
