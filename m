Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9160116E0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 14:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYls/0Yx5jFT+9DkXfRhSmzGPVUr04LprP1TftAgw0I=; b=DcK1HuyeT9Fvev
	aNtdybTfmIij0VexMLP03gj7YXUrdQLwPQYmlMQkSd2YZC7cD1U7fV/NFDguhDGWnQABQmusu4AVB
	txzXl0XEna7wc7kwr5MUGcyGcD4NtrlnF7iy9pMmhFCD+t0lbVoDZsqfqU+JkA7NnKjrBxZR6DZn7
	9+8zMdvxoEzbEcRpwPIMuQGcJ97BGHpx75uGhueuegjwYDyFrTzf1b6TppwYS/CZYDSA5cz0i79D5
	ECEuzZq5hmOmeHfee3hHTzSIniizbBlIzPUsuMPT2MCowp0w7C24uT9t3N6jW2g/Tj2iK2BkXp6ZN
	WnvBai73d8nA/W0ytvhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJEa-0001UK-C1; Mon, 09 Dec 2019 13:37:56 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJER-0001Se-SO; Mon, 09 Dec 2019 13:37:49 +0000
Received: by mail-qk1-x741.google.com with SMTP id k6so13021402qki.5;
 Mon, 09 Dec 2019 05:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xGnfoL+Q5lxOftoFuoAZhd74qwSzhnVOVjw5OvXHFM=;
 b=U49pN4MShVa9I6gosbwKeuRR8/P41PZRcOweU0sHhzfXI8IzpGcs9sPlh23zU3+kd0
 +lMJndGzXUoksfINbZjJUE6yVtb+3WBW7mS5Q9JmYeUhUCSIomQlwKKCpSccenO4qVOs
 KvqNRQpR3N46pN8XTJPJ+CaKt1QVUXEvgEhaUp7oo8gwUBPQBNt2NqwwfQeLcQzNv7Nq
 nu8UurvP+Cg0TIBnAoeXQ+ZouvttiMSUp3V3zg9/h6f/h109GCIpCoNza14pwc5+62vK
 m7qOFGGYKTWmvSenSp8GsGyRZ2mRZMemoWQSxuKeX+Q+pHe5kMKNX0YGLB6xlDQudhWw
 GZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xGnfoL+Q5lxOftoFuoAZhd74qwSzhnVOVjw5OvXHFM=;
 b=oTCYjgnzQeCE/SIJa94vB4wWJf7Y4ohLPK3mh07OBfLS2Z3tCNBigYDK6qP2GCdLu5
 4EkFgGOPTMvq9r64srISD/Hmh6skhDEzsK8AmeEFZYw7VBDtKceqK1myu/ExizmegB1J
 jOVF1LCQbQ4H1TWNOIxhY8irJsZqsY+Ji8mR+qqN1GRZ5pVdr6jX2bsSuYYE8dKFB/OO
 jqx+010vmoIEIep7mI2FIYV8MOBmuQbP2MpXcziieSzDrUeDFn8boE1NEzRNMnqTYUac
 9COQmF7/QsFC20krg4YSl8/CAlejn4yGi+9R4PSoHkTVqEbVu1GSJ6bWlG17/SRvLA7l
 t8zw==
X-Gm-Message-State: APjAAAVlP5S+W1rzR7Q3JoVqtWbfdYgYrEI5OKn4g8Gw82yLIaxAhivv
 I2rxfI3soEJW5IC50XSnBcSyjm15VSdT305yiME=
X-Google-Smtp-Source: APXvYqyy+pyt3+tHN1YUVJHOdfhc/PRYtoTCblfW0ozOp9vWQN673XU0C1+hCw+KWhrukdItq0qHZrW+JPcMOPiWEnk=
X-Received: by 2002:a37:6c01:: with SMTP id h1mr26390419qkc.484.1575898664569; 
 Mon, 09 Dec 2019 05:37:44 -0800 (PST)
MIME-Version: 1.0
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
In-Reply-To: <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 9 Dec 2019 08:37:28 -0500
Message-ID: <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_053747_943988_CE7151CD 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 8:29 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/12/2019 6:45 pm, Anand Moon wrote:
> > Most of the RK3399 SBC boards do not perform clean
> > shutdown and clean reboot.
>
> FWIW reboot problems on RK3399 have been tracked down to issues in
> upstream ATF, and are unrelated to the PMIC.
>
> > These patches try to help resolve the issue with proper
> > shutdown by turning off the PMIC.
>
> As mentioned elsewhere[1], although this is what the BSP kernel seems to
> do, and in practice it's unlikely to matter for the majority of devboard
> users like you and me, I still feel a bit uncomfortable with this
> solution for systems using ATF as in principle the secure world might
> want to know about orderly shutdowns, and this effectively makes every
> shutdown an unexpected power loss from secure software's point of view.
>
> Robin.

Since ATF is operating completely in volatile memory, and shouldn't be
touching hardware once it passes off control to the kernel anyways,
what is the harm of pulling the rug out from under it?
If this idea is to prevent issues in the future, such as if ATF does
gain the ability to preempt hardware control, then at that time ATF
will need to be able to handle actually powering off devices using the
same functionality.

But as we discussed previously, ATF doesn't have this capability, so
in this case any board without a dedicated power-off gpio will be
unable to power off at all.
Also it seems that giving ATF this functionality, with the current
state of ATF, would be cost prohibitive.

I personally feel that allowing the kernel to do this is a solution to
the problem we have now.


>
> [1]
> http://lists.infradead.org/pipermail/linux-rockchip/2019-December/028183.html
>
> > For reference
> > RK805 PMCI data sheet:
> > [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> > RK808 PMIC data sheet:
> > [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> > RK817 PMIC data sheet:
> > [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
> > RK818 PMIC data sheet:
> > [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> >
> > Reboot issue:
> > My guess is that we need to some proper sequence of
> > setting to PMCI to perform clean.
> >
> > If you have any input please share them.
> >
> > Tested on SBC
> > Rock960 Model A
> > Odroid N1
> > Rock64
> >
> > -Anand Moon
> >
> > Anand Moon (8):
> >    mfd: rk808: Refactor shutdown functions
> >    mfd: rk808: use syscore for RK805 PMIC shutdown
> >    mfd: rk808: use syscore for RK808 PMIC shutdown
> >    mfd: rk808: use syscore for RK818 PMIC shutdown
> >    mfd: rk808: cleanup unused function pointer
> >    mfd: rk808: use common syscore for all PMCI for clean shutdown
> >    arm64: rockchip: drop unused field from rk8xx i2c node
> >    arm: rockchip: drop unused field from rk8xx i2c node
> >
> >   arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
> >   arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
> >   arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
> >   arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
> >   arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
> >   arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
> >   arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
> >   arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
> >   arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
> >   arch/arm/boot/dts/rv1108-evb.dts              |   1 -
> >   arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
> >   arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
> >   arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
> >   .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
> >   .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
> >   .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
> >   arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
> >   .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
> >   .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
> >   .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
> >   .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
> >   .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
> >   .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
> >   .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
> >   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
> >   .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
> >   .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
> >   .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
> >   .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
> >   .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
> >   drivers/mfd/rk808.c                           | 144 +++++-------------
> >   include/linux/mfd/rk808.h                     |   2 -
> >   32 files changed, 42 insertions(+), 134 deletions(-)
> >
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
