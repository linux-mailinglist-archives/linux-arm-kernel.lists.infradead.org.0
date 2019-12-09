Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F401176F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDwbBkXeXsxLXGIc5VK3CPEzFoTgEO5gYXfCmAk5wjI=; b=KBnaBpGhHgKBFh
	2fTiZl/2kRdxldzwImBJKncrATYu6/kgL7HD4NXolGsm1DxZZXhllvNbgs3PZZkvCZEFwexqS5lhq
	Xnz0r/gfTimBLo1YaeRI6xLHAY4uU3jQTP3pvt7VTzJPF3sJOumYMllY5RZ+GV4tub8g03PvovA+d
	idoFPgz1Iya5CHVAwjGObiJDc13t+RIFmgBxo0lvzwWxYGIVmJrNp5GLqJy9Ulb2AW3X7huLu9qTt
	yWSsw51nPY93pnEWaw6Ohrnkj04MCEhCvh6nrMoH9EaJGT+Ak0gAOufjqsiRGOZSYAZ/7a1XYegOe
	YPikDs2n/2V4tDvUcfAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePFs-0005JR-Dc; Mon, 09 Dec 2019 20:03:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePFl-0005IP-BG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:03:34 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E3072073D;
 Mon,  9 Dec 2019 20:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575921812;
 bh=A0I5xt4XVITb5z+wlWL8aR+iy4vFVHNdEWorhG4GJ/Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EpZ4LttEWn+/f/Y3V6o4s1cgDDhtTtCGT82reKJT064VK/o1My1nkUMsM79YglWwX
 R7Zwgd0VkHepPrARH41qnKM9B8sdt7DnN0/1mdbe7Br1ZnU0EkMZJMmGOnbSfTt+AE
 hkqHJWZVKPdB6H94t2fQDteb8ikwRSiClkiVHGK0=
Date: Mon, 9 Dec 2019 20:31:12 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: set GPU clock to 432 MHz
Message-ID: <20191209193112.qr6un5ryhyxwu6a5@hendrix.lan>
References: <20191203021420.164129-1-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203021420.164129-1-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_120333_409247_0BB866E8 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Dec 02, 2019 at 06:14:20PM -0800, Vasily Khoruzhick wrote:
> That's what BSP kernel sets it to and it seems to work fine.
>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 27e48234f1c2..0051f39b3d98 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -976,6 +976,9 @@ mali: gpu@1c40000 {
>  			clocks = <&ccu CLK_BUS_GPU>, <&ccu CLK_GPU>;
>  			clock-names = "bus", "core";
>  			resets = <&ccu RST_BUS_GPU>;
> +
> +			assigned-clocks = <&ccu CLK_GPU>;
> +			assigned-clock-rates = <432000000>;
>  		};

This doesn't really guarantee anything. If the GPU needs to remain at
that rate, it should be set in the driver. I just saw that you did
send a PR in github, I just merged it.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
