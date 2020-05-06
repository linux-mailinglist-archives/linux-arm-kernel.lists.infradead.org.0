Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6181C6C0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyxfPnfe4UJ4diqZaTbO5kXruZxom0KtQlV5Yrfoj4k=; b=TP5AXxI//ymsmc
	ocuAp3xIuDzVJmsJo2HBRpfAtiB3QTfaJJ3pOG5LJ76r8C6AG2vEDiN+t0Fh+B4LoWUAZRynS1reZ
	Rcp6TmDQ85AW0kSOqkgPb+hCP8fU09Llu3h9nMUYFrDJSPae6YPiJSBONb9GNtsnsfFuunr6kLYNn
	ogAk0kBCNOqtV26XZuJ3GJJOhRfW1HOE6tQi1vQs7ybGGR7Ku5ApbTqv0yLU02PjjTUGtnroBmQAv
	UCm+iQv+HALlo3MH+SLC0IW4b9pbdNj+qh02yHkQ0m1DS+0HDkbJjyifs7FllxtAAUxEk8AxjB5rI
	hBEN+Ow7TdFr7rmVwF7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFdT-0004FR-G3; Wed, 06 May 2020 08:42:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFcV-0003Wb-2F; Wed, 06 May 2020 08:41:37 +0000
X-UUID: fc0def2e8a724e30b098251dd0152965-20200506
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9mo0KK2pekNHH+R5fI35YInu1I3bC2TpqDtV05+qjyA=; 
 b=ILC/ja6Azn9CQqyqsAd169EqGNjlBu1Wl8iEYYbJ/YD6VJt5ciz2Hgyvlq5hHy3PyrcTC/VRdEt3uYZm0VlfJ1k9E5SBRHUtHESH4U9bPPbBPOw5rJLVTxMeHetDp+gWEdDPhEGkSFDpnv7iBSehmSPy0xf428LYeHO2hATnk74=;
X-UUID: fc0def2e8a724e30b098251dd0152965-20200506
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1419278838; Wed, 06 May 2020 00:41:29 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 01:41:26 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 16:41:26 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 16:41:26 +0800
Message-ID: <1588754487.16825.5.camel@mtksdccf07>
Subject: Re: [RFC PATCH V4 2/4] dt-bindings: mt8183: Added FD dt-bindings
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 6 May 2020 16:41:27 +0800
In-Reply-To: <20191204185813.GA23184@bogus>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-3-Jerry-Ch.chen@mediatek.com>
 <20191204185813.GA23184@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_014135_837864_AEEE8A47 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "zwisler@chromium.org" <zwisler@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, "tfiga@chromium.org" <tfiga@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "pihsun@chromium.org" <pihsun@chromium.org>,
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

On Thu, 2019-12-05 at 02:58 +0800, Rob Herring wrote:
> On Wed, 4 Dec 2019 20:47:30 +0800, Jerry-ch Chen wrote:
> > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > 
> > This patch adds DT binding documentation for the Face Detection (FD)
> > unit of the Mediatek's mt8183 SoC.
> > 
> > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > ---
> >  .../bindings/media/mediatek,mt8183-fd.txt     | 34 +++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Sorry for missing the tags,
I will add it back in next version.

Thanks and Best Regards,
Jerry
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
