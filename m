Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA35E147071
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 19:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYAk9JlCdi02Yj9t/5Mv5n3hhjfY62SwHFJlh6AjLKk=; b=Ocb5rR3RtHjzMO
	dIHlp9kgNKUhVaWl1mmLPouRfvIBPRqoIrRPuz9oRXIToAp+1SnPS1O3MCqj1CTWxUoW7Esn13jhw
	8axlEKiZrDECF9jWkxkTkH9ddyEuLUVViPWJ7YJdTeiUPRH4Gdq6wDIa8+XM+aBUYsINRFfZkw5Nx
	8kCbvGibNPzOnsTbuzflRv51tpfU/Gs/o3SuBKV4qC/cSDkc1lCh4dbrB3WrywG2mm4H4wRe/IyBa
	PDKmX+PDhZH/kStRaae8SHghS5TUdZI31eZNVbRLFnf5+WJL7E6dFeyu/xsUGSAjTlWEcf8Ph0niL
	ZdD6O0xIoFFSxQp4tsCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iugs8-0002G1-8Y; Thu, 23 Jan 2020 18:06:28 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iugrx-0002EX-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 18:06:19 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id F25A020031;
 Thu, 23 Jan 2020 19:06:04 +0100 (CET)
Date: Thu, 23 Jan 2020 19:06:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: add vendor prefix for logic
 technologies limited
Message-ID: <20200123180603.GB17233@ravnborg.org>
References: <20200120080100.170294-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120080100.170294-1-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=m8ToADvmAAAA:8
 a=6h0QpovlAAAA:8 a=k76NmfXvAAAA:8 a=VwQbUJbxAAAA:8 a=5161Qnb4PEtQmF6y4tUA:9
 a=_A8lN0e7biOy-kDP:21 a=1vGcD8wBxvxDrBQY:21 a=CjuIK1q_8ugA:10
 a=kCrBFHLFDAq2jDEeoMj9:22 a=UMgBrLottiFGRxIVDUvr:22
 a=xklTzJp5TIrWR6y8xC-k:22 a=AjGcO6oz07-iQ99wixmX:22
 a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_100617_785764_C0F31F48 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>, info@logictechno.com,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marcel.

On Mon, Jan 20, 2020 at 09:00:58AM +0100, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Add vendor prefix for Logic Technologies Limited [1] which is a Chinese
> display manufacturer e.g. distributed by German Endrich Bauelemente
> Vertriebs GmbH [2].
> 
> [1] https://logictechno.com/contact-us/
> [2] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Rob Herring <robh@kernel.org>

Thanks for the quick revision.
All three patches applied to drm-misc-next.

I applied patch 2 by hand due to conflicts caused
by another patch I added just minutes ago.

	Sam

> 
> ---
> 
> Changes in v4: None
> Changes in v3: None
> Changes in v2:
> - Added Philippe's reviewed-by.
> - Added Rob's acked-by.
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index f9b84f24a382..ac4804d0a991 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -549,6 +549,8 @@ patternProperties:
>      description: Linear Technology Corporation
>    "^logicpd,.*":
>      description: Logic PD, Inc.
> +  "^logictechno,.*":
> +    description: Logic Technologies Limited
>    "^longcheer,.*":
>      description: Longcheer Technology (Shanghai) Co., Ltd.
>    "^lsi,.*":
> -- 
> 2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
