Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D4D17B0AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=US4UmYWwdiGdLbcoPhsy3fqNCifGYvNNnccCELnb5Hk=; b=jBxhFYnMPdisM1
	nRBC4eJDTGma9ZbQfclxs9IjR74cZnJhanP1J4GzOrj2oIow6adQwQqpRdM4eqFpQ04UC9Eyo/tSd
	1fsoW1G/r3CanGIW3BQU3wjgyhkE7AegWMEuDjnhklqmIHEjh+hHjfWUGZHrPXvPdt5uEnRw476WE
	dhvFR1FZsuY47EX2iCJEXVq/NTGHFqqGj1lzkqbzG5+E8CK4OMOqxywI0TQbHzAWInFvB88UtOFUU
	EuuvAfHNxmZViI+zn62GKBjODX4L3ZiY7ycP097Oy8axHFG5iJjkHYpLMeF6uIZ4HFUscJ+8423km
	uzEnlwneO+fq+kvG8DGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9y3X-00059q-1b; Thu, 05 Mar 2020 21:29:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9y3O-00059R-Fy; Thu, 05 Mar 2020 21:29:16 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96CE921744;
 Thu,  5 Mar 2020 21:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583443753;
 bh=oh2OwQ/0TeiUDxPSSCXzSpj5KXTo4xNzQh97uu6obDw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ShPPP/LC/9bbpx0NGMJcdAFDkRwBAzI7UfIQOCBK8FtcyFOSbnL/mhxhTlVpfidtd
 EvjOk7ZmKbTjpeiu0mssyqZbGbuNOyuZOarr3k45UTaN8MfINS7v78/9gFpPJjxGIp
 9halWgIRS2l82IX8m+dus45MdaiO013SnmlnTbag=
Received: by mail-qk1-f171.google.com with SMTP id p62so367541qkb.0;
 Thu, 05 Mar 2020 13:29:13 -0800 (PST)
X-Gm-Message-State: ANhLgQ1rV3vzQnLQVJviwZIokYrXeRLMQj3pYL86xlw6Hd9S3DjYVOyJ
 q4CCFID4jLyJJkIMQwqER2NB/1vKODk5axMl6g==
X-Google-Smtp-Source: ADFU+vtqjRJO6NbTISWxledTlH+SAy9WYo0Hq7+mzVvIuhn8GJMCac26m6QCpXzcrlt1I+k7z1Xm4kMe5NwmRP+Yero=
X-Received: by 2002:a37:393:: with SMTP id 141mr9930qkd.393.1583443752527;
 Thu, 05 Mar 2020 13:29:12 -0800 (PST)
MIME-Version: 1.0
References: <20200305030135.210675-1-pmalani@chromium.org>
In-Reply-To: <20200305030135.210675-1-pmalani@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Mar 2020 15:29:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJcJf0JZVHEuY5y0eHLyw3e0Wr2ZDJvPs4=cZaSMWg97A@mail.gmail.com>
Message-ID: <CAL_JsqJcJf0JZVHEuY5y0eHLyw3e0Wr2ZDJvPs4=cZaSMWg97A@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
To: Prashant Malani <pmalani@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_132914_576169_576A0526 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Benson Leung <bleung@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 9:01 PM Prashant Malani <pmalani@chromium.org> wrote:
>
> Convert the usb-connector.txt bindings file to YAML format. This allows
> it to be used in dt_bindings_check verification. This patch was
> born out of a patch series for the addition of a Type C connector
> class port driver[1].
>
> An attempt has been made to maintain the same documentation text and
> example structure as was in the .txt file, but wherever needed
> modifications have been made to satisfy dt_bindings_check.
>
> Also, update all references to usb-connector.txt to now use
> usb-connector.yaml.
>
> [1]: https://lkml.org/lkml/2020/2/19/1232
>
> Signed-off-by: Prashant Malani <pmalani@chromium.org>
> ---
>
> Changes in v2:
> - Added type references for some properties.
> - Removed pinctrl properties.
> - Updated power-role, try-power-role and data-role properties to be in
>   valid schema format.
> - Added OF graph data bus binding property according to reviewer
>   suggestions.
>
>  .../connector/samsung,usb-connector-11pin.txt |   2 +-
>  .../bindings/connector/usb-connector.txt      | 135 ------------
>  .../bindings/connector/usb-connector.yaml     | 203 ++++++++++++++++++
>  .../devicetree/bindings/usb/fcs,fusb302.txt   |   2 +-
>  .../devicetree/bindings/usb/generic.txt       |   2 +-
>  .../devicetree/bindings/usb/mediatek,mtu3.txt |   2 +-
>  .../devicetree/bindings/usb/mediatek,musb.txt |   2 +-
>  .../bindings/usb/richtek,rt1711h.txt          |   2 +-
>  .../devicetree/bindings/usb/ti,hd3ss3220.txt  |   2 +-
>  .../devicetree/bindings/usb/typec-tcpci.txt   |   2 +-
>  .../devicetree/bindings/usb/usb-conn-gpio.txt |   4 +-
>  11 files changed, 213 insertions(+), 145 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/connector/usb-connector.txt
>  create mode 100644 Documentation/devicetree/bindings/connector/usb-connector.yaml


> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> new file mode 100644
> index 0000000000000..b386e2880405c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -0,0 +1,203 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: USB Connector
> +
> +maintainers:
> +  - linux-usb@vger.kernel.org

Person please. You can put me if no one else.

> +description:
> +  A USB connector node represents a physical USB connector. It should be a child
> +  of a USB interface controller.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - usb-a-connector
> +      - usb-b-connector
> +      - usb-c-connector
> +
> +  label:
> +    description: Symbolic name for the connector.
> +
> +  type:
> +    description: Size of the connector, should be specified in case of USB-A,
> +      USB-B non-fullsize connectors.
> +    $ref: /schemas/types.yaml#definitions/string

Needs to be under an 'allOf' or the enum is ignored.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
