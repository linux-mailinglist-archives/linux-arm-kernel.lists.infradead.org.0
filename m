Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB742111F10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 00:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHOqFLsoAnUCa8EWTE45obPS8XwaBaGZ4SfP1MWgK48=; b=CYy/DEmPHI0eVU
	g4xVKUC6uyhu6ndDrsgRWafGbErd2avFoDuPsqr2m4q27uTWNmkN9u/Oa0IhnlSltK/KZi/5yHO0X
	7Qx/+LK+JI3qko2LwZ2WicvBa1Havc7/VGCJGAUQacCyyBofPZW5vNiFlw02nkQLn1uBgA+rbUtqU
	jazDZVXoK8R+CvCTfa1wk7qd0yQMwkTn+K1b2N0360kzeCW8a3lBAWVEeQlGeBLWZpjeRSFKt0PJa
	9d6tFIE/9bKXZMGi6H/pcS7lHq0C2MT+NYQJUCmylolzTtA2102WXrYy9O+MANvRG2eKBaSa70nVH
	dFaSYEG5XBOVYUlFgaOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icHIP-00062v-OL; Tue, 03 Dec 2019 23:09:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icHIH-00062a-QI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 23:09:24 +0000
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C820820863
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Dec 2019 23:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575414560;
 bh=K6IMMvz7VrhBT/r4elDKy+T8OufjAAZQT6Bk0nA+v8I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nXbO+PKWt82VvDfa008aPfRPCljM7YrhQqDUK+tbjsJ8YOMRJOaiZNLw2wHoDr7rG
 p17jQRp/hnlEheJZZFeuvn9Fwzggq9tiUsZahKgCfJHAMjPQAXCmAlZQOsG7fBmTZP
 Kvs+fZaygNwtEdjM1kmXmtDdkg+7WWnbFtCPL7xA=
Received: by mail-qv1-f51.google.com with SMTP id t9so2292592qvh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 15:09:20 -0800 (PST)
X-Gm-Message-State: APjAAAU8LDF27ec8HREorrzZKUYzLIsDkfPW7Buav3u+AQJ0zAAZRpV2
 tvGbmeEQOMAKFPxAOd1kVmP1stPopUny8qY9Yw==
X-Google-Smtp-Source: APXvYqxWbn3HAd6F5z+7jJVFqPmGA3wry5wZeoXSEFBoX0HCQMPI5HWXhzetnpmuOaPsqKjXxoFDMW5qwot8ObEg0+w=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr144958qvo.20.1575414559852;
 Tue, 03 Dec 2019 15:09:19 -0800 (PST)
MIME-Version: 1.0
References: <20191203134910.26470-1-p.paillet@st.com>
In-Reply-To: <20191203134910.26470-1-p.paillet@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Dec 2019 17:09:07 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJOWgB1mC3TwkpzfsAViB2tF9At1z1rtFQZqWEEJ5VnPQ@mail.gmail.com>
Message-ID: <CAL_JsqJOWgB1mC3TwkpzfsAViB2tF9At1z1rtFQZqWEEJ5VnPQ@mail.gmail.com>
Subject: Re: [PATCH] regulator: Convert stm32-pwr regulator to json-schema
To: Pascal Paillet <p.paillet@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_150921_891463_6AE01007 
X-CRM114-Status: GOOD (  19.08  )
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 7:49 AM Pascal Paillet <p.paillet@st.com> wrote:
>
> Convert the stm32-pwr regulator binding to DT schema format using
> json-schema.
>
> Signed-off-by: Pascal Paillet <p.paillet@st.com>
> ---
>  .../regulator/st,stm32mp1-pwr-reg.txt         | 43 ------------
>  .../regulator/st,stm32mp1-pwr-reg.yaml        | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
>
> diff --git a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
> deleted file mode 100644
> index e372dd3f0c8a..000000000000
> --- a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -STM32MP1 PWR Regulators
> ------------------------
> -
> -Available Regulators in STM32MP1 PWR block are:
> -  - reg11 for regulator 1V1
> -  - reg18 for regulator 1V8
> -  - usb33 for the swtich USB3V3
> -
> -Required properties:
> -- compatible: Must be "st,stm32mp1,pwr-reg"
> -- list of child nodes that specify the regulator reg11, reg18 or usb33
> -  initialization data for defined regulators. The definition for each of
> -  these nodes is defined using the standard binding for regulators found at
> -  Documentation/devicetree/bindings/regulator/regulator.txt.
> -- vdd-supply: phandle to the parent supply/regulator node for vdd input
> -- vdd_3v3_usbfs-supply: phandle to the parent supply/regulator node for usb33
> -
> -Example:
> -
> -pwr_regulators: pwr@50001000 {
> -       compatible = "st,stm32mp1,pwr-reg";
> -       reg = <0x50001000 0x10>;
> -       vdd-supply = <&vdd>;
> -       vdd_3v3_usbfs-supply = <&vdd_usb>;
> -
> -       reg11: reg11 {
> -               regulator-name = "reg11";
> -               regulator-min-microvolt = <1100000>;
> -               regulator-max-microvolt = <1100000>;
> -       };
> -
> -       reg18: reg18 {
> -               regulator-name = "reg18";
> -               regulator-min-microvolt = <1800000>;
> -               regulator-max-microvolt = <1800000>;
> -       };
> -
> -       usb33: usb33 {
> -               regulator-name = "usb33";
> -               regulator-min-microvolt = <3300000>;
> -               regulator-max-microvolt = <3300000>;
> -       };
> -};
> diff --git a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
> new file mode 100644
> index 000000000000..f661728ebdeb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/st,stm32mp1-pwr-reg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32MP1 PWR voltage regulators
> +
> +maintainers:
> +  - Pascal Paillet <p.paillet@st.com>
> +
> +allOf:
> +  - $ref: "regulator.yaml#"

This doesn't belong here as it applied to regulator nodes like you have below.

> +
> +properties:
> +  compatible:
> +    const: st,stm32mp1,pwr-reg
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Input supply phandle(s) for vdd input
> +
> +  vdd_3v3_usbfs-supply:
> +    description: Input supply phandle(s) for vdd_3v3_usbfs input
> +
> +patternProperties:
> +  "^(reg11|reg18|usb33)":

Needs a '$' on the end.

> +    type: object
> +
> +    allOf:
> +      - $ref: "regulator.yaml#"
> +
> +required:
> +   - compatible
> +   - reg

Should be 2 not 3 space indent.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pwr@50001000 {
> +      compatible = "st,stm32mp1,pwr-reg";
> +      reg = <0x50001000 0x10>;
> +      vdd-supply = <&vdd>;
> +      vdd_3v3_usbfs-supply = <&vdd_usb>;
> +
> +      reg11 {
> +        regulator-name = "reg11";
> +        regulator-min-microvolt = <1100000>;
> +        regulator-max-microvolt = <1100000>;
> +      };
> +
> +      reg18 {
> +        regulator-name = "reg18";
> +        regulator-min-microvolt = <1800000>;
> +        regulator-max-microvolt = <1800000>;
> +      };
> +
> +      usb33 {
> +        regulator-name = "usb33";
> +        regulator-min-microvolt = <3300000>;
> +        regulator-max-microvolt = <3300000>;
> +      };
> +    };
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
