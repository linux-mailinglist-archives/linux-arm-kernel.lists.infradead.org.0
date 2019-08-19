Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D5194B22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 19:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meE1wPVIaeu9JbM/4pbPq5AXc602Y8ULPsenfSLla50=; b=R5g553u788M/I7
	vkOcy88QLZQ3PEistbe8iNydaYKbZcDVqIBL7/VN/G0RiDaN8UPhWYcL35cvT+mkNGi/l8ZFZ+9IP
	hJHoCllt3KvJEVFpXc+5OZDLLg1UcJF1E55/khz/D+5mgBshhImmmzhc2EVWDdlzlzOlXmO2y1LhF
	X4SDfEVLXijPGhcNcP0OUzJIu5QRRFdqois5B1bFRFBp24xKS/jvJHbORHKqRww8uhso9Sccu1z1v
	Z2jyH+AgxfVw0oJNCdZ6RLY7DACQMsFRblR5EQ4W3iWQjB5rfQ/vHm19PdFJFAdlRK3QATisyNlWT
	fZNGxknK86W/bsY6+gTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzl1T-0000qE-Ax; Mon, 19 Aug 2019 17:00:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzl1L-0000pg-8m; Mon, 19 Aug 2019 17:00:41 +0000
X-UUID: c2efde12faa5468aa1da452dad8c08e6-20190819
X-UUID: c2efde12faa5468aa1da452dad8c08e6-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2013183766; Mon, 19 Aug 2019 09:00:31 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 10:00:30 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 20 Aug 2019 01:00:25 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 01:00:24 +0800
Message-ID: <1566234025.24117.8.camel@mhfsdcap03>
Subject: Re: [PATCH v12 09/12] soc: mediatek: cmdq: define the instruction
 struct
From: houlong wei <houlong.wei@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 20 Aug 2019 01:00:25 +0800
In-Reply-To: <20190819025359.11381-10-bibby.hsieh@mediatek.com>
References: <20190819025359.11381-1-bibby.hsieh@mediatek.com>
 <20190819025359.11381-10-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 258710A0EB612FDE3EDB318BEE14C518E07821506A9585C60AFDAABBCA46D99F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_100039_316029_4F292BD6 
X-CRM114-Status: GOOD (  18.62  )
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

On Mon, 2019-08-19 at 10:53 +0800, Bibby Hsieh wrote:
> Define an instruction structure for gce driver to append command.
> This structure can make the client's code more readability.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 105 +++++++++++++++--------
>  include/linux/mailbox/mtk-cmdq-mailbox.h |   2 +
>  2 files changed, 73 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 7aa0517ff2f3..e1e41914ed7a 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -9,12 +9,24 @@
>  #include <linux/mailbox_controller.h>
>  #include <linux/soc/mediatek/mtk-cmdq.h>
>  
> -#define CMDQ_ARG_A_WRITE_MASK	0xffff
>  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
>  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
>  				<< 32 | CMDQ_EOC_IRQ_EN)
>  
> +struct cmdq_instruction {
> +	union {
> +		u32 value;
> +		u32 mask;
> +	};
> +	union {
> +		u16 offset;
> +		u16 event;
> +	};
> +	u8 subsys;
> +	u8 op;
> +};
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>  	struct cmdq_client *client = from_timer(client, t, timer);
> @@ -110,10 +122,8 @@ void cmdq_pkt_destroy(struct cmdq_pkt *pkt)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_destroy);
>  
> -static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
> -				   u32 arg_a, u32 arg_b)
> +static struct cmdq_instruction *cmdq_pkt_append_command(struct cmdq_pkt *pkt)
>  {
> -	u64 *cmd_ptr;
>  
>  	if (unlikely(pkt->cmd_buf_size + CMDQ_INST_SIZE > pkt->buf_size)) {
>  		/*
> @@ -127,81 +137,108 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
>  		pkt->cmd_buf_size += CMDQ_INST_SIZE;
>  		WARN_ONCE(1, "%s: buffer size %u is too small !\n",
>  			__func__, (u32)pkt->buf_size);
> -		return -ENOMEM;
> +		return NULL;
>  	}
> -	cmd_ptr = pkt->va_base + pkt->cmd_buf_size;
> -	(*cmd_ptr) = (u64)((code << CMDQ_OP_CODE_SHIFT) | arg_a) << 32 | arg_b;
> +
>  	pkt->cmd_buf_size += CMDQ_INST_SIZE;
>  
> -	return 0;
> +	return pkt->va_base + pkt->cmd_buf_size - CMDQ_INST_SIZE;
>  }
>  
>  int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value)
>  {
> -	u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
> -		    (subsys << CMDQ_SUBSYS_SHIFT);
> +	struct cmdq_instruction *inst;
> +
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->op = CMDQ_CODE_WRITE;
> +	inst->value = value;
> +	inst->offset = offset;
> +	inst->subsys = subsys;
>  
> -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WRITE, arg_a, value);
> +	return 0;
>  }
>  EXPORT_SYMBOL(cmdq_pkt_write);
>  
>  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
>  			u16 offset, u32 value, u32 mask)
>  {
> -	u32 offset_mask = offset;
> -	int err = 0;
> +	struct cmdq_instruction *inst;
> +	u16 offset_mask = offset;
>  
>  	if (mask != 0xffffffff) {
> -		err = cmdq_pkt_append_command(pkt, CMDQ_CODE_MASK, 0, ~mask);
> +		inst = cmdq_pkt_append_command(pkt);
> +		if (!inst)
> +			return -ENOMEM;
> +
> +		inst->op = CMDQ_CODE_MASK;
> +		inst->mask = ~mask;
>  		offset_mask |= CMDQ_WRITE_ENABLE_MASK;

I think we should consider the reusing command packet case, I commented
via link below and there were discussion before.
http://lists.infradead.org/pipermail/linux-mediatek/2019-August/022052.html
Before this patch, each 64-bit of an instruction is set. But now some
bits may be ignored and keep the original values. That may make us
confused when we analyze the instruction for debugging.

>  	}
> -	err |= cmdq_pkt_write(pkt, value, subsys, offset_mask);
>  
> -	return err;
> +	return cmdq_pkt_write(pkt, subsys, offset_mask, value);
>  }
>  EXPORT_SYMBOL(cmdq_pkt_write_mask);
>  
>  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
>  {
> -	u32 arg_b;
> +	struct cmdq_instruction *inst;
>  
>  	if (event >= CMDQ_MAX_EVENT)
>  		return -EINVAL;
>  
> -	/*
> -	 * WFE arg_b
> -	 * bit 0-11: wait value
> -	 * bit 15: 1 - wait, 0 - no wait
> -	 * bit 16-27: update value
> -	 * bit 31: 1 - update, 0 - no update
> -	 */
> -	arg_b = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->op = CMDQ_CODE_WFE;
> +	inst->value = CMDQ_WFE_OPTION;
> +	inst->event = event;
>  
> -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event, arg_b);
> +	return 0;
>  }
>  EXPORT_SYMBOL(cmdq_pkt_wfe);
>  
>  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
>  {
> +	struct cmdq_instruction *inst;
> +
>  	if (event >= CMDQ_MAX_EVENT)
>  		return -EINVAL;
>  
> -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event,
> -				       CMDQ_WFE_UPDATE);
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->op = CMDQ_CODE_WFE;
> +	inst->value = CMDQ_WFE_UPDATE;
> +	inst->event = event;
> +
> +	return 0;
>  }
>  EXPORT_SYMBOL(cmdq_pkt_clear_event);
>  
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
> -	int err;
> +	struct cmdq_instruction *inst;
> +
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
>  
> -	/* insert EOC and generate IRQ for each command iteration */
> -	err = cmdq_pkt_append_command(pkt, CMDQ_CODE_EOC, 0, CMDQ_EOC_IRQ_EN);
> +	inst->op = CMDQ_CODE_EOC;
> +	inst->value = CMDQ_EOC_IRQ_EN;
>  
> -	/* JUMP to end */
> -	err |= cmdq_pkt_append_command(pkt, CMDQ_CODE_JUMP, 0, CMDQ_JUMP_PASS);
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->op = CMDQ_CODE_JUMP;
> +	inst->value = CMDQ_JUMP_PASS;
>  
> -	return err;
> +	return 0;
>  }
>  
>  static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index 911475da7a53..c8adedefaf42 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -19,6 +19,8 @@
>  #define CMDQ_WFE_UPDATE			BIT(31)
>  #define CMDQ_WFE_WAIT			BIT(15)
>  #define CMDQ_WFE_WAIT_VALUE		0x1
> +#define CMDQ_WFE_OPTION			(CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | \
> +					CMDQ_WFE_WAIT_VALUE)
>  /** cmdq event maximum */
>  #define CMDQ_MAX_EVENT			0x3ff
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
