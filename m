Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A8B196659
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 14:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk2ypYWqQ6AZYFIRAVYh3ygw0hScOSFuc4V0yHgoaA4=; b=lF0C7gTNYYHbG4
	kiuKQIt1glU3FJilmvEPcuMmP5xfi7PV0oveWsk8AEWEonSae2PGpB3D5kuCUf1QDRS3TX3VbY8m8
	cT4gm6dZWCY4kxA/vNmN0W23DWnYR/EmSxNwKm2ZoaT14nTfqmTqaXUnXnvEYIid2xOhq4lBpiYN7
	2xr3osSMGYCKsW0s56Gt0ks8uxCoD/cmA7Pesz2XezFsi8Gu9sBU/2I+CvaMkJBe2AZGoMuQ0t/cc
	cZvk8u1gZLvxEOaTmzYTxnZB32/U4fygee1rYkc5hcI2YaFwbqCS4+DjMxy2w4dkwQJlJf8Ai83ip
	juAh6RBWRLKw1t0O4ZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIBXv-0007kH-D4; Sat, 28 Mar 2020 13:30:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIBXn-0007jl-Au
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 13:30:36 +0000
Received: by mail-lf1-x143.google.com with SMTP id e7so10159037lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 06:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=fpTSSh5tRpcFW0jsHvOATJRcyb91oxueGaMFFSV1vFE=;
 b=Eb4Ag3N7bVLIE8P2nqKmqwIgtQ/mRsSq3LqTMcUzn9Lok+qeOu7vS5eZ7arSpVa9bZ
 OGilMipCBgUQx5zzq8QT/fgJgdFhuOTlOUWEGxYxyxORXVL9Qfbwb6aBHyFzJWoSf3QM
 +matoSkgAthKaHGj7Ub+6QkYHmRTSelDPzlE+JFEiJ/CGKpgNUPoHHkJHc2JANBKki/F
 IM0Go9udle+p5LQcwgExMEOjTan9cgaxuQ51T6Cz21DVc6wvUy3OPZ7SzgYRqTmE5ZBD
 jgSyDocQ29ekqhnT0kw5d3FFla8ikPr+cpwlC9qdyt1d+zRDWfZR3QR1k1JZ5c1zoM2o
 xyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=fpTSSh5tRpcFW0jsHvOATJRcyb91oxueGaMFFSV1vFE=;
 b=pcq47uLjGlIN+h3Gpts3GA3M1/QPeQ2brseUCwVnY8PPkuqPd1/Q49LYV3fP7XhSfv
 FbFGAH7J+5haIybL7OT0908BUnw44j1fY+BaZ4PFKfbVJ0H959FEw/WjQpGSDNLN2Gxg
 DHneikEosQ4G4nYPWyDjCDjlH1obTEto5cuxAQpaMB3YFEScmryerRVv356NEf4yiJym
 08e4VWPXkrYUJzzE80GAu3k5pNAed3B1K/wCAsyxkNffQwMZAlJM0TxfFiLrBc4eRk+i
 HkuhVKpd6Alab4srP9AxdPzbmL3i2CSlu0oDyJA4oHY2jsCVkfCnJxqhQSqVy3cqgXuj
 iD7Q==
X-Gm-Message-State: AGi0PuY0Hs6MAs5tZyrhygkQkKVUwqgl7BA+tqbMmL/rSr0OOZTnlJkD
 JcjMuF8XtJwI+/nenZEGx9E=
X-Google-Smtp-Source: APiQypL1izzm57YETsCZdu0nqNghep3RFILqeIvIMSa2s1rNdZBiMtx2esbl9T6Q7UrptjZF/I8wvA==
X-Received: by 2002:a19:c507:: with SMTP id w7mr1473474lfe.131.1585402231872; 
 Sat, 28 Mar 2020 06:30:31 -0700 (PDT)
Received: from pablo-laptop ([2a02:a315:5445:5300:4fd:4b14:6ece:986c])
 by smtp.googlemail.com with ESMTPSA id q10sm4441444lfa.29.2020.03.28.06.30.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 06:30:31 -0700 (PDT)
Message-ID: <ac67cfc3736cf50c716b823a59af878d59b7198f.camel@gmail.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: Add node for ufs exynos7
From: =?UTF-8?Q?Pawe=C5=82?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, robh+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Date: Sat, 28 Mar 2020 14:30:29 +0100
In-Reply-To: <20200327170638.17670-6-alim.akhtar@samsung.com>
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171423epcas5p485d227f19e45999ad9b42b21d2864e4a@epcas5p4.samsung.com>
 <20200327170638.17670-6-alim.akhtar@samsung.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_063035_403361_C8C2067A 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pawel.mikolaj.chmiel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-27 at 22:36 +0530, Alim Akhtar wrote:
> Adding dt node foe UFS and UFS-PHY for exynos7 SoC.
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../boot/dts/exynos/exynos7-espresso.dts      | 16 +++++++
>  arch/arm64/boot/dts/exynos/exynos7.dtsi       | 43 ++++++++++++++++++-
>  2 files changed, 57 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
> index 7af288fa9475..b59a0a32620a 100644
> --- a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
> +++ b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
> @@ -406,6 +406,22 @@
>  	};
>  };
>  
> +&ufs {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
> +	ufs,pwr-attr-mode = "FAST";
> +	ufs,pwr-attr-lane = <2>;
> +	ufs,pwr-attr-gear = <2>;
> +	ufs,pwr-attr-hs-series = "HS_rate_b";
> +	ufs-rx-adv-fine-gran-sup_en = <1>;
> +	ufs-rx-adv-fine-gran-step = <3>;
> +	ufs-rx-adv-min-activate-time-cap = <9>;
> +	ufs-pa-granularity = <6>;
> +	ufs-pa-tacctivate = <3>;
> +	ufs-pa-hibern8time = <20>;
> +};
> +
>  &usbdrd_phy {
>  	vbus-supply = <&usb30_vbus_reg>;
>  	vbus-boost-supply = <&usb3drd_boost_5v>;
> diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
> index 5558045637ac..9d16c90edd07 100644
> --- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
> @@ -220,9 +220,14 @@
>  			#clock-cells = <1>;
>  			clocks = <&fin_pll>, <&clock_top1 DOUT_ACLK_FSYS1_200>,
>  				 <&clock_top1 DOUT_SCLK_MMC0>,
> -				 <&clock_top1 DOUT_SCLK_MMC1>;
> +				 <&clock_top1 DOUT_SCLK_MMC1>,
> +				 <&clock_top1 DOUT_SCLK_UFSUNIPRO20>,
> +				 <&clock_top1 DOUT_SCLK_PHY_FSYS1>,
> +				 <&clock_top1 DOUT_SCLK_PHY_FSYS1_26M>;
>  			clock-names = "fin_pll", "dout_aclk_fsys1_200",
> -				      "dout_sclk_mmc0", "dout_sclk_mmc1";
> +				      "dout_sclk_mmc0", "dout_sclk_mmc1",
> +				      "dout_sclk_ufsunipro20", "dout_sclk_phy_fsys1",
> +				      "dout_sclk_phy_fsys1_26m";
>  		};
>  
>  		serial_0: serial@13630000 {
> @@ -601,6 +606,40 @@
>  			};
>  		};
>  
> +		ufs: ufs@15570000 {
> +			compatible = "samsung,exynos7-ufs";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +			reg = <0x15570000 0x100>,  /* 0: HCI standard */
> +				<0x15570100 0x100>,  /* 1: Vendor specificed */
> +				<0x15571000 0x200>,  /* 2: UNIPRO */
> +				<0x15572000 0x300>;  /* 3: UFS protector */
> +			reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +			interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
> +				<&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
> +			clock-names = "core_clk", "sclk_unipro_main";
> +			freq-table-hz = <0 0>, <0 0>;
> +			pclk-freq-avail-range = <70000000 133000000>;
> +			ufs,pwr-local-l2-timer = <8000 28000 20000>;
> +			ufs,pwr-remote-l2-timer = <12000 32000 16000>;
> +			phys = <&ufs_phy>;
> +			phy-names = "ufs-phy";
> +			status = "disabled";
> +		};
> +
> +		ufs_phy: ufs-phy@0x15571800 {
> +			compatible = "samsung,exynos7-ufs-phy";
> +			reg = <0x15571800 0x240>;
> +			reg-names = "phy-pma";
> +			samsung,pmu-syscon = <&pmu_system_controller>;
> +			#phy-cells = <0>;
> +			clocks = <&clock_fsys1 MOUT_FSYS1_PHYCLK_SEL1>,
> +				<&clock_top1 CLK_SCLK_PHY_FSYS1_26M>;
> +			clock-names = "ref_clk_parent", "ref_clk";
Hi
Is this correct (aren't child and parent clock swapped)?
This will set MOUT_FSYS1_PHYCLK_SEL1 to be parent clock of
CLK_SCLK_PHY_FSYS1_26M.
I've tested this on Exynos7420 (which looks like can use the same clock
driver as exynos7) and after adding some debug code (because currently
we're not handling result of samsung_ufs_phy_clks_init) i got

samsung-ufs-phy 15571800.ufs-phy: clk_set_parent result: -22

On vendor sources for this device, driver was setting
CLK_SCLK_PHY_FSYS1_26M to be parent of MOUT_FSYS1_PHYCLK_SEL1, and then
it did run without error.

samsung-ufs-phy 15571800.ufs-phy: clk_set_parent result: 0

Also looking at clk-exynos7 driver seems to confirm this.

> +		};
> +
>  		usbdrd_phy: phy@15500000 {
>  			compatible = "samsung,exynos7-usbdrd-phy";
>  			reg = <0x15500000 0x100>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
