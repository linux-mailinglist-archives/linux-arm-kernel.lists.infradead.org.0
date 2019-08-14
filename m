Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7748E11B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 01:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mtjhzr+IUtgqhfsY3EOC5LVvtXBXihpxKsy6wLDLGk8=; b=cKvMddeSZeNnuG
	Vnw9ig7I6JnulYn+H6is/aai0q7wvfhZtwbCm5ug/MLdw1rwyn3xqpadkGsNv7glUqoyjSxOaxVOF
	igH8utdLnspbfmd7oVotYfH4bJ/oTko6wH325NhCTaR0cp+3sW9qQOPiPqQT1zB3YJCNXhw+MPn1Z
	VoF32Meyt3uddCoIAOHsZ6rrobkXAc55AT62+507XwE4JVgkWd+Jcux0Ssmn7JdQA6CmA18AjCNNZ
	VbS0olRzfU6nPoQcnSAHaiylavRga3yBPBCEpE4x0nWAswX3FrzjYiD6d11QOLXR5+vtZX3rsfkph
	Ho0Jgo86s4D8afvDEchw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy2M9-0008KT-GA; Wed, 14 Aug 2019 23:07:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy2Lw-0008K1-DS; Wed, 14 Aug 2019 23:06:50 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A209206C1;
 Wed, 14 Aug 2019 23:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565824007;
 bh=Osh2kIuzBECV/4S+fO2LBnSrGcK/tQ0alxa/uWeuFQc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nm/3Un5cw9DqG26s8lndjrQy4y2i5O4k9Le+Va9KzaVBLHkQWa5BePc6YLarGxMDd
 l1r9kj3JqmTIe30/oF8+XWBDoo73fGcBKRp/gU6ABiTymb+WxoeX6P37zn2u6G2fRC
 t4g3qxD1yzo9RzZ3u9caxTeU2xPr2kTmyVFD+6m0=
Received: by mail-qk1-f174.google.com with SMTP id p13so423514qkg.13;
 Wed, 14 Aug 2019 16:06:47 -0700 (PDT)
X-Gm-Message-State: APjAAAWDJUZpgcRunJ73wZYUd3bWIsxa9gdn2FLvHDNmy+g6wIScvdEW
 Mev/3tw+dj3jLPC3bFhz+XnLW8uiMGZj7jQg8g==
X-Google-Smtp-Source: APXvYqwIIiPLiCSpGiUOEsKR6pt4CN+4KUYglGKUJR5D8HxVpco/SEBiFVf0WJecJv6krnzu3KPOTMEHV9O3FwuOBSs=
X-Received: by 2002:a37:6944:: with SMTP id e65mr1447045qkc.119.1565824006678; 
 Wed, 14 Aug 2019 16:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-10-git-send-email-wahrenst@gmx.net>
 <CAL_Jsq+01vXQpf_ZuAvetWvcGLhK4EiiB1qFqhRkM3PQWAzdsA@mail.gmail.com>
 <f9acf678-854d-720d-3c84-d9a05766c02e@gmx.net>
In-Reply-To: <f9acf678-854d-720d-3c84-d9a05766c02e@gmx.net>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 14 Aug 2019 17:06:35 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+=0Jvz+xx8sn9v_Q-WYCn5fACBhwSGORcMNXXxocCkpQ@mail.gmail.com>
Message-ID: <CAL_Jsq+=0Jvz+xx8sn9v_Q-WYCn5fACBhwSGORcMNXXxocCkpQ@mail.gmail.com>
Subject: Re: [PATCH V2 09/13] dt-bindings: arm: Convert BCM2835 board/soc
 bindings to json-schema
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_160648_497967_88ADACF0 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 Eric Anholt <eric@anholt.net>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Linux I2C <linux-i2c@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 1:21 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Rob,
>
> Am 13.08.19 um 19:22 schrieb Rob Herring:
> > On Tue, Aug 13, 2019 at 10:21 AM Stefan Wahren <wahrenst@gmx.net> wrote:
> >> Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
> >> All the other Broadcom boards are maintained by Florian Fainelli.
> >>
> >> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> >> Acked-by: Eric Anholt <eric@anholt.net>
> >> ---
> >>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 46 +++++++++++++++
> >>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
> >>  2 files changed, 46 insertions(+), 67 deletions(-)
> >>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
> >>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
> >> new file mode 100644
> >> index 0000000..1a4be26
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
> >> @@ -0,0 +1,46 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/arm/bcm/bcm2835.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Broadcom BCM2711/BCM2835 Platforms Device Tree Bindings
> >> +
> >> +maintainers:
> >> +  - Eric Anholt <eric@anholt.net>
> >> +  - Stefan Wahren <wahrenst@gmx.net>
> >> +
> >> +properties:
> >> +  $nodename:
> >> +    const: '/'
> >> +  compatible:
> >> +    oneOf:
> >> +      - description: BCM2835 based Boards
> >> +        items:
> >> +          - enum:
> >> +              - raspberrypi,model-a
> >> +              - raspberrypi,model-a-plus
> >> +              - raspberrypi,model-b
> >> +              - raspberrypi,model-b-i2c0  # Raspberry Pi Model B (no P5)
> >> +              - raspberrypi,model-b-rev2
> >> +              - raspberrypi,model-b-plus
> >> +              - raspberrypi,compute-module
> >> +              - raspberrypi,model-zero
> >> +              - raspberrypi,model-zero-w
> >> +          - const: brcm,bcm2835
> >> +
> >> +      - description: BCM2836 based Boards
> >> +        items:
> >> +          - enum:
> >> +              - raspberrypi,2-model-b
> > Don't you need brcm,bcm2836 here?
> >
> >> +
> >> +      - description: BCM2837 based Boards
> >> +        items:
> >> +          - enum:
> >> +              - raspberrypi,3-model-a-plus
> >> +              - raspberrypi,3-model-b
> >> +              - raspberrypi,3-model-b-plus
> >> +              - raspberrypi,3-compute-module
> >> +              - raspberrypi,3-compute-module-lite
> > Don't you need brcm,bcm2837 here?
> >
> > Please run 'dtbs_check' and make sure there aren't warnings (in the root node).
>
> thanks, after addressing your comments the root node doesn't have
> warnings anymore.
>
> Beside that there a lot of other warnings:
>
>   DTC     arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml
>   CHECK   arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> arm-pmu: compatible: ['arm,cortex-a72-pmu', 'arm,armv8-pmuv3'] is too long
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> arm-pmu: compatible: Additional items are not allowed ('arm,armv8-pmuv3'
> was unexpected)
>
> I think the schema is a little bit too strict by prohibit a fallback
> compatible.

IIRC, Will Deacon said there wasn't any point to fallbacks as every
cpu has its own list of events. Or if we want a fallback, then add it
to the schema.

>
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> serial@7e201800: Additional properties are not allowed
> ('arm,primecell-periphid' was unexpected)
>
> In the old txt version this was an allowed property.

You really need an override? Haven't seen that in a while. We can drop
'additionalProperties: false' in the pl011 schema.

>
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> firmware: $nodename:0: 'firmware' does not match
> '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> firmware: '#address-cells' is a required property
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> firmware: '#size-cells' is a required property
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> firmware: 'ranges' is a required property
>
> I suggest to fix this by removing the "simple-bus".

Probably. 'firmware' doesn't sound like a bus.

>
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> serial@7e201a00: Additional properties are not allowed
> ('arm,primecell-periphid' was unexpected)
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> gpio@7e200000: 'pinctrl-0' is a dependency of 'pinctrl-names'
>
> This could be fixed by removing pinctrl-names.
>
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> serial@7e201600: Additional properties are not allowed
> ('arm,primecell-periphid' was unexpected)
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> gic400@40041000: $nodename:0: 'gic400@40041000' does not match
> '^interrupt-controller(@[0-9a-f,]+)*$'
>
> I will rename gic400 to interrupt-controller.
>
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> serial@7e201400: Additional properties are not allowed
> ('arm,primecell-periphid' was unexpected)
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> serial@7e201000: compatible: ['brcm,bcm2835-pl011', 'arm,pl011',
> 'arm,primecell'] is not valid under any of the given schemas
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> serial@7e201000: Additional properties are not allowed ('bluetooth',
> 'arm,primecell-periphid' were unexpected)
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> sd_io_1v8_reg: states:0: [1800000, 1, 3300000, 0] is too long
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> sd_io_1v8_reg: states:0: Additional items are not allowed (3300000, 0
> were unexpected)
>
> No idea what is wrong here

The schema is stricter about <> groupings is my guess. Looks like this
should be 2 entries with 2 cells each.

> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml: clocks:
> #size-cells:0:0: 0 is not one of [1, 2]
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml: clocks:
> $nodename:0: 'clocks' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml: clocks:
> clock@3:reg:0: [3] is too short
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml: clocks:
> clock@4:reg:0: [4] is too short
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml: clocks:
> 'ranges' is a required property
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> clock@3: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
> /home/stefan/torvalds/arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml:
> clock@4: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
>
> This could be fixed by avoiding a simple-bus for the fixed clocks.

Right, they are not a bus.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
