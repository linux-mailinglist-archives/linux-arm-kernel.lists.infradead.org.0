Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25034DD5E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 03:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zNE0+cNEM3cOyAzV+jQCMiVg9iMqpSo2lUd5UXeBnpA=; b=VVOLpILNTUe9ZTcmVzzPlUaFh
	dYGmTmQqetPSaQnQoqQulHdMiIhxWb9L8G8i0Ncs8xR78uo6zizRQalRCYfxyzIRfJTUi5uXlx6v/
	k/pSWbsGeMQQY32rw4rIKQvF6D5pAPwmtaEEDJLHGam32OkmELVoDL5p+xAUPhSxrBdN9X1t4rzU7
	vdJB0urJ6i+kskVOzNhSV3WZY+pbqikaXeJ3RF8e0AlYrkvHoEciT9ugfqckCnty3nELZV0loZTBE
	avrn+JB/2DTfE/t45H1aRVicyn+sXaIR2NQGLygGMGcSp/uNj5G075YlN1HlMOVaEKzDTE8VKYu93
	N60poftPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLd9P-0006aL-3u; Sat, 19 Oct 2019 01:03:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLd95-0006Px-R0; Sat, 19 Oct 2019 01:03:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id i76so4267764pgc.0;
 Fri, 18 Oct 2019 18:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O2vDP5dhX90+NEeZF4xwy/6nZiyy5Chs2FfT8NPVR7E=;
 b=ZFvZMeNde3XSQbCX5z+A8LC9qIkMj77Zzi+EgKADvigb12CI/Atx5eiO423UuVNTZ4
 FMRj0TTh5vYpzBJFf3onEv/NHctJbLDMvw72Wm/UAs/vKZecv2U7aiKsK5O98DMCY3LN
 6P8SWWQFoi0WW7dNj9CrT+uf0KK0LjF+3+/cSfQNkEYtvDykIjEQuh6qD2TVjSbIXoLH
 0NoyZAo/m7sgpGHXCa5h6dWvnJlDsRbI4TfaO4uSF0QgVAzYFE5KMcLQFbvw7OGqrAEI
 4v0uNLLBBCk7L6lzLHiVmoKSbmmeLfyP8LnUo6lczAWEEIGT7byS+WfZ7fYM1pCa1V6t
 b94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O2vDP5dhX90+NEeZF4xwy/6nZiyy5Chs2FfT8NPVR7E=;
 b=HF1Ra2syiqfDCNxPN4Da7d3cBm0ShD8b9g/mQBbrE/ek6t9O9M0lWdxqZyHwCaPe3q
 dQlT8YkaIrMF2d/bnFHCmIamjjzpxDXuv6WkF74jl81wirAZCkv426y+tn+7zc3eiWuL
 vL/R0EV1Xghu+56FWr/RUvkPv41sYIJOu6kwhG06aKFieLj3+Uu+HlFZ08Ol15WuBv7q
 e4hsMmXW2oIxYJ2LE5xDFwa2SXz1CJ1P3bb98wRCR97Vb1i+mpeSW12Cjm6hZFIq7k2S
 shUCsUqR83ujxe0rrHAEOBctyMVY0B2/mF8A/FIAHwecUG+Lm+hsWxx5XQK/c3abgatV
 u5tg==
X-Gm-Message-State: APjAAAV4jr6vgy8cvb6ffdyU7HOBy3PB01qqE/hIDmoEDrvQa6zxaseW
 AUTH1STs4B5uY29cpL/zz8J3eASI
X-Google-Smtp-Source: APXvYqyfRaTHhsimbDLjYp5YZtM7EeE6UsAbtJraEIbyzdK0a87RqNrOa51iK+zxPIPUiG8is3MEFw==
X-Received: by 2002:a63:f5a:: with SMTP id 26mr13333625pgp.63.1571446981132;
 Fri, 18 Oct 2019 18:03:01 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 h14sm7304535pfo.15.2019.10.18.18.02.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 18:03:00 -0700 (PDT)
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
To: Arnd Bergmann <arnd@arndb.de>, Daniel Mack <daniel@zonque.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
References: <20191018154052.1276506-1-arnd@arndb.de>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <803f6fa5-b929-007c-5302-4a2d5042241c@roeck-us.net>
Date: Fri, 18 Oct 2019 18:02:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_180303_899363_69F8DDD3 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-rtc@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-leds@vger.kernel.org, linux-input@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/18/19 8:40 AM, Arnd Bergmann wrote:
> 
> Hi PXA maintainers,
> 
> I'm in the process of getting the old ARM platforms to all build
> in a single kernel. The largest part of that work is changing all
> the device drivers to no longer require mach/*.h header files.
> 
> This series does it for arch/pxa/.
> 
> As with the omap1 and s3c24xx series I sent before, I don't
> expect this all to be correct in the first version, though
> a lot of the patches are fairly simple and I did exhaustive
> compile-time testing on them.
> 
> Please test if you have the hardware, or review!
> 

I don't get very far.

$ make-arm pxa_defconfig
arch/arm/Kconfig:677: can't open file "arch/arm/plat-pxa/Kconfig"
scripts/kconfig/Makefile:90: recipe for target 'pxa_defconfig' failed
make[1]: *** [pxa_defconfig] Error 1
Makefile:567: recipe for target 'pxa_defconfig' failed
make: *** [pxa_defconfig] Error 2
$ git describe
v5.4-rc3-52-gfcc4181cd625

Also:

$ git grep plat-pxa
Documentation/arm/marvel.rst:   arch/arm/plat-pxa
Documentation/arm/marvel.rst:   arch/arm/plat-pxa
Documentation/arm/marvel.rst:   directory. The plat-pxa/ would therefore disappear.
arch/arm/Kconfig:source "arch/arm/plat-pxa/Kconfig"
arch/arm/mach-mmp/Makefile:ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-pxa/include
drivers/gpio/gpio-pxa.c: *  linux/arch/arm/plat-pxa/gpio.c
drivers/soc/pxa/mfp.c: * linux/arch/arm/plat-pxa/mfp.c

Did I pick the wrong tree ?

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
