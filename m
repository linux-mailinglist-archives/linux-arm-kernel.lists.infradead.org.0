Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933DB13EF07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:12:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44DhS6xIXIfbzHPS5zNhW/s2ebAGE4SFP5w1B0Wo9kk=; b=Z1KC8v+DTJAJyh
	Qc0+uSU3f+QuvfNusEKXWucVNzMmTGohcE8VDed8z/UfHa7qcnJq3n22Q53yDBmBQ4u1EnJuV5W/n
	97N0fqzol5S4e0CPp1nU/CaNywzPeRgFN2N5d0B8rsqCwYoqPuTxPaad2bs95He9no1oQ+IUNMirI
	Dh6fMnqoBv+W5174qvRBGNpB3gjKX6J8CXmpn1MKPO7uQWXO5+LgG57q7qVjVr9jociVQCzWaXeiA
	PQ4hCxOQJFcia4gf7r8XPjpp/XsH8WpDl9cCVUPSjmrzdi0609RIThZmt3qSlFXoyiJuXVbQ//xNs
	7aQd3N8fFnwNBb76qL0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9dQ-0003Uo-B0; Thu, 16 Jan 2020 18:12:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is91Z-00035K-AC
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:33:47 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D251246CC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 17:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196020;
 bh=2G0Ng8OaQXY0myuwsXjYgysTnAkfNx4yCUXz8txEl2Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vd/D2dqhVkk/59pyEhm3YzDslAjdxWxnY8HVcflYPu9BYi5M2fluN/7qGED+/2x3q
 FEqZtepLYPcur1TFx9cTTrpOQa+XAOiY74agLTBgaVPlHxKEc6VLGwSnfUWyzBngsS
 F0k9PXMbe2fYpxERpAz/dVRnYfE/ibbxVX1YntZ8=
Received: by mail-qk1-f171.google.com with SMTP id 21so19913568qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 09:33:40 -0800 (PST)
X-Gm-Message-State: APjAAAUUaCtjk7XpkNOe7J1oMpZsL5rHv4yb8I/d/52wquutCT5pIHVv
 nMhzlV+KueK0lKg5x7JtYqdDUnEwAqWF0dBWDQ==
X-Google-Smtp-Source: APXvYqzp8zTCERQIV+x1zdU2FH8qa9LdLhrgMgX7M1lyS8XHlvveUMh4kI3m0RFeC5HMz+WfbUraLiUXsMQZdBiBvTg=
X-Received: by 2002:a05:620a:135b:: with SMTP id
 c27mr31335279qkl.119.1579196019371; 
 Thu, 16 Jan 2020 09:33:39 -0800 (PST)
MIME-Version: 1.0
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
 <1578941778-23321-2-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1578941778-23321-2-git-send-email-stefan.wahren@i2se.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 Jan 2020 11:33:27 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+w0KGE-=XkAwpdqh67pH=V34ETCy8X92L_u1=_8xuKCg@mail.gmail.com>
Message-ID: <CAL_Jsq+w0KGE-=XkAwpdqh67pH=V34ETCy8X92L_u1=_8xuKCg@mail.gmail.com>
Subject: Re: [PATCH V5 1/4] dt-bindings: Add Broadcom AVS RO thermal
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093341_461612_BFB49A68 
X-CRM114-Status: GOOD (  19.62  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Will Deacon <will@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 12:56 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Since the BCM2711 doesn't have a AVS TMON block, the thermal information
> must be retrieved from the AVS ring oscillator block. This block is part
> of the AVS monitor which contains a bunch of raw sensors.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml

The example fails 'make dt_binding_check':

/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.example.dt.yaml:
thermal: 'reg' is a required property

> diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
> new file mode 100644
> index 0000000..98e7b57
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/brcm,avs-ro-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom AVS ring oscillator thermal
> +
> +maintainers:
> +  - Stefan Wahren <wahrenst@gmx.net>
> +
> +description: |+
> +  The thermal node should be the child of a syscon node with the
> +  required property:
> +
> +  - compatible: Should be one of the following:
> +                "brcm,bcm2711-avs-monitor", "syscon", "simple-mfd"
> +
> +  Refer to the the bindings described in
> +  Documentation/devicetree/bindings/mfd/syscon.txt
> +
> +properties:
> +  compatible:
> +    const: brcm,bcm2711-thermal
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +        avs-monitor@7d5d2000 {
> +                compatible = "brcm,bcm2711-avs-monitor",
> +                             "syscon", "simple-mfd";
> +                reg = <0x7d5d2000 0xf00>;
> +
> +                thermal: thermal {
> +                        compatible = "brcm,bcm2711-thermal";
> +                        #thermal-sensor-cells = <0>;

Also this is not documented. That's not caught because
'additionalProperties: false' is also needed.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
