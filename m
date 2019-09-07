Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C44FAC462
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 06:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DewcIK7l+IQOFomJUNjDGxbHpiHWh6dzXNVQpRKWk18=; b=WqeFgS/aG9pyd7
	M1CCEVWicyYcL8CeXBEjxInJc8xVjfbXrbR/OYkXKZAebvtWBmbHzBQyoFjMs5GydplLcKvoFkOho
	LQOmBcZ4Gv4FI475ExDIiQSIxMhzkBV7Uusr2nBP1w26YpMaRGisax8Eb73R+AbOlyhZd1sBJZxJX
	xYLGjh+FzPHaU0b8wgJI2vmZp56HgyYI5mTiq26uVP2lw0GlzDdvDxvYq/x0TEvRaiCoM6g4N0Qu7
	bZyTHwLwWc8Fm7sqkK98n7bbrflpRER7IuFH0cUjNg7PRR7PzwG3gCOVEIPJicZmwGM9uJvuyrD6h
	vglUt0UC3O16Ollem2pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6RxN-0002uI-Q8; Sat, 07 Sep 2019 04:04:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Rx7-0002tW-Mx
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 04:03:59 +0000
Received: from localhost (unknown [194.251.198.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 696492070C;
 Sat,  7 Sep 2019 04:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567829037;
 bh=GlLbsvCo+oy2TQLeThNPpkAfA0etuDXhcXFlruBQ34U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pieaM6cqi+Uaga3OWCaPxSRG5IKnY7f6jSEhaXdXjS0J5JaiUZhujPz754RfpeleJ
 iWYFEh5CoA9iHA1Kt6mQFTPJD6YwIE6c4tmPVLdHNuyyj+B4XHnSEWiKoyXDlLkyfq
 o2/WzTJa4YS8v7eL/IUr4Lodh6k3UN3eluHEtaBI=
Date: Sat, 7 Sep 2019 07:03:53 +0300
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 9/9] sunxi_defconfig: add new crypto options
Message-ID: <20190907040353.hrz7gmqgzpfpo4xj@flea>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-10-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906184551.17858-10-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_210357_766639_D09225BB 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 08:45:51PM +0200, Corentin Labbe wrote:
> This patch adds the new allwinner crypto configs to sunxi_defconfig
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  arch/arm/configs/sunxi_defconfig | 2 ++
>  1 file changed, 2 insertions(+)

Can you also enable it in arm64's defconfig as a module?

>
> diff --git a/arch/arm/configs/sunxi_defconfig b/arch/arm/configs/sunxi_defconfig
> index df433abfcb02..d0ab8ba7710a 100644
> --- a/arch/arm/configs/sunxi_defconfig
> +++ b/arch/arm/configs/sunxi_defconfig
> @@ -150,4 +150,6 @@ CONFIG_NLS_CODEPAGE_437=y
>  CONFIG_NLS_ISO8859_1=y
>  CONFIG_PRINTK_TIME=y
>  CONFIG_DEBUG_FS=y
> +CONFIG_CRYPTO_DEV_ALLWINNER=y
> +CONFIG_CRYPTO_DEV_SUN8I_CE=y
>  CONFIG_CRYPTO_DEV_SUN4I_SS=y
> --
> 2.21.0
>

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
