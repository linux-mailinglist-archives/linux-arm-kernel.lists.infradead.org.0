Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ABB127724
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAKlZnNoqphOWc1wyVeJ6l56MmdHwO0c24rMpdB23c8=; b=ThzRhSchmRoSkS
	ckRjdv4y+TJJF+erEEYdPFrgWoGSJWauV51zU9c0Um22ZES9V2xvIPbJBBMKhHEJ5Hrmol8m2hKKE
	HLJcseQubdefdGSZBUqHFBYaRtyIkL/Xx2x+fC6x+U5a82mD0SWsTJhpdKqhvA5kRB3jKtI+G+THi
	iXa73YHpS88xDRYNKZiPfp3XF0hPEjhA9akzGCVUfkS6QkUU50RLKl0wyWvdUKuYJELk1axMHnTE8
	sqqiRoShBPPYi+Gs3m4a7VvO8HKpEi+TLKAxD2EcMw99jcW02drqHFNFXiPEkmlnGM5gmG7iKQ5US
	FXSerjpOAf50NifiCmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDeP-0003N8-RZ; Fri, 20 Dec 2019 08:28:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDe9-0003K5-CC; Fri, 20 Dec 2019 08:28:31 +0000
X-UUID: a319e5c97b19494293368a13f70d25b3-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2fvqpXZ4f+f8Am+74fysA+SXl4Y8KX7VvKLUjOFoqG0=; 
 b=s2UOmCDxarzcVbKJicgl9WQddBKO1XD3I5dKz8Kv/gCpn685W0zCUWxqUj9ZQ3sV6mRrW1pWyZ6PMDgf5xr34SbJWyXbMnK/nzqQ7ERlXNd5SgU+cbl6ZdGNYcI87+5EfKcWoMoNfc6eIkTVtV1t9XyGkTMIx1pZbgMMwMlo440=;
X-UUID: a319e5c97b19494293368a13f70d25b3-20191220
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 233265706; Fri, 20 Dec 2019 00:28:19 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 00:28:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 16:28:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 16:28:14 +0800
Message-ID: <1576830496.22904.1.camel@mtksdaap41>
Subject: Re: [PATCH v5 0/7] drm/mediatek: fix cursor issue and apply CMDQ in
 MTK DRM
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 20 Dec 2019 16:28:16 +0800
In-Reply-To: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
References: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_002829_449529_53E6E1F6 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drinkcat@chromium.org, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, YT Shen <yt.shen@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

For this series, applied to mediatek-drm-next-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6

Regards,
CK

On Tue, 2019-12-10 at 13:05 +0800, Bibby Hsieh wrote:
> The CMDQ (Command Queue) in MT8183 is used to help update all
> relevant display controller registers with critical time limation.
> This patch add cmdq interface in ddp_comp interface, let all
> ddp_comp interface can support cpu/cmdq function at the same time.
> 
> These patches also can fixup cursor moving is not smooth
> when heavy load in webgl.
> 
> This patch depends on ptach:
> add drm support for MT8183
> (https://patchwork.kernel.org/cover/11121519/)
> support gce on mt8183 platform
> (https://patchwork.kernel.org/cover/11255147/)
> drm/mediatek: Check return value of mtk_drm_ddp_comp_for_plane
> (https://lore.kernel.org/patchwork/patch/1154517/)
> 
> Changes since v4:
>  - rebase to Linux 5.5-rc1
>  - add fixes tag
> 
> Changes since v3:
>  - remove redundant code and variable
> 
> Changes since v2:
>  - move some changes to another patch
>  - disable layer in atomic_disable()
> 
> Changes since v1:
>  - remove redundant code
>  - merge the duplicate code
>  - use async instead of cursor
> 
> Changes since v0:
>  - remove redundant code
>  - remove patch
>    "drm/mediatek: fix atomic_state reference counting"
>    After remove this patch, the issue we met before is gone.
>    So I do not add any extra code to do something.
> 
> Bibby Hsieh (7):
>   drm/mediatek: use DRM core's atomic commit helper
>   drm/mediatek: handle events when enabling/disabling crtc
>   drm/mediatek: update cursors by using async atomic update
>   drm/mediatek: disable all the planes in atomic_disable
>   drm/mediatek: remove unused external function
>   drm/mediatek: support CMDQ interface in ddp component
>   drm/mediatek: apply CMDQ control flow
> 
>  drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  67 ++++----
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 165 ++++++++++++++++----
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 131 ++++++++++++----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  47 +++---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c      |  86 +---------
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h      |   7 -
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  47 ++++++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   2 +
>  11 files changed, 380 insertions(+), 224 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
