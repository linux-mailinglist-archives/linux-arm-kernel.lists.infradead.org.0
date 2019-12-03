Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E469B110087
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iCYoDieG6MF7yPWGHjfCJ8s6bGTb+aY3XVt3QtVG9g=; b=LOieN43W9U5mTg
	luIiYTyyPzt8J4wY9/WVVLLhH8RsEKapOeeNrmQLOLwHinExpLvQ639FEAiqpRJP1c/L29mwMBTnp
	tL91iwRg4/lw9+aRBxN7fuRKOthiUJbrWgXtw3No0lH3fLW48GG/ypp03M1LwEqx6HZMub36cLbYN
	6k3qVAWID1wjIKO3dzYsbLr/3+0zZWIuVuEtIC51TgaSCM5cY5C36X5J3dXqn2lm2zyKXvFsFvIjK
	Tg/kh2r020yVypqEkYADv3uI3MSSb79aLYSc16Cpnd8t9BCI6MCncCHfqz9hQehR196sfA91BxnMf
	vwVTjJxe4GoQQ+psg47g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9PU-0007DC-FC; Tue, 03 Dec 2019 14:44:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9PJ-0007C7-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:44:08 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD5262084B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Dec 2019 14:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575384244;
 bh=Vb5aXB2aX+gF6f+cuazczJG4nAEA8YenYXVOkT2E0yI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=i4SZp7OR5A3xUaJTwT2SQ34ZFbE8HZJAylsqj+shAJpk7PBjc0zmRBE2W2r4mttpF
 leE4RRIEGsoLvHNT51Cg9ew4RBq0WZGHbQK/o/CrxP++AGOuXC4oknzMoHXJuq8/Ej
 /yT1BIpgmwEjvZR0ytVgAtBRo5IvSqouapJkMqY4=
Received: by mail-qt1-f170.google.com with SMTP id g24so3929177qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:44:04 -0800 (PST)
X-Gm-Message-State: APjAAAVm+67EMJpsbm93AoenTd+j401WzSPUceK/BPScf0EFLSDNzcwR
 qdfJTb0cSqAdPonNrB0k0QzvDToHiP671zy4rQ==
X-Google-Smtp-Source: APXvYqwtexQ5zo9ZimQeqDp9BS65TDnucMrw2I96L1AtL1jBY6DHB8RwSL6Mo2Z5PWeDgBxoOukGgcq4zG7e9CQKVtY=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr5304524qtp.224.1575384243826; 
 Tue, 03 Dec 2019 06:44:03 -0800 (PST)
MIME-Version: 1.0
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
 <141f068d10b94413a6d0ca73fe07f8e961380e7b.1575369656.git-series.andrew@aj.id.au>
In-Reply-To: <141f068d10b94413a6d0ca73fe07f8e961380e7b.1575369656.git-series.andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Dec 2019 08:43:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ8p-zs2F-mXkO_egoBtZ8WymM4O-2AaDJMZYeCFS3sLg@mail.gmail.com>
Message-ID: <CAL_JsqJ8p-zs2F-mXkO_egoBtZ8WymM4O-2AaDJMZYeCFS3sLg@mail.gmail.com>
Subject: Re: [PATCH 05/14] ARM: dts: aspeed-g5: Fix aspeed,
 external-nodes description
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_064405_389845_D55272C3 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Xo Wang <xow@google.com>, linux-aspeed@lists.ozlabs.org,
 Ken Chen <chen.kenyy@inventec.com>, Tao Ren <taoren@fb.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yuan Yao <yao.yuan@linaro.org>, Brian Yang <yang.brianc.w@inventec.com>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 6:03 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The existing approach lead to an error from the dtbs_check:
>
>     pinctrl: aspeed,external-nodes: [[8, 9]] is too short

This one where we have list of phandles is fixed in dtc. I need to
update the kernel's copy.

> Cc: Adriana Kobylak <anoo@us.ibm.com>
> Cc: Brian Yang <yang.brianc.w@inventec.com>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: John Wang <wangzqbj@inspur.com>
> Cc: Ken Chen <chen.kenyy@inventec.com>
> Cc: Tao Ren <taoren@fb.com>
> Cc: Xo Wang <xow@google.com>
> Cc: Yuan Yao <yao.yuan@linaro.org>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts     |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts         |  9 +++++++--
>  arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts           |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts             |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts             |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-opp-swift.dts               |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts         |  4 +----
>  arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts               |  2 +--
>  arch/arm/boot/dts/aspeed-g5.dtsi                         |  3 +--
>  10 files changed, 8 insertions(+), 34 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts b/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
> index c2ece0b91885..de9612e49c69 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
> @@ -211,10 +211,6 @@
>         status = "okay";
>  };
>
> -&pinctrl {
> -       aspeed,external-nodes = <&gfx &lhc>;
> -};
> -
>  &gpio {
>         pin_gpio_c7 {
>                 gpio-hog;
> diff --git a/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts b/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
> index 2c29ac037d32..022d0744d786 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
> @@ -200,10 +200,6 @@
>         status = "okay";
>  };
>
> -&pinctrl {
> -       aspeed,external-nodes = <&gfx &lhc>;
> -};
> -
>  &gpio {
>         pin_gpio_c7 {
>                 gpio-hog;
> diff --git a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
> index c17bb7fce7ff..d69da58476fe 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
> @@ -782,8 +782,13 @@
>         memory-region = <&gfx_memory>;
>  };
>
> -&pinctrl {
> -       aspeed,external-nodes = <&gfx &lhc>;
> +&gpio {
> +       pin_gpio_b7 {
> +               gpio-hog;
> +               gpios = <ASPEED_GPIO(B,7) GPIO_ACTIVE_LOW>;
> +               output-high;
> +               line-name = "BMC_INIT_OK";
> +       };

Seems like an unrelated change?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
