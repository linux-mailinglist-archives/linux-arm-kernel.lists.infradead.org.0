Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F0C1EA200
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tl6sg8qAMXSQ6UtkWW3xt0bXQEDqvXKPKba/qM1SYnc=; b=g6Z42Rv9xmi/ou
	Uuq6lDhmWLwSlSUpfIdegB6vXww/IvjZTZtWAAY+xZAViih0ZU8yGKs8SXE1jlzC8uCEgvcYMhaPK
	nL8K7/K4IQwDCAFNeHGgWdb2QZE6x5dn5n6auFLgxypVuO9OQK3yqa3opqQm2FuraAyQBcW3e425Q
	cfGuf0mbemUNVg/atT4/pA33knxlZGICfz7a3rJtoY/t0WYGJqdxScE4sLJBObzVNoRkKBuFWCFFi
	DnzEv6L0ob8dthW3pEZNR3AbNcFL9at/agmNWh3xwjU+XZ5EFSpNLYUBPSRoP2EOrpNQ2wFAUVbGP
	guUGrlmiATZRhT7jwVag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhpk-0002fU-Q7; Mon, 01 Jun 2020 10:38:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhpV-0002dP-5C; Mon, 01 Jun 2020 10:38:06 +0000
X-UUID: 46976730ff844c8c84d13c0a7b67df10-20200601
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1ubZI9bQ8AA1BT1/8Z5X+IHX0+39sOSJHMhP1+hac8k=; 
 b=JwJrvLD0tfBria8+P0LqvTUZNX2OOQUBkUk3JyVOFYTqjxX+y/VmVk1gujPtezIq5k/u/q5I+nh7ekmnCvnTupoceD/bnYfVy+Zeme6sNnE36APbCDdqODdzuxY754tv0J4CPJYG1dguVbqhpabQXWlO5jMu/fwaaBE+iFbQFYI=;
X-UUID: 46976730ff844c8c84d13c0a7b67df10-20200601
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1925492756; Mon, 01 Jun 2020 02:37:53 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 03:37:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 18:37:42 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 1 Jun 2020 18:37:41 +0800
Message-ID: <1591007863.15207.1.camel@mtksdccf07>
Subject: Re: [RFC PATCH V4 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 1 Jun 2020 18:37:43 +0800
In-Reply-To: <CAAFQd5BBfapVv_3cwGte=p=6G8QXZQP=-ciZ8NBZZeSBGrHmCA@mail.gmail.com>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-5-Jerry-Ch.chen@mediatek.com>
 <20200521182825.GA249683@chromium.org>
 <1590156658.27807.84.camel@mtksdccf07>
 <CAAFQd5DodDfWsHkhQZP-M70k9_2sUwwb4zHtWfTx5EDyEKkwow@mail.gmail.com>
 <1590755163.23156.24.camel@mtksdccf07>
 <CAAFQd5BBfapVv_3cwGte=p=6G8QXZQP=-ciZ8NBZZeSBGrHmCA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_033805_221254_CB53C65B 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU
 DRIVERS <iommu@lists.linux-foundation.org>,  Joerg  Roedel
 <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-29 at 14:59 +0200, Tomasz Figa wrote:
> On Fri, May 29, 2020 at 2:26 PM Jerry-ch Chen
> <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > I Appreciate your review comments, here's the reply.
> >
> > On Mon, 2020-05-25 at 14:24 +0200, Tomasz Figa wrote:
> > > r
> > >
> > > On Fri, May 22, 2020 at 4:11 PM Jerry-ch Chen
> > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > On Thu, 2020-05-21 at 18:28 +0000, Tomasz Figa wrote:
> > > > > Hi Jerry,
> > > > >
> > > > > On Wed, Dec 04, 2019 at 08:47:32PM +0800, Jerry-ch Chen wrote:
> [snip]
> > > Isn't still a need to clamp() width and height to min/max, though?
> > Yes, I'll add them back.
> >
> > This function will be refined as :
> >
> > static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
> >                                   u32 pixfmt)
> > {
> >         v4l2_fill_pixfmt_mp(dfmt, pixfmt, dfmt->width, dfmt->height);
> >
> >         dfmt->field = V4L2_FIELD_NONE;
> >         dfmt->colorspace = V4L2_COLORSPACE_BT2020;
> >         dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> >         dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> >         dfmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> >
> >         /* Keep user setting as possible */
> >         dfmt->width = clamp(dfmt->width,
> >                             MTK_FD_OUTPUT_MIN_WIDTH,
> >                             MTK_FD_OUTPUT_MAX_WIDTH);
> >         dfmt->height = clamp(dfmt->height,
> >                              MTK_FD_OUTPUT_MIN_HEIGHT,
> >                              MTK_FD_OUTPUT_MAX_HEIGHT);
> 
> Note that this would cause the other fields of dfmt to be inconsistent
> with width and height. The correct way to do this would be to first
> clamp and then call v4l2_fill_pixfmt_mp().
> 
Ok, I will fix it.

Thanks and Best regards,
Jerry
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
