Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B73D461B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/krlLZexDcJ7/PLdJZ1FK+cFl8RMk1cmmuVg+cOQleU=; b=C+0wQtTFZqSaTu
	m8BAdaRP6f85gSPltRExkAaRxzclv1Y2/NN5fPUj2odOjfmGrkWlJw885droVL9r5fSr7o6GwgHdY
	9HpZQe6e5G7Wk8Zp/FgXA2zSsdk3F2nsTcLWeaxZi0VuhuSNZQAh8y5PkvZpn+X3HXKfvTAhQs26y
	WgqhkExOmZiwNMxehAgXl9gfl3bW3m4gc1aLGzdgO+E1A04De+7pJ99vJG91yDZl5VrzNku2ebRJQ
	kfdCqh+GCTVFp2KMKlNQLMC8gEDDWpr0Y4R/l4Z58rN+9BjigXjCIMk+Eaf9XO8BB+e+l4U8Reu4T
	GmSsBJXD1E5Jcd1c/0rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnZp-0006gx-OC; Fri, 14 Jun 2019 14:53:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnZh-0006gb-Ca
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:53:06 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD2BC21721
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 14:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560523985;
 bh=xXLXuR+L8hhQa1ErD+u0rcoh9h0mBsxWabprP9kW9MI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wk/1a4shWxNb0N1kY/k/UaqXtQEShtWb2wrMVi6jUYzhWtd/6z8tKQrLCEehTBjkV
 R2+kOEa/LD4aQEKDgGDxy2BNF5fk8xXRdVl7rjbHpb6Iy8bSon9qs9Rvs7em8b86ro
 WWbH3PUw3t8OP6hKhg8PNzM0SLcRKPAcSRepSB6E=
Received: by mail-qk1-f182.google.com with SMTP id a27so1829967qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 07:53:04 -0700 (PDT)
X-Gm-Message-State: APjAAAV/o1LuvzgLF2f5fhWtZ5R81h5dz2WT7XXPFKF2OnHxmE/qk965
 UzyhM2f0XFGZDHEe7fVxP/b583tqnMo4BYZjPQ==
X-Google-Smtp-Source: APXvYqzCzbjmjEqoh/p0P1ONf9SWsDRWOXpqAjANf0PIAA9ZEPQPgEKQ4Fa+P/aQgf5tr5TAK/wuQsBfgtzZ/HtFS+4=
X-Received: by 2002:a05:620a:13d1:: with SMTP id
 g17mr21296388qkl.121.1560523984156; 
 Fri, 14 Jun 2019 07:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-3-daniel.baluta@nxp.com>
In-Reply-To: <20190614081650.11880-3-daniel.baluta@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 14 Jun 2019 08:52:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
Message-ID: <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_075305_461874_184BF157 
X-CRM114-Status: GOOD (  19.39  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Daniel Baluta <daniel.baluta@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:15 AM <daniel.baluta@nxp.com> wrote:
>
> From: Daniel Baluta <daniel.baluta@nxp.com>
>
> DSP IPC is the layer that allows the Host CPU to communicate
> with DSP firmware.
> DSP is part of some i.MX8 boards (e.g i.MX8QM, i.MX8QXP)
>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  .../bindings/arm/freescale/fsl,dsp.yaml       | 43 +++++++++++++++++++

bindings/dsp/...

>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> new file mode 100644
> index 000000000000..16d9df1d397b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: GPL-2.0

The preference is to dual license new bindings: GPL-2.0 OR BSD-2-Clause

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX IPC DSP driver

This isn't a driver.

> +
> +maintainers:
> +  - Daniel Baluta <daniel.baluta@nxp.com>
> +
> +description: |
> +  IPC communication layer between Host CPU and DSP on NXP i.MX8 platforms
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx-dsp

You can have a fallback, but it needs SoC specific compatible(s).

> +
> +  mboxes:
> +    description:
> +      List of phandle of 2 MU channels for TXDB, 2 MU channels for RXDB
> +      (see mailbox/fsl,mu.txt)
> +    maxItems: 1

Should be 4?

> +
> +  mbox-names
> +    description:
> +      Mailboxes names
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/string"

No need for this, '*-names' already has a defined type.

> +      - enum: [ "txdb0", "txdb1", "rxdb0", "rxdb1" ]

Should be an 'items' list with 4 entries?

> +required:
> +  - compatible
> +  - mboxes
> +  - mbox-names

This seems incomplete. How does one boot the DSP? Load firmware? No
resources that Linux has to manage. Shared memory?

> +
> +examples:
> +  - |
> +    dsp {
> +      compatbile = "fsl,imx-dsp";
> +      mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
> +      mboxes = <&lsio_mu13 2 0 &lsio_mu13 2 1 &lsio_mu13 3 0 &lsio_mu13 3 1>;

mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;

> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
