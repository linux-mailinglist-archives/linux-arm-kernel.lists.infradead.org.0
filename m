Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1EB1F41F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j31ZbtGkUdVAWX+5HBItHYLaD8cRsCkv7Jv9wYj3Ag=; b=onLtMiwWKzhjS/
	qRgqj8uFbaa+6ied51r5nbgautgIAynMxjzQUMYxPU2k1tV3tRayOlTnJeuIQu/biikfFeETT5G7Z
	khhVwZGrFYQOFx3wq0VqUQLa79QL5IVRaOyGVeGDcFVRDdD3uOQmPC3GB4slZ3UTyBklbmIbQrBB2
	ij8vVBcJ0z3giFz2BL0G3LB2swZUXhDqbu47eWdaHaGDmfZkHXTeFu0j0qaFOxBW8GODyRCQzKuWq
	m4m3Sd6kNQ+NO3QwO99Ut72u7sBg9dd3Aox/Q0kvwSTfXkju1cuOfB7291uOzDC18hWess8TPY6eL
	4/gefOeUDrkNZ7wpPGaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihqV-00023F-HC; Tue, 09 Jun 2020 17:15:31 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihqN-00022l-6N
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:15:24 +0000
Received: by mail-io1-f68.google.com with SMTP id i25so9005338iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 10:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JGLI/jshAv4UOtJl5rWJiq7REK+PfEQZi+2RrLn3IFA=;
 b=nk9KhM1aSEHpRzJXTgvHW/fkrgpkMSTSIR7Bns2FYC616DMiK4fkwfbAJrVCiZirpM
 tbF3GInJobBssrdViXoL8AnzPusDMqomwX6z13RJfM34YUHCM22rNDuEKinMbbJ7fo+R
 SW0KG7TyO9sK2arsDIAfzihRiKiXlngmPUqp1QIujMtKYQyhbfbHvBXCCbkZ8Eq/ih8c
 eXmMaT/AtTgVMGz2QXM4Uo6/4ETia72EmwYA/1H3sPvwXaQpu/HmaTDssrHIbKCz9otf
 UWuK8mVaSOKjecj2CIp81JhDT3AdkmaGk3iHuwBX/3idV4USOj7W8G9LXhLi3A9yezGU
 9X1w==
X-Gm-Message-State: AOAM533IsyVWtESzKbS+8lfSlPCm71298g7WYQiGxF0AJzs36s08NcVR
 AvBCLmZcY+87MYNaNwahlQ==
X-Google-Smtp-Source: ABdhPJyom2HW81zaEPBo0bO0otJQ7le36pAHDKSbZIdASMosYcxXzc1o/KabAiMefhklBHue5cmzqQ==
X-Received: by 2002:a5d:8e14:: with SMTP id e20mr28764204iod.156.1591722922294; 
 Tue, 09 Jun 2020 10:15:22 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id k5sm9534836ili.80.2020.06.09.10.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 10:15:21 -0700 (PDT)
Received: (nullmailer pid 1093153 invoked by uid 1000);
 Tue, 09 Jun 2020 17:15:20 -0000
Date: Tue, 9 Jun 2020 11:15:20 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609171520.GC1019634@bogus>
References: <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609144201.GK4583@sirena.org.uk>
 <a2bae71634fe288f067d5e92090b7561@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2bae71634fe288f067d5e92090b7561@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_101523_234616_1DD6B84F 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 05:01:17PM +0200, Michael Walle wrote:
> Am 2020-06-09 16:42, schrieb Mark Brown:
> > On Tue, Jun 09, 2020 at 04:38:31PM +0200, Michael Walle wrote:
> > 
> > >   mfd-device@10 {
> > >     compatible = "simple-regmap", "simple-mfd";
> > >     reg = <10>;
> > >     regmap,reg-bits = <8>;
> > >     regmap,val-bits = <8>;
> > >     sub-device@0 {
> > >       compatible = "vendor,sub-device0";
> > >       reg = <0>;
> > >     };
> > 
> > A DT binding like this is not a good idea, encoding the details of the
> > register map into the DT binding makes it an ABI which is begging for
> > trouble.  I'd also suggest that any device using a generic driver like
> > this should have a specific compatible string for the device so we can
> > go back and add quirks later if we need them.
> 
> Like in the spidev case, yes. But OTOH if I _just_ encode the parameters
> for the regmap a MFD, Lee don't agree because its just a shim. So either
> way I seem to be stuck here.
> 
> Where should I put the code to create an i2c driver, init a regmap and
> populate its childen?

Find another driver doing this already and rename it 'simple-mfd' (no 
relation to the DT binding) and add your compatible string to it. 
'Generic' or 'simple' drivers don't require generic/simple DT bindings.

Or extend the existing syscon driver to look up the bus_type and create 
the regmap based on the bus type?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
