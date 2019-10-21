Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D449DEAEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69f8wOW/KHeFoBSbPS4j+EyNATpp4/Ila4WBfiqsX3M=; b=IjWdkfetR5syWW
	VDkK6XlcTr8o5N7ByZ8hClW0w96843uncbn0gNlE6+SKO4GqDpC4+hhNH3XPqBz6qYqBoq7SNPVDx
	PfRWQTZdjAnNe/JUgg0F/LOtKWuwXNHdYThPHKWiusCgNo/VdhfeL3o5tvpC+7nI61n5/6SxIoq/7
	KUrq1Ms9YmOpvx60Er5bxpV80eBy6/rFOzHuan9JZqOsEVCGFOZK374QKHiC4McnPF12uFTzs/YrB
	AhGUQ5MnGpnr5YfnNujYGrXFK+zDQG7o0pKa5g3RsMC8LCeWV58LkN22t1gGHql13pQLd3vjA2HFW
	GzQqhQJ7qWgB1BmLSQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVsk-0008MJ-ED; Mon, 21 Oct 2019 11:29:50 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVsb-0008Lf-8a
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:29:43 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MNc5b-1ige8Q0rV5-00P4jE for <linux-arm-kernel@lists.infradead.org>; Mon,
 21 Oct 2019 13:29:37 +0200
Received: by mail-qk1-f175.google.com with SMTP id 4so12214232qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:29:37 -0700 (PDT)
X-Gm-Message-State: APjAAAVrKdroaU3LIeZvlYZfBjX8k4OrVkXnLDWXNWlf8hVmHoDIuirD
 CfxH54VQaVBHNH5mSLoLhMYb7ORdYQmXxoVpJWI=
X-Google-Smtp-Source: APXvYqyxe91nGj8TKmw2rGsh4WkXsSBsZcCR4p2QMNxSQZJW/Arl7Yt8sn89P2z6gdacP0hRDEnp2Qs0G03JwPJmF9c=
X-Received: by 2002:a05:620a:4f:: with SMTP id
 t15mr11058944qkt.286.1571657376091; 
 Mon, 21 Oct 2019 04:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191021105822.20271-1-lee.jones@linaro.org>
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 21 Oct 2019 13:29:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
Message-ID: <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] Simplify MFD Core
To: Lee Jones <lee.jones@linaro.org>
X-Provags-ID: V03:K1:vZ9ZniVF7w4zJpbjpo3JHda8+2fhQPm7a4buvF1E1vZkcaG0ag6
 XyTM2ZYjgaDqLs4FFZx0SkOdy+ga0ZePo9M0QFUkMB1zt67G1LXIbqiYXWX/+hfIMCdnsQP
 uzoMZwOe/ov88KfgAIlnS8EN3PtjeWd5wtU6WDfjxNmWkLjv0QeqOqNc4mZ0kBV013lZjTB
 oYZBxEM2QsP/qnwUF2g3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/dm8RluD8Lc=:Fd6fwDQs26FsfItIKQjvw2
 mceu66FaMdObaXb4rxTdq4emHF5KXr0RjgELqObSF3msiphEglBNgB4VjlawRRUtsGAulN9y+
 NbGTfKOm9YPUmcLLq6S++a9lhYr/YeLc+DHiu4JZ2UHW4digE3evGjHIJUnpVhs20Z/DtAcrL
 9lWY1erteb4BkGK3ZkjgPjEKGVwAUHlyIdPfKC9Ijoi62uVPrLoPV3WrB+wpY8VYnLae7s/35
 uAEgJ9yBtIw06na240MmwShBBIOR9Ma06irB/JCe1Qg19LBnD0+XeLucyfbNUuykCncpi4oHU
 KfJ7I95VQrZ45+UtaqyUpSGUhQC1f5l4RweIhnQFyOsf6AQ5SlbISWiXQnWJHicuyxA170x9l
 5bWvWd+lI89xe4hDm4wZpAwtymQ2lER+8kXum+0hdBNkdYSFII1PYDcSai3EiaA6xYNLPbw+q
 iv7TNcrqBrQB0KXA7XFhDjJ76iwlbhK+UIay9PkwYOhDYxxe+oOhpkK9Le6VdQcUEiovZ6ez/
 7KStLOgqFj0Z6iCR/HWtety2UkxpsMc4CbDmUV4Bg9aJtdL8z7Y/N9npFQBT+8UsKNaMaiiMI
 W6O+Ijnx3beMxr5sFmlHOz8Hq+z1oj6Q+vIJteAWBxXD9++J0x+VNs4bRk4YVRNEIm4vNyYXI
 380uumnZ5ntLygXuIwbhfCZT//gMMzGphwn5RmqcVaRgdZSLp7Zb+1AWk2qaushWbcNDZVpqf
 oWMZyS8WoFJlWKw/90SF46GuJrnr7g/qZ76xwPwraf7us6rPfpJAmPoHjcYFXrQwqp6U3aFV/
 xUnoBAwdT/WA3sCpE1resIacZcOmDWHKVVMRdK92G+yoJ3eV7Vas6CHMnvUHCxOx7D7uiGTKA
 xvnabK1z61wZu27EcmNQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_042941_597885_2DDE2AF7 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Barry Song <baohua@kernel.org>, James Cameron <quozl@laptop.org>,
 stephan@gerhold.net, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Mark Brown <broonie@kernel.org>,
 Daniel Drake <drake@endlessm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 12:58 PM Lee Jones <lee.jones@linaro.org> wrote:
>
> MFD currently has one over-complicated user.  CS5535 uses a mixture of
> cell cloning, reference counting and subsystem-level call-backs to
> achieve its goal of requesting an IO memory region only once across 3
> consumers.  The same can be achieved by handling the region centrally
> during the parent device's .probe() sequence.  Releasing can be handed
> in a similar way during .remove().
>
> While we're here, take the opportunity to provide some clean-ups and
> error checking to issues noticed along the way.
>
> This also paves the way for clean cell disabling via Device Tree being
> discussed at [0]
>
> [0] https://lkml.org/lkml/2019/10/18/612.

As the CS5535 is primarily used on the OLPC XO1, it would be
good to have someone test the series on such a machine.

I've added a few people to Cc that may be able to help test it, or
know someone who can.

For the actual patches, see
https://lore.kernel.org/lkml/20191021105822.20271-1-lee.jones@linaro.org/T/#t

    Arnd

> Lee Jones (9):
>   mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy error message
>   mfd: cs5535-mfd: Remove mfd_cell->id hack
>   mfd: cs5535-mfd: Request shared IO regions centrally
>   mfd: cs5535-mfd: Register clients using their own dedicated MFD cell
>     entries
>   mfd: mfd-core: Remove mfd_clone_cell()
>   x86: olpc: Remove invocation of MFD's .enable()/.disable() call-backs
>   mfd: mfd-core: Protect against NULL call-back function pointer
>   mfd: mfd-core: Remove usage counting for .{en,dis}able() call-backs
>   mfd: mfd-core: Move pdev->mfd_cell creation back into mfd_add_device()
>
>  arch/x86/platform/olpc/olpc-xo1-pm.c |   6 --
>  drivers/mfd/cs5535-mfd.c             | 124 +++++++++++++--------------
>  drivers/mfd/mfd-core.c               | 113 ++++--------------------
>  include/linux/mfd/core.h             |  20 -----
>  4 files changed, 79 insertions(+), 184 deletions(-)
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
