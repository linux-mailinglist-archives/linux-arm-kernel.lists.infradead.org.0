Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FE51A9829
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0j1ZAgHIpondIMKTNVxcJZ7cbhx42dPJHPWqiLAO8r4=; b=kHkI7r25tqxK8CJBPTHEv7Cph
	nSzyxY6V/pChrGaUJCPMxuAAgS+PJ82IoJPNoi6M1NMn0puZ8536P15IPsXwh2QHpuUyd2Z60FzBc
	E959ks1xSAXFKBexNRQhjKSnbhhtDTvmH5DtiRW/62qbflURomvZRDiKxlM1PpoLMwcmc8vcteiGI
	eecVEbLnTtJXCithiqQELLvPF06/QTgksUKg4iRnJcuO29HCbiCgHeAwQqav2UhQ4Crb/At/UdHZB
	PIcGGSFM0ikkaEteOAoOs7+U5paPxhaZWOJrNz3+9JOFcZY3Qm9rwsC+fudB/wQJCR29n6Oip846b
	oN2LUhg8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOe8v-0000I4-PT; Wed, 15 Apr 2020 09:15:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOe8o-0000Hd-N3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:15:32 +0000
Received: by mail-lj1-x241.google.com with SMTP id j3so2412825ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 02:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=69T9ZGqlIy7aImGgwrs75/hfGvsilwincFfwWiQFobg=;
 b=QmYfPFaxi91fzgnYBmzUnbNLZxOG0Qvv9XHtQXYm/D+sTky/Yc25iONfxBlY/7wqsB
 fRtQYUCgyxgK4p3vjoCdR1E4K1nsTfSz3bWGNyVBA7FGlzJ7W7xAZUor5i5MsgsA0hU6
 1sVmcbUlUP1cDxtb+3jC+HIaRfadnrNzRFcNUoV22EicSEE5dlVf6RJieO6E9yC3PemP
 qMb4hRiVMAXxE1MiwCuSopLulXmT+VCKUbpRSEH+BCrvLMZ4tKOYKabhdtdCWnXgNuRk
 9lpcy+vti6/lVgJJk2gVDZg/BOarCjaD0Ak6NlGy7RcdUdyYk3SImWtP+7AMtEZqo2NA
 +piQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=69T9ZGqlIy7aImGgwrs75/hfGvsilwincFfwWiQFobg=;
 b=fgRCHG41AMuLXUED6o3JssRsWU4Oy0UQSSom8o77Wh2KaFxVafs6uEzAjh4ckN+W/8
 sXKCzDUocjrZ4pCTocyjULI4SJbkh3ZAqbUj5vUMd/iG5sG60ChQo5WVAj4vpGtdmD9z
 z4qeMocOjzDSXOT1PSTIxA3b8C3yyDgZkyfoALK3Eg1sWnSW6zafuO4tndR9MdJfQK0D
 OFlmNkXlXGf5BCKn5BrMFujAcOIa+n/LNryXHW0oJN7jyujqimUCw318NQWoJ192QRIp
 ihU2f0AkJREm+fcLPxY9ZpRAiG5gd+VNO75WiGP4rgvrmzstCT7trVCe5L4ki3d98qG+
 cCNQ==
X-Gm-Message-State: AGi0Pubj/bi8rdMi6yBiuggSK2QnP4xOTyzvRXK7i/Ihn6mCBd92puz8
 HZoyMJ4gOIhtqqz5Sq0862goag==
X-Google-Smtp-Source: APiQypJt4bgg1yrZutHX1jnCNUTiEGk5PA6dcO1xYRoqGEwzcnoywOgKJNgJRfEssnCyTOQijG6tmA==
X-Received: by 2002:a2e:6c0a:: with SMTP id h10mr2542581ljc.195.1586942127891; 
 Wed, 15 Apr 2020 02:15:27 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:81b:6e8d:a1dd:9870:4166:dead?
 ([2a00:1fa0:81b:6e8d:a1dd:9870:4166:dead])
 by smtp.gmail.com with ESMTPSA id m13sm12192031lfk.12.2020.04.15.02.15.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 02:15:27 -0700 (PDT)
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <b6ffa74a-acef-f329-0d9e-981483499e16@cogentembedded.com>
Date: Wed, 15 Apr 2020 12:15:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_021530_952816_DAA48AE0 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 Philipp Rossak <embed3d@gmail.com>, Jonathan Bakker <xc-racer2@live.ca>,
 openpvrsgx-devgroup@letux.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 15.04.2020 11:35, H. Nikolaus Schaller wrote:

> From: Jonathan Bakker <xc-racer2@live.ca>
> 
> to add support for SGX540 GPU.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>   arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
> index 2ad642f51fd9..e7fc709c0cca 100644
> --- a/arch/arm/boot/dts/s5pv210.dtsi
> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
>   			#interrupt-cells = <1>;
>   		};
>   
> +		g3d: g3d@f3000000 {

    Should be named generically, "gpu@f3000000", according to the DT spec 0.2, 
section 2.2.2. It's either "gpu" or "display" TTBOMK...

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
