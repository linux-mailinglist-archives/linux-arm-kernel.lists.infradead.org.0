Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41214A75D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhcKc/lpxLaGcMAfoNlWYW4Kb/G/NuaIGVsgMBdzd/w=; b=CeY+wVNoJ3E+Aj
	BhCUlgk1X+gdDxcEvox/GUB/4YN1vvJOIY85R4eLFwAMcecWSU2vSsjRF1+0MUiiEVmDi2plbf/gn
	ba7sQHzxKMwN4NfAWfFV10yzYDoi9xEm/lbUcz7XYjXdObnJoKeb+L8+023dJQzF6ZH3gvW2kGSCX
	wlMB19NdgyXIf4dVTXF2Hh+MtwRcvY5Q3DjBWXDp1qS26//MQkK8IGPy9koCe+x/GhF1fMdk7d9X4
	C2zy/jDBd14mbTScfVLRZDPSUm1hC6yG3Nq3S2lLWsN3TaTgWif8tIpGg7Fw0ezok/U4/TnlujzeU
	Y2nDOMN4Mt3vfYSr7kZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FtW-0007Ir-ON; Tue, 03 Sep 2019 20:59:18 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FtM-0007IX-6I
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 20:59:09 +0000
Received: by mail-qt1-f195.google.com with SMTP id t12so21754791qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 13:59:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZErB0bO2dCXm0OmfbfhQVIuQ3zaPIQggtK4wBOc6oX8=;
 b=MVXbfl1AwT9XUpN2hVbbN/erPInbHhKDb3lxwYr9G7AWVjVeFDvhWvCk9vYzPJNP3l
 WnAgiJht/0+Io3S+lD2OuGpEvtRBJcLuMCCHyGJjYVaViFyV3EB+w5jspkYuvdcDOwYL
 w6CdGHFS8nvEDZJToj5QvkTFrvX1PjRsjCazeenUNoEIDF86athtik89S84AP7f7usr9
 Jf98kUejDMo7f9pdTMo1b5Wok0GlotXzfEYnJsfyhwLw5ANuDrMXHIL92pM7uDg2OPsA
 oeVEwyZlJHh855tm8j5DfgFri0j9+kqX8dR+HqeDEHpHgLqJNEJ/T4AsrUFgLKEi5rLa
 1XOA==
X-Gm-Message-State: APjAAAUlzfJ1TzS4BCCVd7QOXhZ0C71WPIF3AkdgxV8JWZfsuO5wXJ0x
 Tzdk9606TbrJVo/HZE+A/WlS1yjXz8D2IMCpgvE=
X-Google-Smtp-Source: APXvYqzbGOgsAKM8vI6NTjocLYM8QBMuKhzp5rErOStnZW1+EuzD6/jokTMZh7P3FntYr/oHgDW2+LwkHzd8/eDnbGk=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr22313640qtn.204.1567544347020; 
 Tue, 03 Sep 2019 13:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-1-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 22:58:51 +0200
Message-ID: <CAK8P3a17J5aOyKN=q=CLQevUYeRFd0qpE_e5Cz8rSErbrMONyw@mail.gmail.com>
Subject: Re: [GIT PULL 1/7] i.MX drivers update for 5.4
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_135908_236447_69B39730 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
>

> i.MX drivers update for 5.4:
>  - A series from Anson Huang to add UID support for i.MX8 SoC and SCU
>    drivers.
>  - A series from Daniel Baluta to add DSP IPC driver for communication
>    between host AP (Linux) and the firmware running on DSP embedded in
>    i.MX8 SoCs.
>  - A small fix for GPCv2 error code printing.
>  - Switch from module_platform_driver_probe() to module_platform_driver()
>    for imx-weim driver, as we need the driver to probe again when device
>    is present later.
>  - Add optional burst clock mode support for imx-weim driver.

Pulled into arm/drivers.

The module_platform_driver_probe() change looks like it should have been
in a bugfix branch, and I think there were some other patches that would
qualify in your other pull requests:

a95fbda08ee2 ("ARM: dts: imx7-colibri: disable HS400")
9846a4524ac9 ("ARM: dts: imx7d: cl-som-imx7: make ethernet work again")
7cb220a75ff3 ("arm64: dts: lx2160a: Fix incorrect I2C clock divider")
f64697bd0b9e ("arm64: dts: ls1028a: fix gpio nodes")

There may have been good reasons to not include them in the fixes
pull request, but my feeling is that you could be a little more aggressive
in categorizing bugfixes for backports or adding Cc:stable tags.

Thanks,

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
