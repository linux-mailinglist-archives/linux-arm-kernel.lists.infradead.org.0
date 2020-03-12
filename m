Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC9518326A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZQP+IQae5hsQZb5hBgiiaRJlk6W498LAZR48o7cftw=; b=fGAsOyefUsIf4Q
	4mwXc2SJ15SIVNaqlYrvDgTyYXEqLIMvPhRMTWkG3oNLgALlRK7RkzzRpn9k5Kc4r+9T2rCvHPih5
	9zWEKIVG8MRrElwM7tRHhvuo6S9lbnKcG0EviQnDttEg/ZodUopBNAJkuWwJIZ71ItSUQdYr2QACC
	Zwm4GwUN4KSjocGhzj0oN/8pSNpMh4wx4q54YzBDa8ik481nsdrZ2jmiQ3ZIpH0upQq9KWqelCgqq
	1qXhEouDejH/hpXRXR9aYvTSqxlpVrbMSW20CuTIfaSFUQGteyvf7bWtnkOCJ/RiWY2TgPAY/9ujU
	hhm97PEdnHorzTeEIqjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOUs-0005Xc-3j; Thu, 12 Mar 2020 14:07:38 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOUg-0005Wm-MK
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:07:28 +0000
Received: by mail-vs1-xe41.google.com with SMTP id o24so3756167vsp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=buBSO5k2b4C3kXNX/XPJLGtnWR4DhQhQeL2M9/aAXBc=;
 b=PL0NMlFZDgWMBsxgRB2pgKNVkX0QVKlDI0Zgo8PzJZAAqc8i0og3nDOyzEF9+WQtsw
 SC9zrMXfzEX+sEZ3IeFjJQZVBShaMrVOCy2podIC8PitQXH2UCd3sRPjKxbiK+kdwAJ8
 uga1GbAAMTawwtIWkMjWNKsKhaiEzxvbd2ningh9nfW8kluStifKW2zIib2FqduaatD5
 aEi2/9tviHac2S6Rn8F+elUSfTJUMvml6l9LH8mhHDrGWgogrDC57/vaZP5XvoFy+U4y
 WH92eQQiU3LyrEJAzS+mhy526Cg2yWgTtLo5T3AXeS949FRQuBZ0FSBNuU6U8XMeBb9q
 Ba1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=buBSO5k2b4C3kXNX/XPJLGtnWR4DhQhQeL2M9/aAXBc=;
 b=IbCTSC//2Cj4I6uCqBtMADxzirmR8i9MDg95rlcM+0Uws40wzSj3dslkzeNEpJrD3d
 RirkQKnlMbbLETKwaxAsL+jAmnKwfWsncHP1cQNOvoKojg56RQZT/0kvkV29fgx5D5In
 +1Hu0wdWpBOabG5gnGnjAqpaxVVUspCmjZt0sAJDWd9VPDCVz7PC/AvsFn63TbXrTUzP
 g4EVNF6QaQlyPZCgncBxdya1/ltrT0h/Yvc/yDL36oivhtws9mxSLWXx0SKclLt35bFI
 TTlhR37Wi6ykvLXGoruN8MT5zugJaTQxEKsNp0ig9oN0Z3SGDdegr0gAE01PpIznBqvW
 9jfQ==
X-Gm-Message-State: ANhLgQ0KV7Qb99Q8f+0UOiYF4XhDvcCzsPwH2fK/u6M8qZP+ZMeOSzp/
 JW8TlLtvy3drWoR2hy75bHvLebKjzK5BRe3UZbAiSg==
X-Google-Smtp-Source: ADFU+vvKK/JxbKesCpiaMAfl5MC6dMr3G/EvpE0o1cQyilJQELyMRXAEvEhzVVgWT69tflBxzZwNt+1+f4g7iLxY3Ow=
X-Received: by 2002:a67:2ec6:: with SMTP id u189mr5576185vsu.200.1584022045458; 
 Thu, 12 Mar 2020 07:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <CAPDyKFp+XwGog_w+8Sv1hYA-Umi6Rt2LYR1fyMEEb9abdb9nGQ@mail.gmail.com>
 <a51badd7ba6fc1938a120b8a3b8a423ca9a3613b.camel@suse.de>
In-Reply-To: <a51badd7ba6fc1938a120b8a3b8a423ca9a3613b.camel@suse.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Mar 2020 15:06:47 +0100
Message-ID: <CAPDyKFprX9cLXxGQJ9E8H_A-PfWYyrL3SShuJi7-M1KobGWrEQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Raspbery Pi 4 vmmc regulator support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070726_730597_EDB316F0 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, DTML <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 at 14:13, Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Ulf,
>
> On Thu, 2020-03-12 at 14:08 +0100, Ulf Hansson wrote:
> > On Fri, 6 Mar 2020 at 18:44, Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > The series first cleans up a common pattern, which is ultimately needed
> > > to integrate the regulator with bcm2711's sdhci-iproc. It then
> > > introduces the relevant device-tree changes.
> > >
> > > ---
> > >
> > > Changes since v1:
> > >  - Use helper function istead of quirk
> > >  - Add GPIO label
> > >
> > > Nicolas Saenz Julienne (11):
> > >   mmc: sdhci: Introduce sdhci_set_power_and_bus_voltage()
> > >   mmc: sdhci: arasan: Use sdhci_set_power_and_voltage()
> > >   mmc: sdhci: milbeaut: Use sdhci_set_power_and_voltage()
> > >   mmc: sdhci: at91: Use sdhci_set_power_and_voltage()
> > >   mmc: sdhci: pxav3: Use sdhci_set_power_and_voltage()
> > >   mmc: sdhci: xenon: Use sdhci_set_power_and_voltage()
> > >   mmc: sdhci: am654: Use sdhci_set_power_and_voltage()
> > >   mmc: sdhci: Unexport sdhci_set_power_noreg()
> > >   mmc: sdhci: iproc: Add custom set_power() callback for bcm2711
> > >   ARM: dts: bcm2711: Update expgpio's GPIO labels
> > >   ARM: dts: bcm2711: Add vmmc regulator in emmc2
> > >
> > >  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 13 ++++++++++++-
> > >  drivers/mmc/host/sdhci-iproc.c        | 17 ++++++++++++++++-
> > >  drivers/mmc/host/sdhci-milbeaut.c     | 13 +------------
> > >  drivers/mmc/host/sdhci-of-arasan.c    | 15 ++-------------
> > >  drivers/mmc/host/sdhci-of-at91.c      | 18 +-----------------
> > >  drivers/mmc/host/sdhci-pxav3.c        | 20 +-------------------
> > >  drivers/mmc/host/sdhci-xenon.c        | 20 +-------------------
> > >  drivers/mmc/host/sdhci.c              | 24 +++++++++++++++++++++---
> > >  drivers/mmc/host/sdhci.h              |  5 +++--
> > >  drivers/mmc/host/sdhci_am654.c        | 17 +++--------------
> > >  10 files changed, 61 insertions(+), 101 deletions(-)
> > >
> > > --
> > > 2.25.1
> > >
> >
> > Patch 1-4, 6, 9 applied for next, thanks!
>
> I think you meant to apply 1-4, 7 and 9. Patch 6 is one of the contentious
> ones.

Yes, that's what I did, but told you about 6. :-)

Thanks and sorry for the noise.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
