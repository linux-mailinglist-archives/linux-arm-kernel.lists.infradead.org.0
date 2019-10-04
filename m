Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7654CC1B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EvGLegUOmEhW1WMweydE2DJsi502ucmUrsCQZiXtqn4=; b=JxW6mH7PqJcAKyIh5740Ny9ln
	HgJTLudDg9z9lI7aR3p1IlrFLsa/DGQidkoexZP4sYvDmm69+0FQLMyRcL3qZnAM1vB60mtVW1tNb
	dVjbrTxJXIToXyqqQQTxZ+OQgUVt2uwE1CtVFakcqBDHiMCKZ7YKTN5JYgzMPzRll/jo665xLkS9G
	hOj40EapQ56KZemXslQxRpQeti+FuTwi25SDRUci+hY6NkQOOLwgH5pGfqlvRkyrtCcj8a58dCgjk
	x3esVxC9LHzHgMac/TxG+tIHjLpTYETLh8/wKxg2X7Lec8FEF3zJMjgVI/GLI/Xf14JATiEmReJOp
	YXhOtGGyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRLJ-0004B1-HZ; Fri, 04 Oct 2019 17:26:13 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRLB-0004AE-Fh; Fri, 04 Oct 2019 17:26:07 +0000
Received: from fsav108.sakura.ne.jp (fsav108.sakura.ne.jp [27.133.134.235])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x94HQ0Cx091138;
 Sat, 5 Oct 2019 02:26:01 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav108.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav108.sakura.ne.jp);
 Sat, 05 Oct 2019 02:26:00 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav108.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x94HQ0Ve091126
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Sat, 5 Oct 2019 02:26:00 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
To: Heiko Stuebner <heiko@sntech.de>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <74097d16-ec3e-70e9-f835-25ae265b0ad9@katsuster.net>
Date: Sat, 5 Oct 2019 02:26:00 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190907174833.19957-1-katsuhiro@katsuster.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_102605_743386_49B30B50 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Past about 1 month, so I send a ping...

On 2019/09/08 2:48, Katsuhiro Suzuki wrote:
> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> RK3399 RockPro64.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 0401d4ec1f45..8b1e6382b140 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -81,6 +81,12 @@
>   		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>   	};
>   
> +	sound {
> +		compatible = "audio-graph-card";
> +		label = "rockchip,rk3399";
> +		dais = <&i2s1_p0>;
> +	};
> +
>   	vcc12v_dcin: vcc12v-dcin {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc12v_dcin";
> @@ -470,6 +476,20 @@
>   	i2c-scl-rising-time-ns = <300>;
>   	i2c-scl-falling-time-ns = <15>;
>   	status = "okay";
> +
> +	es8316: codec@11 {
> +		compatible = "everest,es8316";
> +		reg = <0x11>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +
> +		port {
> +			es8316_p0_0: endpoint {
> +				remote-endpoint = <&i2s1_p0_0>;
> +			};
> +		};
> +	};
>   };
>   
>   &i2c3 {
> @@ -505,6 +525,14 @@
>   	rockchip,playback-channels = <2>;
>   	rockchip,capture-channels = <2>;
>   	status = "okay";
> +
> +	i2s1_p0: port {
> +		i2s1_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&es8316_p0_0>;
> +		};
> +	};
>   };
>   
>   &i2s2 {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
