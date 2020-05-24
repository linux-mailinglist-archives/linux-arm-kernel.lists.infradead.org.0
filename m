Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC5F1E0135
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 19:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hmpbHFN2JAcI4UG7IbXJ89a1/c8AG1IATDBoJKA2X8=; b=NVNuj+/XHfugLL
	kVxreNoDrZEJFRzFRJsgGz02C+zxJmJu77OxhwcB7PNYCJ29BYQ5ne3DxjtqELvPZRYEHd17rX5aB
	NdV316HtgZZPWwOBIzztDD3HxLpa7HfGywyWWGf1R0KoL3NJthVLSekKYhtW0eWkIg8GRzMep+Py7
	E2Gco69m9diASXAKkR+ukZYOF0bFon6fA7zc4UaI74Iz679s7Bj5w/fXTgo6DXzdO7elFy8oDTnTJ
	cHdOLbZc2P+ciDq5535Yn2hi1M7emecdiV4CdXXFA+yzkz/HBK00uOk6jL+8rloWiU/H/UnUinxwQ
	fxdZLxFsPnibmq6P4aQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcub9-00086V-MW; Sun, 24 May 2020 17:39:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuax-00085Q-Qe; Sun, 24 May 2020 17:39:33 +0000
X-UUID: 3ad4a9a503d64c7987de6ef5e185629d-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Budt1Q/YKyyHz1LfMtaltAftGMWuXZGR8k5sFbQgD9I=; 
 b=uVtaZAO0ztm5vjRXLPBVsHPSqkJDUZIT8Nku1f1uGLGcCikpf2MC6DJ/gmfZeJ0MeCFEAy7xDlaiL0bmnyCP0fgET1W/KvHNQHdIklTni3sMIPiLSHhAbNoH4R2GDlr7qdRcAW8vI+P1bdK98QyCkiNNdtt+8u4E6X3ufujFITo=;
X-UUID: 3ad4a9a503d64c7987de6ef5e185629d-20200524
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 257335477; Sun, 24 May 2020 09:38:59 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 10:39:24 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 01:39:22 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 01:39:22 +0800
Message-ID: <1590341965.31286.27.camel@mtkswgap22>
Subject: Re: [PATCH v5 13/13] soc: mediatek: cmdq: add set event function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 25 May 2020 01:39:25 +0800
In-Reply-To: <d00dd874-edda-701a-2acc-540ed19d1300@gmail.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-14-git-send-email-dennis-yc.hsieh@mediatek.com>
 <d00dd874-edda-701a-2acc-540ed19d1300@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_103931_871258_7721F1DC 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Philipp Zabel <p.zabel@pengutronix.de>, wsd_upstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Thanks for your comment.


On Sat, 2020-05-16 at 20:32 +0200, Matthias Brugger wrote:
> 
> On 08/03/2020 11:52, Dennis YC Hsieh wrote:
> > Add set event function in cmdq helper functions to set specific event.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 15 +++++++++++++++
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
> >  include/linux/soc/mediatek/mtk-cmdq.h    |  9 +++++++++
> >  3 files changed, 25 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index ec5637d43254..3294c9285994 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -327,6 +327,21 @@ int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_clear_event);
> >  
> > +int cmdq_pkt_set_event(struct cmdq_pkt *pkt, u16 event)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> > +
> > +	if (event >= CMDQ_MAX_EVENT)
> > +		return -EINVAL;
> > +
> > +	inst.op = CMDQ_CODE_WFE;
> > +	inst.value = CMDQ_WFE_UPDATE | CMDQ_WFE_UPDATE_VALUE;
> > +	inst.event = event;
> > +
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_set_event);
> > +
> >  int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> >  		  u16 offset, u32 value)
> >  {
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index 42d2a30e6a70..ba2d811183a9 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -17,6 +17,7 @@
> >  #define CMDQ_JUMP_PASS			CMDQ_INST_SIZE
> >  
> >  #define CMDQ_WFE_UPDATE			BIT(31)
> > +#define CMDQ_WFE_UPDATE_VALUE		BIT(16)
> >  #define CMDQ_WFE_WAIT			BIT(15)
> >  #define CMDQ_WFE_WAIT_VALUE		0x1
> >  
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index d63749440697..ca70296ae120 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -168,6 +168,15 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event, bool clear);
> >   */
> >  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
> >  
> > +/**
> > + * cmdq_pkt_set_event() - append set event command to the CMDQ packet
> > + * @pkt:	the CMDQ packet
> > + * @event:	the desired event to be set
> 
> Can we add the events and their code, so that later on, when a consumer calls
> cmdq_pkt_set_event() we don't have any magic values that are hard to understand?

Please see patch 02/13:
http://lists.infradead.org/pipermail/linux-mediatek/2020-March/027801.html

Definitions begin with CMDQ_EVENT_ is the event id to this function.
Since the event id is different between platform, client must parse it
from device tree. So no magic values require when call this function.


Regard,
Dennis


> 
> Regards,
> Matthias
> 
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_set_event(struct cmdq_pkt *pkt, u16 event);
> > +
> >  /**
> >   * cmdq_pkt_poll() - Append polling command to the CMDQ packet, ask GCE to
> >   *		     execute an instruction that wait for a specified
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
