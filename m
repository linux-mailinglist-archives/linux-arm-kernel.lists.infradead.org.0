Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9709688C4B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 18:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69reQ22n++Bvlcjg1FufNlZDxEFiWxIcoPmoprH733E=; b=hTMkcSg0GrGtWV
	b2y6nRw4BCh8ry0o96MtO7rvou71GinVpfe5WeObTzXXxSp2MwvjhFY0BGa6Ay0atT26Y9LspZGOQ
	7e9304+jxiNKzBo7btPPTZ/d6u+oLhpSxr+TqW7ISCwa2HPeGl42vXetPltcx1SE+vG0jn/Ydk6qd
	QlUB7C5FGv0Te+03C7UPlmmgRRADRVPbNaU9N7dSfbabge96tP2Cz7q0SN9EvSZSzEM/YKGzQs30K
	E0oh22cDTdR8LVc9r+C3OYArb4YeVx8/v2poG2/0W6yHMjJuolTdWTUjUk4dQc40AEf2AcDAEz7xj
	LXLddFrKP0p00z1ae5vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUNs-00066e-Ty; Sat, 10 Aug 2019 16:38:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUNf-00066H-Ku; Sat, 10 Aug 2019 16:38:13 +0000
X-UUID: 502423d9bda3484b907f66e685f52837-20190810
X-UUID: 502423d9bda3484b907f66e685f52837-20190810
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 95557214; Sat, 10 Aug 2019 08:38:07 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 10 Aug 2019 09:38:06 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 11 Aug 2019 00:38:03 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 11 Aug 2019 00:38:01 +0800
Message-ID: <1565455081.19079.36.camel@mhfsdcap03>
Subject: Re: [PATCH v11 09/12] soc: mediatek: cmdq: define the instruction
 struct
From: houlong wei <houlong.wei@mediatek.com>
To: Bibby Hsieh =?UTF-8?Q?=28=E8=AC=9D=E6=BF=9F=E9=81=A0=29?=
 <Bibby.Hsieh@mediatek.com>
Date: Sun, 11 Aug 2019 00:38:01 +0800
In-Reply-To: <1565453520.19079.17.camel@mhfsdcap03>
References: <20190729070106.9332-1-bibby.hsieh@mediatek.com>
 <20190729070106.9332-10-bibby.hsieh@mediatek.com>
 <1565453520.19079.17.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8232FFF279301A39457DCF48E56192120E1B5723579B6362CE045B6813A8FDA22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_093811_694490_36E9A589 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, srv_heupstream <srv_heupstream@mediatek.com>,
 Daoyuan Huang =?UTF-8?Q?=28=E9=BB=83=E9=81=93=E5=8E=9F=29?=
 <Daoyuan.Huang@mediatek.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Daniel
 Kurtz <djkurtz@chromium.org>, houlong.wei@mediatek.com, YT
 Shen =?UTF-8?Q?=28=E6=B2=88=E5=B2=B3=E9=9C=86=29?= <Yt.Shen@mediatek.com>,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Ginny Chen =?UTF-8?Q?=28=E9=99=B3=E6=B2=BB=E5=82=91=29?=
 <ginny.chen@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang =?UTF-8?Q?=28=E5=BC=A0=E5=8A=A0=E5=B9=BF=29?=
 <Jiaguang.Zhang@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Dennis-YC Hsieh =?UTF-8?Q?=28=E8=AC=9D=E5=AE=87=E5=93=B2=29?=
 <Dennis-YC.Hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-08-11 at 00:12 +0800, houlong wei wrote:
> Hi Bibby, I have inline comment in function cmdq_pkt_write_mask().
> 
> On Mon, 2019-07-29 at 15:01 +0800, Bibby Hsieh wrote:
> > Define an instruction structure for gce driver to append command.
> > This structure can make the client's code more readability.
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 103 +++++++++++++++--------
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |   2 +
> >  2 files changed, 72 insertions(+), 33 deletions(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 7aa0517ff2f3..0886c4967ca4 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -9,12 +9,24 @@
> >  #include <linux/mailbox_controller.h>
> >  #include <linux/soc/mediatek/mtk-cmdq.h>
[...]
> >  
> >  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  			u16 offset, u32 value, u32 mask)
> >  {
> > +	struct cmdq_instruction *inst;
> >  	u32 offset_mask = offset;
> > -	int err = 0;
> >  
> >  	if (mask != 0xffffffff) {
> > -		err = cmdq_pkt_append_command(pkt, CMDQ_CODE_MASK, 0, ~mask);
> > +		inst = cmdq_pkt_append_command(pkt);
> > +		if (!inst)
> > +			return -ENOMEM;
> > +
> > +		inst->op = CMDQ_CODE_MASK;
> > +		inst->mask = ~mask;

> >  		offset_mask |= CMDQ_WRITE_ENABLE_MASK;
> >  	}
> > -	err |= cmdq_pkt_write(pkt, value, subsys, offset_mask);
> >  
> > -	return err;
> > +	return cmdq_pkt_write(pkt, subsys, offset_mask, value);

We need add a type conversion here, (u8)offset_mask, for your new
function type. Er... it's better to remove local variable 'offset_mask'
and replace it with 'offset'.

> >  }
[...]



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
