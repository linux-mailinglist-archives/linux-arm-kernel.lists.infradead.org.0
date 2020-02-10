Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDAC158573
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=925JMBdeq3jqLpNE/mVJ7G051sF0vx2wllyU1K47Sxs=; b=NPMAG5jAS1uv81
	dR7o+NnEu4hxikf1VzYn+QEKRxjOeFzbOvZWuyNjp+b11agtlFhAfXHhOPYJZVIl1gLZPYt7ngFyO
	3jhQ8WFgXyPh7UZ4zNGsjZVxyL9saMxrhG+FKdxRBlfE933uwbUYE8850vOLbnoqBoX1QtWypwEqS
	M6sKe45L0SQoTKVrfgS4JzHHj72vPAH/sUpboZEoEx7m1Pdi4MT0QGw/oK6yeU7KAEbPFUq8czXtT
	emvjuBTtYVZgeVcegwYF/1Kd14w6sM7DFe8/yzyj+3dkd/K/rfh7o1n3ubEY4j+bjxucj/exDq2Rw
	2HwzL5HhgGqGy/EaYeog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HT7-0003yB-Vh; Mon, 10 Feb 2020 22:23:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HT1-0003xG-Au
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:23:48 +0000
Received: by mail-qk1-x743.google.com with SMTP id c188so8221424qkg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 14:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vtc2iHO5ssqdQWlZbYpNOYjs7NPN+OkfmGi7EwW4+Cw=;
 b=FgTcvQWWhvbFryDssRGO6xJWs5roRRi7pj6F2lGuCKhoWUJC2n4I/mNnRGIzEc6x2M
 MCO3afKZAmymUbSJ2kjINRtbtbNYPLzRMEdJr84duHUQVo5bbZdX2AUMkzTP62MUYXOs
 JNgdEotYxbmqZrmJZZVFIxEo1beFo2EvE52vI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vtc2iHO5ssqdQWlZbYpNOYjs7NPN+OkfmGi7EwW4+Cw=;
 b=MOtqHmZ5nBFoykTQ6hdIy8ngR4klbQNWZG6bj3CWGWtTYqTsuqgPY51w7bfo5qV/2Q
 QnWbx3hzkE/ZmuVi7c126JuU6/V6qQ8b9frgMcF9nVb1xZETERJ1KFbkYljbLYEp8s6B
 jilcYNLEflRbuSssWaHwc2ySYXkdV0BEga01ZffF/pJr2eS3ZijTa/QsRR37EwAb44pg
 mCI+OS0qfNnRZ1GC37knWIxfaedVTLcBwCIWDUMr01bwYL3IUsZYJ8Fb5dMAPY6mgFsB
 iRlime7/RkQqfo8On2LbrrL1NDCm3Ng3k7rFA2bCq83tGtm8H6Q/v88TkPJPrJ2prXge
 d2QQ==
X-Gm-Message-State: APjAAAU70fPNq8vUGOTgOpaBCVgAi7JSDsa6NMAsbPY8o8vKAMr0ys7f
 8QVwx/iNauZRs1ezh/VMYq61RElKa4TExYrqnKU=
X-Google-Smtp-Source: APXvYqyZdGpzcKUOEIzHRw7qYRL07DZQdkQJ0/5JSAwE0jE+HVmYKoptJ7wpd88HybHU1+QIrsDGwQWL0h/VjAghNpo=
X-Received: by 2002:a37:c07:: with SMTP id 7mr107082qkm.414.1581373426189;
 Mon, 10 Feb 2020 14:23:46 -0800 (PST)
MIME-Version: 1.0
References: <20200130214626.2863329-1-vijaykhemka@fb.com>
In-Reply-To: <20200130214626.2863329-1-vijaykhemka@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 10 Feb 2020 22:23:34 +0000
Message-ID: <CACPK8Xfo1NcNmORHtpfDQzYQrLV0B=6+_nUtPftiHQoT6GrpPA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: tiogapass: Add IPMB device
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142347_375816_AAA29ADC 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sai Dasari <sdasari@fb.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vijay Khemka <vijaykhemka@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, 30 Jan 2020 at 21:46, Vijay Khemka <vijaykhemka@fb.com> wrote:
>
> Adding IPMB devices for facebook tiogapass platform.
>
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> index fb7f034d5db2..1cb5b9bf468f 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> @@ -5,6 +5,7 @@
>
>  #include "aspeed-g5.dtsi"
>  #include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/i2c/i2c.h>
>
>  / {
>         model = "Facebook TiogaPass BMC";
> @@ -428,6 +429,12 @@
>  &i2c4 {
>         status = "okay";
>         // BMC Debug Header
> +       multi-master;
> +       ipmb0@10 {
> +               compatible = "ipmb-dev";
> +               reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;

This causes dtc to warn:

../arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
bus unit address format error, expected "40000010"
../arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
I2C address must be less than 10-bits, got "0x40000010"

The bindings mention:

 Another flag is I2C_OWN_SLAVE_ADDRESS to mark addresses on which we listen to
be devices ourselves.

include/dt-bindings/i2c/i2c.h:#define I2C_OWN_SLAVE_ADDRESS     (1 << 30)

It appears dtc needs to be fixed to not warn when seeing this value in
an i2c reg node?

Cheers,

Joel



> +               i2c-protocol;
> +       };
>  };
>
>  &i2c5 {
> @@ -509,6 +516,12 @@
>  &i2c9 {
>         status = "okay";
>         //USB Debug Connector
> +       multi-master;
> +       ipmb0@10 {
> +               compatible = "ipmb-dev";
> +               reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +               i2c-protocol;
> +       };
>  };
>
>  &pwm_tacho {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
