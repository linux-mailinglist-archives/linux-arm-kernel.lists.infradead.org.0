Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639E25E4D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZesyyTwYViMoEon+wt6//EOSbBb4mwzpQmP6/H8O2jY=; b=kzwsK0aaqYchW9
	dDmYNM+p6b9DdJgF0rt49WStRpqtND+7/9pnm6RmAjWoorFIBvz9EXXVyXjQkzCN9V2gWEU4y3sI4
	M668xflNrVbmFj8eM58ehOOmRcuLlz1qmKKBdPFVMVDfMvysjzOHnWgE/oiKCg09LK7HqLkv3S21M
	uA0HBJwpt6DbMw399m1RNq4HvBh6pBtjqISY17rncqVD5TDpOfV9l9ajjk2xYkqhk/ng/FukOtpkD
	0ntjFCyzAtIkRzlaUMVUVjKJO0APdDKttpWZlK5+gnWqt54lAG4PfYMTHIDrtzvhtPTXU8vJr5q+s
	Y3ATOsj6PDRr0Lcl15pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiexl-0001I4-Hl; Wed, 03 Jul 2019 13:06:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiexW-0001Hj-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:06:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so2762339wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 06:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zEixiL4IxxmhE1EEgRXYpM6GetKrTFh5N1jJDqD0OKY=;
 b=FYCglz3/YDkXa9BPSo5eBu3PK4LvTIUNrRLUJ30Gj73v7a/bJ3hazz+Zoq/ax9ppLX
 8ojk4XxS3b2uVAF1DFg+LLJxg/M1Qxsa1yew4s2mn88WoY1W7IWilpcOmNrABvzjHTcX
 WYPQyF8TIUaWVHThZ8OF6T3sXfOerACUIML9OKsUtkhUb/3Ihm4QjjZLV7Ru5CztEDdn
 Faf/FtX/YqLo7kFx2AV/PBntiObLJ/1sZSnci8srwDU39H0f8wB6K9QQXJHswsfCFZkz
 HRYkxM9tKgSrbBN8bveZnnsF8ES2FEPZIbQBn7QWQGwWFvQDZPp7C72i45japewGdMLC
 kaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zEixiL4IxxmhE1EEgRXYpM6GetKrTFh5N1jJDqD0OKY=;
 b=i7F/jQOz6R3+yeBZHkZqhO1ugEZ9weOUenMi1nPmnar+aSJvLZkuXdQRLLQSOEtPoZ
 Y9iL10BwXjRj0Mm63ciCqQDXGOUu0X3nuEetLgoJxiOOtWxLNEbNWgFbYnXfTZl2MtT4
 4xH1MMsGWuDT4Ge7RtfN9E/Y1MFze5R+3P77yvm8UgG0le6aOxEjfEeCuPjTvAGpWNe2
 mtkAl2oN7oHvYpiT9YiSVjOXErPDNuZ+9krn0lqU+5wDWlahV8PguBYMoocdwyD0pK/O
 geurNN7xsEpxP39Rn48IKwVXpRTpGmJJu4C9EcrfcmrY/+Um+GemMrttWSz16dVRi4TV
 hYeQ==
X-Gm-Message-State: APjAAAUpYXzEurXULWpOb6ZNfnrT4mYo4TN9T1Hd297ptHlDRs8VBpE5
 R/eLi87jD2pYbnOEYSMKzGDjsP2YLlW/3pxtEn1Vb1rVwSk=
X-Google-Smtp-Source: APXvYqyzkJF+FxAdtC5PrIBb3sVvDSb/XQN7bxmoIvvhhsxHRWKKj8Y8j5QNIWFRUek6SCIg8jt8R81BRxXQ/Bhq30c=
X-Received: by 2002:adf:b69a:: with SMTP id j26mr21756159wre.93.1562159160916; 
 Wed, 03 Jul 2019 06:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <1562155311-24696-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1562155311-24696-1-git-send-email-abel.vesa@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Jul 2019 16:05:49 +0300
Message-ID: <CAEnQRZBK7EYVhbGpFeC79HxU=h0OcXU_SSeaMWbp+Qk=rf=14g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_060602_790385_D618FE0F 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 3:03 PM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> Add the initial configuration for clocks that need default parent and rate
> setting. This is based on the vendor tree clock provider parents and rates
> configuration except this is doing the setup in dts rather then using clock
> consumer API in a clock provider driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

For audio related clock:
Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>
> Changes since v1:
>  - removed the PCIE and CSI clocks parent setting since
>    that should be done from their driver, as suggested
>    by Leonard.
>
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808..c286f20 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -489,6 +489,20 @@
>                                 clock-names = "ckil", "osc_25m", "osc_27m",
>                                               "clk_ext1", "clk_ext2",
>                                               "clk_ext3", "clk_ext4";
> +                               assigned-clocks = <&clk IMX8MQ_VIDEO_PLL1>,
> +                                       <&clk IMX8MQ_CLK_AHB>,
> +                                       <&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
> +                                       <&clk IMX8MQ_CLK_AUDIO_AHB>,
> +                                       <&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
> +                                       <&clk IMX8MQ_CLK_NOC>;
> +                               assigned-clock-parents = <0>,
> +                                               <&clk IMX8MQ_SYS1_PLL_133M>,
> +                                               <&clk IMX8MQ_SYS1_PLL_266M>,
> +                                               <&clk IMX8MQ_SYS2_PLL_500M>,
> +                                               <&clk IMX8MQ_CLK_27M>,
> +                                               <&clk IMX8MQ_SYS1_PLL_800M>;
> +                               assigned-clock-rates = <593999999>;
> +
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
