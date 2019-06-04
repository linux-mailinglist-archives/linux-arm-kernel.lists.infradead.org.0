Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2F9349DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXghNu+WgmfQ51wP6SeMo7dPeuzIFSOeGYWKIDFksHc=; b=VuPEsXNwNhL46t
	Bp28zr+gUwjFJkfxId2lgTBK50bp+ijrRXxbAe7FFws2tGH+RIhvgH7W57s7a6hHLxLQjE1ZnEjBM
	Td+AA8X/QE2+Fj8F3yZ2XzGYWG5iTy66TSq8BPBzBwX5Y4qi0MoVxYpsN6N6LSzKaCugwqD30zc7c
	HNKIdmvP/jgELXVAu2l/z9Ky9lQNJWcFScLsi1yQzEsa3iXT2hYSEFG2r5m6Gii46XMlgJ6LLnCJT
	XRGi0F9PJ4rNDu8Ebzj8WW+/J+7QOo05XmhBreHfykPHs2s9BhOfxuodwcWZKkNk/3dYX4x/KlDZQ
	v8G5o6vOwE8JLYxON5tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAD8-0008JB-DX; Tue, 04 Jun 2019 14:14:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAD1-0008I3-25; Tue, 04 Jun 2019 14:14:40 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYACw-0001Zj-Uz; Tue, 04 Jun 2019 16:14:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add pin names for rk3288-veyron jaq,
 mickey, speedy
Date: Tue, 04 Jun 2019 16:14:34 +0200
Message-ID: <1748246.UnQIR8Fo6l@phil>
In-Reply-To: <20190524233309.45420-1-dianders@chromium.org>
References: <20190524233309.45420-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_071439_254172_C3598F8B 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, ryandcase@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 25. Mai 2019, 01:33:09 CEST schrieb Douglas Anderson:
> This is like commit 0ca87bd5baa6 ("ARM: dts: rockchip: Add pin names
> for rk3288-veyron-jerry") and commit ca3516b32cd9 ("ARM: dts:
> rockchip: Add pin names for rk3288-veyron-minnie") but for 3 more
> veyron boards.
> 
> A few notes:
> - While there is most certainly duplication between all the veyron
>   boards, it still feels like it is sane to just have each board have
>   a full list of its pin names.  The format of "gpio-line-names" does
>   not lend itself to one-off overriding and besides it seems sane to
>   more fully match schematic names.  Also note that the extra
>   duplication here is only in source code and is unlikely to ever
>   change (since these boards are shipped).  Duplication in the .dtb
>   files is unavoidable.
> - veyron-jaq and veyron-mighty are very closely related and so I have
>   shared a single list for them both with comments on how they are
>   different.  This is just a typo fix on one of the boards, a possible
>   missing signal on one of the boards (or perhaps I was never given
>   the most recent schematics?) and dealing with the fact that one of
>   the two boards has full sized SD.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3 with Matthias Rb.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
