Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061391760AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImLDab7OZ3mOH3ZJUY5E4HiOjMUIcCIuL5BJ5ub/Ydk=; b=XSyt20/uRnQ880
	rsYe5zjL/UeLq4jGV9UdHCbm/YeobpNNkocUJIkp64DI4oUrR3n5/ag/kgQRvlBnpcX3+P8RG57fW
	u37svklvgpWr1xAT017pcME0bb73czjIjC8NrBMJ1coVV0I69V6XBfaD240mLcspuGG+ouLseCEyA
	+1A+apEUNeUTyLyioGrRno4FdAMWhzDM5g4O/iDokgyKFiTprPUu4ysX64qAg6TDZNH5/mrgK9zQf
	0/zlTWJDLZL88A67IXfKbwzcRXvT0Wygzat/BsIRuuClHuorn1E/1lQAhB58nq7gKubYeEPjy82BS
	oHzOjF0ElPU/q2ZvER8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8oU8-0002bV-Tt; Mon, 02 Mar 2020 17:04:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8oTz-0002aB-Hf
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:03:56 +0000
Received: by mail-lj1-x243.google.com with SMTP id w1so283879ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 09:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XPcMs7JIMlUv20DOzI5SHy+/OcC5LtbzMpMfGg1G0ug=;
 b=cJ0hC0VCK3d1FiWp4feDyo+RDpMW/ZDeST2Q91xPHabKlMNnRe8D201mgwNNbE7lQL
 0cw9MLzh4vP2ZsxpFjeALnYVPvRwRmtRkBdnxXsFswxCa1sRoR3qelbxqhSCYw1A4+fr
 Z3cUAFjpM+GQgVLk0KS02nfLnEIZQpVLncpRHhjGofnh/tR1OKKb3aZ/IBsMytcwcQAF
 m5f1rvnO+kJkTSVInjD3G/Ldkrzg8E0arhecej1RDFEfAjeh8p2AMPvX8jc7to1Q5k9X
 sFCzitDsQeI8HE7yZtEA7xsG8E4po1cSZdMnQESXZTe52IA/89HsBJ7krAp6nZ8R3lX1
 IXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XPcMs7JIMlUv20DOzI5SHy+/OcC5LtbzMpMfGg1G0ug=;
 b=KWMtDFkVWn6nSJtuCdRQHlsGqUINwrkI+rctiLKJQhlkA+jEEsE9OCOtmis50PSYZ7
 sXZ3cTbO0xAhjXvK5B49dQNQe2gZtHRFsHp7FFv4vlLjeWEfRdEDK0QibBk4xyCy8xUj
 lnmSCJobus6LE/YKaSE77L7yOlQuFg/2S21a4R45shE2sy8Y+40BwPxgvtaGhW3uhl7P
 ilsXkpgpJnXlD7sIoqx9amDxbNCChZF1z5L2XLSjWVaxPVi1Fp9IM2Ep1tIBNqpB8q6c
 Vb0aomKgwvdwCSKijzlzveCSrvorD/x+vahl1KjSJk/ytihdQGunKOOMNiI4t845+cbM
 vqIg==
X-Gm-Message-State: ANhLgQ0xWWNrx+ytsCe6ENOVklxcqrEIBoz8wu1sCcdCIV5m1ynHgM4w
 ASuOQtGTgaX85Y+8hZ1yh837icjByJJPmzlTDJw=
X-Google-Smtp-Source: ADFU+vuIGQKHZ0dTpeXvkF9hW60IlQJGMZOKf3tnAwmi+oSO9sl5g4yJgj5bBEEtpk0sSh9goqDfwGpv8iWBQKrJUHg=
X-Received: by 2002:a05:651c:cf:: with SMTP id 15mr368406ljr.288.1583168632297; 
 Mon, 02 Mar 2020 09:03:52 -0800 (PST)
MIME-Version: 1.0
References: <20200302001150.27952-1-vitor@massaru.org>
In-Reply-To: <20200302001150.27952-1-vitor@massaru.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Mar 2020 14:03:41 -0300
Message-ID: <CAOMZO5DQ=sg9Qf7N4N9S-5DpS4EQFG1w6ZqK0nS9P3M0ghSzDg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: freescale: add gpio-fan/thermal support
 for Google i.MX 8MQ Phanbell
To: Vitor Massaru Iha <vitor@massaru.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_090355_588109_F11463F2 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vitor,

Forgot to say in the previous revision, but the typical Subject pattern is:

arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support

On Sun, Mar 1, 2020 at 9:11 PM Vitor Massaru Iha <vitor@massaru.org> wrote:

>  &A53_0 {
> @@ -373,4 +383,58 @@
>                         MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B 0xc6
>                 >;
>         };
> +
> +       pinctrl_gpio_fan: gpiofanp {

Please keep the pinctrl entries in alphabetical order.

> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x01

This pad comes as 0x16 after POR, so please add it as:

MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x16

> +&cpu_thermal {

Please put it prior to the &i2c1 node in order to keep the alphabetical order.

With these changes you can add:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
