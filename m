Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFBB30D6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 13:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1y6jjvsOdLXVkiOgJmEEefIxr877FmTY7/nlw33xKNo=; b=OG2J0azT462atI
	mzY3Sq0QVbPVcEfUjbArUm+53lkdILM6Ila3RR3xa8Ea/9I7gI5kkUhk4lUqNBBHSXUaaJlCWQWln
	UnbIAUnHhs7s1EQ6NoVzrY3km/YWJbD+iftv9K4D2rHbPaiwtavz27kGwrRrocvSHcEg/OSyO7X5k
	1NNmZlihfDShvk8d757sAwarykpa1pwJWH2eJRVAj8xLAXF3RSq34RLto59acyyL5k/sWgF3faqpg
	e3yY7Moe6gFd77KNdBt/xViK1wV5aDSm4wFXPDP9993u3VMRHsjDWFrWm6Me/Nlw3T7cRfzvsQUtG
	+9YnvRtGZ/IgnrtrpMxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWftN-0004tL-9J; Fri, 31 May 2019 11:40:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWftG-0003hO-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 11:40:07 +0000
Received: by mail-lj1-x241.google.com with SMTP id h19so9289122ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 04:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1nPmul1q9AAucCoI9yY3uJOYKaMzqR7bEf/iEX/aqjE=;
 b=bvbFz7kIlrTImz4Is9rlZJVgVwodHyMIKxGHokBpzd3jyqtrT+N3NzxY7rOqC0jweG
 DSMZZjQ+lcwWYldWhwcDc6MDUtSmWwU3lgIaW3V5IyaiIDgkEjIvhuCYGUTr8M0RXuNc
 O0fzNTX5I8oSooPoLDLs8veC2SMwcgA6oTQ+UL8SCdBdiEoIVyFPp0IdTRROhpyNeEUv
 A412MMiyx1SG8fEtAf6TQL1kE94zOSIAiATRg50MnYQ2Ik19C6EtVxcBkBP8ZtR7diXt
 L9XnCkcFed8oQ1GOfN+jt5Xvm9HOqpOQ6rHsp4ZVcmffoJmFb6KLq7aIIXjJo1M84mUf
 Waxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1nPmul1q9AAucCoI9yY3uJOYKaMzqR7bEf/iEX/aqjE=;
 b=e1V1z6LfEX3Jsq4jLxku6DI6fUMdxEbPkqJa/jrOeI1gSQkFyc9Lml19PH8AQ2Efr6
 YoLCfPfeo21pow8u79QKBObwYpm99Iv8EsZwyL5fOATFkqv3Bd+HXkT5LYhbELiCCOmP
 S2ZuTunNtznDoKfVY5kP+hyA232fnRrEqduBWQcd12rx05RMPPdF+fGE0vuEVkxGHh+I
 3iEgsVREsVo66Saeyvr115pffbFY60A/fgyB2Kq7wpPNevYDoBy8EU3tP3oiHMSiIRr+
 RklotvuTT69Re1kTu7vvJrcNqm/enQiPJDlcHq/6Zg1CNnPbnBUXs8Th6QJsHi2ZlPyl
 NSvw==
X-Gm-Message-State: APjAAAXJvssdwPWlDE3I9GYL+0IQVtcmFDzlFlu/uaQsNU/P2b4QLIl+
 q6OZXFy67xPNlqJWz6A6DDM5oChEBwDQ1WCyPSQ=
X-Google-Smtp-Source: APXvYqyCAo8ow6MnnWWOBWsq1Cm0GTfIZYIH3tTY29CEmrrLVa3t2AA8hrgydqxU4pH85ptW2LRQNyKxfPY6IS4halk=
X-Received: by 2002:a2e:890c:: with SMTP id d12mr5463170lji.107.1559302798500; 
 Fri, 31 May 2019 04:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190530094706.865-1-Anson.Huang@nxp.com>
 <20190530094706.865-2-Anson.Huang@nxp.com>
In-Reply-To: <20190530094706.865-2-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 31 May 2019 08:39:49 -0300
Message-ID: <CAOMZO5D1B1tKs8eu_a8hXs193+TukHAYHiCEyk5g63p1S-cnbg@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
To: Yongcai Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_044006_056621_88A33B1C 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Ping Bai <ping.bai@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Bruno Thomsen <bruno.thomsen@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Pramod Kumar <pramod.kumar_1@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 pankaj.bansal@nxp.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 6:45 AM <Anson.Huang@nxp.com> wrote:

> +                       gpio1: gpio@30200000 {
> +                               compatible = "fsl,imx8mn-gpio", "fsl,imx35-gpio";
> +                               reg = <0x30200000 0x10000>;
> +                               interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> +                                            <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;

No GPIO clocks entries?

> +                       usbphynop1: usbphynop1 {
> +                               compatible = "usb-nop-xceiv";
> +                               clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> +                               assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> +                               assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_100M>;
> +                               clock-names = "main_clk";
> +                       };

 usbphynop1 does not have any registers associated, so it should be
placed outside the soc.

Building with W=1 should warn you about that.

> +                       usbphynop2: usbphynop2 {
> +                               compatible = "usb-nop-xceiv";
> +                               clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> +                               assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> +                               assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_100M>;
> +                               clock-names = "main_clk";
> +                       };
> +

Ditto

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
