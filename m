Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FFDFDC78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHdoTIpVx1itKbhhhHudzHcNeRT9iK1N+k9CGWzcyxk=; b=cYZGryYngSSi8d
	JtcfmHxoLLuAy/zoMt4m8kMsCinX2K0Lg1AemDW5ZSUyvSfwy5b3CsrBTBOj6NpnonJB8cJ+uASJt
	V649cgpwnQ413mGmt6NKP2MRXLk/ap31J4hqCTholghiovwXJ99mxC0Cq7aE7SZXuaEbXicKKVfzz
	V+9j3VaejW7BWRbh9sOTStRrGDRRQTWpOkAyFTDFAIiJ3M37fX1IjrK22A03dOMx1Wv6unl2Pz/BH
	LuzY3z5+K7EikmQFrDrM1AW1UF2JT/DERpXNhOz+GiJKC7yXQV9KEFEADGfqwvIArqrcXBu/8OLgZ
	6f5CIGyfqaC9LA3P7sww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVa2N-0001mN-KR; Fri, 15 Nov 2019 11:45:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVa2D-00012m-Pl
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 11:45:07 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iVa1Z-0007QU-T6; Fri, 15 Nov 2019 12:44:25 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iVa1Q-0008K2-Ab; Fri, 15 Nov 2019 12:44:16 +0100
Date: Fri, 15 Nov 2019 12:44:16 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
Message-ID: <20191115114416.ba6lmwb7q4gmepzc@pengutronix.de>
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20191114181243.q37rxoo3seds6oxy@pengutronix.de>
 <7322163f-e08e-a6b7-b143-e9d59917ee5b@gmail.com>
 <20191115070842.2x7psp243nfo76co@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115070842.2x7psp243nfo76co@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:28:52 up  2:47, 19 users,  load average: 0.00, 0.04, 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_034505_841141_D39B0B87 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, mhocko@suse.com,
 julien.thierry@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu, rob@landley.net,
 corbet@lwn.net, liuwenliang@huawei.com, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 geert@linux-m68k.org, drjones@redhat.com, vladimir.murzin@arm.com,
 keescook@chromium.org, arnd@arndb.de, marc.zyngier@arm.com,
 andre.przywara@arm.com, philip@cog.systems, jinb.park7@gmail.com,
 tglx@linutronix.de, dvyukov@google.com, nico@fluxnic.net,
 gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 linux-doc@vger.kernel.org, christoffer.dall@arm.com, kernel@pengutronix.de,
 pombredanne@nexb.com, akpm@linux-foundation.org, thgarnie@google.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On 19-11-15 08:08, Marco Felsch wrote:
> Hi Florian,
> 
> On 19-11-14 15:01, Florian Fainelli wrote:
> > Hello Marco,
> > 
> > On 11/14/19 10:12 AM, Marco Felsch wrote:
> > > Hi Florian,
> > > 
> > > first of all, many thanks for your work on this series =) I picked your
> > > and Arnd patches to make it compilable. Now it's compiling but my imx6q
> > > board didn't boot anymore. I debugged the code and found that the branch
> > > to 'start_kernel' won't be reached
> > > 
> > > 8<------- arch/arm/kernel/head-common.S -------
> > > ....
> > > 
> > > #ifdef CONFIG_KASAN
> > >         bl      kasan_early_init
> > > #endif
> > > 	mov     lr, #0
> > > 	b       start_kernel
> > > ENDPROC(__mmap_switched)
> > > 
> > > ....
> > > 8<----------------------------------------------
> > > 
> > > Now, I found also that 'KASAN_SHADOW_OFFSET' isn't set due to missing
> > > 'CONFIG_KASAN_SHADOW_OFFSET' and so no '-fasan-shadow-offset=xxxxx' is
> > > added. Can that be the reason why my board isn't booted anymore?
> > 
> > The latest that I have is here, though not yet submitted since I needed
> > to solve one issue on a specific platform with a lot of memory:
> > 
> > https://github.com/ffainelli/linux/pull/new/kasan-v7
> 
> Thanks for that hint, I will try this series too :) I read that you
> wanna prepare a v7 but didn't found it ^^
> 
> > Can you share your branch as well? I did not pick all of Arnd's patches
> > since some appeared to be seemingly independent from KASan on ARM. This
> > is the KASAN related options that are set in my configuration:
> 
> Of course I will push it to github and inform you shortly.

Here comes the link:
https://github.com/medude/linux/tree/v5.4/topic/kasan-arm.v7

I just applied Arnds Patche which you didn't added into your v7.

> > grep KASAN build/linux-custom/.config
> > CONFIG_HAVE_ARCH_KASAN=y
> > CONFIG_CC_HAS_KASAN_GENERIC=y
> > CONFIG_KASAN=y
> > CONFIG_KASAN_GENERIC=y
> > CONFIG_KASAN_OUTLINE=y
> > # CONFIG_KASAN_INLINE is not set
> > CONFIG_KASAN_STACK=1
> > CONFIG_TEST_KASAN=m
> 
> My config is:
> 
> CONFIG_HAVE_ARCH_KASAN=y
> CONFIG_CC_HAS_KASAN_GENERIC=y
> CONFIG_KASAN=y
> CONFIG_KASAN_GENERIC=y
> CONFIG_KASAN_OUTLINE=y
> # CONFIG_KASAN_INLINE is not set
> CONFIG_KASAN_STACK=1
> # CONFIG_TEST_KASAN is not set
> 
> > are you using something different by any chance?
> 
> Unfortunately not.

With your v7 it is working on my imx6 but unfortunately I can't run my
gstreamer testcase. My CPU load goes to 100% after starting gstreamer
and nothing happens.. But the test_kasan module works =) So I decided to
check a imx6quadplus but this target did not boot.. I used another
toolchain for the imx6quadplus gcc-9 instead of gcc-8. So it seems that
something went wrong during compilation. Because you didn't changed
something within the logic.

I wonder why we must not define the CONFIG_KASAN_SHADOW_OFFSET for arm.

Regards,
  Marco

> Regards,
>   Marco
> 
> > -- 
> > Florian
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
