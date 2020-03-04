Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1C4179739
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 18:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DevUPKPlKqAONI2ps64ndh106lka4U+VDiWCUXgcKGc=; b=CLeYiNo615tJRy
	6fl/qh/2bKaeR5VnlmRUI7dCHvKVtjy0qLa2ZEv5hx5ByT/Nh0wPBmhT6QKEMnC9fSbsdpNqZRH9N
	bIAKBG1wBEXAv7/BpCPQ09LrBHj396ZJPXAKwKopc0/TJ4kK3aRphkbC9dSRKlOnZ9tZ6xtxgoi4t
	tZ0R3raZVO/QrfLLt7K+Cdkv3Atf3HZL3504gfgaJMH3u4EXm2WWuXNIYimWbrATAOwuO7DUsAw4F
	RniB5PgeU3q2HroYhdzQ20MwEHdhG2iNwtggVv9VGcpaIJLcEvHhSh9yoGExh25/NzC8HPxYQ4fCv
	rsUQ6S655tq/NOiBF37Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9YDQ-0001oD-Sn; Wed, 04 Mar 2020 17:53:52 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YDJ-0001nR-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 17:53:47 +0000
Received: by mail-il1-x129.google.com with SMTP id x7so2553171ilq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 09:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e2CTmEA524fnfnIjgrSUvig7hPGvXP3F6DwJJOx39LI=;
 b=b4vLwWcBSQXoiv6P8h/9NTqnrSaaKGKKSUSlQrjuIYE3ksV8RhUyWlmIn36T8haYV1
 ujkMaWlZGJlstIt1iyiLp2XkLO6kOIm3vLs0PWcEXCjxskD8Eo5lmCfWs0KAb/11UkMf
 y7lRWBza6jh0/w67GDG4MfC327lyS79ML3TzVxQyDnTf2L+hZvLvtEjctkY52PDq/RTv
 jLi+UJUoIfJ9OCePABvaDJZiqRTE4yPB8Q/sX67aX35RxjUk+fvDYrLAlPtffDwO4ZYn
 ioUPtv+vawQQZmFc8AdyhG/lFWjyr3RGbJt7B3X3VBD4cFUUGO/3QkQ1Doj3+IcG+RVY
 lzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e2CTmEA524fnfnIjgrSUvig7hPGvXP3F6DwJJOx39LI=;
 b=VMOLXL4oNw1yqfIRSnZzvopGZgsDBsuWy1W0CFuipFGxlbCqPpFXhwUf+XBoeBro+F
 wsDlC3hq/WrgkHIfFt/il2ekTlXthKu2NPGVcG5VXDXaIZcCYXWGy2Ln70RSkZHRY8mw
 np6WjtmIptDUjriq+wvSPu63n/O10Wl871T/XjclUzf7s9l1MBsvjjslxapgVw/zSSZ3
 W1rO3y6UxKn53WfBVh23XaxpsiXCFBJVg1MaXgnYhath7XT/VvyXJiVv+khUOi4OfSHB
 xnj+xXCy0l8zcjwYWPsLFt1/vVzdBifiOnM9mSVCejpNzK7s7e00qynMDaHNchVqCJXu
 FI6A==
X-Gm-Message-State: ANhLgQ0MHlgEY5S9CRoC19lMOc6dNpR4WmZ52UtmRwYGNmrVExNvfalT
 9aZOQxHPrvt1nJ1JFp3+vpaUp5+EjsjY+NeFjr8=
X-Google-Smtp-Source: ADFU+vsBrHpXk15htEhvGqXBvj6J95qHvJwp3T2Xq2b0NCaHDpAkmt2tXm3mV3JSmzToPkbpwxRA03OaJtQhF5VwZWw=
X-Received: by 2002:a92:3a55:: with SMTP id h82mr3860438ila.75.1583344424195; 
 Wed, 04 Mar 2020 09:53:44 -0800 (PST)
MIME-Version: 1.0
References: <20200301212019.2248-1-linux.amoon@gmail.com>
 <20200304081151.GA17560@pi3>
In-Reply-To: <20200304081151.GA17560@pi3>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 4 Mar 2020 23:23:33 +0530
Message-ID: <CANAwSgS11Bo=KhbspY1w=8qpSjjN8ed81s71zBB9AGczBe=wTA@mail.gmail.com>
Subject: Re: [PATCHv2 0/3] Add support for suspend clk for Exynos5422 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_095345_620311_7CB43CEE 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Wed, 4 Mar 2020 at 13:41, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sun, Mar 01, 2020 at 09:20:15PM +0000, Anand Moon wrote:
> > Seried build and tested on linux next-20200228.
> >
> > This patch series tries to enable suspend clk using
> > exynos dwc3 driver, for this I have added new
> > compatible string "samsung,exynos5420-dwusb3"
> > so that we could add new suspend clk in addition
> > to the core clk. exynos dwc3 driver will help
> > enable/disable these clk.
>
> That's not entirely correct. You enable there SCLK which is a "special
> clock", not a "suspend clock". You use word "suspend: in multiple places
> in commits making an impression that it is about some suspend clock...
> no, there is no suspend clock.
>
Ok

> There is however a clock which driver calls suspend_clk (but it is just
> some name) and it is being enabled for entire lifetime of device (so
> also during suspend). AFAIU, this is not needed for Exynos5422 but I am
> not sure. So please convince me...
>

Yep you are absolutely correct. Yes all the CLK_SLK* are call special clk's

Earlier I had share the FSYS clk diagram for Exynos5422
[0] https://imgur.com/gallery/zAiBoyh
from the diagram I mapped the naming terminology.

CLKMUX_USBDRD300 --->CLKDIV_USBDRD300 ---> SCLK_USBDRD300 (48 MHz)
---> USBDRD30_0 (SUSPEND_CLK)
                                   |
                                   |--->CLKDIV_USBPHY300--->
SCLK_USBPHY300 (48 MHZ) ---> USBDRD30_PHY_0 (USB30_SCLK_100M |
USB20_PICO_CLKCORE)

CLKMUX_USBDRD301 --->CLKDIV_USBDRD301 ---> SCLK_USBDRD301 (48 MHz)
---> USBDRD30_1 (SUSPEND_CLK)
                                   |
                                   |--->CLKDIV_USBPHY301--->
SCLK_USBPHY301 (48 MHZ) ---> USBDRD30_PHY_1 (USB30_SCLK_100M)

SCLK_USBDRD300      USBDRD30_0             operating clock to 24 MHz
SCLK_USBDRD301      USBDRD30_PHY_0    operating clock to 24 MHz
SCLK_USBPHY300      USBPHY30_0             operating clock to 24 MHz
SCLK_USBPHY301      USBDRD30_PHY_1    operating clock to 24 Mhz

> However I have still the same questions:
> 1. What problem are you trying to solve here?
> 2. Why this is needed?

I am trying to get the USB clk to get enabled for FSYS power domain
to working efficiently.

> 3. What is fixed with this patch?

Currently locally I tried to enable the FSYS power domain for USB 3.0 / USB 2.0.
but it's not working as expected, need future study.

*Note:* For now plz discard these patches.
When I get the FSYS power domain to work correctly.
I will link with those patch which will be better for testing.

-Anand

>
> Best regards,
> Krzysztof
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
