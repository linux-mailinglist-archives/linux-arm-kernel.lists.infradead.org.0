Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F5015A915
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TZHDOjRBugKZEnw1ejqAWVrwHgeZI6wla5PAdp9myM=; b=lhCLj07VuT+3mb
	a91numqTcafTksMBthhrXlyynQ9qD8hG64mL+VpwOk5j9FWgsGd+t2R3DhQaC9YclITMm/3fIII4O
	T3QNYWKX9riN55SobxcwSzUl88eUILSZGbjs+Q4KaloETlF0k+5z1Qm6SrBIltMa/YkVa711p8fCh
	bjO1qUcDVxXyjlH0YYHrVuNDQY7AZYTq9vxiIhbOR38oHuiRoZYwoMyTKdLxutwY5Ke7lNZ2dPX0w
	1HDIiG1LjrHBfAS27XpUbnkluREUBkgpaka+FOUKgsIy3KcgfFoSUQpQRfkmKGfdTqJVrlzHc+Qr2
	C8pd3NPi+n0ZJd24qplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1r52-0004K3-ML; Wed, 12 Feb 2020 12:25:24 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1r4u-00047Q-R6
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1581510311; bh=Md1F98Lg+g/HU1RRReO7O1H/L3IW/4YK8o6LZMkQlyM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=YHPiQ7g5CDLI2SQwq8GbZn1D1eBXr70YPQR6bVa+d8uRZlFDYzj/d6kGABbpizLYx
 s61V7ay7LF4Q60uP1Aoc6WlgxdDEvrqbG/yPn9WA4UEHL/P45m+lixnFAw/NlymuD+
 +COVYAETOIrwnsbPjmE1VON8OCYRIGg8cScOyv6k=
Date: Wed, 12 Feb 2020 13:25:11 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [linux-sunxi] [PATCH v2] arm64: dts: allwinner: h6: orangepi-3:
 Add eMMC node
Message-ID: <20200212122511.5gr6m4ppmytq4ajj@core.my.home>
Mail-Followup-To: Jernej Skrabec <jernej.skrabec@siol.net>,
 mripard@kernel.org, wens@csie.org, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com
References: <20200210174007.118575-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210174007.118575-1-jernej.skrabec@siol.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_042517_047342_9E1C143F 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Feb 10, 2020 at 06:40:07PM +0100, Jernej Skrabec wrote:
> OrangePi 3 can optionally have 8 GiB eMMC (soldered on board). Because
> those pins are dedicated to eMMC exclusively, node can be added for both
> variants (with and without eMMC). Kernel will then scan bus for presence
> of eMMC and act accordingly.

Tested-by: Ondrej Jirman <megous@megous.com> (on a variant without eMMC)

It didn't magically add extra 8GiB of storage, but it didn't break anything
either. :)

regards,
	o.

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
> Changes since v1:
> - don't make separate DT just for -emmc variant - add node to existing
>   orangepi 3 DT
> 
>  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index c311eee52a35..1e0abd9d047f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -144,6 +144,15 @@ brcm: sdio-wifi@1 {
>  	};
>  };
>  
> +&mmc2 {
> +	vmmc-supply = <&reg_cldo1>;
> +	vqmmc-supply = <&reg_bldo2>;
> +	cap-mmc-hw-reset;
> +	non-removable;
> +	bus-width = <8>;
> +	status = "okay";
> +};
> +
>  &ohci0 {
>  	status = "okay";
>  };
> -- 
> 2.25.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200210174007.118575-1-jernej.skrabec%40siol.net.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
