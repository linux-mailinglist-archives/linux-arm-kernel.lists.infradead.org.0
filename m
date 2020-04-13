Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0AE1A6B20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Q4hqeyF1qbwogv4X+hagmEV6I2z9jbRXnqOkyMwM0I=; b=Hz6UfyIAPAiuTN
	6pCYCmfhvn5sc6PPK8eBfdGzaxemaEHa2a+JDf4wXzx6mgvDZId5YrQh7qB53agf6LL37qnxYUeHq
	2RoBwEnqhYPK5nZNZXkbwzjSPuSYX3tEYz4S2ggh5La+eKj+OSGk42tKo1zpbD+v7EDoG7T2VTpyb
	g8xJUAiIYBPzPersMRmKwvLtfEpudsGg2tGQqNNn+YCX659xbgRKfMlNzcoKH3BNxYezwq/eAl9kF
	rHBUsQ/uiS0uNMF0Eyj4bTMbyov2UdFCIwQx5zPwnIwCpBRPNvvrRgWpx1CfVmjFkgST4kauwBcWF
	ymkUHkn2gllFy0mHOxGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2g1-0000b2-Qw; Mon, 13 Apr 2020 17:15:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2fP-0000Go-5u; Mon, 13 Apr 2020 17:14:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so10913697wrs.9;
 Mon, 13 Apr 2020 10:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KTfRhFc0H+kwv+SD3/E8dVwgkvnGDmoa9n2LhteLqK8=;
 b=Hv+m/2JavdLZC293G9KifdKah3AYNEZYIE1vcKJ3g1CCQBv2OFkC3ZSogiZ/CflIg8
 nNt3Ke3VYIuairoz1ErUHFlxrKdGHiNNYzENUNEx5SadGfltsOH9cfuDTgYGEAnv98S0
 0duzNFa/lSw71JrxMVgTD9Mvcb7o3u18N+BXzZ4hctvcjh+n/JivY75cl5QPyFrfCzTR
 p3XAq08YVrKvrDKMHsqPJ+l3qb4+FbaGpmB9R3/s8TUAlR7mK6iaF9M6y1EDpqbdl/Ac
 0U3X8Cnzv0IXlDP7RIBZP6HlZ8V//OyMXaxclpN7QyQsQDmL7qvDVogGG9Y0IT4nU4oU
 7Daw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KTfRhFc0H+kwv+SD3/E8dVwgkvnGDmoa9n2LhteLqK8=;
 b=g30UAnY/zYQMUBE1vkPHT7mppEfRY0tJnMlnCF1YSC5zxzVWmENK2j7Ggdwa7Ds7jR
 sMEFAk1x8ChfQeU7QpZV0khERYQaH6rmzq/JYDGNd6rxIkdRHJb82jTB58jELurkdFIe
 58qGAWJrgieDiBI2LvwlHUKg3NgtXRBxY2OA9bmwDlzSlxznoQMnGd6VAA5ILU90+fMQ
 ZUObF41pEp4j31Vr7HYjT3OzjztqpEsJSpnyHX7elt6FPMV1fFDOIZ70nnul2AIO1Q74
 0ObJCePNG31/WsVDpELj0L3Y6XDY5qIelLLmKoiwh0I/OJeis+X4rLUiZlvH4KE3dGSP
 T0wQ==
X-Gm-Message-State: AGi0PuYamtZr67YCsMP5YOADjOdZlPjs6GC+90A1HasXwDC6L2Vvg1w1
 kNiN7xKPkgj6e1Nqpq0FWOY=
X-Google-Smtp-Source: APiQypJ5JyYNAXadCRRdF5BJaWU4Cr3xvLV8/O1bH5UUY8++hTGNSd+4NyqT9hhkUwHE6cOgpVzDOQ==
X-Received: by 2002:a05:6000:10:: with SMTP id
 h16mr18705412wrx.295.1586798076857; 
 Mon, 13 Apr 2020 10:14:36 -0700 (PDT)
Received: from linux-gy6r.site ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id f79sm14085568wme.32.2020.04.13.10.14.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 10:14:36 -0700 (PDT)
Subject: Re: [PATCH v7 2/5] arm64: dts: mt8173: add uart aliases
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200210063523.133333-1-hsinyi@chromium.org>
 <20200210063523.133333-3-hsinyi@chromium.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
X-Pep-Version: 2.0
Message-ID: <7c5c7e2e-88e5-439a-fcaa-d5f64cbc1d0d@gmail.com>
Date: Mon, 13 Apr 2020 19:14:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200210063523.133333-3-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101439_274209_4CD1B80E 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/10/20 7:35 AM, Hsin-Yi Wang wrote:
> Add serial as uart aliases in mt8173.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Applied to v5.7-next/dts64

Thanks!

> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index 8b4e806d5119..790cd64aa447 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -50,6 +50,10 @@ aliases {
>  		mdp_wdma0 = &mdp_wdma0;
>  		mdp_wrot0 = &mdp_wrot0;
>  		mdp_wrot1 = &mdp_wrot1;
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
>  	};
>  
>  	cluster0_opp: opp_table0 {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
