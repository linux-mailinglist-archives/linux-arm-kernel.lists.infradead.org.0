Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3068AAA58B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rqwWd7Ry+bTk8gQ2Kif6I9es1ZLmJrppHbEPjrGUEI=; b=CQGLnCjuoqqHwM
	unkCXhO1FJAo+11hiLlBlUyf1WAJV80g/O/Tu5GCtt655rFBB5huHYrjMS02f+hxe2GiwQ8EBcZlw
	ipFrGxugMPur7nlhEXUHTMoOGbsiVRaivTf5dRHxcHB7H1Pf3j78Jxx17J6EOD8xzJni92YdA3cNF
	r9CFBunGnhhtsdKjyuTK5BvVbqb/7huMuTN5/b0T0+Wbe+VM9ERVgXy0q3h32I9nAP5O0ibZ8SYlH
	zQZAUZeV7DdteacCk7k0EkY4+8bIAE5UbhLvtfRf218oiIOaV2OcjGi+Ucco2Y0uEbOuFf/36/T4C
	5GuM/WceQ0J5EssLD2NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sWx-0001jy-Eh; Thu, 05 Sep 2019 14:14:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sWm-0001jV-8a; Thu, 05 Sep 2019 14:14:25 +0000
X-UUID: 20f0eab654914ced890d55d069271c50-20190905
X-UUID: 20f0eab654914ced890d55d069271c50-20190905
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 495146118; Thu, 05 Sep 2019 06:14:20 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 07:14:18 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 22:14:10 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 22:14:10 +0800
Message-ID: <1567692852.22453.55.camel@mtksdccf07>
Subject: Re: [RFC PATCH V2 3/4] media: platform: Add Mediatek FD driver KConfig
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Thu, 5 Sep 2019 22:14:12 +0800
In-Reply-To: <20190905123054.GL5035@pendragon.ideasonboard.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-4-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190905123054.GL5035@pendragon.ideasonboard.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_071424_304272_BBF22E57 
X-CRM114-Status: GOOD (  18.94  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>, "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, srv_heupstream <srv_heupstream@mediatek.com>,
 Po-Yang Huang =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?=
 <po-yang.huang@mediatek.com>, "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Thu, 2019-09-05 at 20:30 +0800, Laurent Pinchart wrote:
> Hi Jerry,
> 
> Thank you for the patch.
> 
> On Tue, Jul 09, 2019 at 04:41:11PM +0800, Jerry-ch Chen wrote:
> > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > 
> > This patch adds KConfig for Mediatek Face Detection driver (FD).
> > FD is embedded in Mediatek SoCs. It can provide hardware
> > accelerated face detection function.
> > 
> > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> You can squash this patch with 4/4, there's no need to keep it separate.
> 

I appreciate your comments,

Ok, I will squash it.

> > ---
> >  drivers/media/platform/Kconfig            |  2 ++
> >  drivers/media/platform/mtk-isp/fd/Kconfig | 17 +++++++++++++++++
> >  2 files changed, 19 insertions(+)
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
> > 
> > diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
> > index a505e9f..ae99258e 100644
> > --- a/drivers/media/platform/Kconfig
> > +++ b/drivers/media/platform/Kconfig
> > @@ -32,6 +32,8 @@ source "drivers/media/platform/davinci/Kconfig"
> >  
> >  source "drivers/media/platform/omap/Kconfig"
> >  
> > +source "drivers/media/platform/mtk-isp/fd/Kconfig"
> > +
> >  config VIDEO_ASPEED
> >  	tristate "Aspeed AST2400 and AST2500 Video Engine driver"
> >  	depends on VIDEO_V4L2
> > diff --git a/drivers/media/platform/mtk-isp/fd/Kconfig b/drivers/media/platform/mtk-isp/fd/Kconfig
> > new file mode 100644
> > index 0000000..0c5eaf0
> > --- /dev/null
> > +++ b/drivers/media/platform/mtk-isp/fd/Kconfig
> > @@ -0,0 +1,17 @@
> > +config VIDEO_MEDIATEK_FD
> > +	bool "Mediatek face detection processing function"
> > +	select DMA_SHARED_BUFFER
> > +	select VIDEOBUF2_DMA_CONTIG
> > +	select VIDEOBUF2_CORE
> > +	select VIDEOBUF2_V4L2
> > +	select VIDEOBUF2_MEMOPS
> > +	select VIDEOBUF2_VMALLOC
> 
> Do you need both VIDEOBUF2_DMA_CONTIG and VIDEOBUF2_VMALLOC ? The driver
> doesn't seem to make use of VIDEOBUF2_VMALLOC.
> 

No, I should remove it. and also would like to update as following:

        depends on VIDEO_V4L2
        depends on ARCH_MEDIATEK || COMPILE_TEST
        select VIDEOBUF2_DMA_CONTIG
        select VIDEOBUF2_CORE
        select VIDEOBUF2_V4L2
        select VIDEOBUF2_MEMOPS
        select MEDIA_CONTROLLER
        select MTK_SCP

> > +	select MEDIA_CONTROLLER
> > +
> > +	default n
> > +	help
> > +		Support the Face Detectioin (FD) feature.
> 
> s/Detectioin/Detection/
> 
Typo fixed.

> Maybe "... feature found in the Mediatek <list of SoCs> SoCs." ?

I will refine as:
Support the Face Detection (FD) feature in the Mediatek mt8183 Soc.

Thanks and best regards,
Jerry
> 
> > +
> > +		FD driver is a V4L2 memory-to-memory device driver which
> > +		provides hardware accelerated face detection function,
> > +		it can detect different sizes of faces in a raw image.
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
