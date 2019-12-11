Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF511A919
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFG2vOx4zRdRfPGQrvJstpkBczZEs+oXZ3XS3lqpyeU=; b=uqTz5L4hDUTmsR
	+nV2hRIYhsTsrG8GiML/M07EsviFrBUM6SqmDQbU6Qb8zy3cx1IQvC775mWbqYKDpDMB0GNnD+NHE
	G4chFVQUUOoes3Fi7vP7dHYeVMhkmCtlG742pPLC157GDNIb9/ZKYVoxabfbblD4+U2s2e2gs8ZCB
	81JQhvMhenCUe/jy5Cv0pObvU0iW/iE42DcEoIRFwUaUvlbjg6BInBGAGfSiGHNkEpIPHanw2Xpji
	Pk6UjmC+DQFxIMT2sRcCxDNagYvg2BRpF4iI1C7cuyDYHV07DcEgr+UDLrTsJn1fYmKbS/e+QzWGB
	PFnZ7H2O4Y8fK5dyKFKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezRb-0005uJ-5V; Wed, 11 Dec 2019 10:42:11 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezRT-0005tS-4s; Wed, 11 Dec 2019 10:42:04 +0000
Received: by mail-il1-x141.google.com with SMTP id z12so18986103iln.11;
 Wed, 11 Dec 2019 02:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ytdBVhk/qhHIU0f1ejIbJ7Mj79TlpQjDmvTTuwp3S/w=;
 b=kOm19GDwtrHwCIEW2BVH8UFPDw9yPqTLsunbaXqDGj8DbJC4FeLahCOjAkBmfU8jdq
 wlCP5QKmvhJzEGgRObxhFZqvpWiWfgbhA2rJQlVa+c1qcr2VGMOunxaVzcb3B//KeX32
 oVP5L12yfCwgZGBOrX5n7wnQ/mW3lEUH84HuypEIDoZGMUiAOtWCSqL/4qjn8Cu5Xbvd
 UUFyq0WuaYJTyaQ+qFnFZM/ag7JkZE0chQK0S8iH5rc+sv4RJxXT9VFTBhYsd4Xj5xmE
 jku0y7RZm8ZfYNo2z8sqpTmN3POmLJaolkukjqI89zqQsqf1wMaqekHud4CRRVefPxFa
 6XXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ytdBVhk/qhHIU0f1ejIbJ7Mj79TlpQjDmvTTuwp3S/w=;
 b=dQBMWDnnvIPYlIUwITk6pihohHnZoD05mav7G12f6pEBUThrNKNVHS+8g5uD2ABzTH
 dpszBVfOWc9LIg3KkORp8GyPf9GW7krLjEEUhvpa3Scx8JMibangrJ31xQSpJaO4RWPr
 np4ySLRuJfBWzmjXellZfKuV9vN0poSt7Acmzavwt3+DBg7m/Pvqe+2FeA1p5iGSSCqF
 LkQ3HAb/coheUi+yBW0ShF85allcLbZQ4Zcbul4aAZMdtGgFKY1VqdVrbkHkBuWNWzP1
 XfeJ/M2Evt29OWivn02aMsyu5F8z+p4ndlYb8P/y7Q8RERKRhiPvywtqJmuPbaEXxvRS
 s22Q==
X-Gm-Message-State: APjAAAXDucOK8zqx9Qi0q4CrjStKclTrVodP2NEEmhkHs0m7qicye27W
 /9c2Np3gJmL81GCuZxgmuvOb7WHRiW45VZHSdQs=
X-Google-Smtp-Source: APXvYqzIxiN8rtHbQW0oVmIRPfEAsZq+Jg6CQUNJF2OQPs6YegAImh5AqiNO0lzZwdGY8+YC11yEKidsfRdIltG2fDE=
X-Received: by 2002:a92:5d92:: with SMTP id e18mr2311277ilg.75.1576060922553; 
 Wed, 11 Dec 2019 02:42:02 -0800 (PST)
MIME-Version: 1.0
References: <20191211084112.971-1-linux.amoon@gmail.com>
 <20191211084112.971-2-linux.amoon@gmail.com>
In-Reply-To: <20191211084112.971-2-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Dec 2019 16:11:51 +0530
Message-ID: <CANAwSgRLCNUxmiaRNBSQ9ysAFs+RpnbBqZGZ4bq4=BzdnPRR2g@mail.gmail.com>
Subject: Re: [PATCHv1 1/3] arm64: dts: amlogic: adds crypto hardware node for
 GXBB SoCs
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Corentin Labbe <clabbe@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <narmstrong@baylibre.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S . Miller" <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_024203_212584_8B5A73E4 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-crypto@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Wed, 11 Dec 2019 at 14:11, Anand Moon <linux.amoon@gmail.com> wrote:
>
> This patch adds the crypto hardware node for all GXBB SoCs.
>
> Cc: Corentin Labbe <clabbe@baylibre.com>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Tested on Odroid C2 GXBB
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> index 0cb40326b0d3..bac8fbfd4f01 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> @@ -14,6 +14,16 @@ / {
>         compatible = "amlogic,meson-gxbb";
>
>         soc {
> +               crypto: crypto@c883e000 {

My mistake I got this reg value wrong, as per the
"S905_Public_Datasheet_V1.1.4" [0]
it should be *0xda832000 + offset*4*
I changes this at my end but I get kernel panic on loading the module.

# sudo modprobe tcrypt sec=1 mode=500

It's looks like the crypto node is wrongly configured.

> +                       compatible = "amlogic,gxbb-crypto";
> +                       reg = <0x0 0xc883e000 0x0 0x36>;
> +                       interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
> +                                    <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> +                       clocks = <&clkc CLKID_BLKMV>;
> +                       clock-names = "blkmv";
> +                       status = "okay";
> +               };
> +
>                 usb0_phy: phy@c0000000 {
>                         compatible = "amlogic,meson-gxbb-usb2-phy";
>                         #phy-cells = <0>;
> --
> 2.24.0
>

[0] https://dn.odroid.com/S905/DataSheet/S905_Public_Datasheet_V1.1.4.pdf

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
