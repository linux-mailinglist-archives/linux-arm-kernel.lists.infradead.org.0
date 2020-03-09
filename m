Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1962F17DB87
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHCtqj75OO7i0lzIYuaU8z/OJf05qDNvdaWkmFqMf9s=; b=rIdCzNTKOs+/V0
	o61HcotCBsFPSrwnlqNn3DGtRvpACLy90oT2Ic0N6y+kvmdhMuktAYgUJhROy7FJWouUURpu9ZuAn
	bqcrKoAZsL3O20j8SLejna9mr/96BSsjZUyYi4M94Ad44XlsFdrtj1FqiRnflY5roDlMhxXnhKx5n
	HhJ9CaET8MeRIEjJJZeo8Fk4ixNvF/uJoW8WYJuMrFoWElY75U7mY836y5oHvXJdk6rToYmxrZFPT
	3A8JEIwjdcA0OGCsS30PLsUTgP5gD7L+X32FHITa3XM8iicxbiCINFe/JRDaIY756A8PgpVWtNFnc
	+bkCjflwt/1FPEAWnOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBE7E-00031Z-5W; Mon, 09 Mar 2020 08:50:24 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBE6t-0002Pz-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:50:06 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: CtE5m+ELkGAVPTcPcGWF0bzBHDYq/y1TZA9/A/Lh6/eGyiKlxgVGEMrs2Xkv6LOIBeQBMvAmIu
 WhBqEtZ2Lu4v8vuYsg2Hp5cw6tmkhWcowBBL2JDzSFrTvRgZAZGiqaj75MMA2IWMVOkym8kHl1
 yaJaW9gcnpSVICSc+seTCSwjSMhcldrNPZCl+c2HPsqRlczDfhE8k3gKo9vUTOJs9nhGx5K1ud
 qkyHCOCaWp0C65H04VHomaZTfE4EFlhTdtwRjKkaZQ6rtbWHB4PHv+OjuVYzgBiGxJ2XWvqGNF
 4Oo=
X-IronPort-AV: E=Sophos;i="5.70,532,1574146800"; d="scan'208";a="69310236"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Mar 2020 01:49:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Mar 2020 01:49:59 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 9 Mar 2020 01:49:56 -0700
Date: Mon, 9 Mar 2020 09:49:13 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] dt-bindings: pinctrl: at91: Fix a typo ("descibe")
Message-ID: <20200309084913.sgecbf3h2ajog3d7@M43218.corp.atmel.com>
Mail-Followup-To: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
 linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200308214230.15193-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308214230.15193-1-j.neuschaefer@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_015003_404721_15FEE510 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 10:42:30PM +0100, Jonathan Neusch=E4fer wrote:
> =

> Signed-off-by: Jonathan Neusch=E4fer <j.neuschaefer@gmx.net>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
>  .../devicetree/bindings/pinctrl/atmel,at91-pinctrl.txt          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/Documentation/devicetree/bindings/pinctrl/atmel,at91-pinctrl=
.txt b/Documentation/devicetree/bindings/pinctrl/atmel,at91-pinctrl.txt
> index eb39f5051159..e8abbdad7b5d 100644
> --- a/Documentation/devicetree/bindings/pinctrl/atmel,at91-pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/atmel,at91-pinctrl.txt
> @@ -38,7 +38,7 @@ Bank: 3 (A, B and C)
>    0xffffffff 0x7fff3ccf  /* pioB */
>    0xffffffff 0x007fffff  /* pioC */
> =

> -For each peripheral/bank we will descibe in a u32 if a pin can be
> +For each peripheral/bank we will describe in a u32 if a pin can be
>  configured in it by putting 1 to the pin bit (1 << pin)
> =

>  Let's take the pioA on peripheral B
> --
> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
