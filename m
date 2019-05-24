Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750DF2A150
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 00:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWDc9hExQO97KyAsUHAXosR8jonHaI5RCoYhKDw/PQ8=; b=GM44VMbjp9LHP+
	8DwXzf78t+2uFvyS9qf12vB9HDOdmx7LnRdGxK5zWQyyb8Hh1gKmgCyXxIwHUlFuA7nw/pcWGdARz
	axgyV3Rt9Z6L6C4hTyst8XyNVRlvpAgC7z3MymHwO6TrF9IzJ/rGCDLk2h7MYH4jNqUOvVQcAz5NN
	SegP1qw3OuOnL6d2T8sDEOzDC66kLOCKlIlhvGDCPiOlLJXitgq6AgbUcdLDGjXgRi+VOpW3LNtvM
	9rX87C64PekdkcbHizvUNkxc8Stg7zhPfoE4h3WAfhJcCfaWKgoBPHMj3unlye67RkM2Q6OIe0c2K
	A3aNsVf2MuhB5uPs+4dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIja-0002cz-T7; Fri, 24 May 2019 22:32:18 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIjT-0002c4-DS
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 22:32:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id i8so10057603oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 15:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MVeRAKhCRQ02qZS9WMOT7P0FRvYl1V3YDTvinSJEfGc=;
 b=mKDmQvRGzapM1AF4Uz6YwmYuXWTS/qVbf+Aau3PMvl/g46CwlQXrpZrDzn7zWkWx8D
 e844rDewg8n6L5tlHTl20mswKvYm23XsruwCaElCHLs+Z4MmdMMeG+pe5RzXtADFJQvY
 t2KcxQlL5Q4VEmJczOrXSbjLKIm1fpJOkCSwUDnZnA6luM2mODMiHIMdC4Yn8+fEHfp2
 xny/Oam/Fi0Db2KtiiOjKbnhUeOXtqI2zoZaW95HoYiuuNxALYLvAkNO8YjpVCaGcuBv
 nXm3h7pmRSf+d8gdWNMFjNaG8k7uFXQ/3WALsDNCK7ALYVh3skmL3TsMIC4yURlAywSB
 lMFA==
X-Gm-Message-State: APjAAAVMvA/DZ22ugx9Xxw1xTZBfuRUUSy0pMbEWiAUyOfHqiu9wA7YD
 mwjsfF0DbKMKxL8ALhfvafmuEp6dKtc=
X-Google-Smtp-Source: APXvYqzfhuSiD+OpKm5cOFJz9ct9fQhTLJZDI7otXT6BfCoe8ITrkXyEiWPn2xHfP0j8LcD/pJdO4Q==
X-Received: by 2002:a9d:4591:: with SMTP id x17mr38594091ote.353.1558737129917; 
 Fri, 24 May 2019 15:32:09 -0700 (PDT)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com.
 [209.85.167.170])
 by smtp.gmail.com with ESMTPSA id l17sm1313618otp.29.2019.05.24.15.32.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 15:32:09 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id u199so8149114oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 15:32:08 -0700 (PDT)
X-Received: by 2002:aca:5f07:: with SMTP id t7mr2665286oib.175.1558737128772; 
 Fri, 24 May 2019 15:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190524012151.31840-1-andy.tang@nxp.com>
In-Reply-To: <20190524012151.31840-1-andy.tang@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 24 May 2019 17:31:57 -0500
X-Gmail-Original-Message-ID: <CADRPPNRYwq0NABXobC1jQrT3QMxxm+e6zvoNwoZ-fu6NU9qDMA@mail.gmail.com>
Message-ID: <CADRPPNRYwq0NABXobC1jQrT3QMxxm+e6zvoNwoZ-fu6NU9qDMA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: Add temperature sensor node
To: Yuantian Tang <andy.tang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_153211_456476_B69A01BD 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 8:30 PM Yuantian Tang <andy.tang@nxp.com> wrote:
>
> Add nxp sa56004 chip node for temperature monitor.
>
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 5 +++++
>  2 files changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index b359068d9605..31fd626dd344 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -131,6 +131,11 @@
>                                 compatible = "atmel,24c512";
>                                 reg = <0x57>;
>                         };
> +
> +                       temp@4c {

The recommended name for temperature senor in dts spec is temperature-sensor.

> +                               compatible = "nxp,sa56004";

The binding says the following property is required.  If it is not the
case, probably we should update the binding.
- vcc-supply: vcc regulator for the supply voltage.

> +                               reg = <0x4c>;
> +                       };
>                 };
>
>                 i2c@5 {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index f9c272fb0738..012b3f8696b7 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -119,6 +119,11 @@
>                                 compatible = "nxp,pcf2129";
>                                 reg = <0x51>;
>                         };
> +
> +                       temp@4c {
> +                               compatible = "nxp,sa56004";
> +                               reg = <0x4c>;
> +                       };
>                 };
>         };
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
