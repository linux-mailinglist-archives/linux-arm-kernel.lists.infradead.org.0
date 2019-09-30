Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E08C1D13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnBS4sEQYr/CRA1KU3ijFEHB5Xkz+voRa7tIEIo2hRI=; b=HWPVSBh7VqnSOX
	iv//JPRS3aC7b7cLoxyKqexkMV/mzttf4c3DIvUYIcuUakeCqeiMbydTRqCf6rZyzMKEnMzCdaeoO
	CYHIHp5P5AOnPrPT4U2i3WLrvcaYIHQoiKynQKubIKxQRGDh5sZXUybJoqVhHqTdVSILzX9qIT3Xg
	azt3HdRgV1J5DIWCm7pIekb4C4mMX74SpNHC9hPd/APU1LQDzCkUq05OPBktbD4kiP3Q8OvUtnaKY
	YHPbHLtnRUcZVEMZHJwL8Gd4s2EhyAhxi94xLdJNnLIeD6elhRKUK2oeWSzYb1+P3w/OnG0/jezGl
	TnaRSBDUiMs6Za36BhhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqxh-0001kz-9y; Mon, 30 Sep 2019 08:23:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEquF-0005rk-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:19:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id i1so10141571wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sTtLExAZUDqto9elcG2wBU4oj3KBERgKskP3MU4MTqc=;
 b=EeIByHWZ+VtCWDzeyWTTU6XMXivxQJsXAL5AkBe08MN9lRMyVO/2xgJzJ85NjrbqpH
 xS7D60lMFnZmR8wxDu15KZL2fpbpqHJ5wcC3kfo4pvMukW104t1ewwHwLiHtCuVyCkSG
 lrd4J1PmLyrJlI4R9aibpt3N0mGWrtfGyMbO4d9JFWvGbCxdMs/CgTw/WJzAOvzId/TI
 sTDLbk09qNugbbK0RywlDaDUI7PTBteL25DP5Oh2ADLs4LkzwlhwtbuXy9znB/6SQxy2
 AjTz034HqX+v4kRioG2R398qO+lcSONRpbUTcecVnJH4RuT9B2Mrhw4UD8GCLfTCkRMR
 yIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sTtLExAZUDqto9elcG2wBU4oj3KBERgKskP3MU4MTqc=;
 b=dkYSg5kpHZ3eICd8NyyUylonMlCeg48sHRLDuh7AQ9Fji9o9wjpGcGXHsTSYKWbLdw
 c2AcU7AtTYJni9jZK5Hl1srnOxwxOrv0RXn+yqYXLS1/sVwMDgVjhWkKGH3Dwqrt67Us
 3EYWL6UTt7RRAKXNdnnz8/8j/qtVwVvYIZpBzkeeteQMvdecaTRIdYEk0EMAGCfkDdPK
 sP8rPE2dHg3CeSELcbvlxH6l39GJfyzIjnDd4Rh97ZYPEr0a0bKpdjIMQhXuuJ39CEQi
 2MzBbBc4oYJIrNyV0QtHiuOH++5L4qQQuDAHMaEaH3Ja19YuYeweUziOY/6YxJF3RAPl
 jEDg==
X-Gm-Message-State: APjAAAV3Yb3wc5GZqJUqXy6JIjxbuiCgDuCEwtf1QksB/C73DJWz0E3P
 NcfwJRwe03j8sqADFrvtyUiKNw==
X-Google-Smtp-Source: APXvYqxAu+cLZcxrwYT1pH8ucvRwOk+EIGXSlH8Oa9k2FrxuU+RbN+P4DaE/1ynIzhQiOSuT6/v4Jg==
X-Received: by 2002:adf:dbc6:: with SMTP id e6mr11964509wrj.149.1569831582291; 
 Mon, 30 Sep 2019 01:19:42 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x5sm17914950wrg.69.2019.09.30.01.19.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 01:19:41 -0700 (PDT)
Subject: Re: [PATCH v6 6/7] arm64: dts: amlogic: g12b: add cooling properties
To: Guillaume La Roque <glaroque@baylibre.com>, amit.kucheria@linaro.org,
 rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org
References: <20190927184352.28759-1-glaroque@baylibre.com>
 <20190927184352.28759-7-glaroque@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 mQENBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAG0KE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT6JATsEEwEKACUC
 GyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJXDO2CAhkBAAoJEBaat7Gkz/iubGIH/iyk
 RqvgB62oKOFlgOTYCMkYpm2aAOZZLf6VKHKc7DoVwuUkjHfIRXdslbrxi4pk5VKU6ZP9AKsN
 NtMZntB8WrBTtkAZfZbTF7850uwd3eU5cN/7N1Q6g0JQihE7w4GlIkEpQ8vwSg5W7hkx3yQ6
 2YzrUZh/b7QThXbNZ7xOeSEms014QXazx8+txR7jrGF3dYxBsCkotO/8DNtZ1R+aUvRfpKg5
 ZgABTC0LmAQnuUUf2PHcKFAHZo5KrdO+tyfL+LgTUXIXkK+tenkLsAJ0cagz1EZ5gntuheLD
 YJuzS4zN+1Asmb9kVKxhjSQOcIh6g2tw7vaYJgL/OzJtZi6JlIW5AQ0ETVkGzwEIALyKDN/O
 GURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYpQTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXM
 coJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hi
 SvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY4yG6xI99NIPEVE9lNBXBKIlewIyVlkOa
 YvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoMMtsyw18YoX9BqMFInxqYQQ3j/HpVgTSv
 mo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUXoUk33HEAEQEAAYkBHwQYAQIACQUCTVkG
 zwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfnM7IbRuiSZS1unlySUVYu3SD6YBYnNi3G
 5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa33eDIHu/zr1HMKErm+2SD6PO9umRef8V8
 2o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCSKmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+
 RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJ
 C3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTTQbM0WUIBIcGmq38+OgUsMYu4NzLu7uZF
 Acmp6h8guQINBFYnf6QBEADQ+wBYa+X2n/xIQz/RUoGHf84Jm+yTqRT43t7sO48/cBW9vAn9
 GNwnJ3HRJWKATW0ZXrCr40ES/JqM1fUTfiFDB3VMdWpEfwOAT1zXS+0rX8yljgsWR1UvqyEP
 3xN0M/40Zk+rdmZKaZS8VQaXbveaiWMEmY7sBV3QvgOzB7UF2It1HwoCon5Y+PvyE3CguhBd
 9iq5iEampkMIkbA3FFCpQFI5Ai3BywkLzbA3ZtnMXR8Qt9gFZtyXvFQrB+/6hDzEPnBGZOOx
 zkd/iIX59SxBuS38LMlhPPycbFNmtauOC0DNpXCv9ACgC9tFw3exER/xQgSpDVc4vrL2Cacr
 wmQp1k9E0W+9pk/l8S1jcHx03hgCxPtQLOIyEu9iIJb27TjcXNjiInd7Uea195NldIrndD+x
 58/yU3X70qVY+eWbqzpdlwF1KRm6uV0ZOQhEhbi0FfKKgsYFgBIBchGqSOBsCbL35f9hK/JC
 6LnGDtSHeJs+jd9/qJj4WqF3x8i0sncQ/gszSajdhnWrxraG3b7/9ldMLpKo/OoihfLaCxtv
 xYmtw8TGhlMaiOxjDrohmY1z7f3rf6njskoIXUO0nabun1nPAiV1dpjleg60s3OmVQeEpr3a
 K7gR1ljkemJzM9NUoRROPaT7nMlNYQL+IwuthJd6XQqwzp1jRTGG26J97wARAQABiQM+BBgB
 AgAJBQJWJ3+kAhsCAikJEBaat7Gkz/iuwV0gBBkBAgAGBQJWJ3+kAAoJEHfc29rIyEnRk6MQ
 AJDo0nxsadLpYB26FALZsWlN74rnFXth5dQVQ7SkipmyFWZhFL8fQ9OiIoxWhM6rSg9+C1w+
 n45eByMg2b8H3mmQmyWztdI95OxSREKwbaXVapCcZnv52JRjlc3DoiiHqTZML5x1Z7lQ1T3F
 8o9sKrbFO1WQw1+Nc91+MU0MGN0jtfZ0Tvn/ouEZrSXCE4K3oDGtj3AdC764yZVq6CPigCgs
 6Ex80k6QlzCdVP3RKsnPO2xQXXPgyJPJlpD8bHHHW7OLfoR9DaBNympfcbQJeekQrTvyoASw
 EOTPKE6CVWrcQIztUp0WFTdRGgMK0cZB3Xfe6sOp24PQTHAKGtjTHNP/THomkH24Fum9K3iM
 /4Wh4V2eqGEgpdeSp5K+LdaNyNgaqzMOtt4HYk86LYLSHfFXywdlbGrY9+TqiJ+ZVW4trmui
 NIJCOku8SYansq34QzYM0x3UFRwff+45zNBEVzctSnremg1mVgrzOfXU8rt+4N1b2MxorPF8
 619aCwVP7U16qNSBaqiAJr4e5SNEnoAq18+1Gp8QsFG0ARY8xp+qaKBByWES7lRi3QbqAKZf
 yOHS6gmYo9gBmuAhc65/VtHMJtxwjpUeN4Bcs9HUpDMDVHdfeRa73wM+wY5potfQ5zkSp0Jp
 bxnv/cRBH6+c43stTffprd//4Hgz+nJcCgZKtCYIAPkUxABC85ID2CidzbraErVACmRoizhT
 KR2OiqSLW2x4xdmSiFNcIWkWJB6Qdri0Fzs2dHe8etD1HYaht1ZhZ810s7QOL7JwypO8dscN
 KTEkyoTGn6cWj0CX+PeP4xp8AR8ot4d0BhtUY34UPzjE1/xyrQFAdnLd0PP4wXxdIUuRs0+n
 WLY9Aou/vC1LAdlaGsoTVzJ2gX4fkKQIWhX0WVk41BSFeDKQ3RQ2pnuzwedLO94Bf6X0G48O
 VsbXrP9BZ6snXyHfebPnno/te5XRqZTL9aJOytB/1iUna+1MAwBxGFPvqeEUUyT+gx1l3Acl
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <e57cd8d9-5174-bd1b-e091-98d6328f7891@baylibre.com>
Date: Mon, 30 Sep 2019 10:19:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190927184352.28759-7-glaroque@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011943_858274_7A7171C5 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/09/2019 20:43, Guillaume La Roque wrote:
> Add missing #colling-cells field for G12B SoC
> Add cooling-map for passive and hot trip point
> 
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 29 +++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> index 98ae8a7c8b41..4bb89bce758f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> @@ -49,6 +49,7 @@
>  			reg = <0x0 0x0>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -57,6 +58,7 @@
>  			reg = <0x0 0x1>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu100: cpu@100 {
> @@ -65,6 +67,7 @@
>  			reg = <0x0 0x100>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu101: cpu@101 {
> @@ -73,6 +76,7 @@
>  			reg = <0x0 0x101>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu102: cpu@102 {
> @@ -81,6 +85,7 @@
>  			reg = <0x0 0x102>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu103: cpu@103 {
> @@ -89,6 +94,7 @@
>  			reg = <0x0 0x103>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		l2: l2-cache0 {
> @@ -219,3 +225,26 @@
>  &sd_emmc_a {
>  	amlogic,dram-access-quirk;
>  };
> +
> +&cpu_thermal {
> +	cooling-maps {
> +		map0 {
> +			trip = <&cpu_passive>;
> +			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +		map1 {
> +			trip = <&cpu_hot>;
> +			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
