Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E348E86C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwp8yKjLeTRE6deT40HFgNgAw8eyVAGXLLCpGarOhIY=; b=Io3/kAt+KLj3Zh
	QFcOlPVcxOGBR+WAIKkqEPaaZc6nDI8jo535MqxSHgvxxaNPyRsuogquaVXDDI/YycUOmADao6+DO
	vmZYvvI/pgGxr3yzkcgNNZCEiyMNTDbLO/lVTf/NosCT5MqqY5v93u6eU2KmQQn2pdgHenOFvs1ws
	/Ar50mSEg8FMqfBc4pOH5igdmpBgv8yX90/b9SVJOXU5axrCGA1rzexjqe5lHE5IY6EkXJIc9/sTZ
	VFCmCoB5/U9VOyEoKBALVmCLpccri88jN3wJdeVbmMSfAoaKyqJtLGlQE2KnDDMAbuzMQJisilRrh
	tLtFd8WF6bWtCz1IgIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9mx-0004VR-Qd; Mon, 29 Apr 2019 17:09:59 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9ku-0002q5-4W
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id t10so9032535ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YSLhg6H0pIEIznYaFCuCBFHKdnVnFqNAMh0GNwbgISg=;
 b=VzjORjCkFdiOobLGhdofobwnJ15ToGzFh9dFZvdQ4QwpBDdTE1iId7YQz6Uztw+I0Z
 GEF6vpRo/XG5ojOBt140eqiNpkBOvAdQDpixwjr8gNsPiLPGwhVPyeht7Rxaoft/NUDa
 s6VJuurV1Vv+XzC1yHvn6qKvwDInf9Bxqq3DFONMbjwMGqsktEVYXDT5uJZz2nbFym9K
 8YNgl8RsSh5FTeuSYAhlGHTEl9JVy+ELa1+CZ9RMdoyTkoIXxgTlMZ/PZoP8Xla7fOHB
 yqM/fzjogPhkqwOv5StmAbM83STsahSang58POSx/yo1ACOkSBppN1Q+T6IcFgxdAYZw
 DGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YSLhg6H0pIEIznYaFCuCBFHKdnVnFqNAMh0GNwbgISg=;
 b=Bla53JtTYS3g8C6J4cw+wqAxMok0LF7g01unVjz7QDObt2dJdztwv1fIXK17prODpW
 CfJ4QRTqgm5pC4peLqch+sOJbJ21l4bwoIvdOZsTgK08m+C9A9B+FYvKbzWPpuW7r1i3
 MK9vFyOzs2/jA1+mlIX1dM/zRKpquseKyq3M+Ne7QES0L1IMVzBrkt4zyJ525StoNKCS
 VEyqdj+xO8HWVrq71Heb2dSvjDxLXhHOMBTYyoXffqD1BTjXyFeJ+t9k0O53vaCCaO3i
 KCAlDvkkybWRpA4yzeUYDrOwo7FUKy0evgJHjKzeIYN871lEjb1OB2TaY0TusJQK8M1w
 ElfA==
X-Gm-Message-State: APjAAAWDa6KYWbB3ZKR2TYI4joxq6M0oL/UG6gArU2j4ZMCoZC95s1vJ
 rarQjradIQnPYG98CoMtdeDEMg==
X-Google-Smtp-Source: APXvYqwz+hUSp4DCRK/NDPBJZOTC/yf3/ReP6EtOqz2/J10Dvgdq6oalN6ho+rY9/xkTRNx/cutsQg==
X-Received: by 2002:a2e:984d:: with SMTP id e13mr11491219ljj.61.1556557670390; 
 Mon, 29 Apr 2019 10:07:50 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d25sm3497098lja.91.2019.04.29.10.07.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:48 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:36:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Patrick Venture <venture@google.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
Message-ID: <20190429163610.vhnv7z6myco7e4i5@localhost>
References: <20190422175419.189895-1-venture@google.com>
 <CAO=notxpGXLBPwsHAJdt8CwQMdNcCE=EeFymgxez_goaqnGoHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO=notxpGXLBPwsHAJdt8CwQMdNcCE=EeFymgxez_goaqnGoHQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100752_336606_95E6BFE0 
X-CRM114-Status: GOOD (  27.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 12:24:28PM -0700, Patrick Venture wrote:
> On Mon, Apr 22, 2019 at 10:54 AM Patrick Venture <venture@google.com> wrote:
> >
> > Create a SoC folder for the ASPEED parts and place the misc drivers
> > currently present into this folder.  These drivers are not generic part
> > drivers, but rather only apply to the ASPEED SoCs.
> >
> > Signed-off-by: Patrick Venture <venture@google.com>
> > ---
> > v2:
> >  Added configuration option for ASPEED to soc/Makefile
> > ---
> >  drivers/misc/Kconfig                          | 16 ----------------
> >  drivers/misc/Makefile                         |  2 --
> >  drivers/soc/Kconfig                           |  1 +
> >  drivers/soc/Makefile                          |  1 +
> >  drivers/soc/aspeed/Kconfig                    | 19 +++++++++++++++++++
> >  drivers/soc/aspeed/Makefile                   |  2 ++
> >  .../{misc => soc/aspeed}/aspeed-lpc-ctrl.c    |  0
> >  .../{misc => soc/aspeed}/aspeed-lpc-snoop.c   |  0
> >  8 files changed, 23 insertions(+), 18 deletions(-)
> >  create mode 100644 drivers/soc/aspeed/Kconfig
> >  create mode 100644 drivers/soc/aspeed/Makefile
> >  rename drivers/{misc => soc/aspeed}/aspeed-lpc-ctrl.c (100%)
> >  rename drivers/{misc => soc/aspeed}/aspeed-lpc-snoop.c (100%)
> >
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 42ab8ec92a04..b80cb6af0cb4 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -496,22 +496,6 @@ config VEXPRESS_SYSCFG
> >           bus. System Configuration interface is one of the possible means
> >           of generating transactions on this bus.
> >
> > -config ASPEED_LPC_CTRL
> > -       depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
> > -       tristate "Aspeed ast2400/2500 HOST LPC to BMC bridge control"
> > -       ---help---
> > -         Control Aspeed ast2400/2500 HOST LPC to BMC mappings through
> > -         ioctl()s, the driver also provides a read/write interface to a BMC ram
> > -         region where the host LPC read/write region can be buffered.
> > -
> > -config ASPEED_LPC_SNOOP
> > -       tristate "Aspeed ast2500 HOST LPC snoop support"
> > -       depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
> > -       help
> > -         Provides a driver to control the LPC snoop interface which
> > -         allows the BMC to listen on and save the data written by
> > -         the host to an arbitrary LPC I/O port.
> > -
> >  config PCI_ENDPOINT_TEST
> >         depends on PCI
> >         select CRC32
> > diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> > index d5b7d3404dc7..b9affcdaa3d6 100644
> > --- a/drivers/misc/Makefile
> > +++ b/drivers/misc/Makefile
> > @@ -54,8 +54,6 @@ obj-$(CONFIG_GENWQE)          += genwqe/
> >  obj-$(CONFIG_ECHO)             += echo/
> >  obj-$(CONFIG_VEXPRESS_SYSCFG)  += vexpress-syscfg.o
> >  obj-$(CONFIG_CXL_BASE)         += cxl/
> > -obj-$(CONFIG_ASPEED_LPC_CTRL)  += aspeed-lpc-ctrl.o
> > -obj-$(CONFIG_ASPEED_LPC_SNOOP) += aspeed-lpc-snoop.o
> >  obj-$(CONFIG_PCI_ENDPOINT_TEST)        += pci_endpoint_test.o
> >  obj-$(CONFIG_OCXL)             += ocxl/
> >  obj-y                          += cardreader/
> > diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> > index c07b4a85253f..b750a88547c7 100644
> > --- a/drivers/soc/Kconfig
> > +++ b/drivers/soc/Kconfig
> > @@ -2,6 +2,7 @@ menu "SOC (System On Chip) specific Drivers"
> >
> >  source "drivers/soc/actions/Kconfig"
> >  source "drivers/soc/amlogic/Kconfig"
> > +source "drivers/soc/aspeed/Kconfig"
> >  source "drivers/soc/atmel/Kconfig"
> >  source "drivers/soc/bcm/Kconfig"
> >  source "drivers/soc/fsl/Kconfig"
> > diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> > index 90b686e586c6..814128fe479f 100644
> > --- a/drivers/soc/Makefile
> > +++ b/drivers/soc/Makefile
> > @@ -4,6 +4,7 @@
> >  #
> >
> >  obj-$(CONFIG_ARCH_ACTIONS)     += actions/
> > +obj-$(CONFIG_ARCH_ASPEED)      += aspeed/
> >  obj-$(CONFIG_ARCH_AT91)                += atmel/
> >  obj-y                          += bcm/
> >  obj-$(CONFIG_ARCH_DOVE)                += dove/
> > diff --git a/drivers/soc/aspeed/Kconfig b/drivers/soc/aspeed/Kconfig
> > new file mode 100644
> > index 000000000000..457282cd1da5
> > --- /dev/null
> > +++ b/drivers/soc/aspeed/Kconfig
> > @@ -0,0 +1,19 @@
> > +menu "Aspeed SoC drivers"
> > +
> > +config ASPEED_LPC_CTRL
> > +       depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
> > +       tristate "Aspeed ast2400/2500 HOST LPC to BMC bridge control"
> > +       ---help---
> > +         Control Aspeed ast2400/2500 HOST LPC to BMC mappings through
> > +         ioctl()s, the driver also provides a read/write interface to a BMC ram
> > +         region where the host LPC read/write region can be buffered.
> > +
> > +config ASPEED_LPC_SNOOP
> > +       tristate "Aspeed ast2500 HOST LPC snoop support"
> > +       depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
> > +       help
> > +         Provides a driver to control the LPC snoop interface which
> > +         allows the BMC to listen on and save the data written by
> > +         the host to an arbitrary LPC I/O port.
> > +
> > +
> > diff --git a/drivers/soc/aspeed/Makefile b/drivers/soc/aspeed/Makefile
> > new file mode 100644
> > index 000000000000..cfaa9adc67b5
> > --- /dev/null
> > +++ b/drivers/soc/aspeed/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-$(CONFIG_ASPEED_LPC_CTRL)  += aspeed-lpc-ctrl.o
> > +obj-$(CONFIG_ASPEED_LPC_SNOOP) += aspeed-lpc-snoop.o
> > diff --git a/drivers/misc/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> > similarity index 100%
> > rename from drivers/misc/aspeed-lpc-ctrl.c
> > rename to drivers/soc/aspeed/aspeed-lpc-ctrl.c
> > diff --git a/drivers/misc/aspeed-lpc-snoop.c b/drivers/soc/aspeed/aspeed-lpc-snoop.c
> > similarity index 100%
> > rename from drivers/misc/aspeed-lpc-snoop.c
> > rename to drivers/soc/aspeed/aspeed-lpc-snoop.c
> > --
> > 2.21.0.593.g511ec345e18-goog
> >
> 
> Fixed CC on this reply (Gmail button didn't behave as expected) and
> replied to the v2 patchset instead of accidentally the first.

Replaced v1 patch with this one. Please thread your patch series or follow up
saying they've been superceded to avoid maintainers from doing duplicate work.

> Given this patchset, I have several patches that move the drivers into
> the folder, and thought about writing it up as a series.  I wanted to
> see how this patchset would do before I staged the rest -- my question
> is, should this patchset create the folder with the empty Kconfig and
> Makefile, and then have follow-on patches that provide content to
> split out the process into multiple logical steps?

What's the purpose of moving the drivers? Are they mislocated where they are
now?

It'd be useful to see an inventory of which ones they are. As mentioned on the
other reply, there's no reason to move drivers to drivers/soc just because they
happen to be an IP block on one SoC. We really prefer to have the drivers
located in the subsystems they belong.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
