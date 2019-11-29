Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8554710D33C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 10:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmbnRoiZwp793iZEwWDB4YwdEs+HnB5OD5N5UGbkOTk=; b=neDJVHxFYwAytd
	bwbTxlowaFiFeh6fY24DcJAJHvuo4eKmYllLuiBkA+G7dtd6BUfoVeLZiDORHsJ0KVnGQDw4Hz3cY
	F9OYagBlxjdKm2gLZlwgl5lwCDuKkABSi2XVyw/uLUKec/NGC1u686FTV8vi8Ev+prWWead1iYv63
	fasP3MNw6/dpEKM0+zUuUG7XGq/rr/7Mj9uGZIy+lCRieYaYIjb6ePrI+86E7gc7i1ctuvUrp6H7A
	uSvzAE5zLMqkFiCnvIrFI5FEn1xjoTjcXI2l21K6zTTkb26A/mueT6UqlXxFeHeTYG3492BCvUets
	DOESl4dCbenqU0kTLb1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacYK-0002MG-26; Fri, 29 Nov 2019 09:27:04 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacYB-0002Lm-6c
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 09:26:56 +0000
Received: by mail-ed1-f66.google.com with SMTP id a24so25203992edt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 01:26:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=61Qn8sc6UymCs2JwYwR9E7PQUQwsg86yGcxrakyfLnc=;
 b=W3s/Xexl6iQjE5XsC/67vo92d/+fSL7jQ0wO10FGHhdzMksdrnt/E82EN+Q7PDbwvo
 blj90FssDW8xNLo87CPdT0684XJhK2/YeKS7pGnVf8K9cuKXTMdLkYVFRVbjwDaA/Mhc
 UMjpF2L93Yr31eJLcr0O0slXZHBI8BGMRtTJyM6yG9f6nm+AkpahD64x/k/x5VIxSYrx
 fFWSz03frt7nP6+b1Fn4NlQY2PkBunSGsIsASKACIctc3bvyheOku5KmeLr1gmM1ECrD
 //W/r/esWZI/nQahW0JhTME63skN6fv4rJkNL5LR9SVSaoJKHE6Gw16tcrHeeIRy8Bf2
 lJrg==
X-Gm-Message-State: APjAAAWxmOe1tCFzoFfzTr8HhlXvqoFb1PWnFKp5y0oWeoUpscOybSpu
 dWTDh0OZt1oLImKffyFvIlX+lreycCc=
X-Google-Smtp-Source: APXvYqzDxyexIpcnP6eohyIF2KJ2o4ATRxcIQqFLRCke4g9MdvMkuJtAUMwne9urN+TZEmh+oUiskQ==
X-Received: by 2002:a17:906:4b48:: with SMTP id
 j8mr60274305ejv.101.1575019612935; 
 Fri, 29 Nov 2019 01:26:52 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id c20sm322869edt.67.2019.11.29.01.26.52
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Nov 2019 01:26:52 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id j42so8379677wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 01:26:52 -0800 (PST)
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr2960888wrx.178.1575019612588; 
 Fri, 29 Nov 2019 01:26:52 -0800 (PST)
MIME-Version: 1.0
References: <20191129091336.13104-1-stefan@olimex.com>
 <20191129091336.13104-2-stefan@olimex.com>
In-Reply-To: <20191129091336.13104-2-stefan@olimex.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 29 Nov 2019 17:26:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v64oCx90LQScKTiHVyHLd6c7Rgs_g5L79Yr1J8kgS8-Kyg@mail.gmail.com>
Message-ID: <CAGb2v64oCx90LQScKTiHVyHLd6c7Rgs_g5L79Yr1J8kgS8-Kyg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/3] arm64: dts: allwinner: a64: olinuxino:
 Fix eMMC supply regulator
To: Stefan Mavrodiev <stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_012655_243234_9F6E69F8 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 5:14 PM Stefan Mavrodiev <stefan@olimex.com> wrote:
>
> A64-OLinuXino-eMMC uses 1.8V for eMMC supply. This is done via a triple
> jumper, which sets VCC-PL to either 1.8V or 3.3V. This setting is different
> for boards with and without eMMC.
>
> This is not a big issue for DDR52 mode, however the eMMC will not work in
> HS200/HS400, since these modes explicitly requires 1.8V.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
> index 96ab0227e82d..7d135decbd53 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
> @@ -14,8 +14,8 @@
>  &mmc2 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&mmc2_pins>;
> -       vmmc-supply = <&reg_dcdc1>;
> -       vqmmc-supply = <&reg_dcdc1>;
> +       vmmc-supply = <&reg_eldo1>;

If I'm reading the schematics correctly, VCC on the eMMC is from 3.3V.
This corresponds to the vmmc-supply property. So you shouldn't change it.

> +       vqmmc-supply = <&reg_eldo1>;

vqmmc-supply is from the VCC-PC rail, which is the one you say is triple-
jumpered. So this change makes sense.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
