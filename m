Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC61211C21F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgvwPV05kZQhy7ihKnamX8i4K8vOhnu+ILsU4t23wEw=; b=bfTn0HEojqjLJ+
	REhh1TD97fbDWyetdmLACb8Ygmyk9QVerQXDDEa6Wt7zR63NH4Z7rHuNqhVNw59osqZzdcRm1wtvn
	5TWxoHmTI9iQl8OeR6ENc0gOpthzyEc8hWzgGM7C7ZojOdY2JjmGzYQ5e1SQhvHqPcC93FbaF5Kxk
	zF4F86IvdIVeXnDQVwyX/wZZO1hHbJib7Kg35u2UZ507qpMXdgdY6oe+5YwBbTzfD8wnevseYUB7P
	PL3T4Ai3siGa+TQ4KpcXdKyfKp24GLjhYO0HAkqZ4ijsKlNgdzv3EC5o4iy9uBsLTRvwpTTUl1xK1
	c52XhNnZjOW0kvt1OgyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDED-0003ze-Op; Thu, 12 Dec 2019 01:25:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDE4-0003Vi-5Y; Thu, 12 Dec 2019 01:25:10 +0000
X-UUID: 22aded6f0012421188c79930ba9de6d2-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=S7n6BLXFBYrGU/yLiTGj/uEVDc5Kend99TF6tXx8EAI=; 
 b=pIzoge9NbhMCQefIEXvCMsp7O3fTiZpbja5sppxPRkSoaNfEbGcBZzQSXjSxO6/vFd+Y/A5zYwzvMrsHj6Z98uWoRyn812tsUlJWhINhg/whq68EJq1GI2fy6OMbGDQCeQ/s0C5uZ+ucycbxWIJtpu1ES24E2bonBpSGqIBoI4s=;
X-UUID: 22aded6f0012421188c79930ba9de6d2-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1872995054; Wed, 11 Dec 2019 17:25:04 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:16:03 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:14:41 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:14:56 +0800
Message-ID: <1576113300.17653.7.camel@mtkswgap22>
Subject: Re: [PATCH v2 07/14] soc: mediatek: cmdq: add assign function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 12 Dec 2019 09:15:00 +0800
In-Reply-To: <1575948247.9195.0.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-9-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1575948247.9195.0.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_172508_241990_D4BD959B 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, 2019-12-10 at 11:24 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > Add assign function in cmdq helper which assign constant value into
> > internal register by index.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 24 +++++++++++++++++++++++-
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 18 ++++++++++++++++++
> >  3 files changed, 42 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 8421b4090304..9cc234f08ec5 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -14,6 +14,7 @@
> >  #define CMDQ_EOC_IRQ_EN		BIT(0)
> >  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
> >  				<< 32 | CMDQ_EOC_IRQ_EN)
> > +#define CMDQ_REG_TYPE		1
> >  
> >  struct cmdq_instruction {
> >  	union {
> > @@ -23,8 +24,17 @@ struct cmdq_instruction {
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
> >  	};
> > -	u8 subsys;
> >  	u8 op;
> >  };
> >  
> > @@ -279,6 +289,18 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
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
> >  	struct cmdq_client *cl = pkt->cl;
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
> > index a74c1d5acdf3..c66b3a0da2a2 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -12,6 +12,10 @@
> >  #include <linux/timer.h>
> >  
> >  #define CMDQ_NO_TIMEOUT		0xffffffffu
> > +#define CMDQ_SPR_TEMP		0
> > +#define CMDQ_SPR1		1
> > +#define CMDQ_SPR2		2
> > +#define CMDQ_SPR3		3
> 
> These does not relate to assign function, so remove them.
> 
> Regards,
> CK
> 

will remove


Regards,
Dennis

> >  
> >  struct cmdq_pkt;
> >  
> > @@ -152,6 +156,20 @@ int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
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
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
