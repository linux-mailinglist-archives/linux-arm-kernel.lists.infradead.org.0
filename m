Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F6D1E0124
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 19:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDDeHnY92bJ8uO9V8r9ZK11KHSKdw5Fpv3dcaytPDKw=; b=Aay/vxpzbuHc4z
	0DGn2+sg15+TKw7CZDYUWsQlEgXTFKt02UpOaOpkMbWt8ZqpvROBZ/M2iT83hdyTERJUJUyuwp/qc
	rvvHKQJw+GsSsm8h7kGeQVx3SNspLxCRvlR0cokfkXeW7Jdf5G3hFhcWDn0w2xLcSxo9lzZSqkqGF
	am9juG1cbUrJrLA/lAOXkuLumUgeSSA8cKLgbXVYP2Wt2VozQmZo9SUfpvxjWcjpNVibUAwfdLX+f
	l7yVJURKYEaOIHSTKP84GuoqUawHeLLSy7GbuWJANj3fOt1DhSOxyEbLMZ8jkh1ElN8YKUCsD3wAb
	dfezG93KkiUzQyBSGAmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuU8-0004LY-K9; Sun, 24 May 2020 17:32:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuTp-0004Jk-9G; Sun, 24 May 2020 17:32:16 +0000
X-UUID: ab796e99effe4d7b8b6a9cfe3f7fdb83-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=bEukpIDc33kmSBnyaSWesUR3coz87RG9SGtY78KDiQM=; 
 b=rjB/g/PYoVvsoAeButEc65q4Ml22yNb+QvyhY2w8xqxgta7N/5GD7nNL4ki47C4h0pkRq+QNiGRWnyqWEnr32TdrSGnQjnVLgyIEU2Xlh+CywLgKsC/H+0sDEOK7lw05ldhiA8fBPvkfKV3aBYKu5DbxwWn6kXLOIk4e2Uk0/rk=;
X-UUID: ab796e99effe4d7b8b6a9cfe3f7fdb83-20200524
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 678140827; Sun, 24 May 2020 09:31:36 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 10:32:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 01:31:59 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 01:31:59 +0800
Message-ID: <1590341522.31286.20.camel@mtkswgap22>
Subject: Re: [PATCH v5 10/13] soc: mediatek: cmdq: export finalize function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 25 May 2020 01:32:02 +0800
In-Reply-To: <5d6b61b2-23c9-647f-fa22-73e779010bd8@gmail.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-11-git-send-email-dennis-yc.hsieh@mediatek.com>
 <5d6b61b2-23c9-647f-fa22-73e779010bd8@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_103214_648450_1637CB9D 
X-CRM114-Status: GOOD (  18.99  )
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

Hi Matthias,

Thanks for your comment.

On Sat, 2020-05-16 at 20:22 +0200, Matthias Brugger wrote:
> 
> On 08/03/2020 11:52, Dennis YC Hsieh wrote:
> > Export finalize function to client which helps append eoc and jump
> > command to pkt. Let client decide call finalize or not.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 1 +
> >  drivers/soc/mediatek/mtk-cmdq-helper.c  | 7 ++-----
> >  include/linux/soc/mediatek/mtk-cmdq.h   | 8 ++++++++
> >  3 files changed, 11 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 0dfcd1787e65..7daaabc26eb1 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -490,6 +490,7 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
> >  		cmdq_pkt_clear_event(cmdq_handle, mtk_crtc->cmdq_event);
> >  		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event);
> >  		mtk_crtc_ddp_config(crtc, cmdq_handle);
> > +		cmdq_pkt_finalize(cmdq_handle);
> >  		cmdq_pkt_flush_async(cmdq_handle, ddp_cmdq_cb, cmdq_handle);
> >  	}
> >  #endif
> 
> This should be a independent patch.
> Other then that patch looks good.

ok, I'll separate this part.


Regards,
Dennis

> 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index a9ebbabb7439..59bc1164b411 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -372,7 +372,7 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_assign);
> >  
> > -static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> > +int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> >  	int err;
> > @@ -392,6 +392,7 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
> >  
> >  	return err;
> >  }
> > +EXPORT_SYMBOL(cmdq_pkt_finalize);
> >  
> >  static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
> >  {
> > @@ -426,10 +427,6 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
> >  	unsigned long flags = 0;
> >  	struct cmdq_client *client = (struct cmdq_client *)pkt->cl;
> >  
> > -	err = cmdq_pkt_finalize(pkt);
> > -	if (err < 0)
> > -		return err;
> > -
> >  	pkt->cb.cb = cb;
> >  	pkt->cb.data = data;
> >  	pkt->async_cb.cb = cmdq_pkt_flush_async_cb;
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index fec292aac83c..99e77155f967 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -213,6 +213,14 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> >   */
> >  int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> >  
> > +/**
> > + * cmdq_pkt_finalize() - Append EOC and jump command to pkt.
> > + * @pkt:	the CMDQ packet
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_finalize(struct cmdq_pkt *pkt);
> > +
> >  /**
> >   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
> >   *                          packet and call back at the end of done packet
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
