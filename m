Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920D615E860
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ujn7o/uLFVMuhQKscBd2pVxzCVn8vDwGNO/iR9jJoWI=; b=udQgO0PbbEH+6L
	8PvHHPEEPCZnq1hhm/OTrQM7el+Y7DfzsxvMxiRNwLYdxf7nUKif8YeKt1BsrSMPORB0MyXjijqtp
	FsUkF0KdefGrUUMb7cXneH/Q8g7yQHDdQACHCIrCdyDWVSrJwVb2UF8JosjjaPmJbRO1lm413bWoG
	p2O4skIzALg+LQbxjEN1N22u9KIc1/GHWkAtdH1Fpq4jXvl5AX36KiMNURU73RE644XocoqUhzg1q
	DZstRU7PElZ1yXLtfvnv0Q/r3NRDZayGq/BxktO2YDmnUHjWOqityLOqZObwTTeeEhG6KiMQsS17F
	6g5rkAM33TbbnXq5sF3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eJh-0008Of-KE; Fri, 14 Feb 2020 16:59:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dtJ-0001Be-0c; Fri, 14 Feb 2020 16:32:36 +0000
X-UUID: 2d557a2cf9294a1488d2d52c09ee7ced-20200214
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=jz50ovHuZ2AHAX6u5vv4PbRhypnsxyFahZczIki6Y+E=; 
 b=YFofNpbvXaSGOcwur6pHAuRri8d4esErOX8+TM0/XglRKiFQiwvWboVD0cVMZbcO4eEg2Bdu3tvLWNbuHdZoNaqJMwcHCdjwAIJky3BCpeSYZXezShWXG87N07MBXE51OUsM5wvD2SrQ7ifnP7mUs3ps5CjZZY0WwXbPVfnDd3Y=;
X-UUID: 2d557a2cf9294a1488d2d52c09ee7ced-20200214
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1600719844; Fri, 14 Feb 2020 08:32:27 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 08:22:25 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 15 Feb 2020 00:21:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 15 Feb 2020 00:22:21 +0800
Message-ID: <1581697343.12471.4.camel@mtksdaap41>
Subject: Re: [PATCH v7 01/13] dt-bindings: arm: move mmsys description to
 display
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Date: Sat, 15 Feb 2020 00:22:23 +0800
In-Reply-To: <022e8f64-b414-67a5-722e-bdd7c00230ff@collabora.com>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
 <20200213201953.15268-2-matthias.bgg@kernel.org>
 <1581662577.17949.3.camel@mtksdaap41>
 <2bda2dd7-9ed2-8b4c-897e-e585ccfa1fa5@gmail.com>
 <022e8f64-b414-67a5-722e-bdd7c00230ff@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_083233_095257_F458C462 
X-CRM114-Status: GOOD (  24.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org, Matthias Brugger <mbrugger@suse.com>,
 sboyd@kernel.org, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias & Enric:

On Fri, 2020-02-14 at 13:19 +0100, Enric Balletbo i Serra wrote:
> Hi CK,
> 
> On 14/2/20 11:01, Matthias Brugger wrote:
> > 
> > 
> > On 14/02/2020 07:42, CK Hu wrote:
> >> Hi, Matthias:
> >>
> >> On Thu, 2020-02-13 at 21:19 +0100, matthias.bgg@kernel.org wrote:
> >>> From: Matthias Brugger <mbrugger@suse.com>
> >>>
> >>> The mmsys block provides registers and clocks for the display
> >>> subsystem. The binding description should therefore live together with
> >>> the rest of the display descriptions. Move it to display/mediatek.
> >>>
> >>
> >> Yes, for the upstreamed driver, only display (DRM) use mmsys clock. For
> >> some MDP patches [1] in progress, MDP also use mmsys clock. So we just
> >> consider what's upstreamed now?
> > 
> 
> Let me jump into the discussion, and sorry if my question is silly because I'm
> just starting to look at this code.
> 
> IMO we should consider all the cases to find a proper fix on all this, and if
> MDP uses also mmsys clocks this approach will not work. I think the main problem
> here and the big question is what exactly is the MMSYS block, is an independent
> clock controller that provides clocks to DRM and other blocks? or is hardly tied
> to the DRM block in some way?
> 
> Could you give us a block schema on how the things are interconnected?
> 
> If is an independent clock controller I think there was a mistake when the first
> drm driver was pushed by using the compatible = "mediatek,mt8173-mmsys" as id
> for that driver.
> 

I correct my mistake first. In mt8173, mdp has already upstreamed [1].

There are many partitions in Mediatek SoC. mmsys is one of these
partition. There are many function blocks in mmsys such as OVL, RDMA,
RSZ, WROT, .... Some data routing between these blocks are fixed but
some are changeable. For application, we group them into display path
and mdp path. Clock gating register of these blocks are in the range of
0x14000000 ~ 0x14000fff. The routing control register of these blocks
are also in the range of 0x14000000 ~ 0x14000fff. So the control
function belong to mmsys partition but not belong to specific function
block would in the register range of 0x14000000 ~ 0x14000fff. I think
there could be two definition of mmsys device. One is that mmsys device
is the whole mmsys partiotion, so OVL, RDMA, ... would be sub device of
it. Another is that mmsys just control register of 0x14000000 ~
0x14000fff, so it's part of mmsys partition like OVL, RDMA, .....
Currently we define mmsys as the latter one. I've no idea how to map
mmsys into current Linux hardware category, but I think it is not just a
display device.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/mediatek/mt8173.dtsi?h=v5.6-rc1

Regards,
CK

> Thanks,
>  Enric
> 
> 
> > I'm not sure if I understand you correctly. Are you proposing to keep the
> > binding description in arm/mediatek?
> > 
> > Regards,
> > Matthias
> > 
> >>
> >> [1] https://patchwork.kernel.org/patch/11140747/
> >>
> >> Regards,
> >> CK
> >>
> >>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> >>>
> >>> ---
> >>>
> >>> Changes in v7:
> >>> - move the binding description
> >>>
> >>> Changes in v6: None
> >>> Changes in v5: None
> >>> Changes in v4: None
> >>> Changes in v3: None
> >>> Changes in v2: None
> >>>
> >>>  .../bindings/{arm => display}/mediatek/mediatek,mmsys.txt         | 0
> >>>  1 file changed, 0 insertions(+), 0 deletions(-)
> >>>  rename Documentation/devicetree/bindings/{arm => display}/mediatek/mediatek,mmsys.txt (100%)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
> >>> similarity index 100%
> >>> rename from Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> >>> rename to Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
> >>
> >> _______________________________________________
> >> linux-arm-kernel mailing list
> >> linux-arm-kernel@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >>
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
