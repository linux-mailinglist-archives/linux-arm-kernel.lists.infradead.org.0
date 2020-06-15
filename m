Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196FE1F9EDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dcUMt7/swvaqPBa0Ya3uAF5LlCcuXhemiUZtEcKW+I=; b=GfQAaTyK9z4JS+
	Qlti7/OAPLtGN93+z8sp61URvU9LEEHzHEdwvmqy7Z7Znw9Q4nvakQGJ3Rwi/30ASZJkktWvWbOF9
	rybggLvCgL2v8O+GjqROFg6rC8Q8RzK48TKT6Xf5+QD1lzm4NsGGlfZjcEXs33U8E4Q2w9ZD1aWHG
	PsScADnKV0CntfuJ7tan/xE6uincTOSi4S6mflg2pw8xFjxACNFcILQMR8BPLuePgDxG4Lu1uHr5C
	DfUEAc8k1nQTTFZz1wQNwi2ktwOW1BNrnK8DlkulHaoDCMjPUWPKh+yN/eO2IYzbi7dtzVr5qiK4k
	odtd0EDdR7N1vlyOrYZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktFu-00056P-E2; Mon, 15 Jun 2020 17:50:46 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktFi-00055l-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:50:35 +0000
Received: by mail-il1-f195.google.com with SMTP id b5so16147638iln.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QqFXAIP35kaKyGPJGm7boR5Cw7I5I86IlWfC5gy7jdY=;
 b=Dt6bfdC1aJpzyLKN4K1J7ex6ZW0rPuOD4d6F5GGJ9/gWeE/u4nAsEr/Ess+ruMb9Q2
 Vmp5bxwjSabvUw0BM5CKpSJvV9ztFSgztZuwF2PdkdEVfSRXvh6flzcuH0Zg34u1CN2h
 MPXVjXEv0538eRUC6HfO/Ie4fLR1DdcvAInWwInt/AZ/uzdMo6vU/wjZrOpYbT+JpIJl
 Z3tKeF5yyH5Jr3bAmX1SrAN37gbFUIwW4ZWYWxNnqqw0DtV96ldOv1Y0ZWV5KaiyWBHY
 F8T8D4lgUbm+LPQzodmuM/Q8GrZ4Eno0YI7jD2o1c7vwndA2FUaPcwJLbWq76eOkWGhq
 qsWQ==
X-Gm-Message-State: AOAM532PZ/dM28F/aJSON2B8yrVhkXum6AjT5dte0nbhQXhpXXTrTEfH
 ER0dduZ76g0fzuumswQOx5F+zjg=
X-Google-Smtp-Source: ABdhPJxCEkYl2U35hyzTpC6rWtsSN7STUGL7WtCf6JOtFuiSQmZkx9jnmtarBm3jhTOq8YQocc2Szw==
X-Received: by 2002:a92:aa13:: with SMTP id j19mr27556195ili.193.1592243434058; 
 Mon, 15 Jun 2020 10:50:34 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b65sm8511986ilg.82.2020.06.15.10.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:50:33 -0700 (PDT)
Received: (nullmailer pid 2031787 invoked by uid 1000);
 Mon, 15 Jun 2020 17:50:32 -0000
Date: Mon, 15 Jun 2020 11:50:32 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv2 2/6] power: supply: gpio-charger: Make gpios optional
Message-ID: <20200615175032.GA2031757@bogus>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605224403.181015-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_105034_790026_ACA5CEFD 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Russell King <linux@armlinux.org.uk>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 06 Jun 2020 00:43:59 +0200, Sebastian Reichel wrote:
> While strongly recommended, not all devices have a gpio to
> detect if the charger is connected. This moves the 'gpios'
> from required to optional section.
> 
> This also modifies error handling for the GPIO a bit: We
> no longer fallback to pdata, if a GPIO is specified using
> GPIO descriptor tables. This is a bit cleaner and does
> not have any real impact: There are only two mainline pdata
> users (arm/mach-sa1100/collie.c, arm/mach-pxa/tosa.c) and
> none of them specify the GPIO via gpiod descriptor tables.
> Once both have been converted the driver's support for
> specifying GPIOs numbers in pdata will be dropped.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/power/supply/gpio-charger.yaml   |  7 +++-
>  drivers/power/supply/gpio-charger.c           | 38 ++++++++++++-------
>  2 files changed, 31 insertions(+), 14 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
