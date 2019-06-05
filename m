Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267D0363BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DunzjqFLWoDXfv5bwNuiSLm4m1QEB9gc8BqE9CxqE58=; b=T/+Z7k0x2xY+pp
	RMAxP4EVMreckbzu7BJHLGP2z1IllGhb4weBj6x6d4fxHDMIbbA0lHP3SBsysw9YUM2Mm7pKTZM/d
	4XfhZrnFOQS4boQAXkI/2IvMPo0y83xxOrU0zJcZSbxuDHrnfnaHry3lTzyMP7sgzef6aDqLM6H3V
	xvheROqXhITjtY5hlPcyXGSWVdnH7reEeGztlPx89YHIJksl+106fk5OdEuMK9fH+OSa4npdH6Dv4
	uWIcxEl76YRKg/3jwqw37wVbAFz4K/sVgWQ+TXh6m3LmDTU0FRnEjmAdxhXlbQAnVVxUP7lOPhqV6
	4hlkZgN4cz9hiUZd+dYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbEv-0004qe-HK; Wed, 05 Jun 2019 19:06:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbEo-0004qK-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:06:19 +0000
Received: by mail-pg1-x541.google.com with SMTP id e6so11654502pgd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 12:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=M6BGDN2AyVfgjLFK/UIuQsI5QieCC/mU2xEW0eQBY6c=;
 b=NGNQhr7s+dSXGA0agT49GCRMN5IBD59uXz3hQDX1aXq4lMe5N67yu52ciH/CgRwHUP
 oaU5ZJ03dVccEINZLKm3W1zobHhPMqR//HHdjiAQd1g8hmh0CtDIW5Y1pTk1IbY2IaO1
 B/VPli8Q2TMnY+VKcvSXoK9/vA/peszAGu4EYmGzokB+0Rl+59FpTDynelw9pT15L2jK
 5YCE0Ph6aJcwVoI4t3kz8ujggXCUBpUiYs69ebmhnQtTVw6y9DWv7/bp2SoKFq5ORurU
 jdB4W+mLQDd8lH8tQIlNHznVWVhnupC3IELyc2LldxJmHthhy8vWRQMMGjYpHQ8rWlau
 Y+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M6BGDN2AyVfgjLFK/UIuQsI5QieCC/mU2xEW0eQBY6c=;
 b=L3/gNeI9V9TQhGsbiEe7hwRk8/nfqhSfGgdY3+pnNORx9+0GJmPZlayGUDtDrkavBg
 cRSJlZJ8LIhZx3HQ4yX2ACLvKRmdJAdUSZ7PqRa4fZzSuBgt+Tzd8BdPqJkmyGrfky/P
 luYrBWd7y6gCsNJ5z4y+8tbigm/Jo4ZzhOrsQkNt6rwooKFR2WH9zH55STk+rA0NEhc2
 eo0mM+K1Sc8M0V7pCe0A0GpynDVdQnZo0yMS7bJ8wiHWeRjfPXX1BsPXRk4TWTbdWHoB
 qrQ+MbFcjfCS9/2AYTmtuRXG2VGOvuFWJyHKJZoyFfUCcaKUVJHCcGssrkfYBJXI6lrr
 i4xw==
X-Gm-Message-State: APjAAAUa5OM8ud8nCa8U05czzY597ZVYAipa2ZiCLtFdbuNFrhhCdUgP
 AKm5qWg9w9fX3Q0BYzR84Qhdvg==
X-Google-Smtp-Source: APXvYqzlT/XPvgcF1v+ffkfX/JPoo7GvSAjnePPEFFPhNx56Xy63K3pCAsqBkSIncUTmupa3p3kRtw==
X-Received: by 2002:a17:90a:9308:: with SMTP id
 p8mr44957549pjo.12.1559761577409; 
 Wed, 05 Jun 2019 12:06:17 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q4sm19489811pgb.39.2019.06.05.12.06.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 12:06:16 -0700 (PDT)
Date: Wed, 5 Jun 2019 12:06:14 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190605190614.GI4814@minitux>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-4-lee.jones@linaro.org>
 <20190605061721.GK22737@tuxbook-pro> <20190605073133.GL4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605073133.GL4797@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_120618_210155_BF415184 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 00:31 PDT 2019, Lee Jones wrote:

> On Tue, 04 Jun 2019, Bjorn Andersson wrote:
> 
> > On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:
> > 
> > > This patch provides basic support for booting with ACPI instead
> > > of the currently supported Device Tree.  When doing so there are a
> > > couple of differences which we need to taken into consideration.
> > > 
> > > Firstly, the SDM850 ACPI tables omit information pertaining to the
> > > 4 reserved GPIOs on the platform.  If Linux attempts to touch/
> > > initialise any of these lines, the firmware will restart the
> > > platform.
> > > 
> > > Secondly, when booting with ACPI, it is expected that the firmware
> > > will set-up things like; Regulators, Clocks, Pin Functions, etc in
> > > their ideal configuration.  Thus, the possible Pin Functions
> > > available to this platform are not advertised when providing the
> > > higher GPIOD/Pinctrl APIs with pin information.
> > > 
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > ---
> > >  drivers/pinctrl/qcom/Kconfig          |  2 +-
> > >  drivers/pinctrl/qcom/pinctrl-sdm845.c | 35 ++++++++++++++++++++++++++-
> > >  2 files changed, 35 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
> > > index 2e66ab72c10b..aafbe932424f 100644
> > > --- a/drivers/pinctrl/qcom/Kconfig
> > > +++ b/drivers/pinctrl/qcom/Kconfig
> > > @@ -168,7 +168,7 @@ config PINCTRL_SDM660
> > >  
> > >  config PINCTRL_SDM845
> > >         tristate "Qualcomm Technologies Inc SDM845 pin controller driver"
> > > -       depends on GPIOLIB && OF
> > > +       depends on GPIOLIB && (OF || ACPI)
> > >         select PINCTRL_MSM
> > >         help
> > >           This is the pinctrl, pinmux, pinconf and gpiolib driver for the
> > > diff --git a/drivers/pinctrl/qcom/pinctrl-sdm845.c b/drivers/pinctrl/qcom/pinctrl-sdm845.c
> > > index c97f20fca5fd..7188bee3cf3e 100644
> > > --- a/drivers/pinctrl/qcom/pinctrl-sdm845.c
> > > +++ b/drivers/pinctrl/qcom/pinctrl-sdm845.c
> > > @@ -3,6 +3,7 @@
> > >   * Copyright (c) 2016-2018, The Linux Foundation. All rights reserved.
> > >   */
> > >  
> > > +#include <linux/acpi.h>
> > >  #include <linux/module.h>
> > >  #include <linux/of.h>
> > >  #include <linux/platform_device.h>
> > > @@ -1277,6 +1278,10 @@ static const struct msm_pingroup sdm845_groups[] = {
> > >  	UFS_RESET(ufs_reset, 0x99f000),
> > >  };
> > >  
> > > +static const int sdm845_acpi_reserved_gpios[] = {
> > > +	0, 1, 2, 3, 81, 82, 83, 84, -1
> > > +};
> > > +
> > >  static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
> > >  	.pins = sdm845_pins,
> > >  	.npins = ARRAY_SIZE(sdm845_pins),
> > > @@ -1284,14 +1289,41 @@ static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
> > >  	.nfunctions = ARRAY_SIZE(sdm845_functions),
> > >  	.groups = sdm845_groups,
> > >  	.ngroups = ARRAY_SIZE(sdm845_groups),
> > > +	.reserved_gpios = sdm845_acpi_reserved_gpios,
> > 
> > The reason why put these in DT is because the list is board/firmware
> > dependent. E.g. the firmware on db845c does not support the peripherals
> > that sits on these 8 pins and as such these are not reserved.
> 
> If we need to be more particular about which platform(s) this affects,
> we could add matching based on their differences (some ACPI HID or F/W
> version/descriptor, etc) as and when we enable them for booting with
> ACPI.
> 

You're making an assumption that all SDM845 (the platform) devices using
ACPI will have this list of GPIOs reserved for secure firmware to use,
this is questionable but I don't have any better suggestion.

But you do this by adding a new struct msm_pinctrl_soc_data
sdm845_acpi_pinctrl, specifically for the ACPI case. And then, on the
line I object to here, you add this list as the list of reserved GPIOs
for the DT case as well.

> > But given that the two structs looks identical now, did you perhaps not
> > intend to add.reserved_gpios for the non-ACPI case?
> 
> Given your example above, I think it's best that we let the
> configuration tables advertise these in the first instance.  I only
> add them here because it is not possible to obtain them from
> elsewhere.
> 

Then add it for ACPI only - which I still presume you intended to do by
adding sdm845_acpi_pinctrl (which is now identical to sdm845_pinctrl).

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
