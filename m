Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91876A7142
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoOn41+4pYnnlQnlLpydluNDT7GyS4ZNsQR3+K1bIck=; b=UKccJoAGpZnRzl
	U/6jU9T56Asci/0oyk61XaGQfdSm2HcifS+eWFJUhyxL/KWuyWxsjBjgquX74afgDXA7POpWsgQJN
	RZZxfa7w0xo1+g/z5ZjajGij6gCfBduhHagFRnT2jEluT6n88QPJa6MfKHlGpde4yFlvDpJAzeBOP
	zkeBep0B947gkXoKA5m6KmzrmF36OMbYXLr7sp+2biNzCgypqszw1TjZ97bOYAdQ2x+im+gwPwcgl
	ejeXXsH9g6V5ItVGrSzd8IjO9MNYN2c5L/jc8Jc5ENiNeg9P8mf7evYbm0J4dgWeZIpGYKRRNI+7K
	CVoJHWuW9/rSW5Bj0cXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CBQ-0007Sf-Gv; Tue, 03 Sep 2019 17:01:32 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5CAn-0007SG-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:00:54 +0000
Received: by mail-qk1-f194.google.com with SMTP id m2so16617584qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 10:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SQt93WiAzcB/beVzXhpSVMkMAdNqO95VkFmNzj2iDRE=;
 b=TPH9UNNA0kqdmCh+oSBi19kT8DbUYlVgFHbz3lYNEQDFKfJY9MhTo/im2ZlB82HtYX
 ZLU2ojrihaiWIFLazHIsGHccJ0xKEWK+KxQLBvwZn82zzkARdsiXqGgKs2oqV06sUqGL
 6bq/Us6zdwSQCkeCnWSN6h4f/86+oZ40OOd+fZsfDuYWMqB6xFsJ33JGbEsODR4dCRos
 INFWI0OiUuIz6yeJYFl7iJyCpeo5FHn4LYzHhXhyYb5KMxL4UC2zyniWA7SHiOobbEEv
 iWUoVFU65eRJxROD8SLnrsDs6p2FHafzh4++y/5o+cK0vNQW1SCMHFmAn70W9hggMX15
 xGhg==
X-Gm-Message-State: APjAAAUmHcVM2Uma9bVqAsuHzZcCGLGSW68dE5AexmEj877euhDMA0cV
 CFxPn0p9JQ2FkqsplHernUorG8PxPTjxjwyShnY=
X-Google-Smtp-Source: APXvYqzsIUKu1d8uhj21aMRbC//3cQjY1P08fo7uIwsQMmTBFD2KIEwOjYiFArw2zywm12J2UKMVMUALgBqN0mfJIlM=
X-Received: by 2002:a37:4051:: with SMTP id n78mr33537212qka.138.1567530052439; 
 Tue, 03 Sep 2019 10:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <20190825153237.28829-7-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-7-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 19:00:36 +0200
Message-ID: <CAK8P3a0hFep+t1yJZA=KhrkJx-nGDqH4cmv7-vEWm7Jpiqszzw@mail.gmail.com>
Subject: Re: [GIT PULL 7/7] i.MX defconfig update for 5.4
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_100053_372632_5160F2D7 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 5:33 PM Shawn Guo <shawnguo@kernel.org> wrote:
> ----------------------------------------------------------------
> i.MX defconfig update for 5.4:
>  - Enable pinctrl and clock driver support for i.MX8MN SoC.
>  - Enable SDMA support for i.MX8MQ and i.MX8MM SoC, including
>    FW_LOADER_USER_HELPER and FW_LOADER_USER_HELPER_FALLBACK to support
>    SDMA firmware loading via udev.
>  - Enable module build of i.MX8 DDR PMU driver and ETNAVIV GPU driver.
>  - Enable module build of OV5645 camera driver in imx_v6_v7_defconfig.

Pulled int arm/defconfig, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
