Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B96EC23B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:47:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdLYWsMWOVQUq6QI38IOfbICHzRG4zk55FWji6IDXsw=; b=Iye0ueHZ1a2ykD
	E1U9aHIE6NldpsaDW0r3tf6nq8L3PuVU6v/cHOOYRj5O2vpfphViwoWhgye6SOJSdKzg3ibIjgSFZ
	mwkJK8Pz/rkzRljTTelDmyDOtQ11e29pb+uxxA2ugURTpu/bYmPSlOAv7DNtXcXTmZrdC0RLUs7jy
	ZiG+VKEo8YodC2433MmenLdlZ09H4GD7FZi0BRR/rbs7nqncmyWT95Mz5RzfEcupR2ikuwOu+c0C6
	rUg5vqIC1PWfxGJkqAeYScw0kqfUy9PXCib6RCpGyo/+5HncXknEmy2fCTLEybssE6tXzLSQ/rh+8
	c0jQZ5bfxT2QVl7BghDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQVPD-0005Jc-Lm; Fri, 01 Nov 2019 11:47:51 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQVP5-0005Ih-Pm; Fri, 01 Nov 2019 11:47:45 +0000
Received: by mail-qt1-x841.google.com with SMTP id t8so12572908qtc.6;
 Fri, 01 Nov 2019 04:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kcGDHK4EcCNxTZ7B36L3klJJjgNx3kpP7M/4NJlI+GE=;
 b=oyIANoPjFksekAjHM1/mRfo0v2A8Rnune4Mda0a4wQIPew0/uYcOO2KOH1fQVlcnbB
 w3AxKj7RvVmj47UOXzARRK7mTolyZU7hTG9AmS1oNPbzpoKoZyVi/daf3GKOmA0P7jZD
 CS/2Up8SU8hUwFb1mseU8xG1anRsXO5eJ4+FsexlDvWgNQx259tDfwGmV2m7orqaiUYK
 6l5FvS7hf9lCVjX7FERvBSS3oNvbmv1hMTdf8bs58nZxW9cz9pG5zyCfco8FLQKoa9G4
 N3dtFUmk7c4fuB8SeWvCC4jzG1u+aX/hfXRIomQRVvsQiyma06oZ9ire9N4/5Q+D2l27
 JBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kcGDHK4EcCNxTZ7B36L3klJJjgNx3kpP7M/4NJlI+GE=;
 b=HoJOQoG1hzp3k4LnQZu3CnvidEeVSnotHHrkSXJXoXYoEXRFpsrER455LG7flP57PA
 s4iKlvk0ap4sTP+o+dZzJYebqq/hd5j616grAbMtfYA5KgOfV+SG9uHKSpQY/NsJTARx
 L2k19CL0+Zy04Fd7kyhC45UQ8f8MNWP4ksQYHt2+UnAAHpOLSOO7U+kCeWVUHnw6P4Jo
 LhMdJVBln1n7acUWtsegXRNapQhaSPJSvlbiryBlU6RKzRCBSTD9GPcznkD/K6Nqldmq
 jNV0HRHZ4Qo0PNTuhb13YkSxQwRQMYWg3KNAv2xkNvX3KxpdWwE9G2khG97ESDE3NoFI
 zLpg==
X-Gm-Message-State: APjAAAXrCb4g50l/tjmOoAccxoJXOe6agChrh1685fYstqvYX/7JjVHf
 8DlEofSdSZuvRXgVLDiFi5/6mjV+69iAhNQY93Q=
X-Google-Smtp-Source: APXvYqxE62oGYUFjo393+bP0Y0E4yPIhYWN6VMd22YRKbS86Q+AkISrY/EBBLaZ5yeYvjH2Nb40N2jRk7BxtU5Jawaw=
X-Received: by 2002:a05:6214:922:: with SMTP id
 dk2mr9330960qvb.60.1572608861626; 
 Fri, 01 Nov 2019 04:47:41 -0700 (PDT)
MIME-Version: 1.0
References: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
 <1719506.vT9a8mQdzu@phil> <f66fe5c3-6760-20b0-54cc-8f0c1a754bab@fivetechno.de>
 <2490852.kIovObk3uj@phil>
In-Reply-To: <2490852.kIovObk3uj@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 1 Nov 2019 07:47:22 -0400
Message-ID: <CAMdYzYqxe=WT0-vefX2jZiv_8z-GxygVdVjykt8AdAU=gi1TqQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe node on rk3399-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_044743_862642_CA95C454 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 4:06 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Markus,
>
> Am Donnerstag, 31. Oktober 2019, 19:12:10 CET schrieb Markus Reichl:
> > Am 31.10.19 um 17:57 schrieb Heiko Stuebner:
> > > Am Montag, 28. Oktober 2019, 15:47:27 CET schrieb Markus Reichl:
> > >> rk3399-roc-pc has a PCIe interface. Enable it for use with
> > >> the M.2 NGFF M_KEY slot on roc-rk3399-mezzanine board.
> > >> Tested with Samsung 970 evo plus SSD.
> > >>
> > >> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> > >> ---
> > >>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 38 +++++++++++++++++++
> > >>  1 file changed, 38 insertions(+)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> > >> index 9313251765c7..2d637d54994b 100644
> > >> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> > >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> > >> @@ -158,6 +158,21 @@
> > >>            regulator-max-microvolt = <1400000>;
> > >>            vin-supply = <&vcc_sys>;
> > >>    };
> > >> +
> > >> +  /* on roc-rk3399-mezzanine board */
> > >
> > > I'm undecided on this. From what I've seen that mezzanine board is some
> > > sort of addon, like a raspberry pi hat. Therefore it's not always present,
> > > so probably should not be part of the base board dts.
> > >
> > > I'm thinking a dt-overlay that can then be activated might be the solution
> > > of choice, but I've reached out to arm-soc poeple on irc to determine the
> > > correct course.
> > >
> > I have seen some board.dtsi with board_only.dts respective board_extension.dts
> > in the arch/arm64/boot/dts/rockchip directory. Would that be ok?
>
> The answer is twofold I guess ;-)
>
> (1) The 100% correct way would probably be to use a devicetree overlay
> together with capemgr [0] to load the overlay from userspace, but

I think this also illustrates the current lack of a device-tree
overlay loading mechanism in the current upstream kernel.
I've now seen two implementations, a sysfs based one, and now capemgr.
Reading the capemgr implementation, I like this better because it
addresses both the boot and runtime applications.

>
> (2a) The distinction between system-on-module + baseboard and
> board+cape is somewhat foggy I think and it really doesn't look like there
> will be a big plethora of capes for the roc-rk3399-pc
>
> (2b) People may actually want to boot of that nvme pcie drive attached
> to the mezzanine, so it will be somewhat permanent connection anyway
> and also the system then cannot wait for userspace to come up first, if
> the userspace is sitting on that drive ;-) .
>
> So I think, going the dts+dts-extension is the best way to go.
>
> Heiko
>
>
> [0] https://elinux.org/Capemgr
>
>
>
> > >> +  vcc3v3_pcie: vcc3v3-pcie {
> > >> +          compatible = "regulator-fixed";
> > >> +          regulator-name = "vcc3v3_pcie";
> > >> +          enable-active-high;
> > >> +          gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> > >> +          pinctrl-names = "default";
> > >> +          pinctrl-0 = <&vcc3v3_pcie_en>;
> > >> +          regulator-always-on;
> > >> +          regulator-boot-on;
> > >> +          regulator-min-microvolt = <3300000>;
> > >> +          regulator-max-microvolt = <3300000>;
> > >> +          vin-supply = <&dc_12v>;
> > >> +  };
> > >>  };
> > >>
> > >>  &cpu_l0 {
> > >> @@ -514,6 +529,19 @@
> > >>    status = "okay";
> > >>  };
> > >>
> > >> +&pcie_phy {
> > >> +  status = "okay";
> > >> +};
> > >> +
> > >> +&pcie0 {
> > >> +  ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
> > >> +  num-lanes = <4>;
> > >> +  pinctrl-names = "default";
> > >> +  pinctrl-0 = <&pcie_perst>;
> > >> +  vpcie3v3-supply = <&vcc3v3_pcie>;
> > >> +  status = "okay";
> > >> +};
> > >> +
> > >>  &pinctrl {
> > >>    lcd-panel {
> > >>            lcd_panel_reset: lcd-panel-reset {
> > >> @@ -535,6 +563,16 @@
> > >>            };
> > >>    };
> > >>
> > >> +  pcie {
> > >> +          vcc3v3_pcie_en: vcc3v3-pcie-en {
> > >> +                  rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> > >> +          };
> > >> +
> > >> +          pcie_perst: pcie-perst {
> > >> +                  rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> > >> +          };
> > >> +  };
> > >> +
> > >>    pmic {
> > >>            vsel1_gpio: vsel1-gpio {
> > >>                    rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
> > >>
> > >
> > >
> > >
> > >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > >
> >
>
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
