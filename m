Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409B911DEE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8iNehwqmP6saQbqYtH3gkSDnJKU7H5gk3ymURmfJPw=; b=SKYp7TbZLkgjRf
	k+l9u8wmNyPJxVwx3c+ULMUkeCpx6gQIbvXEKp2IGj7O0KoUvIfu4Jhg5BZQwzpdyDdiGtOux4QWI
	/9iP5lXKTBy2Zgjc2fc/BpFa7A1Y+vF4Cuj4yPu5l56GGUB8EPD85C+W17+dCPyGwdWNkySP7oQUw
	eGtBp0ksAvOWaYm2r5FOww5IzIw54VKo8HCF3jkn7HISAEmbexlSP33Sj/GugWfFg5wxFFSJOSRm1
	i7+99yig+RvhbpEqw96KQOg9AZ8OnEtICDCmD2apVGSTQaE37fCUJD1qrxxmGIOWKkaQaNF97RvOE
	4N2OvN8kdkFBhedsJ+Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffiT-0007az-IS; Fri, 13 Dec 2019 07:50:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffi1-0006js-Sw; Fri, 13 Dec 2019 07:49:59 +0000
X-UUID: 590fd14ae92d48d5bdba11c00da3403e-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=sGCRslRMxKd4+sopLgy6QPoZUbVrNbm1Aabm9JQ7Fiw=; 
 b=afi5h+foitKu6vDgUAo5b/2YH6VGSujr3TAIFXEptMJCnJD+YkdQiNff9Pze/CH/4e1B4qDDbetB88NeGVUaEMJNAxyaKQRUaUPyn238WkedEkarA+K8orwo7RsrhIM11t8edi/Z7ENhF1i+yjwNI2XiOarN7R1YBKPleAmqsGs=;
X-UUID: 590fd14ae92d48d5bdba11c00da3403e-20191212
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1465958448; Thu, 12 Dec 2019 23:49:54 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 23:51:02 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 15:49:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 15:49:40 +0800
Message-ID: <1576223390.9817.4.camel@mtksdaap41>
Subject: Re: [PATCH v2, 0/2] drm/mediatek: Add ctm property support
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 13 Dec 2019 15:49:50 +0800
In-Reply-To: <1576222132-31586-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1576222132-31586-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B532F401A64E730E8B148E727DA995610D1CD9CB4E6643715A43734C63D673E82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_234957_956788_039893FD 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
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

On Fri, 2019-12-13 at 15:28 +0800, Yongqiang Niu wrote:
> Changes since v1:
> -separate gamma patch
> -remove cmdq support for ctm setting

If this series depend on other patch or series, please describe it.

Regards,
CK

> 
> 
> Yongqiang Niu (2):
>   drm/mediatek: Fix gamma correction issue
>   drm/mediatek: Add ctm property support
> 
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 18 +++++++--
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 62 ++++++++++++++++++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  9 +++++
>  3 files changed, 85 insertions(+), 4 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
