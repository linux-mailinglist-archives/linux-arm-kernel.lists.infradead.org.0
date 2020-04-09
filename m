Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDABC1A3191
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCsiNVZmyXxtDMkEt6tv+ke86sTnsfzZUMQ4qq/eCF4=; b=c1MqPwVO/dgbwq
	Ei8HRHrxHoMQmyokCOoYZl7Pq3O3BlJI0GC0Vc6MM6ff3qlCugvnmDVtCnDyeHDwlRx03i0QVYIvm
	umMgEterKWvOaZlfYdUdCwvJbz7f8s5zciExrbW14CETjwEkBpKW+AAX7nZ2OZuIj35ll7iG4B+b0
	f+im3RdQHwK609h+i/63he7N7Ae9x/TIfRouPIEGZeWdum8Ay8hRBap4lG/9OxbQ9qEPD6mYQ64i6
	8m+vjmyuX+R6EzKDuyYhJ31kdrEn6s9yYge+ZYuRsorrVm+zar3QnGfkvrlmTjTVbHJD4uEtDMwD1
	5HQH4MpR/cn1D/RpMnhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTCS-0004yH-Dz; Thu, 09 Apr 2020 09:10:16 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTCA-0004xG-Nb
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:10:00 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MJmbB-1jc5Iz2iqH-00K54L for <linux-arm-kernel@lists.infradead.org>; Thu,
 09 Apr 2020 11:09:56 +0200
Received: by mail-qt1-f181.google.com with SMTP id b10so2184410qtt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 02:09:56 -0700 (PDT)
X-Gm-Message-State: AGi0PuaMhCAL4GVtIe20pFPnY9N7gJM2p5gWZRZYlXB8OeWkBISMQUYv
 KX5ZYIVp1IJQA2RMD2eauRKJXIQDfVG6r1ZkDq8=
X-Google-Smtp-Source: APiQypLuQYJYCKPcCisV3XCZoYysZpIygpIYahJxiMvd/247uxOlTutqw6XoUwrh8HjfKn/RqyjJRpObO3F17rqWLAA=
X-Received: by 2002:aed:20e3:: with SMTP id 90mr3504312qtb.142.1586423395512; 
 Thu, 09 Apr 2020 02:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200408155224.2070880-1-arnd@arndb.de>
 <69e8b684-c314-d356-bf3e-e38676d07853@xilinx.com>
In-Reply-To: <69e8b684-c314-d356-bf3e-e38676d07853@xilinx.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 9 Apr 2020 11:09:39 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3j7BLJZGsNFU2XLsnnBiP0x+qkPVxD0-L9Faq7+m2=BQ@mail.gmail.com>
Message-ID: <CAK8P3a3j7BLJZGsNFU2XLsnnBiP0x+qkPVxD0-L9Faq7+m2=BQ@mail.gmail.com>
Subject: Re: [PATCH] drivers: soc: xilinx: fix firmware driver Kconfig
 dependency
To: Michal Simek <michal.simek@xilinx.com>
X-Provags-ID: V03:K1:eIefoK3Rcuspb1bqqIDkxjVzJW3zf7bT5TXGuqabzgq36khdL3T
 bvvzGJDM4f7BmZZf4dWWYDyyTU7PWvLnKpb/eOgAI6mgK25tfHQmtprr37aCrRLbz3hCqsv
 9dT5IKQmCp7R0S2kLP8bc2q1WPuLFXtCdDS/YOHbr1K7KeJHAAG0GHio3GH4gw9eSp0im2e
 23oVQYhOc+nv/Lt2tkrew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tb7aOqzlmGU=:TdVXK+73PEWAX4OmAuEbHJ
 /Kmz9r+6VvTWfmv6GWNrbM+goPUHTQuG3tOJP/D4B50K1qitatYpcnAIWTmG6N/fHpn+YkOtL
 DUbB6NzOmv1+fhIJRlfdLb5PvnI2GZjuaMK/sNFvWQWjMgYNzU4CUGwm5vrmLckdKsQ8ML7Jl
 IVse/MXLaDG5YroTgLVm8TUPpHr5u+9ZnbHL/wvUa8pEMIwhZNOxrDVlG0Zy2XFn8K9oIniMk
 WbV+fEc92eLOwO/ebsJKXMw6/cZYu+n/5pBIRXLbN9f2oU3SfMeIzZM5NOx81N1teS09RHRhw
 i6IRhTeEJ7jGNaKavqrSHBPoKTSy7OJQDH2fJ8JK9jN/zxHg784CAJ2BQBRBMQod4ZCTEPmIK
 KmncjP+ZUUrX0cDX6DxEM/KiFXOZZkB2/oyU0Mp8kdwUjN3hueq+yjsaGr1IpW3wwFpMnMh08
 Y9BZKF+AnMFfV5EsWUPzbd5ygwn38GZCZdSToCa61b5D7992lRCto/1gnedpumXjUiOvcre0K
 XEEVLYiBjWBZUTfCELeijyUV7pdL1phHYiVHzv6EvaNXKP6iatWtMTHVT0MLOPPpTOKlImcqv
 OxN4sYfXToBlNtHFimngt5xoRBQO1iVaCQQ/B0SP5iYX5q3wL9MWNZToZgqdNmxDLFnNJ2jOh
 bmQCKVUkGh5nafubUxwDu7FrZALUK3HhpSXu296/RpuhMMGHMH99DoCYWI+uOC92NkHVZfOQI
 0RVVZt42arAtGGxP6kOcW/VMZZeAODeuG7l3LIkIMpvA98i7IANBEGl5lfM9DSCepUy3GvFwF
 NwOw+em7VK0awHL5hTy44ilZ1jI4kzievHBN2c8o0uTg34tW/I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_020959_061713_EA4157D4 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Jolly Shah <jolly.shah@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 8:37 AM Michal Simek <michal.simek@xilinx.com> wrote:
>
> On 08. 04. 20 17:52, Arnd Bergmann wrote:
> > The firmware driver is optional, but the power driver depends on it,
> > which needs to be reflected in Kconfig to avoid link errors:
> >
> > aarch64-linux-ld: drivers/soc/xilinx/zynqmp_power.o: in function `zynqmp_pm_isr':
> > zynqmp_power.c:(.text+0x284): undefined reference to `zynqmp_pm_invoke_fn'
> >
> > The firmware driver can probably be allowed for compile-testing as
> > well, so it's best to drop the dependency on the ZYNQ platform
> > here and allow building as long as the firmware code is built-in.
> >
> > Fixes: ab272643d723 ("drivers: soc: xilinx: Add ZynqMP PM driver")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/soc/xilinx/Kconfig | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
> > index 223f1f9d0922..646512d7276f 100644
> > --- a/drivers/soc/xilinx/Kconfig
> > +++ b/drivers/soc/xilinx/Kconfig
> > @@ -19,7 +19,7 @@ config XILINX_VCU
> >
> >  config ZYNQMP_POWER
> >       bool "Enable Xilinx Zynq MPSoC Power Management driver"
> > -     depends on PM && ARCH_ZYNQMP
> > +     depends on PM && ZYNQMP_FIRMWARE
> >       default y
> >       select MAILBOX
> >       select ZYNQMP_IPI_MBOX
> > @@ -35,7 +35,7 @@ config ZYNQMP_POWER
> >  config ZYNQMP_PM_DOMAINS
> >       bool "Enable Zynq MPSoC generic PM domains"
> >       default y
> > -     depends on PM && ARCH_ZYNQMP && ZYNQMP_FIRMWARE
> > +     depends on PM && ZYNQMP_FIRMWARE
> >       select PM_GENERIC_DOMAINS
> >       help
> >         Say yes to enable device power management through PM domains
> >
>
> The same issue is likely with others drivers dependencies too which
> depends on ARCH_ZYNQMP.
>
> It means all drivers which includes "linux/firmware/xlnx-zynqmp.h" and
> call zynqmp_pm_get_eemi_ops() should depend on ZYNQMP_FIRMWARE instead
> of ARCH_ZYNQMP.

The only one I see that has a hard dependency on ARCH_ZYNQMP
without allowing compile-testing at the moment is drivers/edac/synopsys_edac.c
but that doesn't use the firmware interface.

What I see in the header are declarations for exported functions:

int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
                        u32 arg2, u32 arg3, u32 *ret_payload);
#if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
#else
static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
{
        return ERR_PTR(-ENODEV);
}
#endif

The second one already allows compile-testing by turning into an
inline stub, but zynqmp_pm_invoke_fn() does not, and this is the
one causing the problem here.

I still think my patch is a good fix for that issue, but if you want to
handle both interfaces the same way, we can also do that, either
removing the stub and using a proper dependency, or using
the same stub trick for both.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
