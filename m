Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB51E71CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDhSBwoeObPO8RiXYfBZrUPMhke8GqiBQi2Y+dbUPRg=; b=DQhejJwCYHZIXt
	tPE6KR+nBGegXW8vPfypIO8GZzVpXwvEkYDEb0UylhHGPx8PiQESGTR2RMjVy5qVm3FBggykx5L1a
	hw50HZQSsdpHOEAZGSw9FSifTh0/a8DSH5EpUWdPcsXqz1M9+lGWwtncyOsnCS/r4rKTv67KPqWmz
	+kodRAUgd9GhTkrX/sRWSFiOkeQIx8oegz8hG3B3c6Ay7+JL2lqSrMpJMWoqtO8Ms//iVqEYSgZ7I
	6WT3nIlAIHABXS0sBXqO4PdZwtTjsDGCIFrLOejhmRaMyeY9bBRC/xhbs9aM/M1/6HXuG6E87pKiy
	AA7JYVzDDbz7eJep+QnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeTHb-0006lJ-Fu; Fri, 29 May 2020 00:53:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeTHP-0006jB-90; Fri, 29 May 2020 00:53:48 +0000
X-UUID: d22c11bf6e37410da969e59edde2262e-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/lOPSyCSRH8SaRh0UrYmb2qBLU0m25A26vWSjOAhAzw=; 
 b=Awvs9rJtUKRmaW223hgHgyROhiX52oAfmrGmw3ZpYy6TYQpmtDDq+SX9c35JGpO7btn9XMChany4W56FhL+V1w5rzroUwt0HDnhFxfEmBTnEyhoy3fIb2Sybs8nzhX6aEMoM7dUieZUwHol5yEuJVSSQiokfnezy2lneosR4RuI=;
X-UUID: d22c11bf6e37410da969e59edde2262e-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1262194569; Thu, 28 May 2020 16:53:42 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 17:53:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 08:53:25 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 29 May 2020 08:53:24 +0800
Message-ID: <1590713609.1313.1.camel@mtkswgap22>
Subject: Re: [PATCH v6 08/16] soc: mediatek: cmdq: add write_s function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 29 May 2020 08:53:29 +0800
In-Reply-To: <086cd50f-1cf5-a87d-9547-7a826e6b6252@gmail.com>
References: <1590685491-17107-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1590685491-17107-9-git-send-email-dennis-yc.hsieh@mediatek.com>
 <086cd50f-1cf5-a87d-9547-7a826e6b6252@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BADAF1CEB1FE522F0D19D2C0252EAD855B25F39E7E640634BA704236E5DB5E2F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_175347_322444_F6AF386B 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, 2020-05-28 at 23:08 +0200, Matthias Brugger wrote:
> 
> On 28/05/2020 19:04, Dennis YC Hsieh wrote:
> > add write_s function in cmdq helper functions which
> > writes value contains in internal register to address
> > with large dma access support.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 21 ++++++++++++++++++++-
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 20 ++++++++++++++++++++
> >  3 files changed, 41 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 33153d17c9d9..ee24c0ec0a24 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -18,6 +18,10 @@ struct cmdq_instruction {
> >  	union {
> >  		u32 value;
> >  		u32 mask;
> > +		struct {
> > +			u16 arg_c;
> > +			u16 src_reg;
> > +		};
> >  	};
> >  	union {
> >  		u16 offset;
> > @@ -29,7 +33,7 @@ struct cmdq_instruction {
> >  		struct {
> >  			u8 sop:5;
> >  			u8 arg_c_t:1;
> > -			u8 arg_b_t:1;
> > +			u8 src_t:1;
> 
> This should be part of 7/16.

ok, I'll move it

> 
> >  			u8 dst_t:1;
> >  		};
> >  	};
> > @@ -222,6 +226,21 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write_mask);
> >  
> > +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
> > +		     u16 addr_low, u16 src_reg_idx)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> 
> If you want an empty struct on the stack, I think {}; should be enough, right?

Yes, I'll change the style, thanks


Regards,
Dennis

> 
> Regards,
> Matthias
> 
> > +
> > +	inst.op = CMDQ_CODE_WRITE_S;
> > +	inst.src_t = CMDQ_REG_TYPE;
> > +	inst.sop = high_addr_reg_idx;
> > +	inst.offset = addr_low;
> > +	inst.src_reg = src_reg_idx;
> > +
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_write_s);
> > +
> >  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index 121c3bb6d3de..ee67dd3b86f5 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -59,6 +59,7 @@ enum cmdq_code {
> >  	CMDQ_CODE_JUMP = 0x10,
> >  	CMDQ_CODE_WFE = 0x20,
> >  	CMDQ_CODE_EOC = 0x40,
> > +	CMDQ_CODE_WRITE_S = 0x90,
> >  	CMDQ_CODE_LOGIC = 0xa0,
> >  };
> >  
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 83340211e1d3..d623f1aa7814 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -12,6 +12,8 @@
> >  #include <linux/timer.h>
> >  
> >  #define CMDQ_NO_TIMEOUT		0xffffffffu
> > +#define CMDQ_ADDR_HIGH(addr)	((u32)(((addr) >> 16) & GENMASK(31, 0)))
> > +#define CMDQ_ADDR_LOW(addr)	((u16)(addr) | BIT(1))
> >  
> >  struct cmdq_pkt;
> >  
> > @@ -102,6 +104,24 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value);
> >  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  			u16 offset, u32 value, u32 mask);
> >  
> > +/**
> > + * cmdq_pkt_write_s() - append write_s command to the CMDQ packet
> > + * @pkt:	the CMDQ packet
> > + * @high_addr_reg_idx:	internal register ID which contains high address of pa
> > + * @addr_low:	low address of pa
> > + * @src_reg_idx:	the CMDQ internal register ID which cache source value
> > + * @mask:	the specified target address mask, use U32_MAX if no need
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + *
> > + * Support write value to physical address without subsys. Use CMDQ_ADDR_HIGH()
> > + * to get high address and call cmdq_pkt_assign() to assign value into internal
> > + * reg. Also use CMDQ_ADDR_LOW() to get low address for addr_low parameter when
> > + * call to this function.
> > + */
> > +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
> > +		     u16 addr_low, u16 src_reg_idx);
> > +
> >  /**
> >   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
> >   * @pkt:	the CMDQ packet
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
