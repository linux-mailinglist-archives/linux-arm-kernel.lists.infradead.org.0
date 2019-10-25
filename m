Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2306E5332
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucXP+Zrfl1Uy1Jy4XKtmX0LM5qZabvYu4ZpQ+KViVxo=; b=XOVUFkXww8b7g3
	Spu+8oA5sjRPLDPj/tn/6rdV/qJ7EWq++A3TS+vm/FQS3NQdf+tD8faML4iD2jZUCpDWa9wsiQ0QW
	YSb/fCaVRUM750z4uvkOAIuUr0tnBz8ibnXpXf/N6yIH5ncjbhYi9O/NgQxcow3dZKpQmiMHeyBhb
	tmTmrp6i1zV+dJXWP2Ay/w8bk3Ofr7Fm58HpzBbSNJGkAkBLvkOqv58plmv7rUDc5MEqoiv+v9KSH
	M8g4FbJebY+A+sqcetg46aDRwgrLfELRTVUqgubyN0iT9LI2ZcAgukHq7mfJiOTI7semxa1f0TXOd
	5z2SmjMapF8gBCltylEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO40d-0003X4-VF; Fri, 25 Oct 2019 18:08:23 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO40L-0003Vp-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ukusdiIWPioOyFF8K+EMog1oWe2UbKn/QGBiyiSBlcI=; b=TkkERhIk8BBAwoGeaxAN1ziqjG
 l+PP57GcZFlFrZe+8Ex1cit7g7VgrEpsXkPptk1n8IbWDzMu4ghOXS5+62xp6kJ68ILnVYvF6h+T/
 HtNN8wIp29Z8E9XjPQBeBDXoJGiW4TzIZZPdYPZ+jLas/GjF5jghcn34foMfTYFkiKO8=;
Received: from p200300ccff09ca001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff09:ca00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iO401-0005qr-ID; Fri, 25 Oct 2019 20:07:45 +0200
Date: Fri, 25 Oct 2019 20:07:43 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 3/3] ARM: dts: imx: add devicetree for Kobo Clara HD
Message-ID: <20191025200743.48455cc9@aktux>
In-Reply-To: <20191025134621.GN3208@dragon>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-4-andreas@kemnade.info>
 <20191025134621.GN3208@dragon>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110806_232622_3B6B7473 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, 25 Oct 2019 21:46:24 +0800
Shawn Guo <shawnguo@kernel.org> wrote:

[...]
> > +
> > +		pinctrl_wifi_reset: wifi_reset_grp {
> > +			fsl,pins = <
> > +				MX6SLL_PAD_SD2_DATA7__GPIO5_IO00	0x10059		/* WIFI_RST */
> > +			>;
> > +		};
> > +
> > +		pinctrl_wifi_power: wifi_power_grp {  
> 
> I guess you can have one pinctrl node to include both reset and power
> pins?  Also, to be consistent with other pinctrl nodes on naming, the
> node name should probably be wifigrp.
> 
well, the problems they are used in different nodes, so I cannot do
that:

       reg_wifi: regulator-wifi {
                compatible = "regulator-fixed";
                pinctrl-names = "default";
                pinctrl-0 = <&pinctrl_wifi_power>;
                regulator-name = "SD3_SPWR";
                regulator-min-microvolt = <3000000>;
                regulator-max-microvolt = <3000000>;
                gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
                enable-active-high;
        };

        wifi_pwrseq: wifi_pwrseq {
                compatible = "mmc-pwrseq-simple";
                pinctrl-names = "default";
                pinctrl-0 = <&pinctrl_wifi_reset>;
                post-power-on-delay-ms = <20>;
                reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
        };

So having them combined breaks the mux where you use it rule.
I got in earlier mails:

> > +	wifi_pwrseq: wifi_pwrseq {
> > +		compatible = "mmc-pwrseq-simple";
> > +		post-power-on-delay-ms = <20>;
> > +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;  

> Can you add a pinctrl-entry here please? The general rule is to mux
> things where you use it
[...]
> > +			compatible = "regulator-fixed";
> > +			regulator-name = "SD3_SPWR";
> > +			regulator-min-microvolt = <3000000>;
> > +			regulator-max-microvolt = <3000000>;
> > +
> > +			gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;  

> Please add a pinctrl here to mux this gpio.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
