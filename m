Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFCA54FD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CmBNdXp9O7ZlV0DmCsPvY6kr3ezsGAK5XMkEd+ffbM=; b=MO+wLtf/DvIpU3
	c7LJsJRCAB4TeFHZA7xz/5c8Xpdx8l3yXP+E3dSS05tvbt1AOkC48qZ4sofBD4cx/QZz5EsaqyYIf
	rvu7OWPARzGM8uQ0hnfQ+n+cd6JtxyZfs6HHnpBogVo2qGBFS2JhsHCpREvtZ0yr/2lBwgi0IwFjO
	bmr4AkVCizGRM3QAhoomMqZB9SCE8tEq1T212Sb35m28h07N8D2Uy7dDpwWeTLOHek3Kmjf/Kxy3S
	TNFrPPh5EhgGc5z+WtL9UVUJB11TnoKvLPQUQ6ArUh+iQP9tMtyGhsVuxBJzuFCFO4OXJsJkPYdH2
	FFD5TO5vSnUU2KfuULeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflB2-0004Oy-1C; Tue, 25 Jun 2019 13:08:00 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7r-0001St-11
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so16170391ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=MTIMiSoBsr/Iz7cJ5NCeVh+ALGoIsE3oVVXBRbN7TrY=;
 b=lFhSBbAomhLC12laAUbQh72hPfP5HXjWAzu3jIARDPS52NehAGM6jlNPU5a2SDljDh
 2EQdyvzgZ1bdgc/JXKPRRHwpKylz0AoB+RW+Gox1cfdDO5pDFzpnBgo8BDPyIPeMuKoB
 ZzvVEi1eeRaKf8ynlRupoVflx2X6FfZfRNtekRrlOE26W9SUnzcFQVoY00w7mIhbUS9v
 2WodajCgTc6n82fDKLhHGF4o3rL9uMboLfDcgIh+P0ZlNmCfH7gfwvLsVx1EbttJ5xSU
 x0LzNZsdzP8wMTje6hz9HSoNsh4hKYcbAdC5DyQuamWooTEcel2vXHJae6J2x5ZqYfSo
 zkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=MTIMiSoBsr/Iz7cJ5NCeVh+ALGoIsE3oVVXBRbN7TrY=;
 b=SxCF4J1E13zTcR5LNR2ZM+xkKWjDvysUmPCBp9CaeQunUbctp6J+vOrXoiLd4IjJFZ
 Xc3QjAT04+3PGgVVzOuOMtCIBRZEeOUkgojITGgH9oq+uVB/9qa1hUi8uu3y0hkV6iOp
 FrDhTyOE76WSsz1SZR0TZzqiYng6xsnkPN2cj/t+IOjE09KmmxJK7AMy/UGrcBi7k428
 RJtCGLPxscaJzhc4Pq2t7+w/qUkGmzEg+eQUM2g+S+3mHtuCslTRD9tcmVV9ZjC7itNL
 IND8mVtmDUHK4o0GlHmOzvqw1yF23ON+AZJjeO4/roJ6LAeWBfFhBr9UzD0azpYfMs2j
 bo6g==
X-Gm-Message-State: APjAAAUqehLl8278kMJ0IdnJO0FoS97AFPMLRoCh3AphcZatFEGLnLUQ
 A2MrNfuLvtq2UuC0uNJMvUJCNw==
X-Google-Smtp-Source: APXvYqwSjmN6wXC1c2PonX6ntR7jIanVzrg0TJKBN9Xzcjqz37yez6sMZ/OBOMqfsKcjP2FTn2ZuiA==
X-Received: by 2002:a2e:8195:: with SMTP id e21mr61595015ljg.62.1561467881568; 
 Tue, 25 Jun 2019 06:04:41 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z85sm2246966ljb.101.2019.06.25.06.04.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:40 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:32:34 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 7/7] i.MX defconfig changes for 5.3
Message-ID: <20190625123234.ytva26bkeyqevtwc@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-7-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-7-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060443_083778_FBFA85C3 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:53:05PM +0800, Shawn Guo wrote:
> Hi,
> =

> The change set is a little bigger than expected.  This is because that
> half of the changes were for 5.2, but unfortunately they missed the
> merge window.  So we have changes for two development cycles combined
> here.  Please pull, thanks!
> =

> Shawn
> =

> =

> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0eb=
d9:
> =

>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> =

> are available in the Git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/i=
mx-defconfig-5.3
> =

> for you to fetch changes up to 8bbc2b3a7f80b61c05b87606c2acd82a62d304b0:
> =

>   arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module (2019-06=
-25 15:15:59 +0800)
> =

> ----------------------------------------------------------------
> i.MX defconfig changes for 5.3:
>  * imx_v6_v7_defconfig:
>    - PCF857X GPIO expander
>    - SIOX bus driver
>    - thermal statistics
>    - TPM PWM driver
>    - OV2680 camera driver
>    - SNVS LPGPR NVMEM driver
>    - i.MX DT based cpufreq driver
>  * arm64 defconfig built-in:
>    - i.MX8MM pinctrl and clock
>    - i.MX LPI2C driver
>    - ROHM_BD718XX PMIC
>    - OCOTP NVMEM support
>    - i.MX SCU based SoC bus driver
>  * arm64 defconfig modules:
>    - i.MX SPI driver
>    - i.MX system controller watchdog
>    - SNVS RTC driver
>    - ISL29018 light and proximity sensor driver
>    - MPL3115 pressure sensor driver
>    - i.MX8 DT based cpufreq support
>    - QorIQ Thermal Monitoring Unit driver
>    - SNVS power key driver
> =

> ----------------------------------------------------------------
> Abel Vesa (1):
>       arm64: defconfig: Enable RTC_DRV_SNVS
> =

> Adam Ford (1):
>       ARM: imx_v6_v7_defconfig: Add GPIO_PCF857X
> =

> Anson Huang (6):
>       arm64: defconfig: add support for i.MX system controller watchdog
>       ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
>       ARM: imx_v6_v7_defconfig: Add TPM PWM support by default
>       arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
>       arm64: defconfig: Add i.MX SCU SoC info driver

An SoC info driver shouldn't need to be =3Dy, I think? It exports no in-ker=
nel
interfaces, so it should do just fine as a module.


>       arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module
> =

> Fabio Estevam (3):
>       arm64: defconfig: Enable CONFIG_SPI_IMX
>       ARM: imx_v6_v7_defconfig: Enable the OV2680 camera driver
>       ARM: imx_v6_v7_defconfig: Select CONFIG_NVMEM_SNVS_LPGPR
> =

> Leonard Crestez (6):
>       arm64: defconfig: Enable imx8mm clk/pinctrl
>       arm64: defconfig: Enable lpi2c for imx8qxp and sensors
>       arm64: defconfig: Enable ROHM_BD718XX PMIC for imx8mm-evk
>       arm64: defconfig: NVMEM_IMX_OCOTP=3Dy for imx8m

And why does this need to be =3Dy? Patch doesn't say.

>       arm64: defconfig: ARM_IMX_CPUFREQ_DT=3Dm
>       ARM: imx_v6_v7_defconfig: Enable CONFIG_ARM_IMX_CPUFREQ_DT
> =

> Peng Fan (1):
>       defconfig: arm64: enable i.MX8 SCU octop driver
> =

> Uwe Kleine-K=F6nig (1):
>       ARM: imx_v6_v7_defconfig: Enable SIOX bus
> =

>  arch/arm/configs/imx_v6_v7_defconfig |  9 +++++++++
>  arch/arm64/configs/defconfig         | 17 +++++++++++++++++
>  2 files changed, 26 insertions(+)


Not merged until above is clarified.


Thanks!


-Olof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
