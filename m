Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9EEA48F2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 13:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INJmEMYzCD0kht4RaK1xp6DSy6n1DNc74D5BYcyodvc=; b=Y28B5vnmhSriKD
	55Eu+Wdap+GFrMXrOkeB8S7fm1St0C5d4gTzaOGTUXJnVuiIpPtNTJvjor4vOm+oZ8dgM5K0fimgj
	Y2XVlM+BZoDbSN2eL5RtV70sO9vmm+bbfz0givImUfNgwb9qls4/sLwLRGT25XZdJ4zVA4x6vP55E
	5mk+3NjItxmXUYMG9jmc2GNMUs7Zl2Ytr+0K1m7TBCWf6z76RbznjlsbaNkug831Q5WhbVQjJz1SN
	tU1RPnDt+xQ3dVnM7ZsCYqI23RZGtDcvZ3uH5EnOuPdPNYFMQXRjCqesbBTBvGgf4sIcbZ/1Vc1UD
	6twIUiTVulSmdFzG2v2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4OEo-0005gI-Eq; Sun, 01 Sep 2019 11:41:42 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4OEc-0005fl-1f; Sun, 01 Sep 2019 11:41:31 +0000
Received: by mail-ot1-x341.google.com with SMTP id 100so11165969otn.2;
 Sun, 01 Sep 2019 04:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r+ifEZAzJQwmHDrw7qQ44oHKKTpN0loOr0Zh74/UU5o=;
 b=YLB6RCVgPnAMWngSByRnivbUT7FyzLApPl0dPg5dI1mq4pCGW/khzy3JZBzh4hzSEC
 k6eCa6/JJE47EY6NMtQo280U4nH5vO90SMV2n1E/B9+PexgS5CQleUAqXeUIoYTtr9d4
 i6ip9pXV6xy3l1o/6KhPNaY8TOw3b7/Kb1lUM1Pk0+AK+USpFtd3BQFdOMu6vziSCtB7
 xGB8flqBsf80JGZwXkL1G4ezynHokrH5n14l1PwuAVYMJFUt8XHrqfv7M56/poOG+dfE
 Sid0/29YUrTMvV50/yltifLs5nZPnaj+ubMR5WOyn4mv/CD/ggXZM2ELNQqN8SC4WWyt
 jTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r+ifEZAzJQwmHDrw7qQ44oHKKTpN0loOr0Zh74/UU5o=;
 b=pduS8JTE8zem5TCysY0djTIMpwUI6AWX+fwRzEqQwJvsgtljRpTMIJ2uzwTRJ9JZti
 m27FzRixbBIbEkL2K4nFTH2K9UH0BV/D8tObJEKYD5MznuENslW9noSJTkudrv35vMM1
 +VJbWvGEjOxxifoGrpn1FbRo7lpQidnPzv6vbBG3iAPu5uFz95evWIul+bBnoncNnjnG
 T37sRZDIiBIuqIHfBRePHzVlwxyIPhdm82fPpN9nyMAcQObyuenAei5S0PpC6HAKhfyr
 Py72Z/dPHeUBXEOIDg/qVoivUOpIfxqchOmi7BMpbVkY6R/VtWyBJaRhw7fAPlFsOv8z
 g9Pw==
X-Gm-Message-State: APjAAAVB5Y6pDeXMVwipGR2NL2HPlO6vfsE/zlx1gUb94hkbDl85IEjj
 opyov9v9NfxHp8ujSof9rg6z97WIcIOyT/i+G1g=
X-Google-Smtp-Source: APXvYqx5j+6QgoQYDILBAc7XTNLaYWT6cuFB2toneCe5Tn0bUMhwPnpLrnv61xMBV8BeutJFkCmQZ0J6X4i0Lph2H9Y=
X-Received: by 2002:a9d:6c0e:: with SMTP id f14mr9265369otq.6.1567338088855;
 Sun, 01 Sep 2019 04:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <20190828202723.1145-3-linux.amoon@gmail.com>
In-Reply-To: <20190828202723.1145-3-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 1 Sep 2019 13:41:17 +0200
Message-ID: <CAFBinCBA-sQcshd9iAVn=ZDBKkDN3OgJs-WjKEhVLw===b0AdQ@mail.gmail.com>
Subject: Re: [PATCHv1 2/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to VDDIO_AO3V3 regulator
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_044130_089272_63EA8A14 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:27 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> As per shematics TFLASH_VDD, TF_IO, VCC3V3 fixed regulator output which
typo: "schematics"

> is supplied by VDDIO_AO3V3.
please add a short sentence to the description (since you probably
have to re-send a v2) like:
"While here, move the comment name with the signal name in the
schematics above the gpio property to make it consistent with other
regulators"

> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
with the patch rebased (see below) and the two issues from above addressed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
>  arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> index 98e742bf44c1..a078a1ee5004 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> @@ -67,17 +67,19 @@
>         };
>
>         tflash_vdd: regulator-tflash_vdd {
> -               /*
> -                * signal name from schematics: TFLASH_VDD_EN
> -                */
>                 compatible = "regulator-fixed";
>
>                 regulator-name = "TFLASH_VDD";
>                 regulator-min-microvolt = <3300000>;
>                 regulator-max-microvolt = <3300000>;
>
> +               /*
> +                * signal name from schematics: TFLASH_VDD_EN
> +                */
>                 gpio = <&gpio GPIOY_12 GPIO_ACTIVE_HIGH>;
>                 enable-active-high;
> +               /* U16 RT9179GB */
> +               vin-supply = <&vddio_ao3v3>;
>         };
>
>         tf_io: gpio-regulator-tf_io {
> @@ -95,6 +97,8 @@
>
>                 states = <3300000 0
>                           1800000 1>;
> +               /* U12/U13 RT9179GB */
> +               vin-supply = <&vddio_ao3v3>;
>         };
thank you for the patch but I think it won't apply on top of Neil's
"arm64: dts: meson: fix boards regulators states format" (which was
applied just after you sent this series)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
