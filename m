Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7F774192
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 00:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/DQavGO9BeHHY/QonrhDrw3c1z1fIleVceyTBoR3Ps=; b=uV2f3QoXRGPaWx
	kVvno2BBSaF6AyjivWbT9MbztUv+xyBnHGqeNmuE/QgOvx9HOGwXXaK9rcIIQdYkMW3MBzvadNYW0
	UKFvx1XpAHpA7Mfu3fFmFg8HMObNI7U0E14SQgY5n7xsbGY5yeZ+HoSaD89ZdzeD07AWbzt/aafin
	yxBG15LcojIj4uT+m5QiN8xlsKAQM6RBVu45FcRVOVDsbSSoOYq8Ukw8aSGzizKnaoiRDQbY/Xzbc
	Rf+9xD9regAf1tGvsKssmlWqXS621aNFlqDmP6f8UjYjl0wbGotI9bPl9SEeKe6UlM8LtQpcoRczI
	kTqImT7sanMclVMQacPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPud-0006oR-8S; Wed, 24 Jul 2019 22:39:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPty-0006Zh-9F
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 22:38:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id t132so21910528pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 15:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9Dc2qcjKZtC43VFkg+AkTg9oc60SQQXWdODT+iWj4Ig=;
 b=h7bxbA9onAD2dz2ar/lKtvI8U78LMFyUb0g0d+U6xZe0yA3oMMFnKOzblILDCft4YP
 RH3briYvP964xAXtME0s1rYg4P4VePZNvghmMiscYvXfL7PC8dwSHgZcNgfSwpbjRM4D
 rwM5CprkVXN1T0IA4M1iMetyWKchd7E6etbTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9Dc2qcjKZtC43VFkg+AkTg9oc60SQQXWdODT+iWj4Ig=;
 b=NfHMJLHwYYs/C5KuKNZTciMPyQGE+p3OOeZrNAPcfybHWqojakO+pj2i4cvIHKXQGF
 I9vsKcevqr5lb/sFEq8xmirz8JbVOj6g+zrmdTpjxHzZkJKcJv2A5Vjr9aA+VjdZs9aH
 AMEU+pvspH734HWwZvGukj54cI2zm+Ygyfy8v0jbXeq/tSW30e/QLuzWPW/Gyp+7TJuF
 X9FU2gYt8XZ3vRppxTELwy21s7PYRcYBa+/oiYzPcd47OZ59KatdgVkNzQXU4c1EmEGh
 QTFzV6ZGGyg3dtX+BdurObcQa3woqdvbW2xa2oK9bfAUvCeub5MiAsuVtE2Ni7lsALg/
 fgqg==
X-Gm-Message-State: APjAAAWN0MY77xBvnHR74syn5WhQuZYKA8eLLIRYBY47sErSEk+PiABq
 rTFA+d9wCMfJ2ANq21ah+U22Ag==
X-Google-Smtp-Source: APXvYqwROjs9pfNddDIyH0kjsUo4epMtSE+vqw102VBAtHJmpqhjw64Rmq9Jc/LIZW5Qf9E/JdehJQ==
X-Received: by 2002:a62:874d:: with SMTP id i74mr13211045pfe.94.1564007905394; 
 Wed, 24 Jul 2019 15:38:25 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id p7sm51433378pfp.131.2019.07.24.15.38.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 15:38:24 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:38:23 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
Message-ID: <20190724223823.GC250418@google.com>
References: <20190711223455.12210-1-mka@chromium.org>
 <20190711223455.12210-2-mka@chromium.org>
 <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_153826_376584_B4C03426 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 02:46:30PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > index 4cc7d3659484..2b0801a539c9 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > @@ -15,40 +15,6 @@
> >                      "google,veyron-minnie-rev0", "google,veyron-minnie",
> >                      "google,veyron", "rockchip,rk3288";
> >
> > -       backlight_regulator: backlight-regulator {
> > -               compatible = "regulator-fixed";
> > -               enable-active-high;
> > -               gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&bl_pwr_en>;
> > -               regulator-name = "backlight_regulator";
> > -               vin-supply = <&vcc33_sys>;
> > -               startup-delay-us = <15000>;
> > -       };
> > -
> > -       panel_regulator: panel-regulator {
> > -               compatible = "regulator-fixed";
> > -               enable-active-high;
> > -               gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&lcd_enable_h>;
> > -               regulator-name = "panel_regulator";
> > -               startup-delay-us = <100000>;
> > -               vin-supply = <&vcc33_sys>;
> > -       };
> > -
> > -       vcc18_lcd: vcc18-lcd {
> > -               compatible = "regulator-fixed";
> > -               enable-active-high;
> > -               gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&avdd_1v8_disp_en>;
> > -               regulator-name = "vcc18_lcd";
> > -               regulator-always-on;
> > -               regulator-boot-on;
> > -               vin-supply = <&vcc18_wl>;
> > -       };
> > -
> >         volume_buttons: volume-buttons {
> >                 compatible = "gpio-keys";
> >                 pinctrl-names = "default";
> 
> You forgot to remove the line:
> 
> power-supply = <&backlight_regulator>;
> 
> ...from minnie.

good catch, thanks!

> > diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> > index 9b6f4d9b03b6..06af58e37a4b 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> > +++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> > @@ -14,7 +14,14 @@
> >         compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
> >                      "google,veyron", "rockchip,rk3288";
> >
> > +       /delete-node/backlight-regulator;
> > +       /delete-node/panel-regulator;
> >         /delete-node/emmc-pwrseq;
> > +       /delete-node/vcc18-lcd;
> > +};
> > +
> > +&backlight {
> > +       /delete-property/power-supply;
> >  };
> >
> >  &emmc {
> > @@ -52,7 +59,17 @@
> >         i2c-scl-rising-time-ns = <300>;
> >  };
> >
> > +&panel {
> > +       power-supply= <&vcc33_lcd>;
> 
> Might as well put a space before the "="?

will do

> >  &pinctrl {
> > +       /delete-node/ lcd;
> > +
> > +       backlight {
> > +               /delete-node/ bl_pwr_en;
> > +       };
> 
> I general as the defender of "pinky", I'll let Heiko confirm he's OK
> with the color of this bikeshed.  Sometimes a bit of repetition is
> preferred over a bunch of confusing /delete-node/ statements since
> those tend to make things harder to reason about in general.  In this
> case I think things are cleaner after your patch but I won't say it's
> 100% clear cut.

I agree that some repetition can be preferrable over /delete-node/
statements. In this case repetition is above my personal threshold,
especially since I'm about to add another device with eDP display and
would have to repeat the mostly redundant config yet another time.

If Heiko prefer's the repetition so be it :)

> Other than nits I have double-checked this patch, so feel free to add
> my Reviewed-by after nits are fixed.

Thanks for the review!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
