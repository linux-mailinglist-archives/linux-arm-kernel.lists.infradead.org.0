Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4B211C24F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/bLFJ+DMCmdHEAi717ilR5t5rvCu6Eh3Dw9UT7E3VU=; b=GwSaN3XVQ0WCsc
	mb/kFlDykRwX8Ia4fNdnFVB8QYgZH5vE+ZgQrP/edR2pRCISzEL6DrtM2jNK04HJR/q+TQQ7nQAOi
	Wpp6LnDVF9FCmz04U5CwsoidZ6F0LJrmViydZZ1Kknv7K+yJchrzw7piA0pcGPj1HLiiAMDxVS3/c
	bTy61NrXFZeZBUIXg/LnfFU+vBegEvSeUrEM8HpmyW70lvhHIciQwwHQDFYZLkQUPoI0QYXUxt8YY
	3+FPZGboqKvU0b9L2QehGWEpVwSvndXCcpSwdPN4Z0AFPLjb0IGAfo1YDi8HM2S1IgHQ4q/XwN/i9
	BkT/1l8pV/73BTSfGNlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDQJ-0008SO-K6; Thu, 12 Dec 2019 01:37:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDQ9-0008Ri-Td; Thu, 12 Dec 2019 01:37:39 +0000
X-UUID: 5cf04614c48e4202baa320f72e4f02c4-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=PipsN9f6SWadwcwIrVs3U74QlgXQz8aVan1+C+FVNtA=; 
 b=TwGczfOt/sn2BvfIAJGPx0gzPpkXhck7/79SNxXautFLDURVlPDA85L38tAdur/DzjQjPtRQ2m/SnNHhx0H+ErsCyZd/gqWwDeTpGZbqNJlX51IC30sP8Je4AFlbbd51N3Jis56mgwfE1BU6kKXIZOYJSNazyOs8F+vf43DkqAU=;
X-UUID: 5cf04614c48e4202baa320f72e4f02c4-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 640138727; Wed, 11 Dec 2019 17:37:35 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:37:50 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:37:17 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:37:28 +0800
Message-ID: <1576114652.17653.13.camel@mtkswgap22>
Subject: Re: [PATCH v2 12/14] soc: mediatek: cmdq: add loop function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 12 Dec 2019 09:37:32 +0800
In-Reply-To: <1576028899.19653.5.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-14-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1576028899.19653.5.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_173737_966580_71FDBAEE 
X-CRM114-Status: GOOD (  17.33  )
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

Hi CK,

On Wed, 2019-12-11 at 09:48 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > Add finalize loop function in cmdq helper functions which loop whole pkt
> > in gce hardware thread without cpu operation.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 22 ++++++++++++++++++++++
> >  include/linux/soc/mediatek/mtk-cmdq.h  |  8 ++++++++
> >  2 files changed, 30 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 38e0c13e1922..10a9b4481e58 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -414,6 +414,28 @@ int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_finalize);
> >  
> > +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt)
> > +{
> > +	struct cmdq_client *cl = pkt->cl;
> > +	struct cmdq_instruction inst = { {0} };
> > +	int err;
> > +
> > +	/* insert EOC and generate IRQ for each command iteration */
> > +	inst.op = CMDQ_CODE_EOC;
> > +	err = cmdq_pkt_append_command(pkt, inst);
> > +	if (err < 0)
> > +		return err;
> 
> It looks like you want a pkt execute command repeatedly, but why do you
> repeatedly trigger IRQ? This IRQ would do nothing because this pkt would
> never finish.
> 

see following section

> > +
> > +	/* JUMP abaolute to begin */
> > +	inst.op = CMDQ_CODE_JUMP;
> > +	inst.offset = 1;
> > +	inst.value = pkt->pa_base >> cmdq_mbox_shift(cl->chan);
> > +	err = cmdq_pkt_append_command(pkt, inst);
> 
> Why not just export this function as cmdq_pkt_jump()? Let client decide
> where to jump would be more flexible.
> 
> Regards,
> CK
> 

ok, I will remove this part and expose cmdq_pkt_jump()


Regards,
Dennis

> > +
> > +	return err;
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_finalize_loop);
> > +
> >  static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
> >  {
> >  	struct cmdq_pkt *pkt = (struct cmdq_pkt *)data.data;
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 998bc90f9da9..d15d8c941992 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -212,6 +212,14 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> >   */
> >  int cmdq_pkt_finalize(struct cmdq_pkt *pkt);
> >  
> > +/**
> > + * cmdq_pkt_finalize_loop() - Append EOC and jump command to loop pkt.
> > + * @pkt:	the CMDQ packet
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt);
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
