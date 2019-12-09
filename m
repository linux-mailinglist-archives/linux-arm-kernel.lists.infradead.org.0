Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAC41165E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 05:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bveA+gGMUkIGmwU7LHTXYl1ko81Ro3wp63MWFN1BxBI=; b=mBTSSVwi5+W3qd
	KBHR5BQJ57jpGQKKN3sKB9Mfeltz2eSjvzUFJw5oZHyl2AYLPclnpc/pGRQMdZZPKkorn9vQfA3ed
	koJTKnAxPMyVnX/GcGv03Bw93X6qORpXAKBsjyC99UMSdFkdsGdD9cBweRAHB/+x8vAi4xedSIA5+
	pP9z1dD/fuHpU3pXCGzZ1MVmtSsAXVYb2s2DhTzr9UjnqEpQtmBvFcEoiriP49EFJ53KUgOI7jnfQ
	QZlxsgCuQpPmMtfiekvZxybB7WYjxOsavVlBvUZRGgaEi8bpLwXg5+4vCQcdN25nUtszEFKCC6MmG
	zS83pYp26gkJDt3ZsLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieAyn-0006on-5h; Mon, 09 Dec 2019 04:49:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieAye-0006oF-Ai; Mon, 09 Dec 2019 04:48:58 +0000
X-UUID: 15b597eb00e84f3190ecaccb581992f0-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=YcgZtnqzg5VT3Hj1syPa/xCvJ6RF8xt8gpVFl7qpqMI=; 
 b=glfGCYkYNOGN2BY8rePw6TlmD+rXhi9x84TLt5gd7g8twW+mDutlcXvD5XlXPH08bgfg2ODPnpB19AtwcksCXZVQF0cTPMErgDUM14//VvalbDh2WG+t+wLFqFUFXUNNSm3Gk09ffGTyGVRCt37DfFas2+16hPUfP3jR/iH8dVc=;
X-UUID: 15b597eb00e84f3190ecaccb581992f0-20191208
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 803527195; Sun, 08 Dec 2019 20:48:50 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 20:49:03 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 12:47:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Dec 2019 12:48:31 +0800
Message-ID: <1575866920.32541.4.camel@mtksdaap41>
Subject: Re: [PATCH v4 0/7] drm/mediatek: fix cursor issue and apply CMDQ in
 MTK DRM
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 9 Dec 2019 12:48:40 +0800
In-Reply-To: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
References: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 55801605C57CA610921F609EFECE446D43442399BAEEDB01006B5353DB3550B02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_204856_380027_A81BFEB4 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

I've tried to apply this series to 5.5-rc1, but there are many
conflicts. Please resend this series based on 5.5-rc1.

And I've found that if I config CONFIG_MTK_CMDQ=m, the code inside
'#ifdef CONFIG_MTK_CMDQ' would not be built. I think you should change
this to '#if IS_ENABLED(CONFIG_MTK_CMDQ)'.

Regards,
CK

On Thu, 2019-12-05 at 17:27 +0800, Bibby Hsieh wrote:
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
> (https://patchwork.kernel.org/cover/11255147)
> drm/mediatek: Refactor plane init/check and support rotation
> (https://pw-emeril.freedesktop.org/series/69015/)
> drm/mediatek: Check return value of mtk_drm_ddp_comp_for_plane
> (https://lore.kernel.org/patchwork/patch/1154517/)
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
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 132 ++++++++++++----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  47 +++---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c      |  86 +---------
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h      |   7 -
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  47 ++++++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   2 +
>  11 files changed, 381 insertions(+), 224 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
