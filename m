Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E3B106AD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTwZr9J+RRCxLH12QfN3EsBqgWiTDxCBnz7Qg8xD9/0=; b=n3lijE9lI4+rmn
	o+VGhUVCrBaq76pWgYxakpxdZih02dlMHYDn1M/FCSs4yZPxAWGSeVBM17Re7iPOpEKpvFtbkcwg9
	c0gXvSg2G0L0CPtya/xAizahck1VnO/U8jurP7vnMhqmIO1C22KzNlmd5uXJqJ5sbDADz8MRdSeva
	ufa1PKrp4c9liq2dCmV7/eEHVYSV+y8aoPrqgcjXjPerfRyV8DgwrHhklFTUX7QrevzxYzH1T4bAn
	JxESPqUJ53FJw4k27u/c65w1QDFIfn0wzXm0jFUmzQCdu58b8jb0Y6ox6EBseV66sOpKkMkQDcXiF
	ICKKUkFGIq3SIyHmVtdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6LN-000303-B2; Fri, 22 Nov 2019 10:39:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6LC-0002zE-Od; Fri, 22 Nov 2019 10:39:08 +0000
X-UUID: a950aebb9abc40e3a62bf2ddb35795d8-20191122
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ofn5YL5zLXO06e+0l5pAe6Qs84VAqzgdrrkyFWlZp5s=; 
 b=LQfNUKYHNBeXaej6wynzY9sIuVxeXH3y3sJY9xUw/w2ZjaIEJFSJ3m/Gf9mqm2AlRTjviM4RGsm3K7lSHV7ZfmRcFQzgzNtLglqXALTwBo3UnmagSW0IaEVhhV+IAUwfkgFGFTMMSFRALg8IBQUCfI+ASn6qFsjVXRdrmpKu+B0=;
X-UUID: a950aebb9abc40e3a62bf2ddb35795d8-20191122
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1227959352; Fri, 22 Nov 2019 02:39:03 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 02:29:23 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 18:28:55 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 22 Nov 2019 18:29:23 +0800
Message-ID: <1574418540.11977.19.camel@mtkswgap22>
Subject: Re: [PATCH v1 10/12] soc: mediatek: cmdq: add loop function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Fri, 22 Nov 2019 18:29:00 +0800
In-Reply-To: <1574415960.19450.23.camel@mtksdaap41>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574327552-11806-11-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574415960.19450.23.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_023906_807239_1C6FDC2E 
X-CRM114-Status: GOOD (  19.36  )
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

On Fri, 2019-11-22 at 17:46 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Thu, 2019-11-21 at 17:12 +0800, Dennis YC Hsieh wrote:
> > Add finalize loop function in cmdq helper functions which loop whole pkt
> > in gce hardware thread without cpu operation.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c |   41 ++++++++++++++++++++++++++++++++
> >  include/linux/soc/mediatek/mtk-cmdq.h  |    8 +++++++
> >  2 files changed, 49 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 4235cf8..3b10241 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -385,12 +385,27 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_assign);
> >  
> > +static bool cmdq_pkt_finalized(struct cmdq_pkt *pkt)
> > +{
> > +	struct cmdq_instruction *inst;
> > +
> > +	if (pkt->cmd_buf_size < 2 * CMDQ_INST_SIZE)
> > +		return false;
> > +
> > +	inst = pkt->va_base + pkt->cmd_buf_size - 2 * CMDQ_INST_SIZE;
> > +	return inst->op == CMDQ_CODE_EOC;
> > +}
> > +
> >  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  {
> >  	struct cmdq_client *cl = pkt->cl;
> >  	struct cmdq_instruction inst = { {0} };
> >  	int err;
> >  
> > +	/* do not finalize twice */
> > +	if (cmdq_pkt_finalized(pkt))
> > +		return 0;
> > +
> >  	/* insert EOC and generate IRQ for each command iteration */
> >  	inst.op = CMDQ_CODE_EOC;
> >  	inst.value = CMDQ_EOC_IRQ_EN;
> > @@ -406,6 +421,32 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  	return err;
> >  }
> >  
> > +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt)
> > +{
> > +	struct cmdq_client *cl = pkt->cl;
> > +	struct cmdq_instruction inst = { {0} };
> > +	int err;
> > +
> > +	/* do not finalize twice */
> > +	if (cmdq_pkt_finalized(pkt))
> > +		return 0;
> 
> Why not just export cmdq_pkt_finalize() for user and do not call
> cmdq_pkt_finalize() in cmdq_pkt_flush_async(), so you don't need to
> check this.
> 
> I would be more like to export API such as cmdq_pkt_eoc(),
> cmdq_pkt_jump(), this would provide more flexibility for user to
> assemble the command it want.
> 
> Regards,
> CK

Thanks for your comment.

Should we backward compatible with existing clients? Remove finalize in
flush will cause existing client flush without IRQ.


Regards,
Dennis

> 
> > +
> > +	/* insert EOC and generate IRQ for each command iteration */
> > +	inst.op = CMDQ_CODE_EOC;
> > +	err = cmdq_pkt_append_command(pkt, inst);
> > +	if (err < 0)
> > +		return err;
> > +
> > +	/* JUMP abaolute to begin */
> > +	inst.op = CMDQ_CODE_JUMP;
> > +	inst.offset = 1;
> > +	inst.value = pkt->pa_base >> cmdq_mbox_shift(cl->chan);
> > +	err = cmdq_pkt_append_command(pkt, inst);
> > +
> > +	return err;
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_finalize_loop);
> > +
> >  static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
> >  {
> >  	struct cmdq_pkt *pkt = (struct cmdq_pkt *)data.data;
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index b3474f2..77e8944 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -203,6 +203,14 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> >  
> >  /**
> > + * cmdq_pkt_finalize_loop() - Append EOC and jump command to loop pkt.
> > + * @pkt:	the CMDQ packet
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt);
> > +
> > +/**
> >   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
> >   *                          packet and call back at the end of done packet
> >   * @pkt:	the CMDQ packet
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
