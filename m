Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E761011C272
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQTPAbG+MXGeUTgKdAlILcepVic0TNmexcGl+Pos4/M=; b=XXmYk0uPChxZba
	x1/cAt6pgQhfiGXIPRqjIR740kY7dPvUIbid3AftaverlLhjdMrF7itoWeqdZtM068WEGEJTgRuFp
	4WV178AqFrtqf0IzP+yznZqUyPw0DrJxq1qMhYkwzUpiXtnLqHLBraCVoDShHLEle0oOGq2dccqf4
	F2yl3P9sj4QTwKCEfZX0qx2GXFojwh7F9hZ+BzUuULtKhplMbuu/5hNEAyQMrUg9cJp/GrI2XNYNn
	jhDptd2EF1Le6hXcpUNgkgeW8bbVTTzvGNxEJOAuHh8r8NxxXqjIPZkIA6R0A9sjgqx4TNSSKr97x
	Tr5FEwCx6/cDd5wLrd4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDVX-0003mV-Fq; Thu, 12 Dec 2019 01:43:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDVO-0003lw-2z; Thu, 12 Dec 2019 01:43:03 +0000
X-UUID: 2ad6778d54294b47bb201d3355d52acb-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=phDsoiIyJCBnu4asobwbcjbE3yzCEaKCfb7CC35r6aw=; 
 b=m7AdmdtFaKS/md5+QEqjxR+L5OrA0PxvbrRYKDbLwgwpLWcWikGGq3iufCjmEwA7T04RZsOLN/ZmekFiDS8KcqM7AVdjde+n/wwGGFbQwOeybnsvmpXcVpnHAiblQPWheK2VyIBNyrWsobV/j7bTz/gz+xtNTKVV+C+D641OLls=;
X-UUID: 2ad6778d54294b47bb201d3355d52acb-20191211
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2087999439; Wed, 11 Dec 2019 17:42:58 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:43:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:42:35 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:42:51 +0800
Message-ID: <1576114975.17653.16.camel@mtkswgap22>
Subject: Re: [PATCH v2 13/14] soc: mediatek: cmdq: add wait no clear event
 function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 12 Dec 2019 09:42:55 +0800
In-Reply-To: <1576029887.19653.17.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-15-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1576029887.19653.17.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_174302_140902_964E409C 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Wed, 2019-12-11 at 10:04 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > Add wait no clear event function in cmdq helper functions to wait specific
> > event without clear to 0 after receive it.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 15 +++++++++++++++
> >  include/linux/soc/mediatek/mtk-cmdq.h  | 10 ++++++++++
> >  2 files changed, 25 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 10a9b4481e58..6f270fadfb50 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -330,6 +330,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_wfe);
> >  
> > +int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event)
> > +{
> > +	struct cmdq_instruction inst = { {0} };
> > +
> > +	if (event >= CMDQ_MAX_EVENT)
> > +		return -EINVAL;
> > +
> > +	inst.op = CMDQ_CODE_WFE;
> > +	inst.value = CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
> > +	inst.event = event;
> > +
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_wait_no_clear);
> 
> So the wait command has two version, one is wait and then clear event,
> another is wait and not clear event. The name of cmdq_pkt_wfe() is 'wait
> for event', so it's trivial that we think it does not clear event. I've
> three suggestion for this:
> 
> 1. Let cmdq_pkt_wfe() wait and not clear event, and
> cmdq_pkt_wfe_clear_event() wait and clear event.
> 
> or 
> 2. Let cmdq_pkt_wfe() has a parameter to indicate that clear event or
> not after wait.
> 
> or
> 3. Let cmdq_pkt_wfe() wait and not clear event, and not provide wait and
> clear event version. For DRM and MDP, I think both just need wait and
> not clear event.
> 
> Regards,
> CK
> 

ok, I will change cmdq_pkt_wfe wait and not clear, and expose another
cmdq_pkt_wfe_clear_event() api


Regards,
Dennis

> 
> > +
> >  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index d15d8c941992..40bc61ad8d31 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -149,6 +149,16 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, dma_addr_t addr,
> >   */
> >  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
> >  
> > +/**
> > + * cmdq_pkt_wait_no_clear() - Append wait for event command to the CMDQ packet,
> > + *			      without update event to 0 after receive it.
> > + * @pkt:	the CMDQ packet
> > + * @event:	the desired event type to wait
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event);
> > +
> >  /**
> >   * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
> >   * @pkt:	the CMDQ packet
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
