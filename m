Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB54185BA8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgYqwnVrRs5L3hBrCEjFyvJk8IrxtX+C/SiK52fDxGc=; b=uun5EKHSszmetI
	lBrcLTP8upMSDW8br7XSr6f8HtG+2UcjyzzjfFg+mFCTs2DJmKi05AaEQ4VwbJzkiS45XdH0cNyNI
	RZAgGdx8yAD97w6LlJWVs3EMU9vTZF5WavCnqKpM/wfhvhIczBlc5GkNRxbcTsB3PRiDUM4xVCitY
	9S32vQkhVUUbIKdAriQcp08Q++AyFiah907fvJE7xg1SMV6qJ1hv41KKU0uuh4Y1Mv5w7yqP01EDI
	t8X1KLp78zdEEJAND3uPYVvalUNwFsEBJFpaDWwhwo85fPf6qAwZoQ3JywMB3xdkTYubre2sWoMJn
	lzvQrLPh+fumd2RTe4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPrB-0002hJ-J8; Sun, 15 Mar 2020 09:46:53 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPr2-0002gr-Cx
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:46:45 +0000
Received: by mail-io1-xd41.google.com with SMTP id v3so14070524iom.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 02:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GNFfXHO2uILPgu0B1T3kwaBgaXjP+dlED6DVNl3sNIg=;
 b=I+ZgyUWzIa8Yxi+0xMqH9yaVxAhiEOypJ/WXcO5ujz84CdXXQxL2d1ab/itSy71+MY
 v1zS6OgxvE0Bn+Qa0JXfcz8RKJwprkoMCBipzhzZlHWCugVSwinT5j3lnrH2WDYlwZ01
 eYOr9xN2OR+z2u3VNz+TrTa75FmvLhds4/9O2wY6HbEzs0xPbUZ28UtXN7LT2TXhup6Y
 pkBRtDX0RpzM5wTDCNpUYBgBjIeYHAnSJprQYhPVixRf+4+i5CWwFDcVCSryxTo7o+n+
 QvVX5JRwWD/Ek/EyR8q7MTRXZ3swX8IoaPhhLPo/I0oYQ9PA+4e/gT6RGNbVnejmq4aN
 w9FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GNFfXHO2uILPgu0B1T3kwaBgaXjP+dlED6DVNl3sNIg=;
 b=grWAb/wXuZD2OdCJr1ayqg7BtnT5dZHQz/dkLHIh1+EHFOVt/4vhWr5qAvoYdpIcsk
 WHdQx3EkYwnEN+sAxSFms1nRfHPu5LvDLaiKgzYunj7o+oGwjoFDIjX3CM5Sgfr0CWlV
 pdHb6UEygFjIW0trcn3TT/hT/TGIHUAOnNdFJd5O8rYDljaduOfv/nm48um9yTaguz+3
 OmgB8KvcBXIkkEelNnPxqbGEmyFaj2jcNUYvdPrteGjXroNbJpl10KRndEBQFJgJFl5q
 LGyNkXISErY4EmtlKkZIB2cmkEsXcUNzc0dSYoU15daoTUzrHuo+AJ5WTFHV2o/9hxvo
 7jXA==
X-Gm-Message-State: ANhLgQ1AcpJGYrizIUD7487q7UXB91UBM9H/mcMFidOJRQFmnZiK+PwG
 qgW7ZknS+ReqX+HT4J/H2xDFBKoUYmwRYxGwIVo=
X-Google-Smtp-Source: ADFU+vsewoQ8rLqcke0ekgyn+gsES6vdYQVgDzjdOdmXOPVuxzoaksZJ3jLUICWiRwD3y5hXFyjeMrRhGfoBBlDZBWk=
X-Received: by 2002:a6b:f311:: with SMTP id m17mr19317386ioh.128.1584265603378; 
 Sun, 15 Mar 2020 02:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-3-linux.amoon@gmail.com>
 <CANAwSgR4fJK0uVANv-x-=iSL_hAKD8kvazACUsY9Meu5xonuqQ@mail.gmail.com>
 <20200314182010.GB17580@kozik-lap>
In-Reply-To: <20200314182010.GB17580@kozik-lap>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 15 Mar 2020 15:16:33 +0530
Message-ID: <CANAwSgS1+6Dzv2XbmMUR40AbJePxUzWkKkBC1W9hBMGzaMWP3w@mail.gmail.com>
Subject: Re: [PATCHv3 2/5] ARM: dts: exynos: Add missing usbdrd3 suspend clk
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_024644_487842_9BC375E2 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Felipe Balbi <balbi@kernel.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Sat, 14 Mar 2020 at 23:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sat, Mar 14, 2020 at 07:02:33PM +0530, Anand Moon wrote:
> > Hi Krzysztof,
> >
> > On Wed, 11 Mar 2020 at 01:19, Anand Moon <linux.amoon@gmail.com> wrote:
> > >
> > > Add new compatible strings for USBDRD3 for adding missing
> > > suspend clk, exynos5422 usbdrd3 support two clk USBD300 and
> > > SCLK_USBD300, so add missing suspemd_clk for Exynos542x DWC3 nodes.
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> >
> > My assumption based on the FSYS clock source diagram below was bit wrong.
> > [0] https://imgur.com/gallery/zAiBoyh
> >
> > And again re-looking into the driver source code, it turn out their
> > are *6 clock*
> > Here is the correct mapping as per the Exynos5420 clock driver.
> >
> > USB-(phy@12100000)
> > |___________________CLK_SCLK_USBD300
> > |___________________CLK_SCLK_USBPHY300
> >
> > USB-(phy@12500000)
> > |___________________CLK_SCLK_USBD301
> > |___________________CLK_SCLK_USBPHY301
> >
> > USB-(dwc3@12000000)
> > |___________________CLK_USBD300
> > USB-(dwc3@12400000)
> > |___________________CLK_USBD301
> >
> > Note: As per Exynos 5422 user manual, There are some more USB CLK
> > configuration missing in GATE_IP_FSYS. So we could enable another dwc3 clk,
> > If needed I would like too add this missing clk code and enable this
> > clk for dwc3 driver.
> >
> > For some reason we already use CLK_USBD300 and CLK_USBD301
> > for PHY nodes, which lead to this confusion. So we need to update PHY clock
> > CLK_USBD300 with CLK_SCLK_USBD300 and clock CLK_USBD301 with CLK_SCLK_USBD301.
> >
> > Please share your thought on linking PHY nodes above and add new DWC3 clock
> > and enable this clock.
>
> The real clock topology of Exynos5422 is not properly reflected in the
> kernel. However cleaning this up is quite big task.
>
>
> Best regards,
> Krzysztof
>

I would like to fix all my patches with new finding and submit them
once again for review.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
