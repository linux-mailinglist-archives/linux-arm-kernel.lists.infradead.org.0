Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E1D14E7BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 04:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3v8xt87BU9QfiT4Df+bMmRZrAZVai4oD1UgsUx0o8Eg=; b=GAcDBgxBq8YMkk
	7NDKn/cGCkmnPBB/TIFFG2UvPM2XVMJ1GBsoemrR7wu7oY3UaD4vo9cd3HFseSDsoZRhKaokoYAl2
	enlc0tWaDBPG9avHF0ScMMN2uuPO1JP/PunpvMy+MH73Cz9+xWGRunyneRsOBOuGw/3ckiijxQkA3
	xr/+TAcQuVYA2ZK7xiEMAOn5INoiRdv9DktFeseAr2wow3saE3C6aBUzhatJKFdS7/IWJVSsnRXwI
	3TUB44bxpUKJWYCH43Qb7xm02qifOkLVKmQPqVY0Urw9OL/1n3n1QFJf8Zcn6ecdJYUq3bzG2zGSN
	9RsRFm6Z47Dj7DjEnlcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixNRK-0003Sj-Nu; Fri, 31 Jan 2020 03:57:54 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixNRA-0003SE-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 03:57:45 +0000
Received: by mail-qv1-xf43.google.com with SMTP id g6so2653393qvy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 19:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OS9mBViSnpsx15jMubvsBFiHBkNyIzUT3w9rd7Dkm/4=;
 b=noyHcUPqJ0I5pWCEXCl8lIoSgyMPfW1Alr3FH8Icy2qTfIQG6tC7f5iR6GJJgBlvBH
 Zj7O6G0hnO+elulx3q0wMDv6N602q09EdFidsG+RazZIn6kKV15MIrMncnKEIg7BjvDf
 MGBpMYvNY0vc8PhsLTtRl7c4xih/i7Kz7jHZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OS9mBViSnpsx15jMubvsBFiHBkNyIzUT3w9rd7Dkm/4=;
 b=fllS5Bf73N//I2aDpcsIh0y2Gez5wBRIUu1lh19+ddb9PH8RYE+qytwVMe/DOhWyQP
 iJw6TrkcLGWVLWEKKomxy+eDHqoMT3Vs07ylUyllGhzH8WpB9NnUjfdvPM8xLtXvZ32U
 RQ4NxGwrqDw+XVpzOcUZYYLNAgCv0iQhp/w781t3kQPODiSLtcE0tf4dEyLgqiRJb6Gm
 L90LUmWod1WecNLIJIs+C95IMIhYQeX1zJKzJocPI8rEwE52eZ811Zfz4+G51rQ8KFns
 y/WhJW8s3iwJk3gKc/YgceUXMorJ6XY9CS5Zk35AKxDh6ThLRLfictdJTYC2/o0Fua3E
 92Qw==
X-Gm-Message-State: APjAAAUg863SmVgnnZ7ZMwfKrYdnMavViRAHtJHIKDzupeaVB3EYODtW
 kA2PscOIP6IaJol4MBXqwNyhwWbE7YUeiqbtP5g=
X-Google-Smtp-Source: APXvYqwa+52T6lEl42UR4l4JCqYs01dXPTl8h5GnRqow8oHgCFNPqL4JOACxrc1HcV1odaRzFYIi256vZzydv0SSYWQ=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr8055946qvp.210.1580443062931; 
 Thu, 30 Jan 2020 19:57:42 -0800 (PST)
MIME-Version: 1.0
References: <20200128011817.4095682-1-vijaykhemka@fb.com>
In-Reply-To: <20200128011817.4095682-1-vijaykhemka@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 31 Jan 2020 03:57:31 +0000
Message-ID: <CACPK8XfJYVH6EotMQcuuoV5hWnkA79oHSCvQBx5gr4np8Y59og@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: tiogapass: Add gpio line names
To: Vijay Khemka <vijaykhemka@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_195744_112423_4C8249D9 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sai Dasari <sdasari@fb.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 at 01:18, Vijay Khemka <vijaykhemka@fb.com> wrote:
>
> Added GPIO line names for all gpio used in tiogapass platform,
> these line names will be used by libgpiod to control GPIOs
>
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

The verbosity of the bindings is unfortunate, but I think it's the
only option we have to date.

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will merge this through the aspeed tree for 5.7.

Cheers,

Joel

> ---
> v2 : Added BIOS_SPI_BMC_CTRL gpio line name
>
>  .../dts/aspeed-bmc-facebook-tiogapass.dts     | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> index 682f729ea25e..fb7f034d5db2 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> @@ -121,6 +121,69 @@
>         kcs_addr = <0xca2>;
>  };
>
> +&gpio {
> +       status = "okay";
> +       gpio-line-names =
> +       /*A0-A7*/       "BMC_CPLD_FPGA_SEL","","","","","","","",
> +       /*B0-B7*/       "","BMC_DEBUG_EN","","","","BMC_PPIN","PS_PWROK",
> +                       "IRQ_PVDDQ_GHJ_VRHOT_LVT3",
> +       /*C0-C7*/       "","","","","","","","",
> +       /*D0-D7*/       "BIOS_MRC_DEBUG_MSG_DIS","BOARD_REV_ID0","",
> +                       "BOARD_REV_ID1","IRQ_DIMM_SAVE_LVT3","BOARD_REV_ID2",
> +                       "CPU_ERR0_LVT3_BMC","CPU_ERR1_LVT3_BMC",
> +       /*E0-E7*/       "RESET_BUTTON","RESET_OUT","POWER_BUTTON",
> +                       "POWER_OUT","NMI_BUTTON","","CPU0_PROCHOT_LVT3_ BMC",
> +                       "CPU1_PROCHOT_LVT3_ BMC",
> +       /*F0-F7*/       "IRQ_PVDDQ_ABC_VRHOT_LVT3","",
> +                       "IRQ_PVCCIN_CPU0_VRHOT_LVC3",
> +                       "IRQ_PVCCIN_CPU1_VRHOT_LVC3",
> +                       "IRQ_PVDDQ_KLM_VRHOT_LVT3","","P3VBAT_BRIDGE_EN","",
> +       /*G0-G7*/       "CPU_ERR2_LVT3","CPU_CATERR_LVT3","PCH_BMC_THERMTRIP",
> +                       "CPU0_SKTOCC_LVT3","","","","BIOS_SMI_ACTIVE",
> +       /*H0-H7*/       "LED_POST_CODE_0","LED_POST_CODE_1","LED_POST_CODE_2",
> +                       "LED_POST_CODE_3","LED_POST_CODE_4","LED_POST_CODE_5",
> +                       "LED_POST_CODE_6","LED_POST_CODE_7",
> +       /*I0-I7*/       "CPU0_FIVR_FAULT_LVT3","CPU1_FIVR_FAULT_LVT3",
> +                       "FORCE_ADR","UV_ADR_TRIGGER_EN","","","","",
> +       /*J0-J7*/       "","","","","","","","",
> +       /*K0-K7*/       "","","","","","","","",
> +       /*L0-L7*/       "IRQ_UV_DETECT","IRQ_OC_DETECT","HSC_TIMER_EXP","",
> +                       "MEM_THERM_EVENT_PCH","PMBUS_ALERT_BUF_EN","","",
> +       /*M0-M7*/       "CPU0_RC_ERROR","CPU1_RC_ERROR","","OC_DETECT_EN",
> +                       "CPU0_THERMTRIP_LATCH_LVT3",
> +                       "CPU1_THERMTRIP_LATCH_LVT3","","",
> +       /*N0-N7*/       "","","","CPU_MSMI_LVT3","","BIOS_SPI_BMC_CTRL","","",
> +       /*O0-O7*/       "","","","","","","","",
> +       /*P0-P7*/       "BOARD_SKU_ID0","BOARD_SKU_ID1","BOARD_SKU_ID2",
> +                       "BOARD_SKU_ID3","BOARD_SKU_ID4","BMC_PREQ",
> +                       "BMC_PWR_DEBUG","RST_RSMRST",
> +       /*Q0-Q7*/       "","","","","UARTSW_LSB","UARTSW_MSB",
> +                       "POST_CARD_PRES_BMC","PE_BMC_WAKE",
> +       /*R0-R7*/       "","","BMC_TCK_MUX_SEL","BMC_PRDY",
> +                       "BMC_XDP_PRSNT_IN","RST_BMC_PLTRST_BUF","SLT_CFG0",
> +                       "SLT_CFG1",
> +       /*S0-S7*/       "THROTTLE","BMC_READY","","HSC_SMBUS_SWITCH_EN","",
> +                       "","","",
> +       /*T0-T7*/       "","","","","","","","",
> +       /*U0-U7*/       "","","","","","BMC_FAULT","","",
> +       /*V0-V7*/       "","","","FAST_PROCHOT_EN","","","","",
> +       /*W0-W7*/       "","","","","","","","",
> +       /*X0-X7*/       "","","","GLOBAL_RST_WARN",
> +                       "CPU0_MEMABC_MEMHOT_LVT3_BMC",
> +                       "CPU0_MEMDEF_MEMHOT_LVT3_BMC",
> +                       "CPU1_MEMGHJ_MEMHOT_LVT3_BMC",
> +                       "CPU1_MEMKLM_MEMHOT_LVT3_BMC",
> +       /*Y0-Y7*/       "SIO_S3","SIO_S5","BMC_JTAG_SEL","SIO_ONCONTROL","",
> +                       "","","",
> +       /*Z0-Z7*/       "","SIO_POWER_GOOD","IRQ_PVDDQ_DEF_VRHOT_LVT3","",
> +                       "","","","",
> +       /*AA0-AA7*/     "CPU1_SKTOCC_LVT3","IRQ_SML1_PMBUS_ALERT",
> +                       "SERVER_POWER_LED","","PECI_MUX_SELECT","UV_HIGH_SET",
> +                       "","POST_COMPLETE",
> +       /*AB0-AB7*/     "IRQ_HSC_FAULT","OCP_MEZZA_PRES","","","","","","",
> +       /*AC0-AC7*/     "","","","","","","","";
> +};
> +
>  &mac0 {
>         status = "okay";
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
