Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A0212F401
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 06:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhNYdEJi8yamQvjhzOoPabtqJU+T6SmIW8oDqFBY/KE=; b=bggxftcjBHQi4r
	DfcO1zojI8vT8F9nH58CweHJYuqQ46jbkp9VLcbIkA11z7wDOG4gwmi6sUlBKyzxAtLv3SeJgYGGW
	Tf8DmnftQCHcALeaCn7c8tfUWk6jSdZt4JzS00MuSdREkhoTRvlJyvtNvCrWCEyDZ7tHj578FVCzB
	P1QpaUEzuDUnC999OHlSnoOMLaIS58J5NqFd9S35veGA+OsahY+pTUi70QVEPSVMEW+A8f9uOMAym
	L2bUTvrTRzDKcvZs+vtayc/S6BYEDs/BtwOC+yXST+Os0q+DucPyOAb/uMaDAesTcrUZGjkozhE1Z
	9k0nQjSDam1irIVstLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inFCV-0007px-Jw; Fri, 03 Jan 2020 05:08:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inFCO-0007oz-Gz; Fri, 03 Jan 2020 05:08:38 +0000
X-UUID: aab268f0efbe42fa8e0a518e7d702a4b-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=rdFrZ9Jcx8qzNQWZZwmRMxMHx3C9rWLkOXwKIpvFHjM=; 
 b=Rvibf7havVaKhnC4XTaV0QntwUxhp1Xt9eHtGaOqA/r+VsCGVELqYL1kchKyk9oy5SKTUV6SAE70ikGwYpCMLYDKlgFrU4Oi56LfL9APrMfk69tEX/8CVvq9FC8jhp0nHmwyoBbdNmfBiSdqdx5u+v6MSxh5/frsVf+s8QoDcu0=;
X-UUID: aab268f0efbe42fa8e0a518e7d702a4b-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1358189296; Thu, 02 Jan 2020 21:08:29 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 20:58:30 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 12:57:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Jan 2020 12:58:48 +0800
Message-ID: <1578027500.30178.0.camel@mtksdaap41>
Subject: Re: [RESEND PATCH v6 00/17] add drm support for MT8183
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 3 Jan 2020 12:58:20 +0800
In-Reply-To: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FB3FFA3455567347BB4B802EBF6FC3E22F76B49220CCA2C99D4FD73A8E25E2142000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_210836_576370_9D6A3795 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

This 'RESEND v6' is different with v6, so I think you should call this
v7.

Regards,
CK

On Fri, 2020-01-03 at 11:12 +0800, Yongqiang Niu wrote:
> This series are based on 5.5-rc1 and provid 17 patch
> to support mediatek SOC MT8183
> 
> Change since v5
> - fix reviewed issue in v5
> base https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
> 
> Change since v4
> - fix reviewed issue in v4
> 
> Change since v3
> - fix reviewed issue in v3
> - fix type error in v3
> - fix conflict with iommu patch
> 
> Change since v2
> - fix reviewed issue in v2
> - add mutex node into dts file
> 
> Changes since v1:
> - fix reviewed issue in v1
> - add dts for mt8183 display nodes
> - adjust display clock control flow in patch 22
> - add vmap support for mediatek drm in patch 23
> - fix page offset issue for mmap function in patch 24
> - enable allow_fb_modifiers for mediatek drm in patch 25
> 
> Yongqiang Niu (17):
>   dt-bindings: mediatek: add rdma_fifo_size description for mt8183
>     display
>   arm64: dts: add display nodes for mt8183
>   drm/mediatek: move dsi/dpi select input into mtk_ddp_sel_in
>   drm/mediatek: make sout select function format same with select input
>   drm/mediatek: add mmsys private data for ddp path config
>   drm/mediatek: add private data for rdma1 to dpi0 connection
>   drm/mediatek: add private data for rdma1 to dsi0 connection
>   drm/mediatek: move rdma sout from mtk_ddp_mout_en into
>     mtk_ddp_sout_sel
>   drm/mediatek: add connection from OVL0 to OVL_2L0
>   drm/mediatek: add connection from RDMA0 to COLOR0
>   drm/mediatek: add connection from RDMA1 to DSI0
>   drm/mediatek: add connection from OVL_2L0 to RDMA0
>   drm/mediatek: add connection from OVL_2L1 to RDMA1
>   drm/mediatek: add connection from DITHER0 to DSI0
>   drm/mediatek: add connection from RDMA0 to DSI0
>   drm/mediatek: add fifo_size into rdma private data
>   drm/mediatek: add support for mediatek SOC MT8183
> 
>  .../bindings/display/mediatek/mediatek,disp.txt    |  13 +
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  98 +++++++
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c            |  18 ++
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c           |  25 +-
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c            |   4 +
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c             | 288 ++++++++++++++++-----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h             |   7 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c             |  49 ++++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h             |   3 +
>  9 files changed, 435 insertions(+), 70 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
