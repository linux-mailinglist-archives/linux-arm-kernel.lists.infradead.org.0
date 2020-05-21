Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42E51DD062
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFXdi18PbbwAhA2PoE7ou04to4JttXmVbjfFFCQuYac=; b=UmcUSROKX8kFV6
	MPKQU5GIK6AVS1DnRAr+LPcCdZrGjJRRy33ayYePITTlBZV6wYR1hcUVoTc6C1fURwe/LXycjv4z7
	/5COmdes6GoHoV6E+0JTEwccJb7shNAUDmO1UTzKy1Xvjh7qPhwVCP6jg1K79/xypj8RRFu9efFTw
	W7EwsGy9m2gPVN6rL9dJh6enVRPuAGFQNITtfwp/AYzwleSto7HQjjo0T+TxfcTEOLvnAGO2uxTPq
	qLyTUdCFWxTy925tTK65QrB9OLSMPMn5IABuo5uLCitNgDk3XdJ0F2xF2nHrd61+UMbKRLpH2L+Xf
	/fw4HarQOUnwCirOmssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmQP-0002R8-EY; Thu, 21 May 2020 14:43:57 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmQE-0002PV-8s
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:43:47 +0000
Received: by mail-lj1-x242.google.com with SMTP id w10so8619670ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 07:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tuQ1zvOklpezgOq1qrrrAXi9Q/2zL0O9meBuAgy373s=;
 b=hNauZCE4ZyQrnO0nntQayyVk53MtCYFx0x+QupMIZuQorwHuDn4bhd0+45d7gZ6d8m
 L6FJKZwUbwT0yCAebmlFe/U6MIDVfJOulUCJ9E6SQ5+CZAc5oTbh9r4VX1H+J+9/unKS
 OtVccceu5GPEqBPyaLM8ED/+C7SRnRPsQL+dDOic0gp0369C/z+gCWjmEsqcMLSXWCyR
 xny6xU29xdDdJPSNElcbiaSIP3X8p+JpzsMp8hNSzPEJra2Ys18vzOJkZcgtxG4AIRzr
 r4c9E/zTfdzTR9j8Bx5HE4BOlhs5/j7qSSM0Q7hagrta2JhNIsPXZXw0yNeOAqCIV5hp
 G74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tuQ1zvOklpezgOq1qrrrAXi9Q/2zL0O9meBuAgy373s=;
 b=PunYqTT2RkEEuX9dHkyvMW3BeJvDO0tKeXrLs06WJpjI4x31G/Sg32bXilcB6jUiuc
 iuBmuMRBAH8FiasiwlTn9DLSjEvpY6iGyzrx6At9nNY07nRbx/oDDwedwkanxeXPuXM5
 cMdTZ3iz6ZOL2gUofHCs+u2gwutHadMwW2hh0NJOMlBfy/eI0b/I4/Ggk9QIPnKZxxsu
 C+rAy9GM0jOeYYsvLkR7Ti4A7WAsqmzcHqSs28Elo0HtgGyMOiPx4tfyyVqthT4ToTE1
 K9SgKbazd+zPrzzdWIxbCvtEQa9CPNxSSpQtzugyzA8WnN0d2AJPWy28OlmEONHA+mCZ
 6cXQ==
X-Gm-Message-State: AOAM531e0gq1GXjjuM+i1KbkNXeinUNDNncMZvoZI817769pSk5a/hjN
 j/5plgAkuxcOKuqTYFXk4MFBxEwSigauGsb8hls=
X-Google-Smtp-Source: ABdhPJzExRJlbujUemJvxqwrl+G4Cgtl0pUnc8oJA7iFqXep0LQNN0QQax7qtdllV0ZY5aX2u0RW9gWAArQn88T9G+4=
X-Received: by 2002:a2e:6c0c:: with SMTP id h12mr5222291ljc.266.1590072223382; 
 Thu, 21 May 2020 07:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
 <20200521142340.GM1634618@smile.fi.intel.com> <20200521143100.GA16812@ninjato>
In-Reply-To: <20200521143100.GA16812@ninjato>
From: Tali Perry <tali.perry1@gmail.com>
Date: Thu, 21 May 2020 17:45:03 +0300
Message-ID: <CAHb3i=vcVLWHjdiJoNZQrwJCqzszpOL7e9SAjqObsZCRH4ifwg@mail.gmail.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_074346_313867_78C11567 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tali.perry1[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Tomer Maimon <tmaimon77@gmail.com>,
 Nancy Yuen <yuenn@google.com>, avifishman70@gmail.com,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, Ofer Yehielli <ofery@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 5:31 PM Wolfram Sang <wsa@the-dreams.de> wrote:
>
> Hi Tali, Andy!
>
> On Thu, May 21, 2020 at 05:23:40PM +0300, Andy Shevchenko wrote:
> > On Thu, May 21, 2020 at 02:09:09PM +0300, Tali Perry wrote:
> > > Add Nuvoton NPCM BMC I2C controller driver.
> >
> > Thanks. My comments below.
> > After addressing them, FWIW,
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>
> Thanks, Andy, for all the review!
>

Highly appreciate your time and patience for a newbie :)

> From a glimpse, this looks good to go. I will have a close look later
> today.
>
> > > +#ifdef CONFIG_DEBUG_FS
> >
> > Again, why is this here?
> >
> > Have you checked debugfs.h for !CONFIG_DEBUG_FS case?

I compiled both options. I removed the ifdef in most places, except in the
struct itself. Users that don't use the debugfs don't need this in the struct.

>
> I wondered also about DEBUG_FS entries. I can see their value when
> developing the driver. But since this is done now, do they really help a
> user to debug a difficult case? I am not sure, and then I wonder if we
> should have that code in upstream. I am open for discussion, though.

The user wanted to have health monitor implemented on top of the driver.
The user has 16 channels connected the multiple devices. All are operated
using various daemons in the system. Sometimes the slave devices are power down.
Therefor the user wanted to track the health status of the devices.

>
> > > +MODULE_VERSION("0.1.3");
> >
> > Module version is defined by kernel commit hash. But it's up to you and
> > subsystem maintainer to decide.
>
> Please drop it. I also think commit id's (or even kernel versions) are a
> more precise description.

will remove.

>
> Regards,
>
>    Wolfram
>

BR,
Tali

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
