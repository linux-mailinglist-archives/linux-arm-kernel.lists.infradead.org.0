Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC6810F8FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOc/4Cr9sKsUdHfxR8dCCyU2DVo4NFN4UHV8OKFOshw=; b=CdnkLIjsIJWjuq
	tWBwu4Jc0mpF+d6V9jA0rEGnfojVau76Y14I94t98ov9Peb+ZHM5DBxQA8ybVWEtXBZVRPY/SLHQB
	gd3Nf2jVXGBZ1YXowo8FUkbZhxDDLwClHtktNgCn7CWs1gVXDpPGyer6dX3tEzG+fqsZOSXg/tK0X
	EyzPWF/7gt8rr1kr3+H4FPQ3UuJ/nYviteguiUm9Stg7NF0ndCLLk2e5h+MgK+5CjB8/fm1KtiE6m
	jZqntvmfQarAgcUsxHjHFqzGQASturb8e5LW2OPUkDLRJlsExBwF9kPgK1k8lTSgCTjb4+nwD4f34
	ZshPn5pYnWFFI272Juxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2m8-0002vr-Bq; Tue, 03 Dec 2019 07:39:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2jQ-0000Ts-Ni; Tue, 03 Dec 2019 07:36:26 +0000
X-UUID: a59a43ba20974e82b92276094b5d109d-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=RS1SOJ53qB4oVEPa7QVaDgVYJ6ii69MjHwS2W7BD1SU=; 
 b=egidPDKUQ8DvqY5vSr6pHFia0xtAL7GpEuhuTbxkJEGzM/aaPNgQXEUuBdpzKbu+sX5qdoOBhc6W+xXjKEj1gnUwhRgBP5xiUhPJjgDb7CTYZNiV8So2WACcO8K/k30F9bjzOurVqXG05JsEWw5Ljc8/GYvESGOhf3bGsQqL1+Y=;
X-UUID: a59a43ba20974e82b92276094b5d109d-20191202
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 939443402; Mon, 02 Dec 2019 23:36:15 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 23:36:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 15:36:04 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 15:35:51 +0800
Message-ID: <1575358572.22859.16.camel@mtksdccf07>
Subject: Re: [RFC PATCH V3 3/3] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 3 Dec 2019 15:36:12 +0800
In-Reply-To: <CAAFQd5D-F1C4RyVeTzX=z72h6x0P5Gyb2X0EsH0YRQVAP6hGmQ@mail.gmail.com>
References: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
 <20190906101125.3784-4-Jerry-Ch.chen@mediatek.com>
 <1571109375.3706.40.camel@mtksdccf07> <20191025035211.GA67000@chromium.org>
 <1574237450.20087.17.camel@mtksdccf07>
 <CAAFQd5DPErhL0_1f6BzDMMOVhxNfJdctBsK=mcBP6oNcmw-r=w@mail.gmail.com>
 <1575046535.22859.12.camel@mtksdccf07>
 <CAAFQd5D-F1C4RyVeTzX=z72h6x0P5Gyb2X0EsH0YRQVAP6hGmQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233624_888309_7734E58F 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, srv_heupstream <srv_heupstream@mediatek.com>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>,
 Po-Yang Huang =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?=
 <po-yang.huang@mediatek.com>,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>, "lkml@metux.net" <lkml@metux.net>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Mon, 2019-12-02 at 18:48 +0900, Tomasz Figa wrote:
> On Sat, Nov 30, 2019 at 1:55 AM Jerry-ch Chen
> <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Wed, 2019-11-20 at 18:28 +0900, Tomasz Figa wrote:
> > > On Wed, Nov 20, 2019 at 5:11 PM Jerry-ch Chen
> > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > On Fri, 2019-10-25 at 11:52 +0800, Tomasz Figa wrote:
> > > > > On Tue, Oct 15, 2019 at 11:16:15AM +0800, Jerry-ch Chen wrote:
> > > > > > Hi Tomasz,
> > > > > >
> > > > > > On Fri, 2019-09-06 at 18:11 +0800, Jerry-ch Chen wrote:
> > > > > > > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > > > > > >
> > > > > > > This patch adds the driver of Face Detection (FD) unit in
> > > > > > > Mediatek camera system, providing face detection function.
> > > > > > >
> > > > > > > The mtk-isp directory will contain drivers for multiple IP
> > > > > > > blocks found in Mediatek ISP system. It will include ISP Pass 1
> > > > > > > driver (CAM), sensor interface driver, DIP driver and face
> > > > > > > detection driver.
> > > > > > >
> > > > > > > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > > > > > > ---
> > > > > > >  drivers/media/platform/Kconfig                |    2 +
> > > > > > >  drivers/media/platform/Makefile               |    2 +
> > > > > > >  drivers/media/platform/mtk-isp/fd/Kconfig     |   19 +
> > > > > > >  drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
> > > > > > >  drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  148 ++
> > > > > > >  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1219 +++++++++++++++++
> > > > > > >  include/uapi/linux/mtk-fd-v4l2-controls.h     |   69 +
> > > > > > >  include/uapi/linux/v4l2-controls.h            |    4 +
> > > > > > >  8 files changed, 1468 insertions(+)
> > > > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
> > > > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
> > > > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > > > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> > > > > > >  create mode 100644 include/uapi/linux/mtk-fd-v4l2-controls.h
> > > > > > >
> > > > >
> > > > > [snip]
[snip]
> > > > > [snip]
> > > > >
> > > > > > > +/* Set the face angle and directions to be detected */
> > > > > > > +#define V4L2_CID_MTK_FD_DETECT_POSE              (V4L2_CID_USER_MTK_FD_BASE + 1)
> > > > > > > +
> > > > > > > +/* Set image widths for an input image to be scaled down for face detection */
> > > > > > > +#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH     (V4L2_CID_USER_MTK_FD_BASE + 2)
> > > > > > > +
> > > > > > > +/* Set image heights for an input image to be scaled down for face detection */
> > > > > > > +#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT    (V4L2_CID_USER_MTK_FD_BASE + 3)
> > > > > > > +
> > > > > > > +/* Set the length of scale down size array */
> > > > > > > +#define V4L2_CID_MTK_FD_SCALE_IMG_NUM            (V4L2_CID_USER_MTK_FD_BASE + 4)
> > > > > > > +
> > > > > > > +/* Set the detection speed, usually reducing accuracy. */
> > > > > > > +#define V4L2_CID_MTK_FD_DETECT_SPEED             (V4L2_CID_USER_MTK_FD_BASE + 5)
> > > > > > > +
> > > > > > > +/* Select the detection model or algorithm to be used. */
> > > > > > > +#define V4L2_CID_MTK_FD_DETECTION_MODEL          (V4L2_CID_USER_MTK_FD_BASE + 6)
> > > > > > > +
> > > > > > > +/* We reserve 16 controls for this driver. */
> > > > > > > +#define V4L2_CID_MTK_FD_MAX                      16
> > > > > > > +
> > > > > >
> > > > > > For these control IDs, I think the following should be remained as chip
> > > > > > specific controls.
> > > > > > V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH,
> > > > > > V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT and V4L2_CID_MTK_FD_SCALE_IMG_NUM
> > > > > >
> > > > > > Hope there would be standardizing face detection api that cover the rest
> > > > > > controls: V4L2_CID_MTK_FD_DETECT_POSE, V4L2_CID_MTK_FD_DETECT_SPEED and
> > > > > > V4L2_CID_MTK_FD_DETECTION_MODEL
> > > > > >
> > > > > > Would you have any suggestions on how to propose the standard face
> > > > > > detection apis?
> > > > > >
> > > > >
> > > > > Given no follow up feedback from the community, I think we can keep them
> > > > > as driver-specific, but should make sure that they have some reasonable
> > > > > default values in case an application doesn't recognize them.
> > > > >
> > > > > Best regards,
> > > > > Tomasz
> > > > >
> > > > Should I keep the file "mtk-fd-v4l2-controls.h" which defines the
> > > > control ids under the folder "/include/uapi/linux"?
> > >
> > > We should define the CID base for the FD driver in v4l2-controls.h,
> > > but the controls themselves should be only defined inside the driver.
> > >
> > > For example:
> > > https://elixir.bootlin.com/linux/v5.4-rc8/source/include/uapi/linux/v4l2-controls.h#L178
> > > https://elixir.bootlin.com/linux/v5.4-rc8/source/drivers/media/i2c/adv7180.c#L181
> > >
> > > Best regards,
> > > Tomasz
> >
> > Appreciate for providing the example,
> > Would it be fine for me to put the private CID in the mtk_fd.h(which is
> > similar to before...) or follow the example to define inside
> > mtk_fd_40.c??
> >
> > The next version is almost ready, maybe I can send it when I ready in a
> > few days?
> 
> Since mtk_fd_40.c is the only place the definitions from mtk_fd.h are
> used, I'd suggest just moving all the contents to the .c file.
> 
> Best regards,
> Tomasz
Done,

Thanks and best regards,
Jerry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
