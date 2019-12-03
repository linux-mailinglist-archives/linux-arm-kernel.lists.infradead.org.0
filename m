Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B133111024F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQDJbePSJx6EEc9OTNFBnG3JvPkt9DgAqqFjflLsVII=; b=t9YK+ZMM7j81E2
	AIl+UETMQJN3Ke1P1hSBKYbc1eTXX/yvB58TQ2hHkLAgZ4WZWvmp2d08q5Mq2ZZhTUbLzE1TkDkFM
	9d3GhVne3KOFNPKMHIqHj3xaCLSSz7rFdWWXNmZG7eSVrukyA24nVKjYWLORUepEyw1GPMnXq3zWa
	fcRil0G0VoYb97QI7vDrl4dxMSPHFse2zjNoG3jX48+goUmQdXpO0tbmksGnYjbNF9uEkpiFKGbfM
	UKwt6RHgEU2l97PGgJozMrhKVxJez31nWw6spyzwfeP9yxUpXNpMbe8cx4R+6W//TsHcKoepEO6EO
	7x5O6MfHrmLYnYDakyug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icB44-0001h2-JQ; Tue, 03 Dec 2019 16:30:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icB3y-0001Cl-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 16:30:11 +0000
Received: by mail-lj1-x243.google.com with SMTP id e10so4538979ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 08:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zB0t7s3OSEub2pUMdjrRqKCpuO77Pav5QsF04ETGqhA=;
 b=tTfssXsdq5jNpNMs1c7q0kLY867qPu3uz1aMbXlHGDqpQFiO6HGAdOY8fulVACEo44
 SDqANcybD6PI8LZEjGzjO74iBZKd86SCYqY3UP0DYSJjOIqE/AJ0H0pFczYE0c44yP2l
 EzNyRt3ufFF0hDnKDbPTIx0P4Z6MBoUO/8Dria2sGwKIfwu5/KWBLGxmvLZrkVmd7zhh
 GZXyHqxL2iamDWescRlVTLfPI7PrBCN2CYU9BEhRriUIb0vTL5T0Iq43Jr41RtMewVm/
 XRI90fGYJ/LjxfN8oVkm5CJHWu1uPXvdlvLX+KCBatyvcdiEJBXAqAJMaQI1qXxlsy+h
 oZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zB0t7s3OSEub2pUMdjrRqKCpuO77Pav5QsF04ETGqhA=;
 b=UrY5juSSkasDivLlHg8Fw5KZdqE5KziZnZX/Hl9ouM8BzFVs/ekk/6rKChvpYMxFLT
 uYfp5zzXt9xJI18LLu2tx+ArPeJUdm1IuGsvjEJaKn02tK++4ADivNmOWTAB5xh5+Bwq
 jG+UP55BNj76+ZDxFKtXgrtr3HWNHPS342Wa0vS8lkfcXOtsHBzabqjft+8at41nzVyt
 YJ/+S3wIxPno6/0B980PB1cqW00bU4eKnuD9rXFwkNy2bjGkuIjszg6anEIgnePVQGUR
 ohP/8ChsyjKXMW5RUj2v1ZmaYEcxuz4xTy2d/nD2AupKsL6l9tefMK1obQd7vACZnw+r
 8i5g==
X-Gm-Message-State: APjAAAXytjXGJLnbmja1URIdU+8EV2K1DbgOAmbwKGHtvjrKPt+1wNkn
 N/yDKB4+p/ZRndD9Dy8roGWeX1gR9W1MJ+xwtUvMhQ==
X-Google-Smtp-Source: APXvYqwV9Xv8lYU6mOLRoUHtM9+S85fwTIuwMDPvqNYfDr6KkqEUFoc+nes5kqYssakDLY9flDuMUHMmPl2tpaAA98o=
X-Received: by 2002:a2e:9596:: with SMTP id w22mr3100626ljh.21.1575390607236; 
 Tue, 03 Dec 2019 08:30:07 -0800 (PST)
MIME-Version: 1.0
References: <1ef39c29b35d48cea0f8a98aabcfef29@dh-electronics.com>
In-Reply-To: <1ef39c29b35d48cea0f8a98aabcfef29@dh-electronics.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 3 Dec 2019 13:30:21 -0300
Message-ID: <CAOMZO5AhjdSYJ0XLmbNSz5EAdcz3O6d6BmobY3hWsbXHs+68oQ@mail.gmail.com>
Subject: Re: ARM: imx: linux-next 20191203 kernel does not start on an
 i.MX6ULL due to the SoC serial number fetch.
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_083010_163748_51152231 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Yongcai Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

Em ter, 3 de dez de 2019 08:00, Christoph Niedermaier
<cniedermaier@dh-electronics.com> escreveu:
>
> Hi,
>
> My i.MX6ULL SoC doesn't start on the linux-next 20191203 Kernel.
> Reason is the commit "ARM: imx: Add serial number support for i.MX6/7 SoCs" (8267ff89b713).
> For i.MX6ULL the variable "ocotp_compat" is set to "fsl,imx6ul-ocotp", but with commit
> "nvmem: imx-ocotp: Implement i.MX6ULL/ULZ support" (ffbc34bf0e9c) and commit
> "ARM: dts: imx6ull: Fix i.MX6ULL/ULZ ocotp compatible" (f243bc821ee3) the value
> "fsl,imx6ull-ocotp" is already defined and set in device tree...
>
> With the follwing change the kernel starts on my i.MX6ULL SoC.
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index d8118031c51f..1ff73d1ac869 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -148,7 +148,7 @@ struct device * __init imx_soc_device_init(void)
>                 soc_id = "i.MX6UL";
>                 break;
>         case MXC_CPU_IMX6ULL:
> -               ocotp_compat = "fsl,imx6ul-ocotp";
> +               ocotp_compat = "fsl,imx6ull-ocotp";

Your change looks good.

Please send it as a formal patch.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
