Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FF025ED3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RYpbyvfC4j33RxQdtBStzgv+4D6i4HAXYQUIg5gYO0=; b=hfMx+kAMdd+HZL
	3RlA9ljipseZAmxV5H/iVGV8TilmY4KndovmzTn/18A7p3XVpZM5noXb+dLVwa1xKBkwDupE40pUr
	zHfNJLR68Y94Y6x1a1G5qYX9qrmYW6eVRi8PCevEPsM5Zmxk/OljkBgi52SRpD0YLJ5lpneDvs7lT
	pbRnU9BNvk6Xh0KXiA6xgnH9RrkpuJ6QYI0YxBRDn1h6xx7+vl/to0TU7rzfS6AT73SA8Hc49+AwG
	8v38vQZT6vLNbFjpsN7Abnwp2o1if7emfDFrOaRwO8FbFOSAbsqftVNDOS3w9JgfFP7BYbJqiaVeS
	eLOn1j37ikpkSujAWCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTM2F-0001h3-43; Wed, 22 May 2019 07:51:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTM28-0001gf-Er
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:51:33 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTM24-0007xP-LO; Wed, 22 May 2019 09:51:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 5/8] MAINTAINERS: add I2C DT bindings to Rockchip platform
Date: Wed, 22 May 2019 09:51:27 +0200
Message-ID: <2847662.8Nn05j9K3f@phil>
In-Reply-To: <20190521082137.2889-6-wsa@the-dreams.de>
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-6-wsa@the-dreams.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_005132_650020_C0823C8D 
X-CRM114-Status: GOOD (  13.35  )
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
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

Am Dienstag, 21. Mai 2019, 10:21:34 CEST schrieb Wolfram Sang:
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
> Cc: Heiko Stuebner <heiko@sntech.de>

not sure if you want me to apply this or just want to pick it up
yourself (I don't have a hard preference here). In any case, if you
want to pick it up, it is obviously

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1a60cd98aad5..09f32866bdef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2145,6 +2145,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  L:	linux-rockchip@lists.infradead.org
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
>  F:	arch/arm/boot/dts/rk3*
>  F:	arch/arm/boot/dts/rv1108*
>  F:	arch/arm/mach-rockchip/
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
