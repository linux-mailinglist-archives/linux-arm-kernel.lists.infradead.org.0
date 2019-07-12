Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D70C667BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAYV1/vrbQ2n7raQr/WCZSLQ3bavVvEjt+oHwnd/kc4=; b=oVtcsjO5poDGUV
	psLy3K+QGojb8m/gnabKaYrPup2E6JSQdCwUwnLTYkGDqZuAiu6lH0KQgPXA9HB/5xjMmJA8B/EWB
	2xVr6bbFpMohBW7Fm8dUZOldukygj43t1C7JUNtiplXB9gaAY1i8hhH7DZQjQ3JYDo8Z9mbzBWTSv
	N08TkaRitaLhoj8AsFkVsq0dTjM78/8/fOtoqE5AiaiBNumyqTLD8cdtT1n3dwg7hcs1Ut1DOGEjr
	nZS5sbn2BqzkD2nOow9zGVn/MUTJbuLCtAHN24ra+11f/TOSh7uErli4lOOTvJeapWlD1giLpyiKL
	TYmadXK8YCD60eePQEBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpuf-00032L-5P; Fri, 12 Jul 2019 07:24:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpuR-00031e-22; Fri, 12 Jul 2019 07:24:00 +0000
X-UUID: b5d97d5d317e497db47dd0e62f316301-20190711
X-UUID: b5d97d5d317e497db47dd0e62f316301-20190711
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 567170698; Thu, 11 Jul 2019 23:23:54 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 00:23:52 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs08n1.mediatek.inc
 (172.21.101.55) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 12 Jul 2019 15:23:38 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 12 Jul 2019 15:23:38 +0800
Message-ID: <1562916217.29653.4.camel@mhfsdcap03>
Subject: Re: [PATCH] [media] media: mtk-mdp: fix reference count on old
 device tree
From: houlong wei <houlong.wei@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 12 Jul 2019 15:23:37 +0800
In-Reply-To: <e4d178ae-f43e-21d0-b0ab-78cc2ac71e7e@gmail.com>
References: <20190621113250.4946-1-matthias.bgg@gmail.com>
 <e4d178ae-f43e-21d0-b0ab-78cc2ac71e7e@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_002359_102293_12799EA1 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Andrew-CT Chen =?UTF-8?Q?=28=E9=99=B3=E6=99=BA=E8=BF=AA=29?=
 <Andrew-CT.Chen@mediatek.com>,
 Minghsiu Tsai =?UTF-8?Q?=28=E8=94=A1=E6=98=8E=E4=BF=AE=29?=
 <Minghsiu.Tsai@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "djkurtz@chromium.org" <djkurtz@chromium.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 2019-07-08 at 17:06 +0800, Matthias Brugger wrote:
> 
> On 21/06/2019 13:32, Matthias Brugger wrote:
> > of_get_next_child() increments the reference count of the returning
> > device_node. Decrement it in the check if we are using the old or the
> > new DTB.
> > 
> > Fixes: ba1f1f70c2c0 ("[media] media: mtk-mdp: Fix mdp device tree")
> > Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> 
> Any comments on that?
> 

Hi Matthias,
Thanks for fixing the bug. Sorry to reply late~

Acked-by: Houlong Wei <houlong.wei@mediatek.com>


> > ---
> >  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> > index bbb24fb95b95..bafe53c5d54a 100644
> > --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> > +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> > @@ -118,7 +118,9 @@ static int mtk_mdp_probe(struct platform_device *pdev)
> >  	mutex_init(&mdp->vpulock);
> >  
> >  	/* Old dts had the components as child nodes */
> > -	if (of_get_next_child(dev->of_node, NULL)) {
> > +	parent = of_get_next_child(dev->of_node, NULL);
> > +	if (parent) {
> > +		of_node_put(parent);
> >  		parent = dev->of_node;
> >  		dev_warn(dev, "device tree is out of date\n");
> >  	} else {
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
