Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E14143EE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkuJiF9f8uwErx0+jFQMLTKcpeK+9iWZBk7fIagLxkM=; b=VMeJOfG5anni6W
	dmLzyoK4tRr0eY0JIBE43HHg8zyLnMfPqPihO64AUM3XBG4YkIfu9KwOEDY5zBWffFUH8NQOf4+r3
	T6gMhy+WOSIp8DXKp/wi3lZfRqj/DFuHgWShIOYAtdPqbg4L45eHGD+En/vuEbQLNL7Qm7Y/ijKPR
	duMIfA2QZ/T8HFYE0ziSV8f7dvCmCSXvVFej2+Eh4ZTKN8E2zgs7HfgHrqx1IIyHDfWS7UTxz//xt
	Ck+Z6z4qxuWygQu00f9XiHJoC+72HRdJyOPUV+n0DhY02soH7kn/JSiZUeLcN2v77E61h8oeiplyW
	EXgbbJSR2RZFql44ukCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itu8m-0000X2-4A; Tue, 21 Jan 2020 14:04:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itu8Y-0000WD-Bc; Tue, 21 Jan 2020 14:04:14 +0000
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6142821569;
 Tue, 21 Jan 2020 14:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579615449;
 bh=RhQe3QXk/zDnaa/l8gaC+5yGDQC5asHgWocfmrxWn1U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TDc74Oc8pNrYsPvvSU21bExn8W8A9aUaQ4WNv6QuED+ZABtq9gzLTSYnZpKmvHEyt
 RTecwQwHWtLID8+6KiPJJHrGoksK1fwqQd1AZk3WU9MUmFElh7LP0gcPuMDLfc4+yE
 pXdr0Dvvso8wRoPlGfU5RQ6IgFmXPFlhOe6W3NnI=
Received: by mail-qv1-f49.google.com with SMTP id p2so1460286qvo.10;
 Tue, 21 Jan 2020 06:04:09 -0800 (PST)
X-Gm-Message-State: APjAAAXG+iECJ+Gx4q+lgInvHEnrxQrhpurFih9akVXBa9a5oCNPhx6b
 f2B4ATJNgNKUQJdAo2LNZzZXV4q0nxuNfGAWvA==
X-Google-Smtp-Source: APXvYqwJp13n5rPTJJDOXfMUKI9hXM9vs+rUXNz1Y5Q8u6qz7eER6mpKwoqon55uA3F4Uxi8MfmUkTp8hNPqSH0uU+Y=
X-Received: by 2002:ad4:4511:: with SMTP id k17mr4650910qvu.135.1579615447751; 
 Tue, 21 Jan 2020 06:04:07 -0800 (PST)
MIME-Version: 1.0
References: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 21 Jan 2020 08:03:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJv-gXOK=80nqnO0TB1P-+1+E_vDaN3XSymKQfSLVTBsQ@mail.gmail.com>
Message-ID: <CAL_JsqJv-gXOK=80nqnO0TB1P-+1+E_vDaN3XSymKQfSLVTBsQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_060410_443090_556CEA00 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "heiko@sntech.de" <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 dafna3@gmail.com, =?UTF-8?B?6buE5a626ZKX?= <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Daniel Vetter <daniel@ffwll.ch>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 6:35 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> convert the binding file rockchip-drm.txt to yaml format.
> This was tested and verified with:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

Also, make sure just 'make dt_binding_check' passes as that checks the
example against all schemas.

> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> Changes since v1:
> - fixed worng sign-off
> - fixed the path of the $id property to be the path of the yaml file
>
>  .../display/rockchip/rockchip-drm.txt         | 19 ----------
>  .../display/rockchip/rockchip-drm.yaml        | 38 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
> deleted file mode 100644
> index 5707af89319d..000000000000
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -Rockchip DRM master device
> -================================
> -
> -The Rockchip DRM master device is a virtual device needed to list all
> -vop devices or other display interface nodes that comprise the
> -graphics subsystem.
> -
> -Required properties:
> -- compatible: Should be "rockchip,display-subsystem"
> -- ports: Should contain a list of phandles pointing to display interface port
> -  of vop devices. vop definitions as defined in
> -  Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> -
> -example:
> -
> -display-subsystem {
> -       compatible = "rockchip,display-subsystem";
> -       ports = <&vopl_out>, <&vopb_out>;
> -};
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> new file mode 100644
> index 000000000000..538898ada9d1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)

Do you have rights to change the license? The default is GPL-2.0-only.
Looks like Rockchip owns the copyright.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-drm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DRM master device
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The Rockchip DRM master device is a virtual device needed to list all
> +  vop devices or other display interface nodes that comprise the
> +  graphics subsystem.
> +
> +properties:
> +  compatible:
> +    const: rockchip,display-subsystem
> +
> +  ports:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      Should contain a list of phandles pointing to display interface port
> +      of vop devices. vop definitions as defined in
> +      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +
> +required:
> +  - compatible
> +  - ports

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +    display-subsystem {
> +        compatible = "rockchip,display-subsystem";
> +        ports = <&vopl_out>, <&vopb_out>;
> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
