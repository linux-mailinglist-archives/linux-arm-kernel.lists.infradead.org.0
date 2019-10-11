Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2CED3FCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HArfcRymxSZXNfapp3TJzckR92RsQztx+2D4S6k1iLo=; b=TuhB+2BUUsztIk
	LNFh1Mx8fTM0MB848z7Xeb3HX4iALB1TcyPmBHjfQh7AMFLuk7WyCQ7A1aW1aIhB+JK5xVyd7G5JK
	YZKgkCmwUAglxIArC/zme1g0towU479vTfwwzih9NvQYMdonkC1bgD12pdNPsAFXNQEG0balX2JDd
	1LNmnxjwenAV4mBlzymYUnoWM0Ayq6UDTlDPmWGK9BvINm1pJdQBmFWqYWzd4XnsiY+BpomyE6zeE
	gbYEPLl8/Se8IHPBFqLIIk3wzzUWX4RVIGGvUifaHzhamKCw22BE8xPfkOo94Upeqm+E/8J87KUhC
	OMCk0IIJH3o+WAw4DlJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuEu-0008K7-TK; Fri, 11 Oct 2019 12:41:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuEV-00083b-RO
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:41:25 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5A9B222BE
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 12:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570797683;
 bh=0ntoZW7nIQaS0RptBTqn8yRQKbcwYPW6mrTC+nExxQQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dR100AmRHlPwX27kUrp1Lauf3ohIZVPT1aokTFmN/cMb52PIZCHr7cnR8lnpbjLqj
 dicgfF0TpW4nEd2mwFBiZJjqOSCarxIGU+A6CE1Bvzn5Lxu1fFt6mtmei+4dyZVSSl
 CSrZCRsYHokj3EuztdAzqWaGGTOBWJxfSIjVmNCk=
Received: by mail-qk1-f173.google.com with SMTP id x134so8742832qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 05:41:22 -0700 (PDT)
X-Gm-Message-State: APjAAAWpLbj5i7rgXJJr7WQL1nYxR6kuVxQtDBgzi8G5R+vFCBNTDlcF
 0MtkNIYg5XPZms18YcSvUQq0VjkpzIa950WxTQ==
X-Google-Smtp-Source: APXvYqxSOLHC3OhXJjaOJaRAYwJ7GF4/t7229zQiP9PqqmGtuF/Yddz3rOt3p/MLumF2OTaUmi8AujpP8UblZE39o8w=
X-Received: by 2002:a05:620a:12f1:: with SMTP id
 f17mr15407013qkl.152.1570797681944; 
 Fri, 11 Oct 2019 05:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191002151907.15986-1-benjamin.gaignard@st.com>
In-Reply-To: <20191002151907.15986-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 07:41:10 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+p6rYun-zOwK49=QSfuJGMpiXj5UfASdXhjmOX1cudWQ@mail.gmail.com>
Message-ID: <CAL_Jsq+p6rYun-zOwK49=QSfuJGMpiXj5UfASdXhjmOX1cudWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: hwlock: Convert stm32 hwspinlock bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_054123_949343_24016EBE 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 10:19 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 hwspinlock binding to DT schema format using json-schema
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../bindings/hwlock/st,stm32-hwspinlock.txt        | 23 -----------
>  .../bindings/hwlock/st,stm32-hwspinlock.yaml       | 48 ++++++++++++++++++++++
>  2 files changed, 48 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
>  create mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml
>
> diff --git a/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt b/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
> deleted file mode 100644
> index adf4f000ea3d..000000000000
> --- a/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -STM32 Hardware Spinlock Device Binding
> --------------------------------------
> -
> -Required properties :
> -- compatible : should be "st,stm32-hwspinlock".
> -- reg : the register address of hwspinlock.
> -- #hwlock-cells : hwlock users only use the hwlock id to represent a specific
> -       hwlock, so the number of cells should be <1> here.
> -- clock-names : Must contain "hsem".
> -- clocks : Must contain a phandle entry for the clock in clock-names, see the
> -       common clock bindings.
> -
> -Please look at the generic hwlock binding for usage information for consumers,
> -"Documentation/devicetree/bindings/hwlock/hwlock.txt"
> -
> -Example of hwlock provider:
> -       hwspinlock@4c000000 {
> -               compatible = "st,stm32-hwspinlock";
> -               #hwlock-cells = <1>;
> -               reg = <0x4c000000 0x400>;
> -               clocks = <&rcc HSEM>;
> -               clock-names = "hsem";
> -       };
> diff --git a/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml
> new file mode 100644
> index 000000000000..64e169702515
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwlock/st,stm32-hwspinlock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Hardware Spinlock bindings
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Fabien Dessenne <fabien.dessenne@st.com>
> +
> +properties:
> +  "#hwlock-cells": true

const: 1

> +
> +  compatible:
> +    const: st,stm32-hwspinlock
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock

Don't need a description for a single item.

maxItems: 1

> +
> +  clock-names:
> +    items:
> +      - const: hsem
> +
> +required:
> +  - "#hwlock-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names

Add a:

additionalProperties: false

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    hwspinlock@4c000000 {
> +        compatible = "st,stm32-hwspinlock";
> +        #hwlock-cells = <1>;
> +        reg = <0x4c000000 0x400>;
> +        clocks = <&rcc HSEM>;
> +        clock-names = "hsem";
> +    };
> +
> +...
> --
> 2.15.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
