Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DBEAC452
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 06:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdZcR8Kxo2qjFJv+afzZga3TEdBFVqrlwbP03vPGxBU=; b=eDEUMN9BBPYoA8
	MTgOt+lojuZehv0ocD2b1WpqTyTLATUTjExP3o+UqXdcg9RiwdXT637NL7icm9qacXwu5hw4ODk1/
	oslPEG8ElbCXVAkeZJkV9EPM5Jgjh/JwN6m1jkuay+rFBKQRgZSMia+EXZYL2StWssF+kIwXryUM4
	gEjtOaPbhIiSwyig0x7xT6YNJi1BuAHdVapIc7QdCWDFrBiTRukyBeafb9XK0V6/m+rLyHM9mvwn3
	UiD0yWaROLml5dl5VLb0IGfnngyk8aWmfZDuz1PSFimgXYVbTcsikcjYFBBJmBDkHAF7Z+dNh2gsA
	oodviHygfx1jnaySJvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Rum-0001rp-Mr; Sat, 07 Sep 2019 04:01:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Rua-0001rM-D3
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 04:01:21 +0000
Received: from localhost (unknown [194.251.198.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 082902070C;
 Sat,  7 Sep 2019 04:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567828879;
 bh=XlHMzdxEhCU8TNX/JZPcZ4hHgdKXexPwcQhZPxEgtMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z+7P3y/LZpSbeOzfqFEfzeCra5uDxJmaJM5SFdpbqIllO05qVgI9X8WtwtG6rsmun
 KffS7FdNpFbVTZXwUMWL3GPgi6E/Wuhpxe761/2CfMNmMiVCfhXTHoHJIh+ltQ1r8S
 eFiXZe7lAI7xVOTHo/Av1l2SP6qf/5GT86OXUq7o=
Date: Sat, 7 Sep 2019 06:54:53 +0300
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 1/9] crypto: Add allwinner subdirectory
Message-ID: <20190907035453.urfqmdg3kg4kbtgc@flea>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-2-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906184551.17858-2-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_210120_465654_771F4B46 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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

On Fri, Sep 06, 2019 at 08:45:43PM +0200, Corentin Labbe wrote:
> Since a second Allwinner crypto driver will be added, it is better to
> create a dedicated subdirectory.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  MAINTAINERS                      | 6 ++++++
>  drivers/crypto/Kconfig           | 2 ++
>  drivers/crypto/Makefile          | 1 +
>  drivers/crypto/allwinner/Kconfig | 6 ++++++

I guess it would make sense to move the sun4i driver there too?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
