Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2446A140241
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KE69Q1cARbPnOPNeivIueKq8wCPjiW8RycKvT3Q2tGM=; b=oHf919XuZiN7R7
	wGiFRCsMTzhwbBZd8GOFnCCOC7MqL+V0MymuYY5ihhiquaXsnllpDXgPXHbFeLw01iPdn24M1Zxt8
	YC0njNk1KpcurwyCNWzD/GWMRzzgaKGMbewLDIGrOsf6uasTbjq+I36jnxmYdSd+Ol8tIFWTNEwQJ
	7TDwMyTZ046EX/JBoXYkhG36OCXepyEo+r3BZTjt04/XIapnRaV8cCfccRSK8ppLQFDvKT7SOKSqR
	7z+RRAXDBsRN1BR5KhAvHdKZJ5ooCM9sUFOHYeGZESgoGooyMcibHjxsgk65mXWdtn1G5Jde6ZoYD
	qkB2Tno7B6uMMf0s5PSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIBg-0003EL-0D; Fri, 17 Jan 2020 03:20:44 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIBX-0003DO-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:20:38 +0000
Received: by mail-ed1-f66.google.com with SMTP id l8so20938300edw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 19:20:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DuXdQ+iDwsOn6z/f7z3i1gI0wBVfOZJt0yf4ZaQCnGI=;
 b=Fv2jomrj8jJJWgkBQEiblRTXf0dQ5abeZllZ8CFAbdytwJ3uwrLDRILMUojrdnxHea
 s8HozNFkN8AgU5VGDEFOyGN+T8rA0Wk23/ySP8hTyk76R/8DrCOPs/2iWuTLLAVA95Is
 BU9ZkaZH2puGxcK4D+HvNMhPj4N6GQ7OA0dbPEKFWRu9aW6KHe0+0wqIFNs0h1ROR8Eo
 kD8XqGdzYHnBMJ/Ue4UFy9HzcRApXKHMXqbgILmCKgmIJstq8uZpuqwZZvfGSAxFiAv2
 UGCJGLjTf+BNoVDygNMMXGx1iiaGuHId/7AmqvN9huHuanB6KNsJPNzwMyhxZWqhonhd
 ppLQ==
X-Gm-Message-State: APjAAAW2S5pHAIpHZ8VgZQb831liyu6s/mPg73FrFrNkLWH8SUkAj5ZI
 5q17gbly+NRyQfs91A5ocLAjYrrSkRQ=
X-Google-Smtp-Source: APXvYqwhBK/GXwrg/TPdGVf+17sUXvVyOE+fd7PBY5N9PuYrUZH4j534hn0XZToVCi2w+e3XZcNkcg==
X-Received: by 2002:a17:906:d935:: with SMTP id
 rn21mr5970579ejb.147.1579231231695; 
 Thu, 16 Jan 2020 19:20:31 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id o7sm918987edv.71.2020.01.16.19.20.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 19:20:31 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id c14so21252213wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 19:20:31 -0800 (PST)
X-Received: by 2002:a5d:44cd:: with SMTP id z13mr661642wrr.104.1579231230948; 
 Thu, 16 Jan 2020 19:20:30 -0800 (PST)
MIME-Version: 1.0
References: <20200116194658.78893-1-manu@freebsd.org>
In-Reply-To: <20200116194658.78893-1-manu@freebsd.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 17 Jan 2020 11:20:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v67U6qjNf0PPMOm191UZDQvJTGZNNREc22ZsDW61KqaUEA@mail.gmail.com>
Message-ID: <CAGb2v67U6qjNf0PPMOm191UZDQvJTGZNNREc22ZsDW61KqaUEA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add gpio bank supply for
 A64-Olinuxino
To: Emmanuel Vadot <manu@freebsd.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_192035_457352_132D7029 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 3:47 AM Emmanuel Vadot <manu@freebsd.org> wrote:
>
> Add the regulators for each bank on this boards.
>
> Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
> ---
>  .../boot/dts/allwinner/sun50i-a64-olinuxino.dts   | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> index 01a9a52edae4..1a25abf6065c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> @@ -163,6 +163,17 @@ &ohci1 {
>         status = "okay";
>  };
>
> +&pio {
> +       vcc-pa-supply = <&reg_dcdc1>;
> +       vcc-pb-supply = <&reg_dcdc1>;
> +       vcc-pc-supply = <&reg_dcdc1>;
> +       vcc-pd-supply = <&reg_dcdc1>;
> +       vcc-pe-supply = <&reg_aldo1>;
> +       vcc-pf-supply = <&reg_dcdc1>;
> +       vcc-pg-supply = <&reg_dldo4>;
> +       vcc-ph-supply = <&reg_dcdc1>;
> +};
> +
>  &r_rsb {
>         status = "okay";
>
> @@ -175,6 +186,10 @@ axp803: pmic@3a3 {
>         };
>  };
>
> +&r_pio {
> +       vcc-pl-supply = <&reg_aldo2>;

This is likely going to cause a circular dependency, because the RSB
interface that is used to talk to the PMIC is also on the PL pins.

(How does FreeBSD deal with this?)

Instead, just add a comment describing what is really used, and set
the regulator to always-on, which should already be the case.

ChenYu

> +};
> +
>  #include "axp803.dtsi"
>
>  &ac_power_supply {
> --
> 2.24.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
