Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA4A1A9E29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUJ5UFSoGm6M1CDGa982mov4O8NtZuCL2+l3RKo4BP8=; b=JgMyGW4B5UfHVt
	F2h0NU1+w2VAdXZq0XX8WMxWAYR4WuWl4giPATkg4GsdyMvgD00JEQato3SMud9h4RN180O+kGmwE
	eXhrCZekB09cBXskQvI9AsB9Gv0YbPHiDXMXAfKb3Y9D+jbNfBePFS/CMQkF1BqRkvHQzTRpsovxC
	LgOun+BHY8U7zHK2wfSg1EG0y4kWPoFe2dT4HzIg5R0hiCLUkUbPxIViCbQw34lslbsyNYWmPpHuP
	LA3c2qR0HuG4Zccm69iOA1n1PtqrvV1fTrkZzbDkLYDPk0X3v7yImQzBzavT0ccQCSButXwqhqQcw
	eDw5mJ7Zb4SWwlLob0jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgbm-0005IJ-UF; Wed, 15 Apr 2020 11:53:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgYI-0008TY-KE
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:50:00 +0000
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C2D221835
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951397;
 bh=wuXS7RCUYgyS51p4SeDx49zy51VkJGb5/qdr8yBZ0d4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xeYP5cgafRPn6YhT6fu/+txsms6Rtv2DIovKV6n2lrE++374gHweZw442o4eW6zsC
 0QPce/mOtpt2CYbuX3ZFAnyYNI2ZEwjJnhtikf8CEIIN6kqNvsnWY7Mv65g7qt/ye7
 uxrNjWBorfjR3nRfrgurBt9sUOOix1lQMqGuSVeE=
Received: by mail-lj1-f177.google.com with SMTP id u6so1718600ljl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 04:49:57 -0700 (PDT)
X-Gm-Message-State: AGi0PuZO5hj/lPaoFk3LfudW9jPShUvHU+zoJexd5ZpH+nwbkAt6THwA
 hR/CUgSGfNDKMzB0D6nTObh1KmR864eqqMfo8es=
X-Google-Smtp-Source: APiQypJ6JgZvNxuPA2SlFZq3seBA6kaFPbk0RkqFDGIpIMdWvmYwpqEO8cmLBYYdZ/c1p1IHSS++MGMZGzTZDC6zHHI=
X-Received: by 2002:a2e:9845:: with SMTP id e5mr3131512ljj.201.1586951395296; 
 Wed, 15 Apr 2020 04:49:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
In-Reply-To: <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 15 Apr 2020 13:49:44 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
Message-ID: <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044958_791870_23464B40 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> From: Jonathan Bakker <xc-racer2@live.ca>
>
> to add support for SGX540 GPU.

Do not continue the subject in commit msg like it is one sentence.
These are two separate sentences, so commit msg starts with capital
letter and it is sentence by itself.

> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
> index 2ad642f51fd9..e7fc709c0cca 100644
> --- a/arch/arm/boot/dts/s5pv210.dtsi
> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
>                         #interrupt-cells = <1>;
>                 };
>
> +               g3d: g3d@f3000000 {
> +                       compatible = "samsung,s5pv210-sgx540-120";
> +                       reg = <0xf3000000 0x10000>;
> +                       interrupt-parent = <&vic2>;
> +                       interrupts = <10>;
> +                       clock-names = "sclk";
> +                       clocks = <&clocks CLK_G3D>;

Not part of bindings, please remove or add to the bindings.

> +
> +                       power-domains = <&pd S5PV210_PD_G3D>;

Ditto

> +
> +                       assigned-clocks = <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
> +                       assigned-clock-rates = <0>, <66700000>;
> +                       assigned-clock-parents = <&clocks MOUT_MPLL>;

Probably this should have status disabled because you do not set
regulator supply.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
