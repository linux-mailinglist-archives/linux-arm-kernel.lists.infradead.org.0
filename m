Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B20E9DC4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 06:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR3oUgiIuVXcYq8Jl2I+dfOKzjWpWxHlLjWMQq0bVkk=; b=iI4T/sKispcm/E
	1lECACA4Oc2Ztm5k8umNf7PInPrFvLRyjK+oc+P92jWpfvZClkjC5aVRKQhIavXjaOg6dNziW2XyV
	o7X8UGhwBJF35BEM3e9p50jUlmUzIx/zfCEkSWyahlY4Rjy8dcCyH8OWILWsr+qsknJ9cwPZg6ITv
	i0OoCVBljP9jFuNB0tkvEiXWdyyL2NxWo6yNbuaRtFu+VoPQ2Xl9UDhAWE3XTHepPr9wMMbOsFojr
	D2uqUbW6RFg6BxyavHQ7MapmpFe4Co8GT3sZSh5l7gNiq6yYkQZys0FrmeJTWo5fG5Fcei23sdmK7
	LER9hSjj7qMGtx4SGiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SmJ-000478-Ib; Tue, 27 Aug 2019 04:08:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Sm4-00045x-RW; Tue, 27 Aug 2019 04:08:07 +0000
X-UUID: faa04bc299834db9b912a33efed654f5-20190826
X-UUID: faa04bc299834db9b912a33efed654f5-20190826
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2021112147; Mon, 26 Aug 2019 20:08:01 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 26 Aug 2019 21:07:59 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 12:07:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 27 Aug 2019 12:07:46 +0800
Message-ID: <1566878857.29523.4.camel@mtksdaap41>
Subject: Re: [RESEND, PATCH v13 10/12] soc: mediatek: cmdq: add polling
 function
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 27 Aug 2019 12:07:37 +0800
In-Reply-To: <2dfb6a69-c325-9caf-e11b-bf0f0fbf4bb6@gmail.com>
References: <20190820084932.22282-1-bibby.hsieh@mediatek.com>
 <20190820084932.22282-11-bibby.hsieh@mediatek.com>
 <2dfb6a69-c325-9caf-e11b-bf0f0fbf4bb6@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 34024C2035332237CE94BB97C522852CCDEB6CCC7296B54A2D16406976ACB8382000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_210806_126404_CEE638EA 
X-CRM114-Status: GOOD (  22.85  )
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

On Fri, 2019-08-23 at 16:05 +0200, Matthias Brugger wrote:
> 
> On 20/08/2019 10:49, Bibby Hsieh wrote:
> > add polling function in cmdq helper functions
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 28 ++++++++++++++++++++++++
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 15 +++++++++++++
> >  3 files changed, 44 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index e3d5b0be8e79..c53f8476c68d 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -221,6 +221,34 @@ int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_clear_event);
> >  
> > +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> > +		  u16 offset, u32 value, u32 mask)
> > +{
> > +	struct cmdq_instruction *inst;
> > +
> > +	if (mask != 0xffffffff) {
> 
> Is this necessary? Can't we just always set the mask, even if it's 0xffffffff?
> 
> Regarding interfaces, depending on how often you expect the mask being ~0 we
> might think of adding a cmdq_pkt_poll_mask call.
> What I want to say, if in the end most of the callers will use the mask with
> 0xffffffff, then we should add a call cmdq_pkt_poll_mask which actually allows
> to set the mask and let cmdq_pkt_poll set the mask in it's function body.
> As I already said, this depends on how often you think a caller will use/not-use
> the mask.
> Does this make sense?

It's better to have two function: cmdq_pkt_poll_mask and cmdq_pkt_poll,
client can choose which they need by themselves.

Thanks for the comments.

Bibby
> > +		inst = cmdq_pkt_append_command(pkt);
> > +		if (!inst)
> > +			return -ENOMEM;
> > +
> > +		inst->op = CMDQ_CODE_MASK;
> > +		inst->value = ~mask;
> > +		offset = offset | 0x1;
> > +	}
> > +
> > +	inst = cmdq_pkt_append_command(pkt);
> > +	if (!inst)
> > +		return -ENOMEM;
> > +
> > +	inst->op = CMDQ_CODE_POLL;
> > +	inst->value = value;
> > +	inst->offset = offset;
> > +	inst->subsys = subsys;
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_poll);
> > +
> >  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  {
> >  	struct cmdq_instruction *inst;
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index c8adedefaf42..9e3502945bc1 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -46,6 +46,7 @@
> >  enum cmdq_code {
> >  	CMDQ_CODE_MASK = 0x02,
> >  	CMDQ_CODE_WRITE = 0x04,
> > +	CMDQ_CODE_POLL = 0x08,
> >  	CMDQ_CODE_JUMP = 0x10,
> >  	CMDQ_CODE_WFE = 0x20,
> >  	CMDQ_CODE_EOC = 0x40,
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 9618debb9ceb..a345870a6d10 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -99,6 +99,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
> >   */
> >  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
> >  
> > +/**
> > + * cmdq_pkt_poll() - Append polling command to the CMDQ packet, ask GCE to
> > + *		     execute an instruction that wait for a specified hardware
> > + *		     register to check for the value. All GCE hardware
> > + *		     threads will be blocked by this instruction.
> > + * @pkt:	the CMDQ packet
> > + * @subsys:	the CMDQ sub system code
> > + * @offset:	register offset from CMDQ sub system
> > + * @value:	the specified target register value
> > + * @mask:	the specified target register mask
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> > +		  u16 offset, u32 value, u32 mask);
> >  /**
> >   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
> >   *                          packet and call back at the end of done packet
> > 




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
