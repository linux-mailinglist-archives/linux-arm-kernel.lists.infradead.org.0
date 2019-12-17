Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADBE122164
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 02:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgFpkLIoD2c8t9DulnQBOgrpJPXuBgvNYPAgjmnoWYw=; b=jqbPjF0iKz5EtO
	YMU59nlyP0ZH4RfoaZUidy+Rz5Yg9ddZCTv+4RAH1OrfXo5kDddPb+kYebW5JT7S5e9bspO2ikzCL
	bzhgwMfrWf8tWYEYaWAS8b/y3dAqacDlU9LW0+5QYrATK9FGtbdFGRvgCaXETCrs19VjTvpnrAMJc
	qtUy7pKJcXjOz1fws7I0Ao9mjmAUH8PR4/t9MkZjVn2rlcvbvgs5cJCRC1mZiP1QoZ9dbs+rGaUb5
	2QeJO8v7M0gq/2LpYYYCNS6fvu2uVa4BpZ3Azin27Py2KF18Pg4+ZpNOPQDZZm7Gy3s3F34UZkavk
	dLfzGHcszGzjgdkBsa/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih1Zs-0005uW-Ka; Tue, 17 Dec 2019 01:23:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih1Zj-0005tZ-9X; Tue, 17 Dec 2019 01:23:00 +0000
X-UUID: d9a41071ee714c319a95af6d8d398397-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=7ltJbMO3G7a13yc8xMgGmW59Fe0DuYrtSAHbe2Yr1Ao=; 
 b=QO19j7mCpO5stgHnM2Y7wG5bS6rtArXufCKoqC1lGtSsvu/BvCpoL25es+GpqDcGgkDfi4r0lp6MHrhmzKjZSj2467UMz/GdU4mjCdKayJ70jYs5RfkFNmfvYfrKNR2gTqXg/A6zT0CxtDoiC5CGjBai5k+nrornpd6yXDZoJ7U=;
X-UUID: d9a41071ee714c319a95af6d8d398397-20191216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1461388319; Mon, 16 Dec 2019 17:22:54 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 17:14:39 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Dec 2019 09:12:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Dec 2019 09:13:29 +0800
Message-ID: <1576545207.7301.3.camel@mtksdaap41>
Subject: Re: [PATCH 05/10] drm/mediatek: plane_state->fb iff plane_state->crtc
From: CK Hu <ck.hu@mediatek.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 17 Dec 2019 09:13:27 +0800
In-Reply-To: <20191213172612.1514842-5-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
 <20191213172612.1514842-5-daniel.vetter@ffwll.ch>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9E43735D7213DE8234B685DBCE55081391D157A1DD971A7AE5DA8369C8620C062000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_172259_342516_2373E7AE 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel:

On Fri, 2019-12-13 at 18:26 +0100, Daniel Vetter wrote:
> Checking both is one too much, so wrap a WARN_ON around it to stope
> the copypasta.

Even though I don't know what is copypasta,

Acked-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 540ef2faa40a..f0b0325381e0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -94,7 +94,7 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
>  	if (!fb)
>  		return 0;
>  
> -	if (!state->crtc)
> +	if (WARN_ON(!state->crtc))
>  		return 0;
>  
>  	ret = mtk_drm_crtc_plane_check(state->crtc, plane,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
