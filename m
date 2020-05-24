Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9191E00CF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 19:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjjGuLQmfIrKEy5Y5Dpmjj4eKi/4KQAB+KXJWKwn1N4=; b=LSpn1jEQhzYxgY
	uk0eW9kwiwch8oE8DFgiv4NtU3e27C7ZVtXfBpOzpbxYFNXFocJc4AEryxJCrGwhv8Oh6FRTcgcVL
	dRWFFwQlpubVjdcm3mNhI02uS9OVEOU465q+xQDQJgr2pAgVJDtAV+qRkJtxOuhtB8rmhYeo8vwC3
	i8LQRGahVoNYjdJq01cMnOEWdpk/vTn6sa5NgUNNSKHzst7kRKrV0GMnUFdflsW0aT8r7bYpiMptT
	sJqCungng/I1d3U02motQk0UPz3Nfnc1A+BIY6egmb11j6b3LzEbziSHncxu3Mugqa+Nja2W++NiX
	j9MHuR9uhJH6iberrsPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcu0j-0002yL-GV; Sun, 24 May 2020 17:02:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcu0a-0002wu-A6; Sun, 24 May 2020 17:01:58 +0000
X-UUID: 0f561de32d8e4feeaf2c10f179ac29fb-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=VWg9xLHl1hZCSOAWL6vw6qKUNe5aIY7KvlZ9nTgIkD0=; 
 b=PtnRGiXHGb9NjV39BtEj1gEVvO0QO4zL0yD9hrYcKyZi2pXyb/GoETvF3vJA+kOuJAR8hXMrqQEGDM15Ky/xJm8ZHF065bRAkPVIVOPyT+C7D7yK5SbTJBmqwXb2v3jVMAtuO1W7+Q9PKuCFS2EsPd/TXdq/usJAifzL/OKdxHw=;
X-UUID: 0f561de32d8e4feeaf2c10f179ac29fb-20200524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 460603588; Sun, 24 May 2020 09:01:22 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 10:01:47 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 01:01:32 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 01:01:31 +0800
Message-ID: <1590339695.31286.4.camel@mtkswgap22>
Subject: Re: [PATCH v5 06/13] soc: mediatek: cmdq: add assign function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 25 May 2020 01:01:35 +0800
In-Reply-To: <c671ea8a-07fa-a050-4679-c7aa15d19a9d@gmail.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-7-git-send-email-dennis-yc.hsieh@mediatek.com>
 <c671ea8a-07fa-a050-4679-c7aa15d19a9d@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2DF60E4E6D76568CECD68ACA0056E41726E257DA51C8FFE651A6CBAA28A26BFD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_100156_356113_2B18B566 
X-CRM114-Status: GOOD (  18.62  )
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

On Sat, 2020-05-16 at 19:59 +0200, Matthias Brugger wrote:
> 
> On 08/03/2020 11:52, Dennis YC Hsieh wrote:
> > Add assign function in cmdq helper which assign constant value into
> > internal register by index.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 24 +++++++++++++++++++++++-
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 14 ++++++++++++++
> >  3 files changed, 38 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 98f23ba3ba47..33153d17c9d9 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -12,6 +12,7 @@
> >  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
> >  #define CMDQ_POLL_ENABLE_MASK	BIT(0)
> >  #define CMDQ_EOC_IRQ_EN		BIT(0)
> > +#define CMDQ_REG_TYPE		1
> >  
> >  struct cmdq_instruction {
> >  	union {
> > @@ -21,8 +22,17 @@ struct cmdq_instruction {
> >  	union {
> >  		u16 offset;
> >  		u16 event;
> > +		u16 reg_dst;
> > +	};
> > +	union {
> > +		u8 subsys;
> > +		struct {
> > +			u8 sop:5;
> > +			u8 arg_c_t:1;
> > +			u8 arg_b_t:1;
> > +			u8 dst_t:1;
> > +		};
> 
> This union seems without context in this patch. Please drop.
> 

The dst_t use in cmdq_pkt_assign function so how about merge other
variables to reserved and leave dst_t ?

struct {
	u8 reserved_t:7;
	u8 dst_t:1;
};


Regards,
Dennis


> Regards,
> Matthias
> 
> >  	};
> > -	u8 subsys;
> >  	u8 op;
> >  };
> >  
> > @@ -277,6 +287,18 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_poll_mask);
> >  
> > +int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> > +
> > +	inst.op = CMDQ_CODE_LOGIC;
> > +	inst.dst_t = CMDQ_REG_TYPE;
> > +	inst.reg_dst = reg_idx;
> > +	inst.value = value;
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_assign);
> > +
> >  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index dfe5b2eb85cc..121c3bb6d3de 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -59,6 +59,7 @@ enum cmdq_code {
> >  	CMDQ_CODE_JUMP = 0x10,
> >  	CMDQ_CODE_WFE = 0x20,
> >  	CMDQ_CODE_EOC = 0x40,
> > +	CMDQ_CODE_LOGIC = 0xa0,
> >  };
> >  
> >  enum cmdq_cb_status {
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index a74c1d5acdf3..83340211e1d3 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -152,6 +152,20 @@ int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> >   */
> >  int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  		       u16 offset, u32 value, u32 mask);
> > +
> > +/**
> > + * cmdq_pkt_assign() - Append logic assign command to the CMDQ packet, ask GCE
> > + *		       to execute an instruction that set a constant value into
> > + *		       internal register and use as value, mask or address in
> > + *		       read/write instruction.
> > + * @pkt:	the CMDQ packet
> > + * @reg_idx:	the CMDQ internal register ID
> > + * @value:	the specified value
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> > +
> >  /**
> >   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
> >   *                          packet and call back at the end of done packet
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
