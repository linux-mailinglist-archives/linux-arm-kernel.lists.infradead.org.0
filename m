Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4EA1B5E8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjMZglvlz1sgh/lNV0S4rLClswT+XnMoFo6GB0b1XqA=; b=QXrxg3NSk91zuU
	Sm0IOfdA3OhCk9RT1vMGXFmaGVTZ9krWJSY77S4yuoI3zxPBA1jJ/tjyDxRW1g/9a8dNVa9aP27Zt
	0+0QiwoslS8ZTGmofb0L2oVmo5bxXfvakjlykw1QB4fmzCf1whPauzhLHjkmRj6aWaSxc783bQWOg
	pIb/7YdhFf4G2MAkKeyx2XkW10FHKgQyN2Lg2w38Xhy5ZXXGJsog8i/TCVHtXkA/QWRkBjEkkF6jZ
	tHUlDt11QLCMX0mxHRboTh2l6qt5SSq3Av5jSGSPo2X4Bj09sg/Zd07cfvptIW3Yu7wp2sONl0adV
	FCsFonj0uNEZkcWAp2xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdNE-0007KS-H1; Thu, 23 Apr 2020 15:02:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdLS-0006vn-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:00:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so6911023wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x7NZn7nlpSOqnkIXT5l3jRVWmAs32CPHZtB2TMxSM3g=;
 b=ansPsNh2nSLy7gZmpFMCDAWeF79eT5FadJke44IlCFoAGYSy7QyCyXSfQ41d8/jCMM
 rxEU0s78dHA+EWfp7Bpn4UhJeQsVa6JijFp+/eILBca3pRE7AcRXcu6ufX3yjGYhKoL/
 PABBChMmhsG6JDYyqslPrf8TdMVeEl2v/oy29vFkNJTKbfzIsq/s0uHm/lQbbtODl2H5
 ZnY730s9WMWD08jD1GATvoP1VHO6E1UvdTLPj4xcPS+iAmwPdSUjc9dAtnayothl44gV
 goatioRxz2VnpJ58YipqdCtnWI1+Li+R+UTG2oFiF5OEJD5HpafREm2kJN50UqxDIT8J
 +FJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x7NZn7nlpSOqnkIXT5l3jRVWmAs32CPHZtB2TMxSM3g=;
 b=aVJRZ8gXzMIi9x8QZeUTF4f2U8hmS6B3jIChba1EhiI49Qxzw4iXyLm/GbcLMkWfzJ
 zLfIRcOwJr3JfHnbR9naCZ2ayOx28eEiaTS2Dx4nGsNjJonpRpC6fJXKIcYo3EEbR3z9
 2F301MCsJ3fn3tchr4asdjom5oN0yDe3ypwyNJqHBg8vnqzB5TOL/rMQnSPRlp1fU2Da
 Q+ZiJ1xIhPbzRdBXY2zlFrheHUGWBs6YVSypNMZqI8vjTrXcH2kR+XnqjRNjegiNzD8+
 8e4nwslleomsBVTvYmfo0aztf9OzqG8QEemJxvqLRlWAP7m7PyoCEJR/s38ER/UkBDjd
 ehXw==
X-Gm-Message-State: AGi0PubcFmWYtLnylJAx4+bzOyztATC7+R9V4zPQEtVWYEEEf0rNpj8u
 WFpoleHTn2Rw2o+lKhkpPv2Lxg==
X-Google-Smtp-Source: APiQypIYBC1vkZGlUmKk4RSHgb1OGl008wycUJ2gnA+uYh+hSUCwcQn24FHKdNWDf/TB/+juWIrx8w==
X-Received: by 2002:a1c:3c87:: with SMTP id j129mr4437294wma.157.1587654052295; 
 Thu, 23 Apr 2020 08:00:52 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56?
 ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id s17sm3717429wmc.48.2020.04.23.08.00.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 08:00:51 -0700 (PDT)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 Maxime Ripard <maxime@cerno.tech>
References: <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
 <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
 <20200422065859.quy6ane5v7vsy5tf@gilmour.lan>
 <1AA57A0C-48E6-49BB-BB9A-2AAFFB371BCD@goldelico.com>
 <20200422151328.2oyqz7gqkbunmd6o@gilmour.lan>
 <07923B6C-4CCD-4B81-A98F-E19C43412A89@goldelico.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <43688597-4b99-8f4d-9ad5-548ddff07f52@baylibre.com>
Date: Thu, 23 Apr 2020 17:00:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <07923B6C-4CCD-4B81-A98F-E19C43412A89@goldelico.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_080054_784802_04B40772 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Lindgren <tony@atomide.com>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Cercueil <paul@crapouillou.net>, linux-samsung-soc@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/04/2020 18:09, H. Nikolaus Schaller wrote:
> Hi Maxime,
> 
>> Am 22.04.2020 um 17:13 schrieb Maxime Ripard <maxime@cerno.tech>:
>>
>> On Wed, Apr 22, 2020 at 09:10:57AM +0200, H. Nikolaus Schaller wrote:
>>>> Am 22.04.2020 um 08:58 schrieb Maxime Ripard <maxime@cerno.tech>:
>>>>>
>>>>> It also allows to handle different number of clocks (A31 seems to
>>>>> need 4, Samsung, A83 and JZ4780 one) without changing the sgx bindings
>>>>> or making big lists of conditionals. This variance would be handled
>>>>> outside the sgx core bindings and driver.
>>>>
>>>> I disagree. Every other GPU binding and driver is handling that just fine, and
>>>> the SGX is not special in any case here.
>>>
>>> Can you please better explain this? With example or a description
>>> or a proposal?
>>
>> I can't, I don't have any knowledge about this GPU.
> 
> Hm. Now I am fully puzzled.
> You have no knowledge about this GPU but disagree with our proposal?
> Is it just gut feeling?
> 
> Anyways, we need to find a solution. Together.
> 
>>
>>> I simply do not have your experience with "every other GPU" as you have.
>>> And I admit that I can't read from your statement what we should do
>>> to bring this topic forward.
>>>
>>> So please make a proposal how it should be in your view.
>>
>> If you need some inspiration, I guess you could look at the mali and vivante
>> bindings once you have an idea of what the GPU needs across the SoCs it's
>> integrated in.
> 
> Well, I do not need inspiration, we need to come to an agreement about
> img,pvrsgx.yaml and we need some maintainer to finally pick it up.
> 
> I wonder how we can come to this stage.
> 
> If I look at vivante,gc.yaml or arm,mali-utgard.yaml I don't
> see big differences to what we propose and those I see seem to come
> from technical differences between sgx, vivante, mali etc. So there
> is no single scheme that fits all different gpu types.
> 
> One thing we can learn is that "core" seems to be a de facto standard 
> for the core clock-name. An alternative "gpu" is used by nvidia,gk20a.txt.

Usually IPs needs a few clocks:
- pclk or apb or reg: the clock clocking the "slave" bus to serve the registers
- axi or bus or ahb: the bus clocking the the "master" bus to get data from system memory
- core: the actual clock feeding the GPU logic

Sometimes you have a single clock for slave and master bus.

But you can also have separate clocks for shader cores, .. this depends on the IP and it's architecture.
The IP can also have memories with separate clocks, etc...

But all these clocks can be source by an unique clock on a SoC, but different on another
SoC, this is why it's important to list them all, even optional.

You'll certainly have at least a reset signal, and a power domain, these should exist and be optional.

Neil

> 
> BR and thanks,
> Nikolaus
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
