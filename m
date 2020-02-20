Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E67C166732
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 20:31:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qb5N/2FHDLM8jFC8l0kWLAgDMUQ11+gvaH1bBqjM+Y=; b=q+sg4MGSQwNSWG
	U91eLXQ+nN03kXi/RtLgHHrJaPVx/A25SFSEe3qCdg4daHYL28TucfXWizh9+fB6gpjDChhfmCcVa
	Cnx4q8+rEqe/TkN4hucxUfXqhL6BdzHpEPH0MxkZ30WTIBDP2wIqfyF4khRZXIuC+gFDC0lD853zK
	7na1kx1z7ju0QkcB2Rz3Mh3HPbuR2pc0QDv8lbwcAaOLg/9avtrqcWX3VuqRwSo5VMghLkCG55UfX
	0H7UqLOpQ1dTYXPbGyrCmLqq8a5JdGPNaoZWhWRGFGRNw71IO3rb7e7OV2bGlliO6k7eJc7nwIKrD
	aJqHKIFex5Lc/Z2TbobQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rXx-0007VY-BC; Thu, 20 Feb 2020 19:31:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rXo-0007UC-EC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 19:31:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id e8so5944671wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 11:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=DYNEng+7zD6OFMtDudcYE3wzE2+5a/X4a0VlHsXEIpM=;
 b=OGlPGfGUSkgbEdmuMrVZ8vkKL75x5aaCabHCqh9VsD/lXRWghC/0VsZQQ14UVDhb9b
 nhQd2LWug7n9sjnJYZNBIXWEareEVbQpp+SFlXuslZtAx/UyfCvhMaMySFquuxJJz78u
 08iQcycCqNbQ/mDE4bfjDst4GaK0gFNINjk9J3FAs2c8xbdIAM1HdFTzhiDAuVEaGArX
 2YOeZn69T2YPAFkvRjOEZf+wpto+6H2Gj19FMRRCBACSSHD7e2MlEB3aCVMqf2L7MUbo
 5RzsioMu/RWUL02KFTR6MhtC55FAwmQIS9LIXb586m5O79RXO6L4pvvL9Vbz1SN+YC9y
 hWJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=DYNEng+7zD6OFMtDudcYE3wzE2+5a/X4a0VlHsXEIpM=;
 b=oKmNCIPytjsl5bH/1ed0VLup1Lzx6d8t5xGNkSXtxvhyzDuPeLpOHNfgJCMqiEjZON
 pkfSXvLcBqY/NrL9Z1/P+kXGtlmgzfooLkwOR+avRdutgwq0PdlX+105sKbQMzuPRH+4
 PN6dzGky9BJejgX451jWvaSRyV18LaKq5VVt0vlgI8GXcTx0bniKh68Y6NSNwohqk31y
 VmdGPETA6zl5MaKX+4g4tzDFPuIvech1wwuy1cngDry0t6hkCrPZ5tLokPo57nAfNNYl
 eJqBpfbPyqz4dhPmEDHzTbIUlHGNR2O1muSrH5sAof2UzGjYIAiu4acPIWVF8Y4hCrMb
 rCyw==
X-Gm-Message-State: APjAAAUxj7EQuWE2XQXZ2+N0XrSWZx0eWkCrfh3FWwOUQkEYzfBxDIIQ
 v2F1EMG1AApczaSs9uH/r3mkSFYOwGWCyA==
X-Google-Smtp-Source: APXvYqyfBUkzQRvzomJyxmKwUibj1mCUwFcnnPjIXyXQXzSw/m4kvvVCRcxQZCJQ6hJ/ya6U+cn+MQ==
X-Received: by 2002:a5d:4f8a:: with SMTP id d10mr17579533wru.143.1582227087004; 
 Thu, 20 Feb 2020 11:31:27 -0800 (PST)
Received: from Armstrongs-MacBook-Pro.local
 ([2a01:e35:2ec0:82b0:3115:825f:fd46:f0e9])
 by smtp.gmail.com with ESMTPSA id w8sm433876wmm.0.2020.02.20.11.31.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 11:31:26 -0800 (PST)
Subject: Re: [PATCH v2] arm64: dts: meson-gxbb-vega-s95: fix bluetooth node
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1582220642-14133-1-git-send-email-christianshewitt@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <c9d7d7a0-4dc0-8698-ed82-6c0b10990374@baylibre.com>
Date: Thu, 20 Feb 2020 20:31:22 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1582220642-14133-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_113132_479555_75281C5E 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Le 20/02/2020 =E0 18:44, Christian Hewitt a =E9crit :
> This was missed from the previous fix.
> =

> Fixes: b07a11dbdfeb ("arm64: dts: meson-gxbb-vega-s95: fix WiFi/BT module=
 support")
> =

> Suggested-by: Oleg Ivanov <balbes-150@yandex.ru>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/=
arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> index 5eab3df..45cb836 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> @@ -245,6 +245,9 @@
>  	bluetooth {
>  		compatible =3D "brcm,bcm43438-bt";
>  		shutdown-gpios =3D <&gpio GPIOX_20 GPIO_ACTIVE_HIGH>;
> +		max-speed =3D <2000000>;
> +		clocks =3D <&wifi32k>;
> +		clock-names =3D "lpo";
>  	};
>  };
>  =

> =


Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
