Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC4DD92B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56UIXuXluu9i+I1ERa1uCQfk5jfoxOeXzOZfUQSqupc=; b=QprDxgNosnL5Dp
	RuxdNvCUxeUqbVA8vjdAGgSzLuo7/WBC2FGPMvnJgDPpccVhZ4HRoGpQJ3qpGnuySiH+bTbatQW9b
	9FoHU0l6XY441ZE0PRMFu19crJFMYXqcisDQZF0Zk7QlmoJ+HUlHggQOg3a81IPHm8dtJXAnyz015
	zNkrnVIZCeic9w37RV8pwM/xVHUcWXOLYeT9bn2VQzM223SWN0sTTLON49RT7LIbCAzDybVIigCfx
	ua+raXhFy417fdrv2ut0vUWaC6M89JBalvKQhjXV01guRd8i4gHguTJWv0L/zuBFL0yarjzZGjLgx
	FljLjnHTJYGTRfHqgZhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjWk-0006Hg-2x; Wed, 16 Oct 2019 13:39:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjWc-0006H3-Cq
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:39:39 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75D5D2168B;
 Wed, 16 Oct 2019 13:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571233178;
 bh=dDExEC2557cmtq3X/4XRJPOkG/r/cnDMPOGXwrWXLoM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L+FbZCkdkd9GpK7nEZefieerlnRs7S6ZXE6J7iRlAmUzCy5s6bxANCkhxRUWZGaKI
 sBeLWzxWO4IglbGp0fJVwJQB3DSlTbZ+iVw1IhX0xQvB+Uno4HRiWKjmkaYR9jpDX0
 yX5gKWGo/5MvUHFZt7/oeBJu1lkFh0OKHV7dWFbY=
Date: Wed, 16 Oct 2019 15:39:35 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 0/4] crypto: add sun8i-ss driver for Allwinner Security
 System
Message-ID: <20191016133935.e67kevjyugxn5rki@gilmour>
References: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_063938_455757_723B48FF 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:33:41PM +0200, Corentin Labbe wrote:
> Hello
>
> This patch serie adds support for the second version of Allwinner Security System.
> The first generation of the Security System is already handled by the sun4i-ss driver.
> Due to major change, the first driver cannot handle the second one.
> This new Security System is present on A80 and A83T SoCs.
>
> For the moment, the driver support only DES3/AES in ECB/CBC mode.
> Patchs for CTR/CTS, RSA and RNGs will came later.
>
> This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
> and tested on:
> sun8i-a83t-bananapi-m3
> sun9i-a80-cubieboard4
>
> This serie is based on top of the "crypto: add sun8i-ce driver for
> Allwinner crypto engine" serie.

For the crypto part,
Acked-by: Maxime Ripard <mripard@kernel.org>

I'll apply patches 3 and 4 once Herbert will have merged the patches 1 and 2

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
