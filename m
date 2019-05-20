Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9126230EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dDkZxmNt1EC3CGoA+FHeAoJoINgv9PdvQ65rjpViXA=; b=rGdpMLCEgnB2gZ
	oae14mt0qEoBaJYU2kAGezE6oCX8Hr6zg8VtM2RHkDa0ayiUzis1QqZzmJyhUdPu0qiWJdAkOp57B
	s0zxnVhoY2DxclJ1ht5/yKMNwbGKcwI+c4VjclUlpD4FNKlmSLJPzohSppDkeSEM26wvYWevuBrKm
	Ze+T5oOWJqU20/roJwIEbGJoiOR/JKv4T4sMZjDjajRXm7KBMzkrn21YE1yjp4H4S2nnfNp+oJe8f
	2d7Iuolq31EdXN2V9yre1mNb1Mr96N4N4MrrZZPPoiQOFUsOm7JPiNwkfiQlOPEzMo4SwSBBOck1J
	xUlT6Y7BzN7WGQYPMAOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSf9t-0000kc-Gj; Mon, 20 May 2019 10:04:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSf9m-0000jy-J7; Mon, 20 May 2019 10:04:36 +0000
X-UUID: 3efc854043394a6ea0e98f7994aad57f-20190520
X-UUID: 3efc854043394a6ea0e98f7994aad57f-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1499576345; Mon, 20 May 2019 02:04:29 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 03:04:27 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 18:04:13 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 18:04:12 +0800
Message-ID: <1558346653.3318.18.camel@mtksdccf07>
Subject: Re: [RFC PATCH V1 1/6] dt-bindings: mt8183: Add binding for FD
 shared memory
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Mon, 20 May 2019 18:04:13 +0800
In-Reply-To: <20190501224512.GA4287@bogus>
References: <20190423104505.38778-1-Jerry-Ch.chen@mediatek.com>
 <20190423104505.38778-2-Jerry-Ch.chen@mediatek.com>
 <20190501224512.GA4287@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C4BCE08F12A91F1FC96390B1BA7BC941E6507BB7E8BC193F02F220A7615273562000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_030434_636554_C245F70D 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Holmes Chiou =?UTF-8?Q?=28=E9=82=B1=E6=8C=BA=29?= <holmes.chiou@mediatek.com>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
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

Hi Rob,

Thank you for your comments.

On Thu, 2019-05-02 at 06:45 +0800, Rob Herring wrote:
> On Tue, Apr 23, 2019 at 06:45:00PM +0800, Jerry-ch Chen wrote:
> > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > 
> > This patch adds the binding for describing the shared memory
> > used to exchange meta data between the co-processor and Face
> > Detection (FD) unit of the camera system on Mediatek SoCs.
> > 
> > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > ---
> >  .../mediatek,reserve-memory-fd_smem.txt       | 44 +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt
> > new file mode 100644
> > index 000000000000..52ae5071e238
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt
> > @@ -0,0 +1,44 @@
> > +Mediatek FD Shared Memory binding
> > +
> > +This binding describes the shared memory, which serves the purpose of
> > +describing the shared memory region used to exchange data between Face
> > +Detection hardware (FD) and co-processor in Mediatek SoCs.
> > +
> > +The co-processor doesn't have the iommu so we need to use the physical
> > +address to access the shared buffer in the firmware.
> > +
> > +The Face Detection hardware (FD) can access memory through mt8183 IOMMU so
> > +it can use dma address to access the memory region.
> > +(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
> > +
> > +
> > +Required properties:
> > +
> > +- compatible: must be "mediatek,reserve-memory-fd_smem"
> > +
> > +- reg: required for static allocation (see reserved-memory.txt for
> > +  the detailed usage)
> > +
> > +- alloc-range: required for dynamic allocation. The range must
> > +  between 0x00000400 and 0x100000000 due to the co-processer's
> > +  addressing limitation
> > +
> > +- size: required for dynamic allocation. The unit is bytes.
> > +  for Face Detection Unit, you need 1 MB at least.
> 
> What's the most?
> 

For this part, we would like to revise as following:

alloc-range: required for dynamic allocation. The range must between
0x40000000 and 0x100000000 due to the co-processor's addressing
limitation

size: required for dynamic allocation. The unit is bytes.
for Face Detection Unit, you need 518KB.

> I don't think you really need reserved memory here if you don't need a 
> fixed address. The size is not that big that a contiguous allocation 
> shouldn't be a problem (though with IOMMU you don't even need that). 
> 'dma-ranges' can be used to set the kernel's dma mask and ensure a 
> range below 0x10000000.
> 

FD driver might be able to use the FD memory pool inside the scp
reserved memory instead of declaring reserved memory here.
would you have any suggestion if so?

Sincerely,
	Jerry


> Rob



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
