Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F54D1D9DE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 19:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FZcBf4+2+/IeZyBsYmuVh8B0X03W0Rp41NwWLspvdI=; b=acYrxFB0bkjb9K
	J0WkBuz9qB1IGKmzDvgShoEsLEaIwyFW6s3NanBFWt9uSnIW5TiE4u8kqyn+17cSM/JwGJ/pMFpkR
	vOJ1gdyMSJj1/fRHVwUtxbdRvGhURL34w6G8OqVuN0cz/1LiyeDhH8f2e0ICsFMGnm8IffbQ0JB+O
	HqLFBC8i6RBq82TKlriWxp+SEX/uHqOY/rs6vcOKrMK8xEmZD1au36cBIPNcWu5VmZqk4xYF1nC3x
	CJx6rwH4QpV3fEFXr0T8vI68ZrolQmCUdkvmW4FRenhwHcOSnJRWTtgTOB96jLilw9uw+bd6cWqQv
	9B4rQP3OVA8BWSJvlW0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb638-0003Um-2K; Tue, 19 May 2020 17:29:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb62u-0003U7-UH
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 17:28:54 +0000
Received: by mail-lj1-x242.google.com with SMTP id o14so625239ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 10:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2UU2uDfoQ0XDU5KpKT4RRKwHm6V5OiKc9FhAQ/MpRZE=;
 b=AlU1mY950tCF9utrFQJlkpHmR4B291Dm6iDtNg/pIX2GtWDmyyj5nBCfZdHnxlIZBo
 x8d58nILrz8M4S83m3rVZ34JaujF1PMsA2JJq7UjB/1bl30tz/Tzgvfcjf0g6OMPbQwW
 OeCiSlziacIOl3984F0dNQIh887yHOmDn6RUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2UU2uDfoQ0XDU5KpKT4RRKwHm6V5OiKc9FhAQ/MpRZE=;
 b=o8k8ssu05n2CpH2t81hbwPTrv4H7frFedZEJKGOq1FjxsaEe4wLgbpxMatESK7ksRB
 79X0eIhWq55j0Qy945Sp4Sfu7bWSoe1AnJ7nEGci80DWNRGGxs59o4uKzCMLhQNCona/
 j9gsUetrAShVhPFsl4tb392lddCYQvG1tDZiyGcNgg1VzwoLzX4WTsYBttkmQ4wQjm6a
 Q3aUGIfgvPchEEn11+QvtYZznnigtb+ngMFv+eCyBDzrL42gF9s3JBBJy9RV/S4pJ7HQ
 L/b/FwaWzKPKy2pGrkoz9n7zvXg1RI+qAgfxyYnNWTOxYIuSZHvTNaP5H9broUlBkomx
 U3ug==
X-Gm-Message-State: AOAM533q6AAoa+jg8fvgGOE/5aM/EjAuEyppDpauwk92ML/6mKhf5/QM
 yKYE4gEJIg1vugNqgRgkafM5i4Ox9B4=
X-Google-Smtp-Source: ABdhPJyQV23/IZuzZvfbSX4GNzS0nQh0pbYSqRudQiuqFW0FHEFJ5b7KZLJr4sFScOWe9F1CJPcZIA==
X-Received: by 2002:a2e:9f54:: with SMTP id v20mr280587ljk.107.1589909330630; 
 Tue, 19 May 2020 10:28:50 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com.
 [209.85.167.53])
 by smtp.gmail.com with ESMTPSA id x11sm133923ljj.15.2020.05.19.10.28.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 10:28:50 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id c21so224347lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 10:28:49 -0700 (PDT)
X-Received: by 2002:a19:b06:: with SMTP id 6mr12546467lfl.104.1589909329254;
 Tue, 19 May 2020 10:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <1589712411-26718-1-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1589712411-26718-1-git-send-email-pillair@codeaurora.org>
From: Evan Green <evgreen@chromium.org>
Date: Tue, 19 May 2020 10:28:12 -0700
X-Gmail-Original-Message-ID: <CAE=gft577zxP5F6OdFXt6taLuLyye+tdRqZa63mPSRtPXO3Lcw@mail.gmail.com>
Message-ID: <CAE=gft577zxP5F6OdFXt6taLuLyye+tdRqZa63mPSRtPXO3Lcw@mail.gmail.com>
Subject: Re: [PATCH v9] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: Rakesh Pillai <pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_102852_992900_56DC111A 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sun, May 17, 2020 at 3:47 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> Changes from v8:
> - Removed the qcom,msa-fixed-perm
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  7 +++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 +++++++++++++++++++++++++++
>  2 files changed, 34 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 4e9149d..38b102e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -389,6 +389,13 @@
>         };
>  };
>
> +&wifi {
> +       status = "okay";
> +       wifi-firmware {
> +               iommus = <&apps_smmu 0xc2 0x1>;
> +       };
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index f1280e0..dd4e095 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -63,6 +63,11 @@
>                         clock-frequency = <32764>;
>                         #clock-cells = <0>;
>                 };
> +
> +               wlan_fw_mem: memory@94100000 {
> +                       reg = <0 0x94100000 0 0x200000>;
> +                       no-map;
> +               };

This node is not in the right place. Up through v8, this lived inside
reserved-memory. Here it seems to apply into the clocks {} node, which
is not the right spot.


>         };
>
>         reserved_memory: reserved-memory {
> @@ -944,6 +949,28 @@
>                         };
>                 };
>
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

Should any of the *-supply regulators be specified? Or are they all
board specific? Or just not needed? The example has these:
vdd-0.8-cx-mx-supply = <&pm8998_l5>;
vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;



> +                       status = "disabled";
> +               };
> +
>                 config_noc: interconnect@1500000 {
>                         compatible = "qcom,sc7180-config-noc";
>                         reg = <0 0x01500000 0 0x28000>;
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
