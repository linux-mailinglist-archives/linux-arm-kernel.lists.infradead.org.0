Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4634C6EFC6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 17:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7X/a8Gbs5eKwrSTIBQPJ2A6djsW+N8s68RNQds9U1CU=; b=MtVmWv+UejKIhJ
	lUJZsc9q6+UiObKHm7LJK7MWr4Ol+SYqS1XFPGQ7Gm22Yks9a89fO2qDD/VxzJFQTEd/bVcRzNKSx
	mNvTUnmXULhFAY29b3YXDboWYom3hoNcnV1KFCUR8paB919sSS06YxzKLhqXygz3Pm6Y8/bJGklwD
	If2Q6QhFpwboFxgRtpiHI2NcWB1fKxunrlwzBC2v4durX3HSJaW+yedwtZlsPn0UK6X0qHZaS3Bij
	sb7K+FmfqhnRaPjhjvWwpnb1G+LUyF0+vrbBvUIoH3ZSocTmGhooU0w+cf6oLj1hFEJOk35xXpjoK
	0dQppyLPP/gsS1maVhwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hor04-000276-6k; Sat, 20 Jul 2019 15:10:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoqzq-0001TV-FQ
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 15:10:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id x25so33512935ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 08:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G/7F1h731rG/x69E6APl09eLqjBzw1oq0m56KVTtYAE=;
 b=q8xa0PBUE3+La1glLJhHb/PNioRTIcZGbLAsAZLOYPwms0tK2P7fl/103CgCnIYNZh
 LmtkV4Q58qViOfLju0o3tu3PNMbiYPh5uCt+CcnZ/cjSZT4OBZ3ac6Frfr7JkkP58uQ0
 BGk6HpjOt81M6xtg5Z1jrftH+HQiuyLiMQ6TxgmxM9C4/dxwISz1CwyVxzX9K81g6lq2
 Crdl9bq8kHBxQoa4iUnSDEaWGuPBjic8orDzehvAlpt3fbLnm31ZhXaGyJwb1HATMx2P
 bpP5AHNpo8uBs2UuBA7W14NHirzCUk+PCUXHFipR2U+/A0rrC6xoMOyuzDI2Wxuom3AC
 BeaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G/7F1h731rG/x69E6APl09eLqjBzw1oq0m56KVTtYAE=;
 b=C+liu1mwDDXPUcUMCM79/30UahCbJqzhYu9poxms/CJy4/76XhuBuQ98Oy0rXfixtQ
 ckpTKoahK5xTAPjL9YHuSqy//xmzEBVAz+ijqNVnr+lGovKpYNmQVzjKFDMbbsuVU6Ph
 2JqQaxYAkI2TO7RGuffqp+MeXbHW42N0CmOCuA5kOy08/iwKH5h7yXJfe5GCpKsfs3Z2
 1b48HRDgtGzbS1tErlV8DGlxq8Y4G0WXiG8odEuqnp4MtRJR12bADybIUA8jjhERvArN
 41aF52DlBGQjkOtjzWo7PoOXQ+Wo4t1KbSsWXJpqH1YJMKjVV1bO47o94lDKpzZ1r4V3
 1pvA==
X-Gm-Message-State: APjAAAWAAuhsRWXelKnxI6kcSFMDs3IzVPq3jKHgR70aqLi2dtq1FGER
 cxUxKg0JBoR7joiq3KpO6qDu7jDS17RRPCBaPII=
X-Google-Smtp-Source: APXvYqyYG4v45qqvBkCwlBj9rZwtEIrpLdtk2DT4/lHLxQoF9qrHutZIWi2Ws9aeHEu2lrBtoq76gRJVuQqDRa024A4=
X-Received: by 2002:a2e:8650:: with SMTP id i16mr30702604ljj.178.1563635399310; 
 Sat, 20 Jul 2019 08:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190719121430.9318-1-andradanciu1997@gmail.com>
 <20190719121430.9318-2-andradanciu1997@gmail.com>
In-Reply-To: <20190719121430.9318-2-andradanciu1997@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 20 Jul 2019 12:09:51 -0300
Message-ID: <CAOMZO5CAsTxEegEkBQ1uVaVD52WyLO7tV-GDSzYDDuEVpP6pmg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] arm64: dts: fsl: pico-pi: Add a device tree for
 the PICO-PI-IMX8M
To: andradanciu1997 <andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_081002_522183_62F12C9C 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Li Yang <leoyang.li@nxp.com>, Richard Hu <richard.hu@technexion.com>,
 Rob Herring <robh+dt@kernel.org>, Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, pankaj.bansal@nxp.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andra,

Just realized one minor issue:

On Fri, Jul 19, 2019 at 9:14 AM andradanciu1997
<andradanciu1997@gmail.com> wrote:

> +&i2c1 {
> +       clock-frequency = <100000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c1>;
> +       status = "okay";
> +
> +       pmic: pmic@4b {
> +               reg = <0x4b>;
> +               compatible = "rohm,bd71837";
> +               /* PMIC BD71837 PMIC_nINT GPIO1_IO12 */

Comment says gpio1 12...

> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_pmic>;
> +               clocks = <&pmic_osc>;
> +               clock-names = "osc";
> +               clock-output-names = "pmic_clk";
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <3 GPIO_ACTIVE_LOW>;

but here you use gpio1 3 instead, so there is a mismatch.

Please check against the schematics and pick the correct one.

I would suggest removing the:
/* PMIC BD71837 PMIC_nINT GPIO1_IO12 */

comment entirely.

For the next version you can:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
