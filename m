Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD79108969
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 08:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbjGWY14/s71uoihFZ8pBAp9oOr6j+e/lL0XQ/8BRyw=; b=r2dUbvASkqFz4v
	z5rgS0ickMBgDH6pPwsY6OsEO7EnwzQ7dImMQyxAdE8YcxSOjqO3peNbS3U3bmB6YUpqX8WQEAnNH
	/KPzgiY6mC1rFAck5P6GT/J0LoMMyo8c/D9gXjiDGUNisKW1nFwEqk7Dz3kc7NOEnabGOJghv1u9X
	TnlxWtAVReroKKGEAWHPHBfs3Ob9/ixqy/tVDJD3nCSHF/vLRXpgMZptecahyn1I2R9N9YolNcKGl
	ztyT5PCRVNMXjqOjKOrvTM7JFNK+e+/IgX/smCyOqgECUsPDwBwGYD/nUZoV3Xbq4SSU1GZUjgw/C
	IXIK/AmPvI3+ZCGnL8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ95V-0006FU-W1; Mon, 25 Nov 2019 07:47:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ95J-0006Ey-3g; Mon, 25 Nov 2019 07:47:02 +0000
X-UUID: f4bbff841a0d40a19eade7a996bae3a3-20191124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WUCRj6E2ADm4aPzrrZwA51bkluBOS7j5l65gPHqcbPc=; 
 b=WXlMwGyEZmhVYq9KbvXMzU7gnWhKHy89exxnAf4kaG6HfjfnK2We+gz80+mROMbf9ARzIfBks79pANFvWLhvXe3EkEnlbCbbONLP9LoYg9HOrgoh8cSvXlSOlAKRTlaTvbxXMisf4oNpOqpc9nX5dVWbTqCY0QVscEBlkXc+0lA=;
X-UUID: f4bbff841a0d40a19eade7a996bae3a3-20191124
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1343028669; Sun, 24 Nov 2019 23:46:59 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 24 Nov 2019 23:37:24 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 15:36:48 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 25 Nov 2019 15:36:14 +0800
Message-ID: <1574667416.9851.1.camel@mtkswgap22>
Subject: Re: [PATCH v1 10/12] soc: mediatek: cmdq: add loop function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Mon, 25 Nov 2019 15:36:56 +0800
In-Reply-To: <1574645703.4712.7.camel@mtksdaap41>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574327552-11806-11-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574415960.19450.23.camel@mtksdaap41>
 <1574418540.11977.19.camel@mtkswgap22> <1574645703.4712.7.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_234701_160880_B8252845 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, 2019-11-25 at 09:35 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Fri, 2019-11-22 at 18:29 +0800, Dennis-YC Hsieh wrote:
> > Hi CK,
> > 
> > On Fri, 2019-11-22 at 17:46 +0800, CK Hu wrote:
> > > Hi, Dennis:
> > > 
> > > On Thu, 2019-11-21 at 17:12 +0800, Dennis YC Hsieh wrote:
> > > > Add finalize loop function in cmdq helper functions which loop whole pkt
> > > > in gce hardware thread without cpu operation.
> > > > 
> > > > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > > > ---
> > > >  drivers/soc/mediatek/mtk-cmdq-helper.c |   41 ++++++++++++++++++++++++++++++++
> > > >  include/linux/soc/mediatek/mtk-cmdq.h  |    8 +++++++
> > > >  2 files changed, 49 insertions(+)
> > > > 
> > > > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > > > index 4235cf8..3b10241 100644
> > > > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > > > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > > > @@ -385,12 +385,27 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> > > >  }
> > > >  EXPORT_SYMBOL(cmdq_pkt_assign);
> > > >  
> > > > +static bool cmdq_pkt_finalized(struct cmdq_pkt *pkt)
> > > > +{
> > > > +	struct cmdq_instruction *inst;
> > > > +
> > > > +	if (pkt->cmd_buf_size < 2 * CMDQ_INST_SIZE)
> > > > +		return false;
> > > > +
> > > > +	inst = pkt->va_base + pkt->cmd_buf_size - 2 * CMDQ_INST_SIZE;
> > > > +	return inst->op == CMDQ_CODE_EOC;
> > > > +}
> > > > +
> > > >  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> > > >  {
> > > >  	struct cmdq_client *cl = pkt->cl;
> > > >  	struct cmdq_instruction inst = { {0} };
> > > >  	int err;
> > > >  
> > > > +	/* do not finalize twice */
> > > > +	if (cmdq_pkt_finalized(pkt))
> > > > +		return 0;
> > > > +
> > > >  	/* insert EOC and generate IRQ for each command iteration */
> > > >  	inst.op = CMDQ_CODE_EOC;
> > > >  	inst.value = CMDQ_EOC_IRQ_EN;
> > > > @@ -406,6 +421,32 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> > > >  	return err;
> > > >  }
> > > >  
> > > > +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt)
> > > > +{
> > > > +	struct cmdq_client *cl = pkt->cl;
> > > > +	struct cmdq_instruction inst = { {0} };
> > > > +	int err;
> > > > +
> > > > +	/* do not finalize twice */
> > > > +	if (cmdq_pkt_finalized(pkt))
> > > > +		return 0;
> > > 
> > > Why not just export cmdq_pkt_finalize() for user and do not call
> > > cmdq_pkt_finalize() in cmdq_pkt_flush_async(), so you don't need to
> > > check this.
> > > 
> > > I would be more like to export API such as cmdq_pkt_eoc(),
> > > cmdq_pkt_jump(), this would provide more flexibility for user to
> > > assemble the command it want.
> > > 
> > > Regards,
> > > CK
> > 
> > Thanks for your comment.
> > 
> > Should we backward compatible with existing clients? Remove finalize in
> > flush will cause existing client flush without IRQ.
> 
> The latest kernel (v5.4-rc8) still has no clients which use cmdq landed
> on upstream, and we don't need to consider backward compatible. [1] is
> the example that iommu would replace the proprietary interface with
> standard interface, so it would modify all clients which use the
> proprietary interface. So what you should do is to modify client as
> well.
> 
> [1]
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=168801
> 
> Regards,
> CK


Ok, I'll remove all check code.
Thanks for your comment.


Regards,
Dennis

> > 
> > 
> > Regards,
> > Dennis
> > 
> > > 
> > > > +
> > > > +	/* insert EOC and generate IRQ for each command iteration */
> > > > +	inst.op = CMDQ_CODE_EOC;
> > > > +	err = cmdq_pkt_append_command(pkt, inst);
> > > > +	if (err < 0)
> > > > +		return err;
> > > > +
> > > > +	/* JUMP abaolute to begin */
> > > > +	inst.op = CMDQ_CODE_JUMP;
> > > > +	inst.offset = 1;
> > > > +	inst.value = pkt->pa_base >> cmdq_mbox_shift(cl->chan);
> > > > +	err = cmdq_pkt_append_command(pkt, inst);
> > > > +
> > > > +	return err;
> > > > +}
> > > > +EXPORT_SYMBOL(cmdq_pkt_finalize_loop);
> > > > +
> > > >  static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
> > > >  {
> > > >  	struct cmdq_pkt *pkt = (struct cmdq_pkt *)data.data;
> > > > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > > > index b3474f2..77e8944 100644
> > > > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > > > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > > > @@ -203,6 +203,14 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> > > >  int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> > > >  
> > > >  /**
> > > > + * cmdq_pkt_finalize_loop() - Append EOC and jump command to loop pkt.
> > > > + * @pkt:	the CMDQ packet
> > > > + *
> > > > + * Return: 0 for success; else the error code is returned
> > > > + */
> > > > +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt);
> > > > +
> > > > +/**
> > > >   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
> > > >   *                          packet and call back at the end of done packet
> > > >   * @pkt:	the CMDQ packet
> > > 
> > > 
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
