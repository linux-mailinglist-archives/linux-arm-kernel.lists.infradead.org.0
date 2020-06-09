Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481051F40E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqnP+HZdWZ4KSp/1OHuS6juVa25ArPrdRNm94zWZJzY=; b=u9yQvfVvSpQXha
	kmq0dQ7nXbHF3YVRfmsbMRfvbQ34hrCnBrYqGoQsGOTf9YIVpSrQvYmspTWFX+DzI+H963oB+BYPS
	sbAn7dai8I/nr6ux/gwf6Dem9Dl/KV3NriWRKXd/EkCWjh1Js5bBRUej71LhgdcxLEm/lUgn049Dg
	zB21dz0ts/A4fNHJc0Yu7Q7KKyDRz/CKDd+xnZEc5k/NtFujQcax+eMEW9Kf5TNyYkCZ3vuupRY+r
	ost0uF8AFjGLlw+ewaPnD8j+xRnYid7HkY27OMUjFXSokuTn1VDozq1c/swCGZRkR0K6lWMPhTZWh
	P0mJM6FbwE8xvrevNMrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih8r-0004BU-BU; Tue, 09 Jun 2020 16:30:25 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih74-0002qt-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 16:28:36 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so23481841ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 09:28:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A6vd48ocHYfhIgGf9VmwdBfWMzr2z9+KHgzkdfZG/Pw=;
 b=pfQT/jqqEfQ6Zed1bXsyuQDo7xBbB3/lQ5PoKkuXkXs3Oi5KsM2yPO61Q4Bm4k100E
 EcmY5ST/qclOAIn6yUaSKC5Sk9l9DOPtBP83w0mE6hnbMeNKEOAlmRNZMUA09Cwa44F1
 ybVrWGPht+nKUnKBi27fNqF3eyJU87eYYe1M8N3dyL1LwpclDxmmSIECpO37i8E2VWZQ
 s+5tCaq9K2XHas937DyesJamyZ97QDWLS+MiqUbh4wscQm0P+XdYHkAIVviEfWYEAMor
 ts8ePl0IydWdEv5KkLju0j/G+wRt+IZPrMefn+zPbSaq8fsidAzFCZ1a1ZWi4+Q9vYUI
 p5hA==
X-Gm-Message-State: AOAM533Ec36fBA5AegG4U2bIqh2b4iv9jr1cGn64yGgNOWRDOs6AFn1O
 +97ppK9gnfl+3ArPs68yUg==
X-Google-Smtp-Source: ABdhPJxppbDKoA41o6uRyry3FgAKOA+jukh4Ub5WxT2GMgvWiM/pMXyEGjvEw/XePOisx3B4ZJrI5Q==
X-Received: by 2002:a05:6638:1483:: with SMTP id
 j3mr27698460jak.65.1591720112867; 
 Tue, 09 Jun 2020 09:28:32 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id y13sm7449594iob.51.2020.06.09.09.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 09:28:32 -0700 (PDT)
Received: (nullmailer pid 1020807 invoked by uid 1000);
 Tue, 09 Jun 2020 16:28:30 -0000
Date: Tue, 9 Jun 2020 10:28:30 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 01/11] dt-bindings: mfd: Add bindings for sl28cpld
Message-ID: <20200609162830.GA1019634@bogus>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-2-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604211039.12689-2-michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092834_876229_1DC35101 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 23:10:29 +0200, Michael Walle wrote:
> Add a device tree bindings for the board management controller found on
> the Kontron SMARC-sAL28 board.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../bindings/gpio/kontron,sl28cpld-gpio.yaml  |  54 +++++++
>  .../hwmon/kontron,sl28cpld-hwmon.yaml         |  27 ++++
>  .../kontron,sl28cpld-intc.yaml                |  54 +++++++
>  .../bindings/mfd/kontron,sl28cpld.yaml        | 153 ++++++++++++++++++
>  .../bindings/pwm/kontron,sl28cpld-pwm.yaml    |  35 ++++
>  .../watchdog/kontron,sl28cpld-wdt.yaml        |  35 ++++
>  6 files changed, 358 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/kontron,sl28cpld-gpio.yaml
>  create mode 100644 Documentation/devicetree/bindings/hwmon/kontron,sl28cpld-hwmon.yaml
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/kontron,sl28cpld-intc.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
>  create mode 100644 Documentation/devicetree/bindings/pwm/kontron,sl28cpld-pwm.yaml
>  create mode 100644 Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.example.dt.yaml: sl28cpld@4a: 'gpio@1a', 'gpio@1b', 'hwmon@b', 'interrupt-controller@1c', 'pwm@c', 'pwm@e' do not match any of the regexes: '^gpio(@[0-9]+)?$', '^hwmon(@[0-9]+)?$', '^interrupt-controller(@[0-9]+)?$', '^pwm(@[0-9]+)?$', '^watchdog(@[0-9]+)?$', 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1303780

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
