Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3114C123F39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 06:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AN5F16AiHoVX9S8uz01uAyMWvuORtxz6g3LSymApIIY=; b=Kf7pIMOcCATDSC
	IhpjTATeE1uMbpPQtc9gP1q8g3rX42BSoPZ01JBOwb/MloucaeuTtB0r+rYTk52xa85UtGjird5gJ
	VLBjDphfuGn70HctMheIpD+7Q4LTLuet52a47s0GwHYXlxug6QLnj91AEFobL1pY8RT7wG05ZeNwF
	nLEBsWFtZrq3LasB77UKmiOmgVB8Rllp8bJswpheR5+z7ZOiIUlhsbx/ssCOnpTyifqhfi4oe9zaR
	xcilq+5n/sH1W3JwXuv8gsCKG0ndUdl//tlGJqCTdt3m2fY9Zcqc2U/OMCjAZzYHbPBtsLp3sN7P6
	nrOyMjGG0F19a8Lk4vHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihS6e-0002TH-Lw; Wed, 18 Dec 2019 05:42:44 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihS6P-0002Rd-CU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 05:42:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so586678pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 21:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xV4KfJlK4YlnhchUUwxKnteaYwdyYGzcZQcMfxQtzso=;
 b=pEEICwashl/t9nYsbZJNVLzXODux5zOMFmXSAptDtsF9vUIfUAI33C2FPralqEaTvY
 1MlZvXRJ4hKdvSRnd4S8+a9babevrFB/uNOVs0XpWwZIZ96uuWorNIbZ3YqkN35i5qaH
 SPRYJrHojpcfB2XlcMwpI8elGpnb94JQJ4orUHclz5Y6aXFEPkfiISDLVxJI95F2uDeb
 tGy4zO4ZbaehRmteUSqEvXYKbcTGCNBMcdcHb0ez7MRkewuR7EOejC0HcZZ+8XsvUPRC
 pk7grQlH5jvmB3CTeiE6n5qJXboxfhhCFXe8qNNWppwOECUgyfrFu/ykxBxUSaARYREH
 ZH8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xV4KfJlK4YlnhchUUwxKnteaYwdyYGzcZQcMfxQtzso=;
 b=d29lnzwsb9N8Dutl6HqgeNOFGxD0VAnpsh3foeYFHJANSmlJqIe0IuFhvS62Lo0S/j
 VCmT10eAqmk7a+1ZkQNszKf11feIybCidXPWFf4lPFHPjeLN3xt9IeEpcwjQNpXZUaCy
 pf3rf4YXa2hwTlhgMaovl7BmTy6wivI/HRfIllBgG0ndA8UzXfwbZbRGD3yl2lv5tAiL
 a2lB+JYAj2HjyRKW7rYy/xhtDIhlEPh4fXulFXtIlocfIyKfkdE959DDbWLQGNwfp6PG
 4bKph0LMuLstCHeL9mWXrToXwUYPB7GD0Tkx1Qxi58WRDRA6pILM/cl3k8IXcAVK2StO
 NbIA==
X-Gm-Message-State: APjAAAVjFdv2+D9SUz3Nl1HhGkgswohTZMTn6Lni66V4dCFlu2TGEbNE
 x2NZsWQAnf5U9WIRuCDAgEhWKQ==
X-Google-Smtp-Source: APXvYqyWesdIIO3qxjlP7JTHe12xBW/M910oPFrSVXRrjw3E1ufF2TfARQMbp5ECnXSXj86QKLMFmg==
X-Received: by 2002:a63:5d03:: with SMTP id r3mr957260pgb.306.1576647747835;
 Tue, 17 Dec 2019 21:42:27 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id g7sm1139962pfq.33.2019.12.17.21.42.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 21:42:27 -0800 (PST)
Date: Tue, 17 Dec 2019 21:42:24 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 2/4] ARM: dts: qcom: Correct USB3503 GPIOs polarity
Message-ID: <20191218054224.GE448416@yoga>
References: <20191211145054.24835-1-m.szyprowski@samsung.com>
 <CGME20191211145213eucas1p2c438f848ba705fa407331bb31b03b626@eucas1p2.samsung.com>
 <20191211145208.24976-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211145208.24976-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_214229_447342_87CE6A31 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11 Dec 06:52 PST 2019, Marek Szyprowski wrote:

> Current USB3503 driver ignores GPIO polarity and always operates as if the
> GPIO lines were flagged as ACTIVE_HIGH. Fix the polarity for the existing
> USB3503 chip applications to match the chip specification and common
> convention for naming the pins. The only pin, which has to be ACTIVE_LOW
> is the reset pin. The remaining are ACTIVE_HIGH. This change allows later
> to fix the USB3503 driver to properly use generic GPIO bindings and read
> polarity from DT.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts b/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
> index 26160c324802..942e3a2cac35 100644
> --- a/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
> +++ b/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
> @@ -143,7 +143,7 @@
>  				compatible = "smsc,usb3503a";
>  				reg = <0x8>;
>  				connect-gpios = <&gpioext2 1 GPIO_ACTIVE_HIGH>;
> -				intn-gpios = <&gpioext2 0 GPIO_ACTIVE_LOW>;
> +				intn-gpios = <&gpioext2 0 GPIO_ACTIVE_HIGH>;
>  				initial-mode = <1>;
>  			};
>  		};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
