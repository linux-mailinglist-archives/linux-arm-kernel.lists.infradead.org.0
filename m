Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99FF1312AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:17:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wmU4pXJKtZmapBrtccnQWgh24fO4pXXVMn2YEkVy90=; b=dqh/CZHqdj7/HV
	4r7CTtj7JzmRAIcCXpYtfKATamR36tnlju7LT1EAluI0JyTkKu+wpKsvoYzjEDt2Hd3WTAm/ok7Lo
	tMd5g5hYXy0TjwsaIVs5/kWsPad6YH3KdsBgVEmkeB7YnWq4+Z5HKxBw5BLIRvMdd17EEinzif2ZK
	W3QzNkYPKpN7Mm+oKpEKAExlnN7LJ8JGWVUcTvG+DW1yRoWEVk5bAhflf9G7QIlSjbOVBQsu7ddw/
	acAksolKBswVZQ0C10t9/F4iEzsIc0gdb0Wwe2jDDa3yTCk1MCL3XWGPfiFbwunfqPVtNYQ7POI0V
	1+ZYsgCntWg+lJzOlIkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSFi-00043o-GH; Mon, 06 Jan 2020 13:17:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSFb-000435-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:16:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so15202471wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JajloRuw8U7XOZoX2cXSkCo4A7nWI2wZuwgyNKCOj/M=;
 b=uttjn4em0CyLmEhnha5LqSoFyYG+CnUkNKONwb4WUWRzcitFEFdAobv+D72GBAG/fM
 +w5MQQ44Q/ics11PV3NAQIBk5qPZYop1OMfThoVLO0gZfIJtqq2DV/nVCPkmobPhR2GI
 piyhXlPPJ1p7bZHuy9EzCdSJp9nIVllo1inLH605p3jWpUjWY/RJnFjMnLviRi+RvYTA
 cgk65EgnuzHE7iXYL+2YgDE/BgIGiPuku/kj5/b3NyCPeCIobUD67m2ZtFsUTH1m8pqm
 u135uhE64HZFz0XhtT8S+hSwBPvys5vUVl4U9wzSYsQ+Fw6ZGYPESIrH6khvml43SK1A
 uysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JajloRuw8U7XOZoX2cXSkCo4A7nWI2wZuwgyNKCOj/M=;
 b=Mv1US+FHilY8PEgOCkFqyyMD/Khge30PWVeOCeZI53IvbDiqkbXVseF91RFn6aJGju
 nzLyY07Y2hWD+4djrGy/3N1hnLTRy+xqVVSq1Pidwqo0ALIg6/P7xXSyX0XSfa2RAOAs
 M9C6X066PHafffjEwwr8mRIkEBH+J8LS7btaDq5ITznI+D5YG6+OKcCTY3ZDYNvcDK5N
 WzRvSJwC4Xe7LWj0rKGy/yAen/OKJ+vizhY4PyjvoOZz0V3Ts0YRVUdKaelbiHHooE/v
 OyNYOxMx8poX/VQkgmO5CD2u4W3fNSctW67Qcxkn3corXGZ/bdbwrmh/nQ24WLMPwUgw
 RJ6w==
X-Gm-Message-State: APjAAAV34O7lWDrcDfJaK57oLLjZAHaA1x1M/cFvqyBviUySQr5T/oQ0
 z5p+J/2ZgDNIqGfvJPgOoHvE0niOOo+MSQ==
X-Google-Smtp-Source: APXvYqxU1EDtOros/uCt+P1y80Mb60GinJZMD7/fD3mv278Ngb4rzSW5+QfFGqXwjokNrDRRzsvJTA==
X-Received: by 2002:a7b:c750:: with SMTP id w16mr36286001wmk.46.1578316612876; 
 Mon, 06 Jan 2020 05:16:52 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b18sm3022974wru.50.2020.01.06.05.16.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 05:16:52 -0800 (PST)
Subject: Re: [PATCH] pinctrl: meson: meson8b: add the GPIOH pinmux settings
 for ETH_RXD{2, 3}
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20191226191425.3797490-1-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <4f395923-fa48-502e-4afb-a06ea5b8417c@baylibre.com>
Date: Mon, 6 Jan 2020 14:16:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191226191425.3797490-1-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_051655_803145_9E02FF93 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/12/2019 20:14, Martin Blumenstingl wrote:
> GPIOH_5 and GPIOH_6 can have two Ethernet related functions:
> - GPIOH_5 can be ETH_TXD1 or ETH_RXD3
> - GPIOH_6 can be ETH_TXD0 or ETH_RXD2
> 
> Add the bits for eth_rxd3_h and eth_rxd2_h so the ETH_RXD function can
> be disabled when using the ETH_TXD function of GPIOH_{5,6}. No problem
> was observed so far, but in theory this could lead to two different
> signals being routed to the same pad (which could break Ethernet).
> 
> These settings were found in the public "Amlogic Ethernet controller
> user guide":
> http://openlinux.amlogic.com/@api/deki/files/75/=Amlogic_Ethenet_controller_user_Guide.pdf
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/pinctrl/meson/pinctrl-meson8b.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/meson/pinctrl-meson8b.c b/drivers/pinctrl/meson/pinctrl-meson8b.c
> index 2d5339edd0b7..6cd4b3ec1b40 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson8b.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson8b.c
> @@ -233,6 +233,8 @@ static const unsigned int hdmi_scl_pins[]	= { GPIOH_2 };
>  static const unsigned int hdmi_cec_0_pins[]	= { GPIOH_3 };
>  static const unsigned int eth_txd1_0_pins[]	= { GPIOH_5 };
>  static const unsigned int eth_txd0_0_pins[]	= { GPIOH_6 };
> +static const unsigned int eth_rxd3_h_pins[]	= { GPIOH_5 };
> +static const unsigned int eth_rxd2_h_pins[]	= { GPIOH_6 };
>  static const unsigned int clk_24m_out_pins[]	= { GPIOH_9 };
>  
>  static const unsigned int spi_ss1_pins[]	= { GPIOH_0 };
> @@ -535,6 +537,8 @@ static struct meson_pmx_group meson8b_cbus_groups[] = {
>  	GROUP(spi_miso_1,	9,	12),
>  	GROUP(spi_mosi_1,	9,	11),
>  	GROUP(spi_sclk_1,	9,	10),
> +	GROUP(eth_rxd3_h,	6,	15),
> +	GROUP(eth_rxd2_h,	6,	14),
>  	GROUP(eth_txd3,		6,	13),
>  	GROUP(eth_txd2,		6,	12),
>  	GROUP(eth_tx_clk,	6,	11),
> @@ -746,7 +750,8 @@ static const char * const ethernet_groups[] = {
>  	"eth_tx_clk", "eth_tx_en", "eth_txd1_0", "eth_txd1_1",
>  	"eth_txd0_0", "eth_txd0_1", "eth_rx_clk", "eth_rx_dv",
>  	"eth_rxd1", "eth_rxd0", "eth_mdio_en", "eth_mdc", "eth_ref_clk",
> -	"eth_txd2", "eth_txd3", "eth_rxd3", "eth_rxd2"
> +	"eth_txd2", "eth_txd3", "eth_rxd3", "eth_rxd2",
> +	"eth_rxd3_h", "eth_rxd2_h"
>  };
>  
>  static const char * const i2c_a_groups[] = {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
