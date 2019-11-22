Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937F91069AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQKAWECWbCfvsX2iJhyjm2T082qncTu+GNtx0/QIKUY=; b=FnVnrtI2p5zJPt
	T0owUyLkidsmkV6B3vp7nwArs10+mWf9WVwxymxHjYKLWbYNtcBH4Z9VgJfjooomN/vWAeS8lCLnX
	QZBtJzr26HYNvt/cUV+mSMa9U7GsY+fwyBAlU8y44GyjinD5M/l/9I6cq92zbu1ZWS3ypjXzj5Swt
	GxY7HG+s72J+ka+azclctkv4eG63zafd0mjZVj/R7BmJjI9H1seyf8gVJTlFOpJQGNhtonlWPpc+B
	sgGzxGizCaOKjdyOiTVrrDvQyNf0WS5LKVeTyLGSHqLTjxZBjDb6IUHrvaeWXikJnfUqjCwCZLvJS
	OjUsICaa8usLFj2+4dMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5v2-0001Wp-Jw; Fri, 22 Nov 2019 10:12:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5ut-0001WC-WC; Fri, 22 Nov 2019 10:11:57 +0000
X-UUID: d1abfda572d7428489b18846ce97b856-20191122
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hK85BWO5PB72avyugc76FhRfS++eD6TPM5BELRKbSFs=; 
 b=Rz+aX8HgQ+jCzopEyCY6rKva3jwGjNbMKujh1ylJ0j2rJgQ0ZESkp+rX0aEk7To/z0aZ5M61iwQbz4yS3LA816jW2FIme7H8BaxEA66YIZi5AKaiFcjtDvOn+E3RtH3aK5C70XNEXNajrjPfdBzQcHRIE5kQJXK1eqWGD38hCRI=;
X-UUID: d1abfda572d7428489b18846ce97b856-20191122
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 265119845; Fri, 22 Nov 2019 02:11:49 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 02:11:54 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 18:11:42 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 22 Nov 2019 18:12:10 +0800
Message-ID: <1574417507.11977.14.camel@mtkswgap22>
Subject: Re: [PATCH v1 07/12] soc: mediatek: cmdq: add write_s function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Fri, 22 Nov 2019 18:11:47 +0800
In-Reply-To: <1574412997.19450.16.camel@mtksdaap41>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574327552-11806-8-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574412997.19450.16.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_021156_045811_EC9821F1 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK,

On Fri, 2019-11-22 at 16:56 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Thu, 2019-11-21 at 17:12 +0800, Dennis YC Hsieh wrote:
> > add write_s function in cmdq helper functions which
> > support large dma access.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   |   34 ++++++++++++++++++++++++++++++
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |    2 ++
> >  include/linux/soc/mediatek/mtk-cmdq.h    |   13 ++++++++++++
> >  3 files changed, 49 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index d419e99..1b074a9 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -15,6 +15,9 @@
> >  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
> >  				<< 32 | CMDQ_EOC_IRQ_EN)
> >  #define CMDQ_REG_TYPE		1
> > +#define CMDQ_ADDR_HIGH(addr)	((u32)(((addr) >> 16) & GENMASK(31, 0)))
> > +#define CMDQ_ADDR_LOW_BIT	BIT(1)
> > +#define CMDQ_ADDR_LOW(addr)	((u16)(addr) | CMDQ_ADDR_LOW_BIT)
> >  
> >  struct cmdq_instruction {
> >  	union {
> > @@ -224,6 +227,37 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write_mask);
> >  
> > +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, dma_addr_t addr,
> > +		     u32 value, u32 mask)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> > +	int err;
> > +	const u16 dst_reg_idx = CMDQ_SPR_TEMP;
> > +
> > +	err = cmdq_pkt_assign(pkt, dst_reg_idx, CMDQ_ADDR_HIGH(addr));
> > +	if (err < 0)
> > +		return err;
> > +
> > +	if (mask != U32_MAX) {
> > +		inst.op = CMDQ_CODE_MASK;
> > +		inst.mask = ~mask;
> > +		err = cmdq_pkt_append_command(pkt, inst);
> > +		if (err < 0)
> > +			return err;
> > +
> > +		inst.op = CMDQ_CODE_WRITE_S_MASK;
> > +	} else {
> > +		inst.op = CMDQ_CODE_WRITE_S;
> > +	}
> > +
> > +	inst.sop = dst_reg_idx;
> > +	inst.offset = CMDQ_ADDR_LOW(addr);
> > +	inst.value = value;
> > +
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_write_s);
> > +
> >  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index 121c3bb..8ef87e1 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -59,6 +59,8 @@ enum cmdq_code {
> >  	CMDQ_CODE_JUMP = 0x10,
> >  	CMDQ_CODE_WFE = 0x20,
> >  	CMDQ_CODE_EOC = 0x40,
> > +	CMDQ_CODE_WRITE_S = 0x90,
> > +	CMDQ_CODE_WRITE_S_MASK = 0x91,
> >  	CMDQ_CODE_LOGIC = 0xa0,
> >  };
> >  
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 8334021..8dbd046 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -12,6 +12,7 @@
> >  #include <linux/timer.h>
> >  
> >  #define CMDQ_NO_TIMEOUT		0xffffffffu
> > +#define CMDQ_SPR_TEMP		0
> >  
> >  struct cmdq_pkt;
> >  
> > @@ -103,6 +104,18 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  			u16 offset, u32 value, u32 mask);
> >  
> >  /**
> > + * cmdq_pkt_write_s() - append write_s command with mask to the CMDQ packet
> > + * @pkt:	the CMDQ packet
> > + * @addr:	the physical address of register or dma
> > + * @value:	the specified target value
> > + * @mask:	the specified target mask
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, dma_addr_t addr,
> > +		     u32 value, u32 mask);
> 
> You have an API cmdq_pkt_read_s() which read data into gce internal
> register, so I expect that cmdq_pkt_write_s() is an API which write data
> from gce internal register, the expected prototype is
> 
> int cmdq_pkt_write_s(struct cmdq_pkt *pkt, phys_addr_t addr, u16
> reg_idx);
> 
> Your version would confuse the user because you hide the internal
> register parameter. If you want to provide this service, I would like
> you to change the function name so that user would not be confused and
> easily to understand what you want to do in this function.
> 
> Another choice is: cmdq_pkt_write_s() is implemented in my definition,
> and user could call cmdq_pkt_assign() and cmdq_pkt_write_s() to achieve
> this function.
> 
> Regards,
> CK
> 

Thanks for your comment.

Ok, we have to provide write constant value service to client, so I will
change the function name to cmdq_pkt_write_s_value() in this patch.

And since it is better to provide consistent API so I will design
another function with interface as your suggestion:
int cmdq_pkt_write_s(struct cmdq_pkt *pkt, phys_addr_t addr, u16
reg_idx);

In another patch I provide cmdq_pkt_mem_move(). I will move part of
implementation to cmdq_pkt_write_s(), so that cmdq_pkt_mem_move() can be
combination of cmdq_pkt_read_s() and cmdq_pkt_write_s().

How do you think?


Regards,
Dennis

> > +
> > +/**
> >   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
> >   * @pkt:	the CMDQ packet
> >   * @event:	the desired event type to "wait and CLEAR"
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
