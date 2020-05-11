Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F911CDA5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeFcaD1nhWkKQR8xPx9wPcxdrRFgaTsQ8f7OR7CjJEY=; b=Coh/182NdPCBp9
	4UPH/E30itwoojOO89Bg7yLfZqwW1oZ0kJvoNdIw8Wn6S2ig0JZAUv4yxi8+VjoohfPu5O1llpdvu
	A47n+65dNT0OHp6GOR57hZ3+LlPyH1yjOFj3KGlOjO3CUDRSUKc36s195x5CDeseiQlmxfETa6Epd
	ZeZ+LS49GONjg/AKmpelzSFB/n86Q2rPcsMXgt9JqaqNRvVhi17P+U4MDTqQhf52oQ7TAIWQ7Rj3g
	UCvclenBXAeFiD/ZhkoVP3MVjkgVPfL7lK7ZDy9ubzjG91pTRfm87i9KeXAe8UPQWtyBQ69VSPbWM
	ggxipjn+xKALtErcqW0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7n7-0007E5-R0; Mon, 11 May 2020 12:44:17 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7mx-0007Dc-LN
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:44:09 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M4bA0-1jZmTq2btm-001ih5 for <linux-arm-kernel@lists.infradead.org>; Mon,
 11 May 2020 14:44:04 +0200
Received: by mail-qk1-f169.google.com with SMTP id n14so9497700qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 05:44:04 -0700 (PDT)
X-Gm-Message-State: AGi0PubW42OQFwcMUfeOyskiaEXN0OdmB9/ONA8/YHrq69AfEuVr9P9Q
 V4ElqTe1mco7f5n/4hTQf6eDyBSNos4p9fmS3eQ=
X-Google-Smtp-Source: APiQypJj5dbLl2D8uRc+Ry1heWpkBlw/Bp5L9Wsf0VuOnzzkwLnibuXV3LsJgJmP788MknPtCTQN8rBbz17c2WDRPWk=
X-Received: by 2002:a37:c96:: with SMTP id 144mr13680641qkm.138.1589201043482; 
 Mon, 11 May 2020 05:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200508100100.20740-1-grygorii.strashko@ti.com>
 <20200508100100.20740-3-grygorii.strashko@ti.com>
 <CAK8P3a0vewSiFc4rXu43_bs_A85EYx12_YuyBaU3PYJ1HszE=w@mail.gmail.com>
 <6614f29d-1796-18d9-9b78-214f56964a35@ti.com>
In-Reply-To: <6614f29d-1796-18d9-9b78-214f56964a35@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 May 2020 14:43:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a19RC1hPZkLiGCEHFuHDNxNLiAg34RdbBZ=gxDhRg4RpA@mail.gmail.com>
Message-ID: <CAK8P3a19RC1hPZkLiGCEHFuHDNxNLiAg34RdbBZ=gxDhRg4RpA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] soc: ti: add k3 platforms chipid module driver
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-Provags-ID: V03:K1:17ZlqRSdSg06cVENzxZWbGSXq65dgWWUv/QqExFItKMKJPsjibF
 vd1NHTkd0uGeymvHfJOrGgFmoEg2/27REpgyd4r9VTjvtMCNB9ghsrfo5mJa59odMsZmvdf
 8k7vvc9ZfhIg6Kya+MN1Gepabr6+7OfqLmuEeIh7cNraXscyZ2CkQlUkcUbpktL6RqDU8py
 yIifMpqSf0utyab2Bju0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P9Hus0McKO4=:u4jk4PS+5TgHtK4XGi/hEJ
 QEDcgdjKr38camHgRfpQSWSx2KgiTeE62uIBeIjqmFUck550Iap8D9UZ0ChQr9KnsrKmOSMt7
 tLCzFSd4BnTbwJ+Y+dXw1S3tfXTEb+rlh9raLww1A8QVySmiSJ5OWQ6PWuHj4iQjZc/0z+Gm8
 kDjSqY0yC7l1NNmyyQIjNKjNQALpDbIUlbMD8N2O/50PTH91zYCNnqyL6NOI1WlBYYqdF/Bcy
 7WQcgL/C6wCocu84YbweoL9cSrBUis1US6VI50Ao8WaZHspAyr7o6xhjiqpEBiyHSRdqNDgMq
 hlO/NIMjgbwf5gkU2O2Pspo7JvIzqrOHHfYdLJ9iMPhv0pqxI4vAfKJror9Y1CpEW4xaJzn/r
 M3eZu9WNhsUHMzC/DnXIBaGanU0n9GeV0Y3mGPLHohRd4PQuIpuL1/xcSWwYDdPtxwT6FplVM
 bY5Y1V8lOhptFyS7p4/ILDCNpdJbX/52zYIKxphD5RDVb+h+tafRuBH2cQRkhUclWY7xYTMgC
 +WrDcfSx2bN6pOF/EUxQRBIQrbTk7cLxdSuE3vMrybw+rDcYypAIPnHqMiyUttnNRwESEQUtz
 3ajleRPa2i0FPruaKSzP3ikBcfJpep5A3KhVJF2lkY9w90rlxXwwR5hDg3mAe1MeC2jRhK6J3
 mojV2WNk1aeK5PSsairOzZd/AMBllUDKgzn817TvomOGKfJTKllvqA6+FXY5ofvnOEIzT+Kg+
 LA/U+Qhu3F3v/u8dCPoSialtFae0A5BjKjziB95TyEOvU1katsXvne0Dvq203XDMBLZQq4wGJ
 KF1SSnDPYXpM6lnJh0To4E/rZHQR40iZo8q+4Cwj8Rfl3J248M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_054408_232643_B3844E3D 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 1:11 PM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
>
> Hi Arnd,
>
> On 09/05/2020 01:17, Arnd Bergmann wrote:
> > On Fri, May 8, 2020 at 12:01 PM Grygorii Strashko
> > <grygorii.strashko@ti.com> wrote:
> >
> >> +static int __init k3_chipinfo_init(void)
> >> +{
> >> +       struct soc_device_attribute *soc_dev_attr;
> >> +       struct soc_device *soc_dev;
> >> +       struct device_node *node;
> >> +       struct regmap *regmap;
> >> +       u32 partno_id;
> >> +       u32 variant;
> >> +       u32 jtag_id;
> >> +       u32 mfg;
> >> +       int ret;
> >> +
> >> +       node = of_find_compatible_node(NULL, NULL, "ti,am654-chipid");
> >> +       if (!node)
> >> +               return -ENODEV;
> >
> > This will fail the initcall and print a warning when the kernel runs on any
> > other SoC. Would it be possible to just make this a platform_driver?
> >
> > If not, I think you should silently return success when the device
> > node is absent.
>
> Thank you for your report.
> Can' make it platform drv., as the SoC info need to be accessible by divers early.

Which drivers in particular? In most cases you should be able to still do this
right by relying on initcall ordering as long as this one can only be built-in
(or possibly only a module for compile-testing).

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
