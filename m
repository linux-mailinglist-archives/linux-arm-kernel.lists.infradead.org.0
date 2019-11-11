Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09095F6FDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ak0Uy1E2iNRyfcu91ofzjoTSRWJt6tsmtq0Hy8mVe5M=; b=kbwOjLY/9AJjoU
	NSMBVypJ/ey+bz/fBxv6ZBMbfOOdWpkymqCpp+XakXDuPcZvDamRTHm8dzyfUpW0iC6EIuFzWZ9jk
	D26/kr5xt1CXsQbys4ii5cdcEr1Gl+2Q3eFw7KqyDrfsui5ewUuR8Brt00hkd2wJ9qiMzMioS9V51
	mziQBmp98c+N//ja6NbF375sDxqhYaBWX64SA/CvmsNRyrU7Y2tb5sccHsylE4PXtX0Y2u6ps7pTY
	pV6cWvvPqxABAv/o2nTj9YDEUrYMHhOllw3VRPkRq/rrU382Rm0tPjmH7zTzTNRpcb91DYcZkMcdH
	k7/RIMVgE67pPz8ZWXkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5Ig-00019e-0l; Mon, 11 Nov 2019 08:43:54 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5IX-00018r-PF; Mon, 11 Nov 2019 08:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1573461759;
 bh=0J3c8iXj6IK/Il74rucQQ6zV7qAU3Woh4DCZdChB76U=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Xmhd3mlpf/GxVFUQ1nCaQImC+wY/SH8thCkkD7Qg/ov4s6mrFGikofNJxbg/tauoH
 IkmdT9s0DyingbfbqrANeGQyxXtxcgPAoIMdPYZ/+06tqLOS0jZdhPB8fhJMgA8y+3
 x2+D84QJdi5MncxlLQSbrBLxcyAoFbh2pmzfTkLc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [10.9.8.2] ([80.130.117.228]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lh6PP-1i9bp33LAF-00oYPt; Mon, 11
 Nov 2019 09:42:39 +0100
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
Date: Mon, 11 Nov 2019 09:42:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111005158.25070-3-kever.yang@rock-chips.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:uKVi7Jd/flif9wD0aTOO4Rct22jlxJlLpyYMD2lCtDTB92+H+qM
 iTK2J4wnku5T8oDPML/7gsACuYmZqME02y/zekk4hAZTqggqNXRCnJJvP+nd8z+FSW/GuHz
 i5WDx+h2qbV5shdLRUCDQV5yZEBO4R0xzOq9I3NNuU5gw7+Fe4CbHHI6ijhsYomP0/IOgpT
 k6F9wx6Yufdo3CyjlWULQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zc0nUcVttNU=:2UP8emA8JD8vTiy+255QQU
 yY9SBU42UfednHSTTZXYUtZ94Af+MDx+VnfHxBaHO5lobUpY4MOIkKqhkqy4BW+xKKOx/BmIK
 q89Oj8l+KCs4tRg/C9y07M7Gtd0YiYdEVeH0UagIYBfmTkh8bTidttX69wjU9jnGKNXa0e4Fs
 ySLqdO9QYSX3zEEfR1N2MMGbzKAUdW0BtpA5+AMAXIUTfOr84oTPYyFfDpexqh5okPGVah7ls
 zjlR3lD5S8Jbg6keKcw7H+tC0lYDkbTgbqGcWwbhY62ELZ9M7n5Wqwq1Lf5kGXhh8vDaGjf/k
 ApwBvQ+/HFpjqg8CuXvPHGe8w3WzT5vyKa3OWJPiRmeosNTWlLF/3b0b1C8M6vIcppUCp7bB0
 pZb9drBvDYumrurtYZcWblRoTzRXNiHly1mmGLwXSRFwIbGdkIQiWSPLUVX76sdMszU01EicS
 40eDdlgfTZgUp6iKAgQckD1LXO/fhmvV3M+aOl6dXmFrLgXNDoWKLPJLT6P4JlhQ8rQhWVoOL
 tYR9SE92+vgJmHztH8MsNAJQTdE4YAA4vskdLxD93nS5tfHk69y3KRMbRxtyt8uvr8sZZ+Frk
 +VFwTRTJ2P9LnabUiyeYkPc3C1FJFUFthO8ExDM8oqviyZLbOd9XLWZMTDxPjvl9j4cyPV9rx
 RgzyA13Ji8t+Ffid+ljUSOOQj9s99OPehLmEGqlpbqcqUwLPLYUQy/2pdP7wOh66wwj1O/Hle
 4rPk49rQaeDD90InhCegZvyGQBSK7ShSu07PbNmKLmKejHfJPj7L2akBrS+wb1gw4pvKOZ//E
 yWxzA0MZ67swu52Mk3xfS69hBkEv1CbTwXECcZCLNYQPcwMlJ6Lcaq4noDD76QmKrHvAC5E0d
 UVVSy0TXJ4YnpSyv6ahdY26/KLB01LNUd8Cu86cmWFR2caa0/qtWMVWUtkDozzYd78R+oHESV
 7erhF0XnkdBw13dxBIdx0Vy0B8wa9iOtUO3qlkY0nPoEst0AZJNZKtDBBf/6BV+uB6fTnvACP
 7rxmbg36qN0IBjRVh05SyOxraZQjYeU6auJMp99BGst3fTImRRyZMmWDa57oZvEQbno322Inx
 UjdlpNBtHiiPk/hFHqwg1qVHdW7K1FxJcq51cjhQRy5rYVgp6OGWpztnLvIG9GDfVYsjckehp
 oFHIuHMe2lpbiRan7xHyevJ0JE9t/Dz6bwWrXtkrUG10YIsriO1ADrJBB1g/fsyJheqIMU9Zf
 OLb0lQj0xVMp84l5aDqSZ8Tq2hc9N8vQfjeua2A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_004346_114641_C3ED09B8 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 linux-kernel@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 Andy Yan <andyshrk@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Vicente Bergas <vicencb@gmail.com>, Oskari Lemmela <oskari@lemmela.net>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Vivek Unune <npcomplete13@gmail.com>,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.11.19 01:51, Kever Yang wrote:
> Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
> will be 'enable' with the dts node at a default PWM state with high or low
> output. Both too high or too low for vdd_log is not good for the board,
> add init voltage for driver to make the regulator get into a know output.
>
> Note that this will be used by U-Boot for init voltage output, and this
> is very important for it may get system hang somewhere during system
> boot up with regulator enable and without this init value.
I think it's a good idea to include this setting in the main dts for the
boards (not in u-boot specific additions as is done now). But there is
(for some reason?) no documented binding for regulator-init-microvolt in
linux.

Regards,
Soeren
>
> CC: Elaine Zhang <zhangqing@rock-chips.com>
> CC: Peter Robinson <pbrobinson@gmail.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-evb.dts          | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts       | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 1 +
>  9 files changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> index 77008dca45bc..fa241aeb11b0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> @@ -65,6 +65,7 @@
>  		regulator-name = "vdd_center";
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		regulator-always-on;
>  		regulator-boot-on;
>  		status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> index 92de83dd4dbc..4e45269fcdff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> @@ -208,6 +208,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <430000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> index c133e8d64b2a..692f3154edc3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> @@ -100,6 +100,7 @@
>  		regulator-name = "vdd_log";
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		regulator-always-on;
>  		regulator-boot-on;
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> index 4944d78a0a1c..c2ac80d99301 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> @@ -79,6 +79,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vsys_3v3>;
>  	};
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> index 73be38a53796..c32abcc4ddc1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> @@ -101,6 +101,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> index 0541dfce924d..9d674c51f025 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> @@ -164,6 +164,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 19f7732d728c..7d856ce1d156 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -129,6 +129,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc3v3_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index e544deb61d28..8fbccbc8bf47 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -174,6 +174,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1700000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 1bc1579674e5..f8e2cb8c0624 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -133,6 +133,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc_sys>;
>  	};
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
