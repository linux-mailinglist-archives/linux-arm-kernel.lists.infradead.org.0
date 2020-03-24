Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E862C1917D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vR04qi95ynl+QcZG8kb7vZDb3sBw3jL+qhJ+aL+lhzA=; b=KiszoW5cpWP5DO
	LhzOQyXAXBrNpcZ7THW4CtPH9CyKkEWuxl+EV0j4vLmmDbkH5ubsDfH6zNo2UIbyoxJEnnK1pO0x+
	SPN9WjW3qCxYv6dO/sURq7+GZUoJRD9Koaepa4ZgZ17RgYi/ewCRrXRVuiWx1l9tVdHaidkrEomsE
	92a8ajjOQd5uDZt2FAe0BM6WIdzeLHIRqDZQ8qanxe8n/7EakwVhI66onRnoEe2aAXflxPlHm57m1
	9YS436yYIqWU1XHfSJxlL+QlnD0l5AXs52/3t8cvMnN6vMDOs18QV9g1b43P5940OkKJbndchF0y/
	0mBP+pzGavIyGUvDbkBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnXV-0001N9-JV; Tue, 24 Mar 2020 17:40:33 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGnXM-0001MU-69
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:40:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id j11so13946448lfg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 10:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oHdHSXeaggEKXTuBPUsj+Dax4+iq/FMGBOOC34Ttl8I=;
 b=drSQstK+tdROKRR/LjOj0ucrd3VEKgjwndat96gIt+pKISyoD4RCEXpolqW2DSz887
 NXDT3WHFlNiBYqtYaJhxvGLK/i0ts8BKmntpzqOqXMEG3/nwDTJqCvmppkci0sgKx8aJ
 BZQn9m3oSQgMvJILG91fD7vdJijttO+lLvgeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oHdHSXeaggEKXTuBPUsj+Dax4+iq/FMGBOOC34Ttl8I=;
 b=lkI0MKktNemea9bWa3qdAs1dJHfqkcPKg8FWzZsNnhw7o/tdoEuoHUD8MDPvqXGWNc
 93EKNlFgEtl0NA/9MeFdJrP9xnSTkB2g4/xf1KS/nK0HVpzd8XaRwQ7rGEA/d8bG7RH5
 C+clnDw6lMNbUCkml7dK30mgpIjf0o3tvQ8SnIbX3oT5PlfGtYw17y5znA08dwefikGp
 40l60SGJTQnCN3NZYYLGr9hzwC986NUUry+WkNXYx56YxiltnHe1zIAO1Kr99kpoo3S+
 QwwnrecQqBIgDEsvgY2qOjifjTnlNiUNdc8zSYJO1lFjUu4zfJOKWWVtC5S84F8+U4Po
 yrYw==
X-Gm-Message-State: ANhLgQ3o80712cUvDw53b+DNJfsT4VqxLzfDNlkxff7gcrtDjkIecEAd
 yTpt5FdZpMnFEWc8ZwXgygyauIO0zHM=
X-Google-Smtp-Source: ADFU+vvGfNKRCI7IyTtW9VT8ljPl2CHvk4X8M2Z8mIyTCbU7aHXfLTS0EwZvP9iDy2PSH5eSef37bg==
X-Received: by 2002:a05:6512:3091:: with SMTP id
 z17mr3267418lfd.42.1585071621847; 
 Tue, 24 Mar 2020 10:40:21 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com.
 [209.85.208.182])
 by smtp.gmail.com with ESMTPSA id b193sm7503750lfd.74.2020.03.24.10.40.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 10:40:20 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id g27so10706816ljn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 10:40:20 -0700 (PDT)
X-Received: by 2002:a2e:a495:: with SMTP id h21mr6019658lji.123.1585071619722; 
 Tue, 24 Mar 2020 10:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
From: Evan Green <evgreen@chromium.org>
Date: Tue, 24 Mar 2020 10:39:43 -0700
X-Gmail-Original-Message-ID: <CAE=gft7EOALEMUWzoR3+pjoxCUTYWbiXoXY=dXH1BDhS3KwBzg@mail.gmail.com>
Message-ID: <CAE=gft7EOALEMUWzoR3+pjoxCUTYWbiXoXY=dXH1BDhS3KwBzg@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: Rakesh Pillai <pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_104024_255963_289103AC 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rakesh,

On Tue, Feb 4, 2020 at 5:21 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>

What is the status of this? Looks like you have some feedback from
Sibi. Can you reply and spin this? Also a comment below:

> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 +++++++++++++++++++++++++++
>  2 files changed, 32 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 388f50a..167f68ac 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -287,6 +287,11 @@
>         vdda-pll-supply = <&vreg_l4a_0p8>;
>  };
>
> +&wifi {
> +       status = "okay";
> +       qcom,msa-fixed-perm;
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 8011c5f..e3e8610 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -75,6 +75,11 @@
>                         reg = <0x0 0x80900000 0x0 0x200000>;
>                         no-map;
>                 };
> +
> +               wlan_fw_mem: memory@93900000 {
> +                       reg = <0 0x93900000 0 0x200000>;
> +                       no-map;
> +               };
>         };
>
>         cpus {
> @@ -1490,6 +1495,28 @@
>
>                         #freq-domain-cells = <1>;
>                 };
> +
> +               wifi: wifi@18800000 {
> +                       compatible = "qcom,wcn3990-wifi";
> +                       reg = <0 0x18800000 0 0x800000>;
> +                       reg-names = "membase";
> +                       iommus = <&apps_smmu 0xc0 0x1>;
> +                       interrupts =
> +                               <GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
> +                               <GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
> +                               <GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
> +                               <GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
> +                               <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
> +                               <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
> +                               <GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
> +                               <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
> +                               <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
> +                               <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
> +                               <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
> +                               <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
> +                       memory-region = <&wlan_fw_mem>;

The clocks are missing:

clocks = <&rpmhcc RPMH_RF_CLK2>;
clock-names = "cxo_ref_clk_pin";

> +                       status = "disabled";
> +               };
>         };
>
>         thermal-zones {
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
