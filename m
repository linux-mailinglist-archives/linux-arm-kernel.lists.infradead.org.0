Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC73179D01
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 01:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJ6Q0/m9HnJZFf5HCLIH8w8ha+1lGWGYzPLwSb3MGeM=; b=i+TJ3/Ho0/4RdV
	bucMxYfrGwXMYrfW9TUgn18/tdxLBL40WAsrMjbLdnqK+egbM7616bwV1e3O5z/HWUoO5H+O5fuaw
	POUuZzEOT1zOEb/ZGmtI/Zg+azus2+yw+K+odpsKcFDJ6yNApRIF1XnhSC+TFMzWPzSbd2fiX3IDS
	ENxXnSY/cjPCtdAIz4tBCkm3+xtxSh2XPCdMCE235Br91uD6d2rXO9gHiE5h9n0c/5m+e8Qmec5SY
	ywaN1jq8f6sFcP73HTGruN/9RLNkushPJQocjr3ykZy2US4bMxk/JxBtdRSj2RCw7EQNbFb60inDi
	Va2F5GeYf0YQ45bOL3Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ejv-0003xQ-Aw; Thu, 05 Mar 2020 00:51:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ejl-0003wJ-Hd; Thu, 05 Mar 2020 00:51:42 +0000
X-UUID: 1fcea33272864bf999b650ee934ed032-20200304
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Dt+NjDKJnvFkl8R5AeUjlcgnglhu+f9HBOgNSX0bmEE=; 
 b=Xwj1loR4Nq+7Sw402bvRcCWVaxghwi193wHlRv+MIMIqTepRD0jaBRlF5spKuX1dfN/9eybs2Zq1+/B4xrizQ6FY0O+OqjuwxoBPWbgk3EMfUjbqM6NwzD1MNP/FICR1hPoVYC3lWMFV5jWpTsupB8G/AUN03rZz6F2+wxLuV70=;
X-UUID: 1fcea33272864bf999b650ee934ed032-20200304
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 724649678; Wed, 04 Mar 2020 16:51:39 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 16:49:03 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 08:47:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Mar 2020 08:48:18 +0800
Message-ID: <1583369342.28558.0.camel@mtkswgap22>
Subject: Re: [PATCH v4 11/13] soc: mediatek: cmdq: add jump function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 5 Mar 2020 08:49:02 +0800
In-Reply-To: <1583290652.1062.2.camel@mtksdaap41>
References: <1583233125-7827-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583233125-7827-12-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583290652.1062.2.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165141_592041_26AF7039 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi CK,

Thanks for your comment.

On Wed, 2020-03-04 at 10:57 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Tue, 2020-03-03 at 18:58 +0800, Dennis YC Hsieh wrote:
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
> > index 59bc1164b411..f27c67034880 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -372,6 +372,18 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_assign);
> >  
> > +int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> > +
> > +	inst.op = CMDQ_CODE_JUMP;
> > +	inst.offset = 1;
> 
> Symbolize the value '1'.

miss in v4, will add in next version, thanks.


Regards,
Dennis


> 
> Regards,
> CK
> 
> > +	inst.value = addr >>
> > +		cmdq_mbox_shift(((struct cmdq_client *)pkt->cl)->chan);
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
