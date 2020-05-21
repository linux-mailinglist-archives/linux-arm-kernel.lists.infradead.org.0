Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419991DC7F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3utY9iQhp4fSIUWY2I1FkD5UUz97rS2sslos5FK7zI=; b=U1qtlPOQ8fm62s
	JTkvORoIdZaBiYkHmlhJB0Ditt/40SUjnKy5VPt+XDNDXpzl1ixr54cvz4aNkH8QAgf2tkvMP6Bwc
	YZB3lV93wtdY39aXhkjb1f3SMXKMkISQX5+rXHM0O0fVRiqyJ3fVTJLmeBMXBv03wW1xQZ5Hkukcs
	PJ9lhSpSoX+y4rq7fOwvCicnf7fhNWC0L4fmr/hh5Cxj+vwFc55teQY4NRZk5D5AwAwD+puHfhEhw
	mRYLnrIDTYxg1+RNyzxcHzJd73HQg5cMZCfwTvsA4/R19GxjaMEZP35xNVW6vqNMP7m22aC1rX5i9
	o1oUO/Y0444GdN3Pd3TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfwE-00029v-2q; Thu, 21 May 2020 07:48:22 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfw4-00028N-Lg
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:48:14 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MC2k1-1jlpTJ3NG9-00CR6e for <linux-arm-kernel@lists.infradead.org>; Thu,
 21 May 2020 09:48:01 +0200
Received: by mail-qt1-f182.google.com with SMTP id m44so4774336qtm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 00:48:00 -0700 (PDT)
X-Gm-Message-State: AOAM530nxk6HAbNXTebbTwK4OiP+JYGPTvkkk/JmRRGbu2yIZssX99HD
 O5RahQ/UykiqudJS+uNS5fAfk+6gEbBTF6qtU88=
X-Google-Smtp-Source: ABdhPJxsllVPPnQ/Wh5Vjw2Lya2mPuuI1VPenv+J+BRar0/wWQ3ChxOv7xHSpUGvdRoNdnHoPWlhM+ABRapjikubP4w=
X-Received: by 2002:ac8:518f:: with SMTP id c15mr8985893qtn.142.1590047279711; 
 Thu, 21 May 2020 00:47:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
 <20200519152714.GF1059226@linux.ibm.com>
 <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
 <20200519165445.GI1551@shell.armlinux.org.uk>
 <CAK8P3a32gDzqLBeBs8CtT9fhRncQNsJ0nrN=2Ws4DAWe3nOCZA@mail.gmail.com>
 <6d7c3b4f-dde2-95a8-8d36-03ba957aa133@gmail.com>
In-Reply-To: <6d7c3b4f-dde2-95a8-8d36-03ba957aa133@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 09:47:43 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3=haKkZkBPpuRhqfUjEBoyHi4FeS4vSA4Cx6ah_3JABQ@mail.gmail.com>
Message-ID: <CAK8P3a3=haKkZkBPpuRhqfUjEBoyHi4FeS4vSA4Cx6ah_3JABQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Florian Fainelli <f.fainelli@gmail.com>
X-Provags-ID: V03:K1:6YdNfHwyBC+kGgBGRZwIHIiIsR6nmqtWxsNuSgrilimerZhPgz3
 0QVs5K1MuSYwKFokj8bVSC1h4+GWMpF9uwCEDUkyZHhTZVkzWNiyAyADHgta3BEh6I/cZaD
 rvtJilEj6t3ow5rHprWgCWK9K2tSKbJf0mvKbwv4OFtLn1O3Rf/5zy07P3RqB0fy2HGK7F+
 eVgHmZ3L4JG97we6Gzz/Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yq13xpFhY/I=:LQYLJSxh3Mk0sjOgIUasNt
 VUsQh/rIrpsc/bz9/lMpPa0QlYZdjHnXO3Eg8Lm+Y3IQvvCUnkcPY8w7qxYXk1CiTM0CtEK0f
 0tpFU36Zx69PzTlaMoIRYXzurbFC9O1BtC5CzZpI3OW/Hq/NLp+VMDzN4X4voIGO3GiDCQkDU
 97ej9oux41JuHRTT7rkjz7bchwE4abk4dozBzuPir/OQsjgqPCaBumnbdvWGbpSPMYz9JiUz7
 1/nEuTESUs6Q2CgtPvdO1nC5pkyzn3ooCOKlhxlNHXu/1pFM48EQSL7540gxvQEgPR0BPJry9
 j3T1q5X1qD5UygfYnptdFLucAvpmsxmtjb2rY7Fiy84L/fdKtrujmOzp+s+zFdO/dVOhokUJ+
 TALCPAZZcwNm9E0jFdRCge+tBh/sFCPdtKO9KjlFxiAITIKu4nEmw/eKz17YkTU0UnQWXiKsB
 m9SRk99MjYSJC2OxRAhjH9L5pbk4EAoIoF7uapl5U++8VkDWXy/DV3z8g5ama4F/RviFhd1TJ
 VVscS7Y/LiK/tGu3bq5TzT9OgHWcv1tcVFhDTY2yFHAUivXiC7dBBdCaBJ2teAsK9yk65kQKh
 7de/MkL5kn2c7Blw/7eO2cHY4rXq5/O1DdUfCNZ52UZPOihsOHrqI/Pqk9mUAEeo5zyF0vOSL
 uKxIQ712cv0o1wpCWBOemnXd4MGEBPVH7q/FOgmDq5FhD/cAQ0n+TVn8bL5pZHjFRTX0edWQR
 M30j1N5PcJl+M4dIS0yvP3oHmQpoceYsgcyCmvvq3gjs2j0G8tNj5eeEIZoB1oL55cnStIa20
 1cH5r4dNtLUMr7si92WOuhchSkhTZggGRTWLHuDh0KyB6LUdWM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_004813_005876_37E8C603 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: Doug Berger <opendmb@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Cernekee <cernekee@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 4:45 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> On 5/19/2020 1:42 PM, Arnd Bergmann wrote:
> > On Tue, May 19, 2020 at 6:54 PM Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> >
> > I checked the datasheet: ep93xx has four chip-selects, each of them
> > with their own 256MB memory area. Most boards we support use only
> > the last chipselect, but those that have more than one would waste
> > up to 2MB per additional memory chip, which is not nice but doesn't
> > make it a hard requirement as long as the kernel can fit into the first one.
> >
> > However, the chips has a second problem: depending on the
> > specific memory configuration, only every other 2/4/8MB within
> > that range may actually be used, so the mem_map[] array would
> > double its size in practice and (worse) the kernel would likely
> > not fit into the first section without sparsemem.
> >
> > This means we should indeed treat it as a requirement for ep93xx.
>
> That is already captured with the select ARCH_SPARSEMEM_ENABLE or the
> ARCH_EP93XX entry.

Yes, we just need to keep it that way when ep93xx eventually
becomes part of the ARCH_MULTI_V4T configuration.

> Should we just make it possible for multi platform users to override the
> memory model in their configuration file and later we just default
> ARCH_MULTI_V7 to sparsemem?

I think there are three steps:

1. make the memory model user-selectable for all multiplatform kernels
   to allow sparsemem
2. change the defconfig files for platforms that would likely benefit
  (multi_v7_defconfig, exynos_defconfig, imx_v6_v7_defconfig, ...)
3. change the default for ARCH_MULTI_V7, or alternatively for
   configurations that include platforms that usually want it.

My preference would be to have the first two in v5.8, but leave
the third one for a later time, depending on who needs it.
I notice that the changelog text does not give a particular
example of platforms with very sparse memory maps. It
might help to have more background there. Among the platforms
I see, it seems fairly rare to have any RAM above the 4GB
boundary on ARMv7 based chips: keystone2, r-car, and
highbank would be the main examples I can think of, but I
don't know if they have large holes in the memory map.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
