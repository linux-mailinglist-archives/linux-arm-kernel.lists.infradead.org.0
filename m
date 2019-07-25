Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BCA75ABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4mV0KbTuLlbLDhiWp0macxNEgLCE4xoOKgcgO09Qtk=; b=IJoQNpUI7VhTQ5
	9+nhGI4LpeT1MUzk86jFrxUEMWVtvgATw/3JSqaeXP+YSDrkTbZ5rRXcv/cdFfunp9I+uVtc4axeW
	OJmeDc362/AFzRhrMME+0/g7IBlj48hmDKJt3eo3DBlx9DdcuYKDvpENUVt4mN+fAzouWg6Jcc5OP
	eTcjU+2GPDse5nqUHPjTkmdoUabzfbyhfJvZPdr4xH4zLRtpbpuxQpkHGHxweZLnnuY6S2mng6I0l
	sa6cDkT0aJTNnuuwzspCdS68c7/PczQ4L1Lw/+DVcPjq31fCA8uc0bLAxmipQP8Oetbo4+jphdCvv
	u4E7U8uKLXZjrAtNStaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmAU-0003zq-OD; Thu, 25 Jul 2019 22:24:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqm9f-0003iW-7T; Thu, 25 Jul 2019 22:24:08 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2584022BE8;
 Thu, 25 Jul 2019 22:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564093446;
 bh=3JLogo6H+bSfeYeWtbaf6Mngs+H5aQPOTF5AdZi4JbQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qQ0pmHASFnfLaGawnik5VEoSJv0ubNcBHj1bRacJYGJRhko66TxkYcoc0ZNJiWtRM
 /okS464Oy2UMDzloZChf/rj6Bx3I39iCuYcOl2CWKKdV+eX2zOLVyfM4V+SctfAXHT
 Rn+V2exDT35fhGJEVrOJoteHZDhoBpSCZFGmrwHA=
Received: by mail-qt1-f179.google.com with SMTP id k10so50765862qtq.1;
 Thu, 25 Jul 2019 15:24:06 -0700 (PDT)
X-Gm-Message-State: APjAAAWYYyo/opnMkTE6+W8xq77jAoWdfIe896q5hBE/GxqNWZFjp1/y
 FUdfoAOIj7Dxba+oIGbWZOSRlkECKk2n13XyAw==
X-Google-Smtp-Source: APXvYqymuR/CfxglS3eGlra1LScgdzgYCXA7Zoh0YgXpzw19WOcSOu4dPi51w8tk0qDx2h76/kSXt+skkFTYNwydBEM=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr65093826qth.136.1564093445297; 
 Thu, 25 Jul 2019 15:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-6-git-send-email-yongqiang.niu@mediatek.com>
 <20190724201635.GA18345@bogus> <1564024819.2621.4.camel@mtksdaap41>
In-Reply-To: <1564024819.2621.4.camel@mtksdaap41>
From: Rob Herring <robh@kernel.org>
Date: Thu, 25 Jul 2019 16:23:54 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL439PCnG3B75uqCXb3-OfH2uK6qtU7XpUb-cEnPWRkkQ@mail.gmail.com>
Message-ID: <CAL_JsqL439PCnG3B75uqCXb3-OfH2uK6qtU7XpUb-cEnPWRkkQ@mail.gmail.com>
Subject: Re: [PATCH v4, 05/33] dt-bindings: mediatek: add RDMA1 description
 for mt8183 display
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_152407_305114_9108016A 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, yongqiang.niu@mediatek.com,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 9:20 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Rob:
>
> On Wed, 2019-07-24 at 14:16 -0600, Rob Herring wrote:
> > On Tue, Jul 09, 2019 at 06:33:45AM +0800, yongqiang.niu@mediatek.com wrote:
> > > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > >
> > > This patch add RDMA1 description for mt8183 display
> > >
> > > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > > ---
> > >  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > > index afd3c90..bb9274a 100644
> > > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > > @@ -30,6 +30,7 @@ Required properties (all function blocks):
> > >     "mediatek,<chip>-disp-ovl"              - overlay (4 layers, blending, csc)
> > >     "mediatek,<chip>-disp-ovl-2l"           - overlay (2 layers, blending, csc)
> > >     "mediatek,<chip>-disp-rdma"             - read DMA / line buffer
> > > +   "mediatek,<chip>-disp-rdma1"            - function is same with RDMA, fifo size is different
> >
> > This can't be determined by which chip it is? IOW, a chip may have both
> > rdma and rdma1?
>
> In MT8183, there are two different rdma. The difference is the fifo size
> in each one. I've a question: is it better to have two compatible string
> for each one, or just one compatible string for both but with a property
> to set fifo size?

If that's the only diff, then a property for fifo size is fine. We
just don't want to be adding a new property for each new difference.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
