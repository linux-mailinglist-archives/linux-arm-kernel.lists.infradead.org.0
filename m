Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0F7EB7D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 20:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocb8bGqclgHJ4DC07/C/fjdYpX6Kr0GqoF2y3JhXWsg=; b=MRvXNLqvQ7Wdcp
	Zxvtf4+ZvjnNduHP78J/1TaTgBNTHwJZ1VJGDE/eX9AqnxpDrLcaM7Sc230HBRzN0mvqbqQwDa4kF
	l+Mq9tNDM8unJFZLO6FBIYY3q2QtoxFfy3BMSeoCNJ44AIaPu9dC6CGiVIf++rNXT6FkExhe01GPx
	PAJXRGAeL3IBxlbPMr24sw2Mn1vhsdd5FBrwmZI9RRyKWVFD/e+rT0D2VhQ30KvyVZcg8sgS2weAE
	WJMQ63rChmDdY/aXV0NXXwIqf1tFErZujqaj376mZ+ylRqbAJ1BkkuorIp5B/4GYNbXhXBNZffc9L
	0msnPnSbEad9FaRtFkpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFsb-0003Oa-Pt; Thu, 31 Oct 2019 19:13:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFsR-0003O9-No
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 19:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572549177; bh=FBhBhCbprAZVkPZ3QAQvStNaQNJCu5ZanEhE9s1mTjM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=hCM/GltDpo77xYTpaz5/dMejRWcp59srCsks7ySNzk7z79SyUnRSfnGdVP5DlrOpR
 1ip+EBcUGDaNCK/biB6v8CbSlFIlqVZTyRqOaNPsSiM08tOHV1BKrSXrIv6dKpRsSJ
 jVyh+iOa7L3nh1tSDQgOAVE7UuRJ/AB0EBdoG/ys=
Date: Thu, 31 Oct 2019 20:12:57 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] cpufreq: sun50i: Fix CPU speed bin detection
Message-ID: <20191031191257.j7bpxx5xyot2ay2i@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191031181359.282617-1-megous@megous.com>
 <CAJiuCcdZqpoXKuupk_w3F1npZgCHDgb=+Fdd1ukKA22K2PJ6Ww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdZqpoXKuupk_w3F1npZgCHDgb=+Fdd1ukKA22K2PJ6Ww@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_121300_103341_EEEA31F2 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 31, 2019 at 07:55:43PM +0100, Cl=E9ment P=E9ron wrote:
> Hi Ondrej,
> =

> On Thu, 31 Oct 2019 at 19:14, Ondrej Jirman <megous@megous.com> wrote:
> >
> > I have failures to boot on Orange Pi 3, because this driver determined
> > that my SoC is from the normal bin, but my SoC only works reliably with
> > the OPP values for the slowest bin.
> >
> > Looking at BSP code, I found that efuse values have following meanings
> > on H6:
> >
> > - 0b000 invalid (interpreted in vendor's BSP as normal bin)
> > - 0b001 slowest bin
> > - 0b011 normal bin
> > - 0b111 fastest bin
> =

> Maybe have some defines will be more readable no ?
> https://megous.com/git/linux/tree/drivers/soc/sunxi/sunxi-sid.c?h=3Dh6-4.=
9-bsp#n213

Hmm, Alwwinner is really funny. Unused macros that just confuse things.

#if defined(CONFIG_ARCH_SUN50IW6)
#define TYPE_SB (0b001)
#define TYPE_NB (0b010)
#define TYPE_FB (0b011)
#else
#define TYPE_SB (0b001)
#define TYPE_NB (0b011)
#define TYPE_FB (0b111)
#endif

So for H6 they define special bin values and actually use different ones
in code. Fun.

I've sent out some testing program to Armbian forums, so hopefully, we'll
collect some real efuse_values from real SoCs, to see what's really being
used in the wild. If we see value 0b010, the BSP code is probably just
wrong.

Interestingly, TYPE_NB 0b010 would be interpreted as normal bin even with
the current BSP code, and TYPE_FB would be misdetected as TYPE_NB.

> #define SUN50I_NVEM_INVALID_CPU_OPP (0b000)
> #define SUN50I_NVEM_LOW_CPU_OPP (0b001)
> #define SUN50I_NVEM_NORMAL_CPU_OPP (0b011)
> #define SUN50I_NVEM_HIGH_CPU_OPP (0b111)

I'd rather not describe meanings just yet, until we get some real-world
data from H6 owners.

https://forum.armbian.com/topic/9368-orangepi-3-h6-allwiner-chip/?do=3Dfind=
Comment&comment=3D88439

regards,
	o.

> Regards,
> Cl=E9ment
> =

> >
> > Let's play it safe and interpret 0 as the slowest bin, but fix detection
> > of other bins to match vendor code.
> >
> > Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling drive=
r")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >
> > See https://megous.com/git/linux/tree/drivers/soc/sunxi/sunxi-sid.c?h=
=3Dh6-4.9-bsp#n484
> > and https://megous.com/git/linux/tree/drivers/cpufreq/sunxi-cpufreq.c?h=
=3Dh6-4.9-bsp#n428
> > (1 is substracted from soc_bin number here!)
> >
> >  drivers/cpufreq/sun50i-cpufreq-nvmem.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/cpufreq/sun50i-cpufreq-nvmem.c b/drivers/cpufreq/s=
un50i-cpufreq-nvmem.c
> > index df35ef3ef567..41dad03e245c 100644
> > --- a/drivers/cpufreq/sun50i-cpufreq-nvmem.c
> > +++ b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
> > @@ -71,9 +71,12 @@ static int sun50i_cpufreq_get_efuse(u32 *versions)
> >         efuse_value =3D (*speedbin >> NVMEM_SHIFT) & NVMEM_MASK;
> >         switch (efuse_value) {
> >         case 0b0001:
> > -               *versions =3D 1;
> > +               *versions =3D 0;
> >                 break;
> >         case 0b0011:
> > +               *versions =3D 1;
> > +               break;
> > +       case 0b0111:
> >                 *versions =3D 2;
> >                 break;
> >         default:
> > --
> > 2.23.0
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/m=
sgid/linux-sunxi/20191031181359.282617-1-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
