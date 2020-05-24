Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE71E0111
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 19:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jp7bTr+5vusuL7y8aZjDBp8auidXqv84J4+Wc6WorQ=; b=RKXWS8EGQiNDgN
	VwaZbLx9thhz/2S/W6aukUyEyLllp6e0HcnBeU1eHrmfj6IiJmu9glhoEzay8Ww0MpAPX1cRyuGq/
	U6c4wsM5vQ18zMDbZAKgEDqqCKiGCm4CSilpJqNycCHIJ5tlt/CHlE0lTiXl0+y+cuCI/PHgzuyur
	K0U817qO1aAHZnRCsD2OANxYLIjm/n/rj+PmmbU65sJB43Yr2ZFhRL3MpqGfb+r+BUILzyENSyFPH
	Q1rouk34/oh/ynbOCrqnJvjTswGscraT+Kvg52eXPOK4M5YJPyyWKesZLQgx7bSIOHeuRKTPC97IZ
	wqWdT0umQKN3jWm8Lv5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuOo-0000Vd-1K; Sun, 24 May 2020 17:26:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuOd-0000Tc-U9; Sun, 24 May 2020 17:26:49 +0000
X-UUID: 1dc4712e03cb4d3cade370315454af6c-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Q7+n5IyoAxLjcdQC+D0mViZArPAyMtYuaRQrQ0r48VI=; 
 b=M0cdk5PVc6rciqm7qEZ2lhccJ4xoWVs3eRekMKtmPiIkQtJElWFAcpTHnclyfB/sG1FarVmZgYqlidbZdWJoJhxDm5nNw0N/0gPqWyiHYUAyFP/e3+a1JU/7vePKBeKBwq504BvGIn0QkfEUMVdNlDpBu3Lf158ayk9diXP4lws=;
X-UUID: 1dc4712e03cb4d3cade370315454af6c-20200524
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1994102280; Sun, 24 May 2020 09:26:14 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 10:26:38 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 01:26:23 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 01:26:23 +0800
Message-ID: <1590341186.31286.16.camel@mtkswgap22>
Subject: Re: [PATCH v5 07/13] soc: mediatek: cmdq: add write_s function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 25 May 2020 01:26:26 +0800
In-Reply-To: <58575c2c-0b5a-55c0-f3b0-082bfd4b6144@gmail.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-8-git-send-email-dennis-yc.hsieh@mediatek.com>
 <58575c2c-0b5a-55c0-f3b0-082bfd4b6144@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8E1590C94D6BBEE4965E4561F86ED76CB9E64840B3A46FD7D8D95E317159995C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_102647_975249_D443BA20 
X-CRM114-Status: GOOD (  25.46  )
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

Hi Mattias,

Thanks for your comment.

On Sat, 2020-05-16 at 20:14 +0200, Matthias Brugger wrote:
> 
> On 08/03/2020 11:52, Dennis YC Hsieh wrote:
> > add write_s function in cmdq helper functions which
> > writes value contains in internal register to address
> > with large dma access support.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 34 +++++++++++++++++++++++-
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  2 ++
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 20 ++++++++++++++
> >  3 files changed, 55 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 33153d17c9d9..90f1ff2b4b00 100644
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
> fixing patch 6/13 please. seems the struct should be added in this patch.

ok, will move to this patch.

> 
> >  			u8 dst_t:1;
> >  		};
> >  	};
> > @@ -222,6 +226,34 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write_mask);
> >  
> > +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
> > +		     u16 addr_low, u16 src_reg_idx, u32 mask)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> > +	int err;
> > +
> > +	if (mask != U32_MAX) {
> > +		inst.op = CMDQ_CODE_MASK;
> > +		inst.mask = ~mask;
> > +		err = cmdq_pkt_append_command(pkt, inst);
> > +		if (err < 0)
> > +			return err;
> > +
> > +		inst.mask = 0;
> > +		inst.op = CMDQ_CODE_WRITE_S_MASK;
> > +	} else {
> > +		inst.op = CMDQ_CODE_WRITE_S;
> > +	}
> > +
> > +	inst.src_t = CMDQ_REG_TYPE;
> 
> Not defined.
> Please make sure that every patch compiles on it's own and does not add a
> regression. This is very helpful if we have to bisect the kernel in the future.

May I know which part not defined? The src_t defined on top of this
patch and CMDQ_REG_TYPE defined in last patc (see 06/13).

> 
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
> > index 121c3bb6d3de..8ef87e1bd03b 100644
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
> > index 83340211e1d3..c72d826d8934 100644
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
> > + * @high_addr_reg_idx:	internal regisger ID which contains high address of pa
> 
> s/regisger/register

will fix

> 
> > + * @addr_low:	low address of pa
> > + * @src_reg_idx:	the CMDQ internal register ID which cache source value
> > + * @mask:	the specified target address mask, use U32_MAX if no need
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + *
> > + * Support write value to physical address without subsys. Use CMDQ_ADDR_HIGH()
> > + * to get high addrees and call cmdq_pkt_assign() to assign value into internal
> 
> s/addrees/address

will fix

> 
> > + * reg. Also use CMDQ_ADDR_LOW() to get low address for addr_low parameterwhen
> 
> s/parameterwhen/parameter when

will fix

> 
> > + * call to this function.
> > + */
> > +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
> > +		     u16 addr_low, u16 src_reg_idx, u32 mask);
> > +
> 
> In general I wonder if we shouldn't provide two functions, one that writes a
> mask and on for the else case.

ok, I'll separate this function to cmdq_pkt_write_s and
cmdq_pkt_write_s_mask. Let the client choose which case is more
suitable.


> 
> Regards,
> Matthias
> 
> >  /**
> >   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
> >   * @pkt:	the CMDQ packet
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
