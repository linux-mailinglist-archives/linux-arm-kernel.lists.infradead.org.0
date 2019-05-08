Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23C917091
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 07:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkygozMD/Oa+jttkDn+tJS4afgaSekvHvJd4C5oA3wc=; b=CEyn/PCNudr4Qt
	p0QIeI5ibI/uPUEDlCAxOZ03xfgah8nTuq1QMuEXfr3oQlVrpMxDGR5ICxsQSWkUkVlR4PgqOBBtT
	FzYLMUqP7ysy2FSNgE5QFOhMv1oyg0BMPA19kvzDTWlB7wxO2H+U7J/S01IfVw++ZRAHg1MBYu8Jo
	ERgIFdkqcMsYq7JuSArGR//I/89glfEUhlfW8I3WzaWvzcePS+f65tqYbtOuVrNWDixlxHii7Rtp0
	drq9Eqh6RMc2wMdheyb1dABGoYSG4FGp48AyAxFsW/6ZLBlYDLFx/6onGCVTd+hse8IdMV53znsnz
	R6ttJfUMcW78sGNW3Seg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFU8-0007dW-1k; Wed, 08 May 2019 05:51:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFU0-0007c0-FA; Wed, 08 May 2019 05:51:13 +0000
X-UUID: c5e83878b8d646e28cd0efec35af08c0-20190507
X-UUID: c5e83878b8d646e28cd0efec35af08c0-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1388450064; Tue, 07 May 2019 21:50:59 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 22:50:58 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 13:50:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 13:50:48 +0800
Message-ID: <1557294648.3936.17.camel@mtksdaap41>
Subject: Re: [PATCH v5 09/12] soc: mediatek: cmdq: add polling function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Wed, 8 May 2019 13:50:48 +0800
In-Reply-To: <20190507081355.52630-10-bibby.hsieh@mediatek.com>
References: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
 <20190507081355.52630-10-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 98A27776C78C6B6C388C0D3DF352BFE56658EAC7DA54A74740E94190632AAACE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_225112_514960_8C39BF08 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 kendrick.hsu@mediatek.com, Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, YT
 Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Frederic Chen <Frederic.Chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Tue, 2019-05-07 at 16:13 +0800, Bibby Hsieh wrote:
> add polling function in cmdq helper functions

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 29 ++++++++++++++++++++++++
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
>  include/linux/soc/mediatek/mtk-cmdq.h    | 15 ++++++++++++
>  3 files changed, 45 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 17ee8196fb3d..716f8c4f207b 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -220,6 +220,34 @@ int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_clear_event);
>  
> +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> +		  u16 offset, u32 value, u32 mask)
> +{
> +	struct cmdq_instruction *inst;
> +
> +	if (mask != 0xffffffff) {
> +		inst = cmdq_pkt_append_command(pkt);
> +		if (!inst)
> +			return -ENOMEM;
> +
> +		inst->op = CMDQ_CODE_MASK;
> +		inst->value = ~mask;
> +		offset = offset | 0x1;
> +	}
> +
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->op = CMDQ_CODE_POLL;
> +	inst->value = value;
> +	inst->offset = offset;
> +	inst->subsys = subsys;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(cmdq_pkt_poll);
> +
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
>  	struct cmdq_instruction *inst;
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index f21801d32a3a..1dfd5ed5c8c5 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -46,6 +46,7 @@
>  enum cmdq_code {
>  	CMDQ_CODE_MASK = 0x02,
>  	CMDQ_CODE_WRITE = 0x04,
> +	CMDQ_CODE_POLL = 0x08,
>  	CMDQ_CODE_JUMP = 0x10,
>  	CMDQ_CODE_WFE = 0x20,
>  	CMDQ_CODE_EOC = 0x40,
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 52f69c8db8de..0651a0bffa54 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -99,6 +99,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
>   */
>  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
>  
> +/**
> + * cmdq_pkt_poll() - Append polling command to the CMDQ packet, ask GCE to
> + *		     execute an instruction that wait for a specified hardware
> + *		     register to check for the value. All GCE hardware
> + *		     threads will be blocked by this instruction.
> + * @pkt:	the CMDQ packet
> + * @subsys:	the CMDQ sub system code
> + * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
> + * @mask:	the specified target register mask
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> +		  u16 offset, u32 value, u32 mask);
>  /**
>   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
>   *                          packet and call back at the end of done packet



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
