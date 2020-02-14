Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B200815D255
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=431CudHaqalMvgVd2HHpSm/mMI55fVLRx+FghblOJSY=; b=oSiZzQngfL6IXR
	9+9aftxek5af0gLnmbybDOTssXrUpOWlFTMRuPeUCQgPS2/9hkh2ciRBB+qbL2+f8c9Y9zMG4EL3d
	Av+MPNgTEBt1GWEwUU8V8776uo60Kppd6iQljwcGkue5lKvhADEGZwKx1eHEOm4HTSStPnYjhL59M
	3sjgtfLCcrnT277IlptZZ9bHP77tUqQJInlybqY6dxgmgLFCAyjZlSDuCa8TyQ0PTRfrmNGXEjfiU
	bsA/5+PX06imyrQ7IPnGZZSKaf3J0hMUW6IlJ+ByaKdkI8u0H4Za7rn9BYGdQZJ3UmY6wSV/5AMz9
	X9Zw1hkDdzpxih7JJ0vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Uhj-0001UQ-SW; Fri, 14 Feb 2020 06:43:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2UhY-0001TZ-1H; Fri, 14 Feb 2020 06:43:49 +0000
X-UUID: 46d36fca8010448983a28ce502997731-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/ImEYpFQVkvneIwZfKMDBwsxecrbwupV35NVM4pulYY=; 
 b=mTrMVMpkOfAblSD1+TYcE3jGCbNOEi5xgT/mzHXJEukclG3+tfWD4YGIjuvXNRuTn/Oci+hL0NTxTx6dAVwkMw6gQvDEC/2Gk3HBrWSz9WigdGUDip3tadfkrGzKcSsVcjVszgUHDLehkMazQIpSTJ7I9DMT0URVbDhm2ApnVIg=;
X-UUID: 46d36fca8010448983a28ce502997731-20200213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 637817452; Thu, 13 Feb 2020 22:43:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 22:43:12 -0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 14:42:56 +0800
Message-ID: <1581662577.17949.3.camel@mtksdaap41>
Subject: Re: [PATCH v7 01/13] dt-bindings: arm: move mmsys description to
 display
From: CK Hu <ck.hu@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Fri, 14 Feb 2020 14:42:57 +0800
In-Reply-To: <20200213201953.15268-2-matthias.bgg@kernel.org>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
 <20200213201953.15268-2-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_224348_092595_FA13B2AF 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, airlied@linux.ie, mturquette@baylibre.com,
 dri-devel@lists.freedesktop.org, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, linux-clk@vger.kernel.org,
 drinkcat@chromium.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Matthias Brugger <mbrugger@suse.com>,
 sboyd@kernel.org, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 p.zabel@pengutronix.de, enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:

On Thu, 2020-02-13 at 21:19 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The mmsys block provides registers and clocks for the display
> subsystem. The binding description should therefore live together with
> the rest of the display descriptions. Move it to display/mediatek.
> 

Yes, for the upstreamed driver, only display (DRM) use mmsys clock. For
some MDP patches [1] in progress, MDP also use mmsys clock. So we just
consider what's upstreamed now?

[1] https://patchwork.kernel.org/patch/11140747/

Regards,
CK

> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> 
> ---
> 
> Changes in v7:
> - move the binding description
> 
> Changes in v6: None
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> 
>  .../bindings/{arm => display}/mediatek/mediatek,mmsys.txt         | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename Documentation/devicetree/bindings/{arm => display}/mediatek/mediatek,mmsys.txt (100%)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
> similarity index 100%
> rename from Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> rename to Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
