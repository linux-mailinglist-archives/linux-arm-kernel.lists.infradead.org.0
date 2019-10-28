Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B1BE6AC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 03:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nE5C1mHsp3bBRjF/vXVwx/GOdqaz5nzXf5cSbgRwEJ0=; b=DNBNF+MPHwBL62
	QlEmMEuRFtp3qr4rfDVQrdGXGOGEsMQ0MoHXi9ItbNwJUdEJ40uIdkBaRIq7HnCRMcyFBdyzO+0V2
	m+n9JIGKyjTsfburtwT+o5cJYwQEfS8J0Cf16YkoLJ0Bk5SqsLYjQD8uRmdxImpDesvcJB/1cH8Sv
	MGl7I6QHcfmczt9jIXwReGel93a547E6Z38IKwELARFNo6/JN/G2aFERI5L0T3UueQCmqmUudRhZR
	KpBXu2G84d8CwqiaquD5E1HdzqWHBZEkGVJQvkWpPFcugpMVnnp5YPt7TsPp4QOev4R73j0eO6dMp
	ejjRmym3sCr45gYWtBUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOuk0-00026Y-O0; Mon, 28 Oct 2019 02:26:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOujl-00025I-Vw; Mon, 28 Oct 2019 02:26:32 +0000
X-UUID: f1e6cf369ae649a4aeb1076f2074b1f6-20191027
X-UUID: f1e6cf369ae649a4aeb1076f2074b1f6-20191027
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 281674628; Sun, 27 Oct 2019 18:26:35 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 27 Oct 2019 19:25:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 10:25:58 +0800
Received: from [10.17.3.153] (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 28 Oct 2019 10:25:58 +0800
Message-ID: <1572229558.27439.6.camel@mhfsdcap03>
Subject: Re: [PATCH v4 5/5] media: platform: Add jpeg dec/enc feature
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 28 Oct 2019 10:25:58 +0800
In-Reply-To: <CAAFQd5DUF90daBAe96Vu46z9HD43AYG+9rK-_r_aWYey8GxpmQ@mail.gmail.com>
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
 <20191017084033.28299-6-xia.jiang@mediatek.com>
 <20191023103945.GA41089@chromium.org> <1571906317.6254.64.camel@mhfsdcap03>
 <CAAFQd5DUF90daBAe96Vu46z9HD43AYG+9rK-_r_aWYey8GxpmQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_192630_034391_B99550F8 
X-CRM114-Status: GOOD (  30.02  )
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <rick.chang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-24 at 18:23 +0900, Tomasz Figa wrote:
> On Thu, Oct 24, 2019 at 5:38 PM Xia Jiang <xia.jiang@mediatek.com> wrote:
> >
> > On Wed, 2019-10-23 at 19:39 +0900, Tomasz Figa wrote:
> > > Hi Xia,
> > >
> > > On Thu, Oct 17, 2019 at 04:40:38PM +0800, Xia Jiang wrote:
> > > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > > decode and encode have great similarities with function operation.
> > > >
> > > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > > ---
> > > > v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,
> > > >     one for decoder.
> > > >     split mtk_jpeg_set_default_params() to two functions, one for
> > > >     encoder, one for decoder.
> > > >     add cropping support for encoder in g/s_selection ioctls.
> > > >     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.
> > > >     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
> > > >     specification.
> > > >     move width shifting operation behind aligning operation in
> > > >     mtk_jpeg_try_enc_fmt_mplane() for bug fix.
> > > >     fix user abuseing data_offset issue for DMABUF in
> > > >     mtk_jpeg_set_enc_src().
> > > >     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT
> > > >                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from
> > > >                         'int' type to 'unsigned int' type.
> > > >                         fix msleadingly indented of 'else'.
> > > >
> > > > v3: delete Change-Id.
> > > >     only test once handler->error after the last v4l2_ctrl_new_std().
> > > >     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.
> > > >
> > > > v2: fix compliance test fail, check created buffer size in driver.
> > > > ---
> > > >  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 731 +++++++++++++++---
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
> > > >  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
> > > >  7 files changed, 1004 insertions(+), 146 deletions(-)
> > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
> > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
> > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> > > >
> > >
> > > First of all, thanks for the patch!
> > >
> > > Please check my comments below.
> > >
> > > My general feeling about this code is that the encoder hardware block is
> > > completely orthogonal from the decoder block and there is very little code
> > > reuse from the original decoder driver.
> > >
> > > Moreover, a lot of existing code now needs if (decoder) { ... } else {... }
> > > segments, which complicates the code.
> > >
> > > Would it perhaps make sense to instead create a separate mtk-jpeg-enc
> > > driver?
> > >
> > Dear Tomasz,
> >
> > Thanks for your comments.
> >
> > My reasons about the architecture of jpeg enc driver are as follows:
> >
> > The first internal design and realization of jpeg enc driver was a
> > separate driver, but found that mtk_jpeg_core.c and mtk_jpeg_enc_core.c
> > have lots of reuse.Because that  the core.c mainly contains realization
> > of v4L2 ioctl functions and some logic which are high similarity between
> > encoder and decoder.
> >
> > The jpeg encoder and decoder are two independent hardwares exactly, so
> > the code about hardware specification(register setting) are
> > separated(mtk_jpeg_enc_hw.c and mtk_jpeg_dec_hw.c).
> >
> > As for 17 existing code segments contain if(decoder){} else {}, they are
> > not complicated IMHO.The complicated(multilayer nested) functions are
> > separated in V4 version as Hans recommendation.
> >
> > By the way,the upstreamed module s5p-jpeg
> > (https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/s5p-jpeg/jpeg-core.c#L1998) also use encoder and decoder mode in the common core.c, but their encoder and decoder are the same hardware.Maybe our jpeg enc and dec are designed into one hardware in the future.In that case the current architecture is more compatible.
> >
> > So I prefer the current design.
> >
> 
> Would you be able to give some numbers to show the code reuse to
> justify using the same driver? From my observation, a new driver would
> result in a significantly cleaner code. If there is a further hardware
> architecture change, that would likely require another driver, because
> it wouldn't be compatible with existing programming model anyway.
> 
> Regardless of that, if we end up with reusing the same driver, I'd
> like you to fix the issues existing in the current base before adding
> the encoder functionality.
Dear Tomasz,
I've counted about 1000 lines of code that can be reused.The reused code
is 75 percent of the original code.

If you agree to reuse the same driver,I will fix the issues existing in
the current driver.

Best Regards,
Xia Jiang
> 
> Best regards,
> Tomasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
