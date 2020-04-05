Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDC719EB8C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 15:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyNcynkAEz9aNp0YAutoEFy9wnL053COEj9Ap0JM8bs=; b=KAsHGaSGfxWsQU
	xFHElDCoezz7WBDQbcKkkUz2m3ab+Q9EH2dxhz8cqdMyIxc204nL8dyAOBcyFukrGurTr9nXl7OMk
	CmQpHEQc/x+iOTKIC6AYESaBs0U7iH1b9WN/quH7RdRpjCEil1Bjw5xC9wbbU1lKKDI701tYEXrdU
	NVWx6D05olJprOe+FvL1W2OcaVguJOYSZlI7InFrIDmSR7jay/N2Af3dqCuWu2l/DhdA01RWcm2m1
	a9R/vYdq9FG8s5AvXQmWDbx41zRJup3447Y9zIvHXnt1YYo6VHgEk3Dk6scyml5MoUnk/HJNRd5tE
	htbMa9BHuKmmpIgdbCYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL5YG-0005NQ-CP; Sun, 05 Apr 2020 13:43:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL5Y8-0005LJ-5n; Sun, 05 Apr 2020 13:42:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so4746236wrm.3;
 Sun, 05 Apr 2020 06:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pYq5Ac37hqwzjRVuCDfokJB6SHNuA0PpWl4//5Tmdpo=;
 b=Wqn74vjV4BB8Cecnb8lCadPxosvu/HPRbtAuIdzz1pLSaY1R2XZz0p4+yGOlL2ogHx
 6eOZDPMKSxI03bHUA81tCci+O1O04BylnW6AFu84jQ8oLHkZ2i7WP2kBeVDxi8qzVSpK
 dfMfOL+reJugaHE69yJnniLrUh1Za/ketLTacst79oFS83sH2N7QX7nZmemEKPx3oBPP
 YqRYGHCY70Gy1Htubzgj0OziRXJxIicG4TvU9RPiA6kwKTDenSDUzCRjyCF/xvyrHaid
 NSUV3QLrQHH8n9P+v/yYeMYA+DCbCkN+0hz8Fs4SHLgPxIn17ZrbMr2lSYd4/62t/k5O
 KOtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pYq5Ac37hqwzjRVuCDfokJB6SHNuA0PpWl4//5Tmdpo=;
 b=b/acqTmLVVgVDclok4WRgMZULyQhJrXcyLwwEuKcv8CUi5mNTXV613MWXwn3HZaGYf
 T2UUlnVNJv2avzpkDKENi3O8jmxv8YBHnn2jCiIUoWdz+36Ee7iusY3d8kNaZOZgoNH6
 PPs6i6PhEYaKUeIpHYBoyy25YuVr66rLwl2OoCkhGD8oOk5zYv2E/xvdjoLD79ehL06g
 RG8BPjWKxZB4xJe0SH3ggiQ93aOeXnUSMfmBzgxH1vXpQFYDAXVerliE/w2EjzSLJAQx
 oQDkuSy2p3zSnkl3yZfAGUs8muWa0GNnmcGG8q0WqB83YrVQXNBBKzmcv+RlJUNt57i9
 Gm8A==
X-Gm-Message-State: AGi0PuYw9wWEyqFlZICe6PsRaX5rP9pZZFDrb9N0JCgK3OaX/mQr68vN
 E/f+WjMn7xv9I08B52/Oiwv49ucV
X-Google-Smtp-Source: APiQypKl9GRvIyv858C82f0tD7OhPqj/2TSvRADObcTMzQWNfvqqDXHOVfsIjuHuld/zf6AIDyol8w==
X-Received: by 2002:adf:92a3:: with SMTP id 32mr11438386wrn.254.1586094171257; 
 Sun, 05 Apr 2020 06:42:51 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a7sm19391741wmm.34.2020.04.05.06.42.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Apr 2020 06:42:50 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
To: Jonathan Cameron <jic23@kernel.org>
References: <20200404102730.3295-1-jbx6244@gmail.com>
 <20200405130621.252578e8@archlinux>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c5072f74-695f-0554-ab3f-bd5155c356b2@gmail.com>
Date: Sun, 5 Apr 2020 15:42:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405130621.252578e8@archlinux>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_064256_243473_E311055F 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

Originally I just followed 'rk3288.dtsi' till I saw someone posting a
patch with only 'arm-gic.h' included that made me to have a closer look
at it.
Due to the #ifndef construction it doesn't rise any warnings I think.
Apply the version that fits best.

Kind regards,

Johan Jonker



#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
#define _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
[..]
#endif

Something else...
With 2 examples it gives a warning that 2 identical defines are used.
Yaml doesn't separately compile the examples. Must use the same SoC.

This doesn't work. One example for rk3288 and one for rk3399.
examples:
  - |
    #include <dt-bindings/clock/rk3288-cru.h>
    #include <dt-bindings/interrupt-controller/arm-gic.h>
[..]
  - |
    #include <dt-bindings/clock/rk3399-cru.h>
    #include <dt-bindings/interrupt-controller/arm-gic.h>
[..]

From 'rk3288.dtsi':

> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>
> #include <dt-bindings/gpio/gpio.h>
> #include <dt-bindings/interrupt-controller/irq.h>
> #include <dt-bindings/interrupt-controller/arm-gic.h>
> #include <dt-bindings/pinctrl/rockchip.h>
> #include <dt-bindings/clock/rk3288-cru.h>
> #include <dt-bindings/power/rk3288-power.h>
> #include <dt-bindings/thermal/thermal.h>
> #include <dt-bindings/power/rk3288-power.h>
> #include <dt-bindings/soc/rockchip,boot-mode.h>
>
> / {
> 	#address-cells = <2>;
> 	#size-cells = <2>;
>
> 	compatible = "rockchip,rk3288";

[..]

On 4/5/20 2:06 PM, Jonathan Cameron wrote:
> On Sat,  4 Apr 2020 12:27:28 +0200
> Johan Jonker <jbx6244@gmail.com> wrote:
>
>> Current dts files with 'saradc' nodes are manually verified.
>> In order to automate this process rockchip-saradc.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> Hi Johan
>
> As I'd already applied these I'd have preferred a fix patch and I'm
not actually
> sure it's really worth making the change.  I don't think we have any rules
> about minimal includes or anything in DT bindings.  Was there an error or
> warning as a result of this?
>
> Still as I hadn't pushed out as non rebasing yet I've picked this
version up
> and dropped the previous.
>
> Thanks,
>
> Jonathan
>
>> ---
>> Changes v2:
>>   Add reviewed by
>>   Fix irq.h already included in arm-gic.h
>> ---
>>  .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
>>  .../bindings/iio/adc/rockchip-saradc.yaml          | 78
++++++++++++++++++++++
>>  2 files changed, 78 insertions(+), 37 deletions(-)
>>  delete mode 100644
Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
>>  create mode 100644
Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
>>
>> diff --git
a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
>> deleted file mode 100644
>> index c2c50b598..000000000
>> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt

[..]

>> diff --git
a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
>> new file mode 100644
>> index 000000000..9b9882323
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
>> @@ -0,0 +1,78 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/rockchip-saradc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#

[..]

>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3288-cru.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    saradc: saradc@2006c000 {
>> +      compatible = "rockchip,saradc";
>> +      reg = <0x2006c000 0x100>;
>> +      interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
>> +      clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
>> +      clock-names = "saradc", "apb_pclk";
>> +      resets = <&cru SRST_SARADC>;
>> +      reset-names = "saradc-apb";
>> +      vref-supply = <&vcc18>;
>> +      #io-channel-cells = <1>;
>> +    };
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
