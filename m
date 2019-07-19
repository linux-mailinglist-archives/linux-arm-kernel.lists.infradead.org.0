Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CCF6E4FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 13:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65h5JWWv/CuV1H4pg1vWrA3qWQ7qqOldbP1WbPxd8+s=; b=sVs44s0b/KvNb9
	4RuoHU7T4NDLdK4qYjApGp8mWoLmYUWjgaNsrbMk5AyFvctK9voLlnQpZVwGXBOzxIPjCWmNbkxBD
	gX2akkHoWKRUACZZsPeAPPX+cjFCzpLiC9MfaRV0Svk621bFwDZ3mRZtZ4lBouv3m30UfiTQZeNbX
	n5keR4nJ8nzCt3oCRwt8FhDzg2VeREsDx7DRKAaEPHlfOeB89GmtM2nntWI98z010TjiOAi4ciLjy
	xM280NXcAoizJLopHbeu+ItIil/diVMCTNn4getG6WsSk+2OH9vNRFYZGIp137WsUONec/e+BOMgy
	9Bz1OJi7ByDyCUY98Ruw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQvv-0007Wx-J0; Fri, 19 Jul 2019 11:20:15 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQvc-0007WN-6Z
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 11:19:57 +0000
Received: by mail-lj1-x242.google.com with SMTP id d24so30423993ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 04:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oa7kpDXrcCy8McuyUn5ga3FPCCt3ADMPU6Hul/X/yUM=;
 b=j7qYAD+kzQ5zFcCG7d0p/5oYJbPJHNhQ8vG9lABZv5JKBjUe0FPzX8M7kjRFL0Ic56
 PUxBY9hnbA+7mZ2UeH/j+OM6TQUga19wXGUyfj3lS935uRemxKXrgxQJVVb+kvgKTCVj
 4qtA4weK0qCFLGLht52WVfvlYxwDF7lwY6bTcpWReEsdLs0Y/HGXoquLm9fCUjkGH7DJ
 QEsTs4aN9JFk7Vu3DOnXBjJzzNF0aq2GdLeB/bY/bFfHpEN8dQTKn/vgJy699XoPZdwT
 +aAUjkAUkYL6v3vVIM6W/5x4MeUbBykMRvqbCiH6oIroveMIcFN23c5L21xLg2jGBOos
 SKCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oa7kpDXrcCy8McuyUn5ga3FPCCt3ADMPU6Hul/X/yUM=;
 b=hFxh/sxtaAw/+jMgoN9B6I+guoELgJ2BU2Hecg2HuVjU2L2MxE5EI+T6AVJI3iiF4u
 92DLRqk4rB47/6ZzvQYLhVFwcQcMJzHU3jC/557YZC21iBZGDpWy/D4knQGrtG/4mEn3
 ctDVTmQKZZZH8n/2lEexWqoI75oLnCadpim/3MiGHtOpKgdgQ6dP3I1sevUxyJqb6Cuy
 4sB9S68Uz3a/C9FyS/loNMpTfM/dTNZaZizlJbhQ8JCvwmtAZq1H6a33zok1WEI8IVfD
 KewuSICvPphJgmCw/w/QfrUzGVDIADhumk/y6gbY7TNRjDMCgzXGFSter17WH+EDP1Ib
 4wwQ==
X-Gm-Message-State: APjAAAXRByfr/AN/kSH+IWzcrl+32Ltjtp5QkcFx0V68d3F+CufvHRpp
 zx6EVok68e3188MnJZLV6lvZRaRwv1o7nAcLo50=
X-Google-Smtp-Source: APXvYqzBHXvvyxC4iFcPJJjFihiAgUmb5NF6oXKVWMbQdzkDX3RFp21crAVVLA28yDHF9lGH5qeEQdPJDZGMAPBIX9k=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr26523151lje.214.1563535194358; 
 Fri, 19 Jul 2019 04:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190719104802.18070-1-andradanciu1997@gmail.com>
 <20190719104802.18070-2-andradanciu1997@gmail.com>
In-Reply-To: <20190719104802.18070-2-andradanciu1997@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 19 Jul 2019 08:19:43 -0300
Message-ID: <CAOMZO5Btu1Shou=dGRrG74e5UjHnh7NtR4+4ETK0t_1Zt48Crw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: fsl: pico-pi: Add a device tree for
 the PICO-PI-IMX8M
To: andradanciu1997 <andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_041956_239317_0816B035 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ping Bai <ping.bai@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, sriram.dash@nxp.com,
 Richard Hu <richard.hu@technexion.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, pankaj.bansal@nxp.com,
 NXP Linux Team <linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <Michal.Vokac@ysoft.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andra,

On Fri, Jul 19, 2019 at 7:48 AM andradanciu1997
<andradanciu1997@gmail.com> wrote:

> +       pmic: pmic@4b {
> +               reg = <0x4b>;
> +               compatible = "rohm,bd71837";
> +               /* PMIC BD71837 PMIC_nINT GPIO1_IO12 */
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_pmic>;
> +               clocks = <&pmic_osc>;
> +               clock-names = "osc";
> +               clock-output-names = "pmic_clk";
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <3 GPIO_ACTIVE_LOW>;
> +               interrupt-names = "irq";
> +
> +               regulators {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;

#address-cells and  #size-cells are not needed and they cause warnings with W=1:

  DTC     arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb
arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts:77.14-196.5: Warning
(avoid_unnecessary_addr_size):
/soc@0/bus@30800000/i2c@30a20000/pmic@4b/regulators: unnecessary
#address-cells/#size-cells without "ranges" or child "reg" property

Please remove them.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
