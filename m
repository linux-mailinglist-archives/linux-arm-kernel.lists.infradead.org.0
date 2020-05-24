Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34AD1E013B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 19:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Itl9D95QD1NF555+z7rkzbAnuLRbYjcoxCMrj30FnIo=; b=UWp8k44E/2CqmZ
	o4WvfL5IjcwYmn99RBngw5nviVVSTEC6+ttJV6me/B4XjazS9F4vvjkGiCW4AEqxeZZ61uQbr6jQp
	JQf8MpLbFyBlqZ9LEFcmWR9GJolpIqq0/dVgwL+j+VV07TXqlrLJqzJc+07v5Q9Si1O7tlgrd+m1L
	AluqdQHI7rxJdYLUHdrpW3SgM7tmjaWi8klqfqKDTrexU1hpmT1J6bOnKbJcEhUs+0XkSR/4e3zyO
	LN/u09EHNfmSxIJdV442qGzvo+QMpLMa+Hz2w6QPbGUmSWjajGrlHjKD9Pf+p1asl8cY82mwTNawR
	cJUo1CdFU3BjSU9cpRDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuee-0002TV-2v; Sun, 24 May 2020 17:43:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcueL-0002SJ-QV; Sun, 24 May 2020 17:43:03 +0000
X-UUID: 39d62232187746fba989c8a536ece349-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NRUfXSdH1Y0b7w27gA4nSFgrpT/xOAe4KYnqqpyaLVw=; 
 b=X8VpmNW+J3DdjGJswe/ENk/xqoBwJxero0pFRH8kfuauOXM/eBBjB04WwCfCwJaG8eZGTtwfZzRg86lipVGLtzWW5AtBwNCA3vA2kdZFCTktzg77DOHe+LMcxaLnmd0KA2iX5F81KvKt19XeOLZk1Db2W3DPSVNqMhmNR4F5/os=;
X-UUID: 39d62232187746fba989c8a536ece349-20200524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 421221425; Sun, 24 May 2020 09:42:28 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 10:32:52 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 01:32:50 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 01:32:50 +0800
Message-ID: <1590341574.31286.21.camel@mtkswgap22>
Subject: Re: [PATCH v5 12/13] soc: mediatek: cmdq: add clear option in
 cmdq_pkt_wfe api
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 25 May 2020 01:32:54 +0800
In-Reply-To: <6029e0eb-70fa-825f-7fd4-f5127384bd8d@gmail.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-13-git-send-email-dennis-yc.hsieh@mediatek.com>
 <6029e0eb-70fa-825f-7fd4-f5127384bd8d@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_104301_864143_5173B90E 
X-CRM114-Status: GOOD (  18.26  )
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


On Sat, 2020-05-16 at 20:30 +0200, Matthias Brugger wrote:
> 
> On 08/03/2020 11:52, Dennis YC Hsieh wrote:
> > Add clear parameter to let client decide if
> > event should be clear to 0 after GCE receive it.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 2 +-
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 5 +++--
> >  include/linux/mailbox/mtk-cmdq-mailbox.h | 3 +--
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 5 +++--
> >  4 files changed, 8 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 7daaabc26eb1..a065b3a412cf 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -488,7 +488,7 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
> >  	if (mtk_crtc->cmdq_client) {
> >  		cmdq_handle = cmdq_pkt_create(mtk_crtc->cmdq_client, PAGE_SIZE);
> >  		cmdq_pkt_clear_event(cmdq_handle, mtk_crtc->cmdq_event);
> > -		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event);
> > +		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event, false);
> >  		mtk_crtc_ddp_config(crtc, cmdq_handle);
> >  		cmdq_pkt_finalize(cmdq_handle);
> >  		cmdq_pkt_flush_async(cmdq_handle, ddp_cmdq_cb, cmdq_handle);
> 
> This should be an independent patch

ok, I'll separate this part.


Regards,
Dennis

> 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index bb5be20fc70a..ec5637d43254 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -296,15 +296,16 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write_s_value);
> >  
> > -int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
> > +int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event, bool clear)
> >  {
> >  	struct cmdq_instruction inst = { {0} };
> > +	u32 clear_option = clear ? CMDQ_WFE_UPDATE : 0;
> >  
> >  	if (event >= CMDQ_MAX_EVENT)
> >  		return -EINVAL;
> >  
> >  	inst.op = CMDQ_CODE_WFE;
> > -	inst.value = CMDQ_WFE_OPTION;
> > +	inst.value = CMDQ_WFE_OPTION | clear_option;
> >  	inst.event = event;
> >  
> >  	return cmdq_pkt_append_command(pkt, inst);
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index 3f6bc0dfd5da..42d2a30e6a70 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -27,8 +27,7 @@
> >   * bit 16-27: update value
> >   * bit 31: 1 - update, 0 - no update
> >   */
> > -#define CMDQ_WFE_OPTION			(CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | \
> > -					CMDQ_WFE_WAIT_VALUE)
> > +#define CMDQ_WFE_OPTION			(CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE)
> >  
> >  /** cmdq event maximum */
> >  #define CMDQ_MAX_EVENT			0x3ff
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 1a6c56f3bec1..d63749440697 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -152,11 +152,12 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
> >  /**
> >   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
> >   * @pkt:	the CMDQ packet
> > - * @event:	the desired event type to "wait and CLEAR"
> > + * @event:	the desired event type to wait
> > + * @clear:	clear event or not after event arrive
> >   *
> >   * Return: 0 for success; else the error code is returned
> >   */
> > -int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
> > +int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event, bool clear);
> >  
> >  /**
> >   * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
