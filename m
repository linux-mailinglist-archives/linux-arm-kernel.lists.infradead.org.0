Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910FEE521D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP0LPUJ+1zg/ygOPiLX8rQwkESv82rJCh8StN5f5U1g=; b=TT9GtZmoQd0XRk
	0Tjy6Wz9EL9tvjSXeGnOXTrqZBgAK4/WsdBBEMf7W/8VI3ete/jcwFrmuJwP7U2bjdhQ8OMGhJFiq
	9xdIFKcnsI5bT+K9lRhoGH1u6ikzvbhVpS1FQ1qexFCpgSFNmR2JysU6EHz4m2BiUeH/wfpa3qqdx
	xUm+MPxf0MV7RqOo9gdtxws3FFQaxYw+bDjfoY+vPWTAPKQLOkgccWDdqJeuz869VDtTxeZyFzqK0
	uusgJayAwY+y5Sdr7EBeT42sjAyiin7TW7n3M1HxpY1V1gWVHR7IPg9WENuqPuD2ZruU5/+MPPStn
	LyhD5gLyIIlKqHgm/Zeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO38x-0003ka-3w; Fri, 25 Oct 2019 17:12:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO38m-0003jy-2K
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:12:45 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B12620679
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572023562;
 bh=Z9kAbxaXKmbqq+OCusdDlzS7M+q9LbO89gcG35ir0CE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LK3DZoETxxt3Vx/AZOSrcG6Svt1lTR1XOwfx4jzOFxa5ghw2U5wmTPAqlPg+/A/MB
 XuqqbEva2CS6sCg3lPJcyunXWzVhQMKmM0tB+j9+5rMzWzelksgRQX/bbf8EH7ErkV
 n27ysL5zWgoUkUXAaX9RnB0EXijNmOiVvuhKoRhQ=
Received: by mail-qt1-f182.google.com with SMTP id z22so4273224qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:12:42 -0700 (PDT)
X-Gm-Message-State: APjAAAUZjkCzJGIVsNDSMBtNnEFiDJ9yxqGwiANoF3qv8JuiN0XlgfmU
 da98p7CouscAp/2ydH5Dr7XTta8pH6layh+/Vg==
X-Google-Smtp-Source: APXvYqwyBAHU7XOj/9lEMryFKsyNgzQcpd0Pku9No2ZatJFpJeBh2HE7sqmId/JADfJ+vHbJLB4UWp8J+xFC4MKtpOw=
X-Received: by 2002:ac8:741a:: with SMTP id p26mr4135876qtq.143.1572023561814; 
 Fri, 25 Oct 2019 10:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
 <20191024202703.8017-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191024202703.8017-2-chris.packham@alliedtelesis.co.nz>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 25 Oct 2019 12:12:30 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ6a6cSrZsTg6piXmuB6-zuP+EO9vwkRoeH2aS9AVOT1g@mail.gmail.com>
Message-ID: <CAL_JsqJ6a6cSrZsTg6piXmuB6-zuP+EO9vwkRoeH2aS9AVOT1g@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_101244_137088_065C1B4A 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 3:27 PM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:
>
> This GPIO controller is present on a number of Broadcom switch ASICs
> with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> blocks but different enough to require a separate driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Notes:
>     Changes in v4:
>     - rename brcm,xgs-iproc.yaml -> brcm,xgs-iproc-gpio.yaml as suggested
>
>     Changes in v3:
>     - incorporate review comments from Rob and Bart
>
>     Changes in v2:
>     - Document as DT schema
>     - Include ngpios, #gpio-cells and gpio-controller properties
>
>  .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
> new file mode 100644
> index 000000000000..ec1fd3a64aa2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/brcm,xgs-iproc.yaml#

Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml: $id:
path/filename 'gpio/brcm,xgs-iproc.yaml' doesn't match actual filename

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
