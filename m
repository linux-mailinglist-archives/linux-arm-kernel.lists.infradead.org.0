Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790089DC55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 06:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDKV7XWysHzBTJf//YK8cBt5FYrd4Wts+Z6lrEh5/sY=; b=a9MRTCTB/iOyDk
	6+e7iGaKtGLEt/DyTWsvYuk4FhgOeYCgBgXVSrqgGNlEB+7noozGhvZljoHDg7kOgUvSbA09gEPVJ
	00otbXwjrsjFkFmtrFsjOsHx5lGegS6b1kdcElPZrgyUdYc9zCg4E8vSl4at7KfZJlmvy/qD/VjOr
	ln7GCFcsvI8tHpY8J8Oieys+22K3P4/9B12OElBoZTF61NZq5IcaifL4KLA+zjj4A7nuSveyJGu1R
	xJivdamfWowXl3ExNXAG0VLdGKGbtGaQRGXsPXvOLOLwU+ArqI6tDxwpTVMtosm0lZ5Ur9qtL6LHL
	20czi2MYuXtPh/KTV11g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SqJ-0005ey-Ty; Tue, 27 Aug 2019 04:12:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Sq7-0005dW-14; Tue, 27 Aug 2019 04:12:16 +0000
X-UUID: 1a53754495b241e0819e5eb5f1694f05-20190826
X-UUID: 1a53754495b241e0819e5eb5f1694f05-20190826
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1483707969; Mon, 26 Aug 2019 20:12:18 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 26 Aug 2019 21:12:17 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 12:12:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 27 Aug 2019 12:12:10 +0800
Message-ID: <1566879121.29523.8.camel@mtksdaap41>
Subject: Re: [RESEND, PATCH v13 09/12] soc: mediatek: cmdq: define the
 instruction struct
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 27 Aug 2019 12:12:01 +0800
In-Reply-To: <486deaa3-d139-d4af-e0cf-e324b3270f3b@gmail.com>
References: <20190820084932.22282-1-bibby.hsieh@mediatek.com>
 <20190820084932.22282-10-bibby.hsieh@mediatek.com>
 <486deaa3-d139-d4af-e0cf-e324b3270f3b@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_211215_080610_082F148E 
X-CRM114-Status: GOOD (  26.13  )
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

On Fri, 2019-08-23 at 15:50 +0200, Matthias Brugger wrote:
> 
> On 20/08/2019 10:49, Bibby Hsieh wrote:
> > Define an instruction structure for gce driver to append command.
> > This structure can make the client's code more readability.
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 106 +++++++++++++++--------
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |   2 +
> >  2 files changed, 74 insertions(+), 34 deletions(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 7aa0517ff2f3..e3d5b0be8e79 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -9,12 +9,24 @@
> >  #include <linux/mailbox_controller.h>
> >  #include <linux/soc/mediatek/mtk-cmdq.h>
> >  
> > -#define CMDQ_ARG_A_WRITE_MASK	0xffff
> >  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
> >  #define CMDQ_EOC_IRQ_EN		BIT(0)
> >  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
> >  				<< 32 | CMDQ_EOC_IRQ_EN)
> >  
> > +struct cmdq_instruction {
> > +	union {
> > +		u32 value;
> > +		u32 mask;
> > +	};
> > +	union {
> > +		u16 offset;
> > +		u16 event;
> > +	};
> > +	u8 subsys;
> > +	u8 op;
> > +};
> > +
> >  static void cmdq_client_timeout(struct timer_list *t)
> >  {
> >  	struct cmdq_client *client = from_timer(client, t, timer);
> > @@ -110,10 +122,8 @@ void cmdq_pkt_destroy(struct cmdq_pkt *pkt)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_destroy);
> >  
> > -static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
> > -				   u32 arg_a, u32 arg_b)
> > +static struct cmdq_instruction *cmdq_pkt_append_command(struct cmdq_pkt *pkt)
> >  {
> > -	u64 *cmd_ptr;
> >  
> >  	if (unlikely(pkt->cmd_buf_size + CMDQ_INST_SIZE > pkt->buf_size)) {
> >  		/*
> > @@ -127,81 +137,109 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
> >  		pkt->cmd_buf_size += CMDQ_INST_SIZE;
> >  		WARN_ONCE(1, "%s: buffer size %u is too small !\n",
> >  			__func__, (u32)pkt->buf_size);
> > -		return -ENOMEM;
> > +		return NULL;
> >  	}
> > -	cmd_ptr = pkt->va_base + pkt->cmd_buf_size;
> > -	(*cmd_ptr) = (u64)((code << CMDQ_OP_CODE_SHIFT) | arg_a) << 32 | arg_b;
> > +
> > +	*(u64 *)(pkt->va_base + pkt->cmd_buf_size) = 0;>  	pkt->cmd_buf_size += CMDQ_INST_SIZE;
> >  
> > -	return 0;
> > +	return pkt->va_base + pkt->cmd_buf_size - CMDQ_INST_SIZE;
> >  }
> >  
> >  int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value)
> >  {
> > -	u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
> > -		    (subsys << CMDQ_SUBSYS_SHIFT);
> > +	struct cmdq_instruction *inst;
> > +
> > +	inst = cmdq_pkt_append_command(pkt);
> > +	if (!inst)
> > +		return -ENOMEM;
> > +
> > +	inst->op = CMDQ_CODE_WRITE;
> > +	inst->value = value;
> > +	inst->offset = offset;
> > +	inst->subsys = subsys;
> >  
> 
> I can see that using cmdq_instruction will make the code more readable, but I
> dislike the approach that cmdq_pkt_append_command returns a pointer where we
> write the instruction to. Better we pass inst to cmdq_pkt_append_command() and
> write it there to cmd_ptr.
> 
> I think this way we can get rid of explicitly setting the memory to zero:
> *(u64 *)(pkt->va_base + pkt->cmd_buf_size) = 0;
> 
> And if we pass the inst to the append_command we don't have to change the return
> value handling of cmdq_pkt_append_command(), which makes the patch easier to
> understand.

Ok, I will change and resend it.

> 
> > -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WRITE, arg_a, value);
> > +	return 0;
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write);
> >  
> >  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  			u16 offset, u32 value, u32 mask)
> >  {
> > -	u32 offset_mask = offset;
> > -	int err = 0;
> > +	struct cmdq_instruction *inst;
> > +	u16 offset_mask = offset;
> >  
> >  	if (mask != 0xffffffff) {
> > -		err = cmdq_pkt_append_command(pkt, CMDQ_CODE_MASK, 0, ~mask);
> > +		inst = cmdq_pkt_append_command(pkt);
> > +		if (!inst)
> > +			return -ENOMEM;
> > +
> > +		inst->op = CMDQ_CODE_MASK;
> > +		inst->mask = ~mask;
> >  		offset_mask |= CMDQ_WRITE_ENABLE_MASK;
> >  	}
> > -	err |= cmdq_pkt_write(pkt, value, subsys, offset_mask);
> >  
> > -	return err;
> > +	return cmdq_pkt_write(pkt, subsys, offset_mask, value);
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write_mask);
> >  
> >  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
> >  {
> > -	u32 arg_b;
> > +	struct cmdq_instruction *inst;
> >  
> >  	if (event >= CMDQ_MAX_EVENT)
> >  		return -EINVAL;
> >  
> > -	/*
> > -	 * WFE arg_b
> > -	 * bit 0-11: wait value
> > -	 * bit 15: 1 - wait, 0 - no wait
> > -	 * bit 16-27: update value
> > -	 * bit 31: 1 - update, 0 - no update
> > -	 */
> 
> I have no strong opinion of CMDQ_WFE_OPTION but if you want to introduce it,
> then please copy the comment over to include/linux/mailbox/mtk-cmdq-mailbox.h

Ok. let's move the descriptions to header.
> 
> Just one question, why did you call it _OPTION? It's not really expressive for me.

Actually, _OPTION is come from our hardware design name...

> 
> > -	arg_b = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
> > +	inst = cmdq_pkt_append_command(pkt);
> > +	if (!inst)
> > +		return -ENOMEM;
> > +
> > +	inst->op = CMDQ_CODE_WFE;
> > +	inst->value = CMDQ_WFE_OPTION;
> > +	inst->event = event;
> >  
> > -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event, arg_b);
> > +	return 0;
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_wfe);
> >  
> >  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
> >  {
> > +	struct cmdq_instruction *inst;
> > +
> >  	if (event >= CMDQ_MAX_EVENT)
> >  		return -EINVAL;
> >  
> > -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event,
> > -				       CMDQ_WFE_UPDATE);
> > +	inst = cmdq_pkt_append_command(pkt);
> > +	if (!inst)
> > +		return -ENOMEM;
> > +
> > +	inst->op = CMDQ_CODE_WFE;
> > +	inst->value = CMDQ_WFE_UPDATE;
> > +	inst->event = event;
> > +
> > +	return 0;
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_clear_event);
> >  
> >  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  {
> > -	int err;
> > +	struct cmdq_instruction *inst;
> > +
> > +	inst = cmdq_pkt_append_command(pkt);
> > +	if (!inst)
> > +		return -ENOMEM;
> >  
> > -	/* insert EOC and generate IRQ for each command iteration */
> 
> Please don't delete the comment.
> 
> > -	err = cmdq_pkt_append_command(pkt, CMDQ_CODE_EOC, 0, CMDQ_EOC_IRQ_EN);
> > +	inst->op = CMDQ_CODE_EOC;
> > +	inst->value = CMDQ_EOC_IRQ_EN;
> >  
> > -	/* JUMP to end */
> 
> Same here.
> 
> Regards,
> Matthias
> 
> > -	err |= cmdq_pkt_append_command(pkt, CMDQ_CODE_JUMP, 0, CMDQ_JUMP_PASS);
> > +	inst = cmdq_pkt_append_command(pkt);
> > +	if (!inst)
> > +		return -ENOMEM;
> > +
> > +	inst->op = CMDQ_CODE_JUMP;
> > +	inst->value = CMDQ_JUMP_PASS;
> >  
> > -	return err;
> > +	return 0;
> >  }
> >  
> >  static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index 911475da7a53..c8adedefaf42 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -19,6 +19,8 @@
> >  #define CMDQ_WFE_UPDATE			BIT(31)
> >  #define CMDQ_WFE_WAIT			BIT(15)
> >  #define CMDQ_WFE_WAIT_VALUE		0x1
> > +#define CMDQ_WFE_OPTION			(CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | \
> > +					CMDQ_WFE_WAIT_VALUE)
> >  /** cmdq event maximum */
> >  #define CMDQ_MAX_EVENT			0x3ff
> >  
> > 

-- 
Bibby


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
