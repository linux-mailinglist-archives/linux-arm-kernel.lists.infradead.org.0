Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAAD9752E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyjZXkD+BjKZ/cJNIPC97LJGEeJQ4EazYl3D6kXqNlE=; b=mh+kpAsfvj3gCc
	JqPUu1pVgmfM3v/znc0Lbi2mtvkbjWSYbGeCauD8JVJWXZZNW0D6c3seotbBYRdhGUyir19jwUs7T
	PwcDe6LuVA2iwxUSTwVDUB9HleSW/Cafuj4AWkNCIGdM5XeJ7OFNLR59/15dyBFmLJjGBrdKh/yn+
	0DX6hlr1DUkC742dmdc8kE8d9I5PwVDt13JlHluWP7SGkiCqqjaf51kzexuT1x3ML8Jxe/hx00vgp
	UaVJpSH8C2NMLl7A0npkZaKneBBpg8kGQ6fd4mA3StqaahCKeQyaZv4FKEW3/tvspwP4velDvGsno
	EJ1QLOSxBcVG/xmjajUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MBM-0002iF-Re; Wed, 21 Aug 2019 08:41:28 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MB0-0002ht-9W
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:41:07 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id CFAE325B7C3;
 Wed, 21 Aug 2019 18:41:04 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id BCFCF9405AE; Wed, 21 Aug 2019 10:41:02 +0200 (CEST)
Date: Wed, 21 Aug 2019 10:41:02 +0200
From: Simon Horman <horms@verge.net.au>
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a774c0-cat874: sort nodes
Message-ID: <20190821084101.evn6xeiqcqv772um@verge.net.au>
References: <1566219341-23048-1-git-send-email-ykaneko0929@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566219341-23048-1-git-send-email-ykaneko0929@gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_014106_483196_55B1AC8F 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:55:41PM +0900, Yoshihiro Kaneko wrote:
> Sort nodes.
> 
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
> 
> This should not have any run-time effect.
> 
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Thanks Kaneko-san,

I think that the i2c1_pins and hscif2_pins nodes
are also out of order.

I'm not sure if Geert would prefer you to respin or fix that himself.

In any case, with that problem resolved:

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
> 
> This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
> tree.
> 
>  arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts b/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
> index 651383c..aaa37158 100644
> --- a/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
> @@ -82,13 +82,13 @@
>  		simple-audio-card,bitclock-master = <&sndcpu>;
>  		simple-audio-card,frame-master = <&sndcpu>;
>  
> -		sndcpu: simple-audio-card,cpu {
> -			sound-dai = <&rcar_sound>;
> -		};
> -
>  		sndcodec: simple-audio-card,codec {
>  			sound-dai = <&tda19988>;
>  		};
> +
> +		sndcpu: simple-audio-card,cpu {
> +			sound-dai = <&rcar_sound>;
> +		};
>  	};
>  
>  	vcc_sdhi0: regulator-vcc-sdhi0 {
> @@ -313,16 +313,16 @@
>  		power-source = <1800>;
>  	};
>  
> -	sound_pins: sound {
> -		groups = "ssi01239_ctrl", "ssi0_data";
> -		function = "ssi";
> -	};
> -
>  	sound_clk_pins: sound_clk {
>  		groups = "audio_clkout1_a";
>  		function = "audio_clk";
>  	};
>  
> +	sound_pins: sound {
> +		groups = "ssi01239_ctrl", "ssi0_data";
> +		function = "ssi";
> +	};
> +
>  	usb30_pins: usb30 {
>  		groups = "usb30", "usb30_id";
>  		function = "usb30";
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
