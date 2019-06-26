Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D852D569A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 14:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f015mUGmqe5Y4i+hC6pisriZjWBf4RjXgcyA8hMBj8g=; b=mkuQe6HPy2XRST
	LR9as3iZpBZ82N47ugzpLN/LvWzqacTfW93FmExTpuErKCjsxN1Hk50syqcMwPSOHcTc3289UpLVW
	+WjSfQfAn7QYTjWToKhcqCTCIcrxBSFhxLeFAVieGW2tx84mCzhU+N2GHqlKt1NSGXyo9I0Fl6mPe
	M3E9KdfYTMTdMiATdIk0T+UoDlU+C7n1wvafYjtMEZLC7NBDi3iJyk25E0jWN4FOFsRgQ0p3yOfhi
	MM7A5A4Z2BxyavHt2PXDTYG6++aZPFdbRt6kpJ0htWVrFu5yK5zHUPbjhi43CNBtOVFY0mThKccTo
	ePqyAjVyZGw0sEeW8lLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7J1-0000Sb-Eh; Wed, 26 Jun 2019 12:45:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7Im-0000SD-7K
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 12:45:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so2571958wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 05:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gAbbihM74t8q2UMVhMTR5xnkBr8o8yTLh+oQn0ML/yk=;
 b=ivsiGwVl83y9FI7hcXLb1AHoNEdPPw9E9/GVHE8u3kTwO1C8LY033LVpyHOqujBrcv
 fw0NnYE0PP94udJQJkCS/lfXLnQKgGmlJDVOjIdNVGpJRX1RQ+UUirq49t3meA4aGvXV
 NVROUsvQBXXhyq4OFtWjLyR8PuheX4BMDJqM4QkRbO7/CZPGwluDHD/CSmzeXFIJQQJ7
 sHcPzkijbaPqD+SQ1HJnRi4lqt5fbzTM2dNYHsEnCmJtagYWSWDmX87cc7KABifuI+94
 lZfmnrS5OL+gbyO/XMLTroey6Dr6fGqd4yhpHSDvQGKb8GBP2Zs9qLWYGGrL6JOAJVgk
 ugDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gAbbihM74t8q2UMVhMTR5xnkBr8o8yTLh+oQn0ML/yk=;
 b=XVz/cwiEoN116wipKbanVH3n1jdy6LiexQhRajS6nwjz1J8dzEEEHSZ+rws6/jwnQM
 1knO1sWeH8pklmGeO0wP8opMQ9v/8INo6NmwbgpQMbXPrbIl//HPD9oWCykwg5qmX3RG
 xyXl1kwehhAVDhcdtqA1o4FQb5BQM0bpAFONZDHpUSw8YIRDnewiyg7dRyFxAceM+DJA
 es956wE2voNyVvbbFFBTu/jju40i/4z9mJggCYV7S2HtSrhZcU6RlZwfq43zArnxjKdf
 LRpFahgNcSw6Ohow9YlesudG+vK+z5cDkMq2O1Gva1xOz512Yg+Uj2Hamv4wPUUwLV6/
 fMgg==
X-Gm-Message-State: APjAAAXaDIEJmKc5T9MUMd8kPJU9ezfUuJ16f9tGymKOmNVy6S9Gcle9
 Tqo8Mmo51aBCxj4+B4HEkdUQtOg5aAlSGQLYISA=
X-Google-Smtp-Source: APXvYqyRGuZ6Jz+jv+uDwzSDH3cb2d+5MNQtE2vHFYvNst/k8o0GEq2/zWRO0cYMNYNhC0UOR6kqGelgGOVUFtY8+CA=
X-Received: by 2002:a05:6000:9:: with SMTP id h9mr3617731wrx.212.1561553126908; 
 Wed, 26 Jun 2019 05:45:26 -0700 (PDT)
MIME-Version: 1.0
References: <1561469191-26840-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1561469191-26840-1-git-send-email-abel.vesa@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 26 Jun 2019 15:45:15 +0300
Message-ID: <CAEnQRZCVQ0+pRh6akiZJXU-fRugEXmnthZp8Q2=aXFXCO3vcUg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Init rates and parents configs for
 clocks
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_054528_269221_E6DEE7F1 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 4:42 PM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> Add the initial configuration for clocks that need default parent and rate
> setting. This is based on the vendor tree clock provider parents and rates
> configuration except this is doing the setup in dts rather than using clock
> consumer API in a clock provider driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 36 +++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 232a741..ab92108 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -451,6 +451,42 @@
>                                          <&clk_ext3>, <&clk_ext4>;
>                                 clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
>                                               "clk_ext3", "clk_ext4";
> +                               assigned-clocks = <&clk IMX8MM_CLK_AUDIO_AHB>,
> +                                               <&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
> +                                               <&clk IMX8MM_SYS_PLL3>,
> +                                               <&clk IMX8MM_VIDEO_PLL1>,
> +                                               <&clk IMX8MM_CLK_NOC>,
> +                                               <&clk IMX8MM_CLK_PCIE1_CTRL>,
> +                                               <&clk IMX8MM_CLK_PCIE1_PHY>,
> +                                               <&clk IMX8MM_CLK_CSI1_CORE>,
> +                                               <&clk IMX8MM_CLK_CSI1_PHY_REF>,
> +                                               <&clk IMX8MM_CLK_CSI1_ESC>,
> +                                               <&clk IMX8MM_CLK_DISP_AXI>,
> +                                               <&clk IMX8MM_CLK_DISP_APB>;
> +                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
> +                                               <0>,
Isn't there a macro for 0? (dummy clock?)


> +                                               <0>,
> +                                               <0>,
> +                                               <&clk IMX8MM_SYS_PLL3_OUT>,
> +                                               <&clk IMX8MM_SYS_PLL2_250M>,
> +                                               <&clk IMX8MM_SYS_PLL2_100M>,
> +                                               <&clk IMX8MM_SYS_PLL2_1000M>,
> +                                               <&clk IMX8MM_SYS_PLL2_1000M>,
> +                                               <&clk IMX8MM_SYS_PLL1_800M>,
> +                                               <&clk IMX8MM_SYS_PLL2_1000M>,
> +                                               <&clk IMX8MM_SYS_PLL1_800M>;
> +                               assigned-clock-rates = <400000000>,
> +                                                       <400000000>,
> +                                                       <750000000>,
> +                                                       <594000000>,
> +                                                       <0>,
> +                                                       <0>,
> +                                                       <0>,
> +                                                       <0>,
> +                                                       <0>,
> +                                                       <0>,
> +                                                       <500000000>,
> +                                                       <200000000>;
>                         };
>
>                         src: reset-controller@30390000 {
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
