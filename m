Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFB516C18B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9zyf0yuLegZmrho4C0vZ+ib8rV036RmEmwZ+5IjIVVY=; b=YMyHAaACms4MOuvdNXtUXi2C+
	KCmCAOwOcnnFUuKrzYcpktsyv8OfS83eh66baOrsGxvUFaMvMMuItM9splLGCmZ+19m3hy2sDxKG8
	yJ3HuDeo/G7j6eBO1ojCJM182Jg/zO3TjvcnWlQ3qz/F/E+zCmAenwYEM+jLjAJwZe+KZOrUYUVbB
	EHTQqenb8yyEnDj9OrQwXJB3M/giK5fFH8FyNeguuvW3jE+i1buhB6jyetQN32s5JzAjXWMr9oiJU
	MK8S6e2WI1mag84OgdCcev+gWrqi9g4qZaZWFY9MatFQp8Hk67T50aZ6XZlXMY0I/k1ZYW2JFlMth
	XM1ajlzVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ZpX-0001j4-Oc; Tue, 25 Feb 2020 13:00:55 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZpA-0001Yr-Sm
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 13:00:36 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01PD0LHw123433;
 Tue, 25 Feb 2020 07:00:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582635621;
 bh=n4t+iSnVQ8VDVIb2I48j7hH+y8NZ1XyrKycrJ1RQK90=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Em9lWr5gFGAJGIVefw5xY+a+Dwwp3Pn1zqurQTmTa86QzSJfB61woe0HHUX/g8ehS
 XLAlCnUyKrUCjo5oq/k/ku4iF5vXr4pkDEUhadl/PRi+CaazR50RDc2zCa/81FX0cB
 wuXtBSeggje7gf1NyIoD0IKvmhnN45jt4LHXNtzo=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01PD0LKB096983
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Feb 2020 07:00:21 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 07:00:20 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 07:00:20 -0600
Received: from [10.250.65.13] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01PD0KFe036379;
 Tue, 25 Feb 2020 07:00:20 -0600
Subject: Re: [PATCH 1/4] dt-bindings: leds: Add a binding for AXP813 charger
 led
To: Ondrej Jirman <megous@megous.com>, <linux-sunxi@googlegroups.com>, Jacek
 Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>, Rob
 Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Maxime Ripard
 <mripard@kernel.org>
References: <20200223131435.681620-1-megous@megous.com>
 <20200223131435.681620-2-megous@megous.com>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <8c4b9ef7-0c18-d5c1-9672-b7fc683c3ce9@ti.com>
Date: Tue, 25 Feb 2020 06:55:09 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200223131435.681620-2-megous@megous.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_050033_038549_EE923D46 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ondrej

On 2/23/20 7:14 AM, Ondrej Jirman wrote:
> The AXP813 PMIC can control one LED. Add binding to represent the LED.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>   .../devicetree/bindings/leds/leds-axp20x.yaml | 24 +++++++++++++++++++
>   1 file changed, 24 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/leds/leds-axp20x.yaml
>
> diff --git a/Documentation/devicetree/bindings/leds/leds-axp20x.yaml b/Documentation/devicetree/bindings/leds/leds-axp20x.yaml
> new file mode 100644
> index 0000000000000..79282d55764bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/leds-axp20x.yaml
> @@ -0,0 +1,24 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/leds-axp20x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LED driver for AXP813 PMIC from X-Powers.
> +
> +maintainers:
> +  - Ondrej Jirman <megous@megous.com>
> +
> +description: |
> +  This module is part of the AXP20x MFD device. For more details
> +  see Documentation/devicetree/bindings/mfd/axp20x.txt.
> +
> +  The LED controller is represented as a sub-node of the PMIC node on
> +  the device tree.
> +
> +properties:
> +  compatible:
> +    const: x-powers,axp813-charger-led
> +
> +required:
> +  - compatible

You need to add the color and function properties for proper LED device 
name presentation per the bindings/leds/common.yaml binding.

Dan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
