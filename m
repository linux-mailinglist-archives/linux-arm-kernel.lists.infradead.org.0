Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F947AC16
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEweRwP+nEqQbFFdp/mfYmjATQVv4e6PKo1xp/k0Rqc=; b=Tpb+Z0Zpkltaf6
	psDLtHExlRsczTK6hbpTsvUyeEKEQ9srPREvgv8XyjWPhKZU2GY+GXVLCjxOdQk3EJUayxqnXJ9cR
	xi1f+M87ranIsgnD4s5AhJ6TAypBtGbJurnXtkX7VqCTDnUrSQQ/RPEqs84q6G7rhf33FvAogTqtQ
	P5takvKen8I+yUjJ6PwXGsUmYP/nOSmv7g/wBv8pz9oV8IsJiXayfyjLb1Ivx74vB8jF9VStQksWf
	LTUnpfzUV+DC+hDF1sadlW3KASeJUoGiKbOhp4WYsFTcwAV97pD35ue2cC63O3TfC95GVzFyZMoi/
	zC+il7pEGSQkmmdR+JFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTqv-0005GH-Bf; Tue, 30 Jul 2019 15:15:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTqL-0004e3-5t
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:15:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so56985778wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 08:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=EhbeQO/sbzX1wCFvm0GZWm7qJ3FO4A/C4w34t6g3cpo=;
 b=DXlIl4nTqmEe7C7/5F7DyN6jaUMILc8SxV+MZ+XIY/GdFJ3v2rNd+hN2huyzCHuN9R
 OOzmiVARYtsgGUFuXK8i7D9xBWc9v5RxEQTU+yVz+xijDJyx5mi9D6nnjdTDABNye0gB
 uPCAvcIgnr4KGa2W/PZooIjYfMJki0pmaog+X4TVw39JIXLl93sTJMUiT2LBqR4qP1Nx
 90FNFkr2q+3xm/Fka55psfudHJX0DoECcCYTC6wldMoBm0JswliVR5ntSmmLyFXFIqzG
 MBJgwIVib1u6Jnb4WylEoIhpHKhbgUyFyW6zGwwjJSEiOHjWcrHON17EovmXePOsiP5C
 uobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=EhbeQO/sbzX1wCFvm0GZWm7qJ3FO4A/C4w34t6g3cpo=;
 b=sZXAoDRWM/omOW9/87U2aOYIThEy1nbmqq/oy+YBgwHgPl0HRmPGLM8keNZkptFDGt
 4bSsHjfhYa3G9Bj5UO2AQAfILEB6H4BZ0Qpu+9hLsMly3KHNHpW9u1FoRofy7ASIxWns
 pEHYDDfn4j2ZrqrWT+JbWvGSkdu31WVZaFXBaEgrtV41XZxcPLq/qXA5x8kbk4ni+V1x
 5Pfp1nC+QevNrx2fvfaj0JOJJyCc/qYdpVIY8oXSt7ffeXpLdKDSEbPXNy4ZMVlv59ys
 Vfhh4LvGg6vwpqKABBw5Nc0+/7uNX7vuix4fWQm9eTDVIpDFaTQSG7On9TOLRSACjFDL
 2eZQ==
X-Gm-Message-State: APjAAAXMOp+0mt7HC0fd7xRyvYHZMFFRgSnItk94Nj5Gy2htETRuQXsO
 yCoKzC8Q7xUK7V6Ueo0T0uvIzGd10Hc=
X-Google-Smtp-Source: APXvYqyGJA1QmlIk0WavFwyd3FuLAcipXt35xDK8prAqwNkvc0mdR71OIZgBEefsIdB20yaaOHp7UA==
X-Received: by 2002:a1c:7f93:: with SMTP id
 a141mr106145494wmd.131.1564499711059; 
 Tue, 30 Jul 2019 08:15:11 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y7sm48075361wmm.19.2019.07.30.08.15.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 08:15:10 -0700 (PDT)
Subject: Re: [PATCH 2/4] clk: meson: regmap: export regmap_div ops functions
To: jbrunet@baylibre.com
References: <20190729131656.7308-1-narmstrong@baylibre.com>
 <20190729131656.7308-3-narmstrong@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <cd1d5041-3f48-93ba-ad66-8737a2e3cde9@baylibre.com>
Date: Tue, 30 Jul 2019 17:15:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729131656.7308-3-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_081513_401204_EAFAFBDE 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/07/2019 15:16, Neil Armstrong wrote:
> The G12A CPU Clock Postmux divider needs a custom div_set_rate() call.
> 
> Export the clk_regmap_div_round_rate() and clk_regmap_div_recalc_rate()
> to be able to override the default clk_regmap_div_set_rate() callback.

Signoff missing.... will fix in v2

> ---
>  drivers/clk/meson/clk-regmap.c | 10 ++++++----
>  drivers/clk/meson/clk-regmap.h |  5 +++++
>  2 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/meson/clk-regmap.c b/drivers/clk/meson/clk-regmap.c
> index dcd1757cc5df..26c8c74a8cf0 100644
> --- a/drivers/clk/meson/clk-regmap.c
> +++ b/drivers/clk/meson/clk-regmap.c
> @@ -56,8 +56,8 @@ const struct clk_ops clk_regmap_gate_ro_ops = {
>  };
>  EXPORT_SYMBOL_GPL(clk_regmap_gate_ro_ops);
>  
> -static unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
> -						unsigned long prate)
> +unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
> +					 unsigned long prate)
>  {
>  	struct clk_regmap *clk = to_clk_regmap(hw);
>  	struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
> @@ -74,9 +74,10 @@ static unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
>  	return divider_recalc_rate(hw, prate, val, div->table, div->flags,
>  				   div->width);
>  }
> +EXPORT_SYMBOL_GPL(clk_regmap_div_recalc_rate);
>  
> -static long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
> -				      unsigned long *prate)
> +long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
> +			       unsigned long *prate)
>  {
>  	struct clk_regmap *clk = to_clk_regmap(hw);
>  	struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
> @@ -100,6 +101,7 @@ static long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
>  	return divider_round_rate(hw, rate, prate, div->table, div->width,
>  				  div->flags);
>  }
> +EXPORT_SYMBOL_GPL(clk_regmap_div_round_rate);
>  
>  static int clk_regmap_div_set_rate(struct clk_hw *hw, unsigned long rate,
>  				   unsigned long parent_rate)
> diff --git a/drivers/clk/meson/clk-regmap.h b/drivers/clk/meson/clk-regmap.h
> index c4a39604cffd..ebf776a32ce3 100644
> --- a/drivers/clk/meson/clk-regmap.h
> +++ b/drivers/clk/meson/clk-regmap.h
> @@ -78,6 +78,11 @@ clk_get_regmap_div_data(struct clk_regmap *clk)
>  	return (struct clk_regmap_div_data *)clk->data;
>  }
>  
> +unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
> +					 unsigned long prate);
> +long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
> +			       unsigned long *prate);
> +
>  extern const struct clk_ops clk_regmap_divider_ops;
>  extern const struct clk_ops clk_regmap_divider_ro_ops;
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
