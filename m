Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9764DDBBA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 05:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiSEDIhq67Rb9PyTAlUeRFNi3fV1iPwMKhPNETp4yqc=; b=nrwe3uZnZFzXuK
	fJ/f+vs7wEU5TqalQSEEjSqG3P63md93a44AYEMrovM2WiUeIpKAHqxHYCelCbDrw/nfaebVSvTqs
	hzhi1++zIuOeTtDCt0jtvDxIaiBY0YiMqyBtWAjHKmJC5UzFNDwZhFEJwD22Z2eHhF2872hkdgKtI
	MCnup1tfTQTC3m0VCWh+Tl/9V/hQhV3d0CZ/K4O8DCW87PU9AWpea//YRU4haE+Tlg/L0RIVz8U52
	XIstA6lee7RRUeRPTMZQbqM8AE3HW3zxRiMTlkXw5wVOnihe0X4Y8kGrbNAoyZsbxVu1fHYO9Tgrw
	Pt5nP8/xG3KjAnbNrdVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLJ96-0001PO-3y; Fri, 18 Oct 2019 03:41:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLJ8w-0001OG-1a; Fri, 18 Oct 2019 03:41:35 +0000
X-UUID: bfd6e1e33b81462baaad34be2cd5e623-20191017
X-UUID: bfd6e1e33b81462baaad34be2cd5e623-20191017
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1215127844; Thu, 17 Oct 2019 19:41:15 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 20:41:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 18 Oct 2019 11:41:19 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 18 Oct 2019 11:41:18 +0800
Message-ID: <1571370080.28949.5.camel@mhfsdcap03>
Subject: Re: [PATCH RESEND v7 1/6] dt-bindings: usb: musb: Add support for
 MediaTek musb controller
From: Min Guo <min.guo@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 18 Oct 2019 11:41:20 +0800
In-Reply-To: <20191017140841.GA20279@bogus>
References: <20191017082554.27953-1-min.guo@mediatek.com>
 <20191017082554.27953-2-min.guo@mediatek.com>
 <20191017140841.GA20279@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CB98BBEA4BB874D3A0D88CACED1C5CC76A62CDA4161EE13A5117F18AFA2C7BDE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_204134_091738_3D39CF88 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, chunfeng.yun@mediatek.com,
 linux-mediatek@lists.infradead.org, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-17 at 09:08 -0500, Rob Herring wrote:
> On Thu, 17 Oct 2019 16:25:49 +0800, <min.guo@mediatek.com> wrote:
> > From: Min Guo <min.guo@mediatek.com>
> > 
> > This adds support for MediaTek musb controller in
> > host, peripheral and otg mode.
> > 
> > Signed-off-by: Min Guo <min.guo@mediatek.com>
> > ---
> > changes in v7:
> > 1. Modify compatible as
> > - compatible : should be one of:
> >                "mediatek,mt2701-musb"
> >                ...
> >                followed by "mediatek,mtk-musb"
> > 2. Change usb connector child node compatible as "gpio-usb-b-connector" 
> > 
> > changes in v6:
> > 1. Modify usb connector child node
> > 
> > changes in v5:
> > suggested by Rob:
> > 1. Modify compatible as 
> > - compatible : should be one of:
> >                "mediatek,mt-2701"
> >                ...
> >                followed by "mediatek,mtk-musb"
> > 2. Add usb connector child node
> > 
> > changes in v4:
> > suggested by Sergei:
> > 1. String alignment
> > 
> > changes in v3:
> > 1. no changes
> > 
> > changes in v2:
> > suggested by Bin:
> > 1. Modify DRC to DRD
> > suggested by Rob:
> > 2. Drop the "<soc-model>-musb" in compatible
> > 3. Remove phy-names
> > 4. Add space after comma in clock-names
> > ---
> >  .../devicetree/bindings/usb/mediatek,musb.txt      | 55 ++++++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.

> If a tag was not added on purpose, please state why and what changed.
OK,thanks. I will add Acked-by/Reviewed-by tags in the next version.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
