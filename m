Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE30326B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 04:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLifhtJPsCKKcz9gGmX5vQLcm0rod5UWeYYnupcmfzI=; b=dcm5wzaoYN1xo7
	CgvdPCwGN0A4CXXX3gCuEd7xjj1/70oMJw7G5y8tRQ6073u1zuqt6QzySAgxfHrY+X57KVYMH0Qp0
	C7CjoKuCZi0ooB0EhVO6T534k++D7Mla5+38q5qEBt31W3fX4zFgeytPjb/4g6ipBCoTfHNXh2yWB
	n/E80322rAj3UzzO76Qx9rCOdL7U4+rgWfFr+3n/FmNb/tl8CuOpGYKXKoNjW0ZXDKUhx50RyVkaT
	TRE9D89SYm6To2P6ejgDcjNzjOIla/zX2mFXwLXCcFbGIdrTplf/+zZ0qFAk/9UwnXgYyebEN8TEQ
	NDDncWhTFgHPG+sGqUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXct1-0003cv-Es; Mon, 03 Jun 2019 02:39:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcst-0003bk-Jv; Mon, 03 Jun 2019 02:39:41 +0000
X-UUID: b1fca94f8a5e4fb9b4b56963448b73a4-20190602
X-UUID: b1fca94f8a5e4fb9b4b56963448b73a4-20190602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1353427873; Sun, 02 Jun 2019 18:39:36 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 19:39:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 10:39:33 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 10:39:33 +0800
Message-ID: <1559529573.6663.12.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/3] soc: mediatek: add SMC fid table for SIP interface
From: Neal Liu <neal.liu@mediatek.com>
To: Sean Wang <sean.wang@kernel.org>
Date: Mon, 3 Jun 2019 10:39:33 +0800
In-Reply-To: <CAGp9LzpkhDhSHL=go3fvzn2Oh8DrsW8F=1YKP4ne9TDvWQVq6Q@mail.gmail.com>
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
 <1558946326-13630-2-git-send-email-neal.liu@mediatek.com>
 <CAGp9LzpkhDhSHL=go3fvzn2Oh8DrsW8F=1YKP4ne9TDvWQVq6Q@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_193939_658709_031C6663 
X-CRM114-Status: GOOD (  17.83  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,


On Fri, 2019-05-31 at 06:50 +0800, Sean Wang wrote:
> Hi Neal,
> 
> On Mon, May 27, 2019 at 1:39 AM Neal Liu <neal.liu@mediatek.com> wrote:
> >
> > 1. Add a header file to provide SIP interface to ARM Trusted
> > Firmware(ATF)
> > 2. Add hwrng SMC fid
> >
> > Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> > ---
> >  include/linux/soc/mediatek/mtk_sip_svc.h |   51 ++++++++++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >  create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h
> >
> > diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
> > new file mode 100644
> > index 0000000..f65d403
> > --- /dev/null
> > +++ b/include/linux/soc/mediatek/mtk_sip_svc.h
> > @@ -0,0 +1,51 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2019 MediaTek Inc.
> > + */
> > +
> > +#ifndef _MTK_SECURE_API_H_
> > +#define _MTK_SECURE_API_H_
> > +
> > +#include <linux/kernel.h>
> > +
> > +/* Error Code */
> > +#define SIP_SVC_E_SUCCESS                      0
> > +#define SIP_SVC_E_NOT_SUPPORTED                        -1
> > +#define SIP_SVC_E_INVALID_PARAMS               -2
> > +#define SIP_SVC_E_INVALID_RANGE                        -3
> > +#define SIP_SVC_E_PERMISSION_DENY              -4
> > +
> > +#ifdef CONFIG_ARM64
> > +#define MTK_SIP_SMC_AARCH_BIT                  0x40000000
> 
> #define MTK_SIP_SMC_AARCH_BIT                  BIT(30)
> 
> > +#else
> > +#define MTK_SIP_SMC_AARCH_BIT                  0x00000000
> 
> #define MTK_SIP_SMC_AARCH_BIT                  0
> 
> > +#endif
> > +
> > +/*******************************************************************************
> > + * Defines for Mediatek runtime services func ids
> > + ******************************************************************************/
> 
> It would be good if remove the trivial and below all unused comments.

Okay, I'll keep the necessary parts, thanks

> 
> > +
> > +/* Debug feature and ATF related SMC call */
> > +
> > +/* CPU operations related SMC call */
> > +
> > +/* SPM related SMC call */
> > +
> > +/* Low power related SMC call */
> > +
> > +/* AMMS related SMC call */
> > +
> > +/* Security related SMC call */
> > +/* HWRNG */
> > +#define MTK_SIP_KERNEL_GET_RND \
> > +       (0x82000206 | MTK_SIP_SMC_AARCH_BIT)
> > +
> > +/* Storage Encryption related SMC call */
> > +
> > +/* Platform related SMC call */
> > +
> > +/* Pheripheral related SMC call */
> > +
> > +/* MM related SMC call */
> > +
> > +#endif /* _MTK_SECURE_API_H_ */
> > --
> > 1.7.9.5
> >
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
