Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BFB174720
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 14:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gz5T2jcVc319+oYdhvu28mVONA1AXYLPzzmLKdIsJPs=; b=VQnU5jYs2RpZAw
	YT5PFZK4KRPIGj4P+6+28aqNVgZllbLqcffhMdg2gZyjLi5EmspZ2D7GAWd3tQwU3dSlwAuW677ky
	zio+yxH6TSdy2NePfxsVCNhSTKom1VlgQ1P3e+2JyrlswVQKdajc7NRkqKOBveSfW2g3Bv7RkOtla
	Rb6zOQ/N8pog/z9VI8ct7PXLzpJz73ke+gNaYAKgdf9lW6khx63kR/Ij9TVU4LhJZu8JJ13Sgtnvl
	i3231MNDcDpnDVHN6evhKWslSRXnS8uV2scjvaiTLHWuHRnMLFj7oIjjNrp7QouEL3YOmKP5N3PFW
	B1DUgFu6h7HEzN2Svyww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j82OH-0008Fe-F4; Sat, 29 Feb 2020 13:42:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j82O4-0008Dt-SE; Sat, 29 Feb 2020 13:42:39 +0000
X-UUID: c94bc9e15b7f45ef8a62e48c768ae642-20200229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=cQkQXaq7I6lwdpCSeXRWaWw4mSw0OfTOluhKKLIJai4=; 
 b=qlOUOK5zz7WVdZjoJA9pjYvAbEJ58k3kong6nh57S7xzgl5j4fsqfINREs3IbtqG6fe3ZA/pSTUhqHlLVP7NcuyO2f8nlyramE6pRAO//Fzkpha6gnancJ5PCtacMXP5NZwk267IBQkkU4Vv1tvKGJasmqlKt2IlErWKjnbUs34=;
X-UUID: c94bc9e15b7f45ef8a62e48c768ae642-20200229
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1252175346; Sat, 29 Feb 2020 05:42:30 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Feb 2020 05:42:28 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Feb 2020 21:41:27 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 29 Feb 2020 21:42:04 +0800
Message-ID: <1582983747.21073.7.camel@mtkswgap22>
Subject: Re: [PATCH v3 11/13] soc: mediatek: cmdq: add jump function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Sat, 29 Feb 2020 21:42:27 +0800
In-Reply-To: <1582901981.14824.9.camel@mtksdaap41>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582897461-15105-13-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582901981.14824.9.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CBDBE3BEFEB61174315C589E7E673FE40EFFB573D8E4196F5D7D6274AF11E8562000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_054236_919404_06F379CC 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK,

Thanks for your comment.

On Fri, 2020-02-28 at 22:59 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Fri, 2020-02-28 at 21:44 +0800, Dennis YC Hsieh wrote:
> > Add jump function so that client can jump to any address which
> > contains instruction.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 12 ++++++++++++
> >  include/linux/soc/mediatek/mtk-cmdq.h  | 11 +++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 58fec634dcf1..bbc68a7c81e9 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -372,6 +372,18 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_assign);
> >  
> > +int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr)
> > +{
> > +	struct cmdq_client *cl = pkt->cl;
> > +	struct cmdq_instruction inst = { {0} };
> > +
> > +	inst.op = CMDQ_CODE_JUMP;
> > +	inst.offset = 1;
> 
> Symbolize the value '1'.
> 
> > +	inst.value = addr >> cmdq_mbox_shift(cl->chan);
> 
> If you write as 'cmdq_mbox_shift(pkt->cl->chan)', you could drop local
> variable 'cl'.

Ok, will do.


Regards,
Dennis

> 
> Regards,
> CK
> 
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_jump);
> > +
> >  int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 99e77155f967..1a6c56f3bec1 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -213,6 +213,17 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> >   */
> >  int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> >  
> > +/**
> > + * cmdq_pkt_jump() - Append jump command to the CMDQ packet, ask GCE
> > + *		     to execute an instruction that change current thread PC to
> > + *		     a physical address which should contains more instruction.
> > + * @pkt:        the CMDQ packet
> > + * @addr:       physical address of target instruction buffer
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr);
> > +
> >  /**
> >   * cmdq_pkt_finalize() - Append EOC and jump command to pkt.
> >   * @pkt:	the CMDQ packet
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
