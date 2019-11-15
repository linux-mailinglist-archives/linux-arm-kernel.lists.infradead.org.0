Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA2DFD6BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:09:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qbJlzsIx2Bx//YThPwK7yfVm1YE8b6V9M2SjLag/ZQ=; b=pOegzyWXVnzn9w
	BUIDmjRJQxZrlmE15rNiyQ4t5ayX0DZCZUandSY4lG4IbJnFFJj6gzjYDsP7Y+i3CEx3mzD+9QCRE
	qBSY6v+vNNvAPh0W5kLR3qrryMmLcAShymMYpPeAUO+yopuKg+KZn1i4hpe/tlcuAmzBi4Fq0T3WZ
	Wpun7BF8T7KAB5FBGYYxd3EHIFr+oIoPvKOObRPqnOG1vv7E3TirQgsyK96lv2w75+naxGqQXpns6
	yOh21NXApYjoaHAFpTUcMSyELXBfLWLVMDGggNueg4LZtxnymuJUBGf902jUdJmSzHXWdBuPKcK7W
	w4zNoW9o8Q86wTLiLRZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVVjA-0003lE-B7; Fri, 15 Nov 2019 07:09:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVj2-0003kj-1Z
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:09:01 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iVViy-0003Na-GI; Fri, 15 Nov 2019 08:08:56 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iVVik-0008Gw-CK; Fri, 15 Nov 2019 08:08:42 +0100
Date: Fri, 15 Nov 2019 08:08:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
Message-ID: <20191115070842.2x7psp243nfo76co@pengutronix.de>
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20191114181243.q37rxoo3seds6oxy@pengutronix.de>
 <7322163f-e08e-a6b7-b143-e9d59917ee5b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7322163f-e08e-a6b7-b143-e9d59917ee5b@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:52:54 up 181 days, 13:11, 128 users,  load average: 0.02, 0.03,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_230900_086285_256B076D 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 julien.thierry@arm.com, catalin.marinas@arm.com, christoffer.dall@arm.com,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu, corbet@lwn.net,
 liuwenliang@huawei.com, daniel.lezcano@linaro.org, linux@armlinux.org.uk,
 kasan-dev@googlegroups.com, geert@linux-m68k.org, dvyukov@google.com,
 bcm-kernel-feedback-list@broadcom.com, drjones@redhat.com,
 vladimir.murzin@arm.com, keescook@chromium.org, arnd@arndb.de,
 marc.zyngier@arm.com, andre.przywara@arm.com, pombredanne@nexb.com,
 jinb.park7@gmail.com, tglx@linutronix.de, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, nico@fluxnic.net,
 gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, rob@landley.net,
 philip@cog.systems, akpm@linux-foundation.org, thgarnie@google.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On 19-11-14 15:01, Florian Fainelli wrote:
> Hello Marco,
> 
> On 11/14/19 10:12 AM, Marco Felsch wrote:
> > Hi Florian,
> > 
> > first of all, many thanks for your work on this series =) I picked your
> > and Arnd patches to make it compilable. Now it's compiling but my imx6q
> > board didn't boot anymore. I debugged the code and found that the branch
> > to 'start_kernel' won't be reached
> > 
> > 8<------- arch/arm/kernel/head-common.S -------
> > ....
> > 
> > #ifdef CONFIG_KASAN
> >         bl      kasan_early_init
> > #endif
> > 	mov     lr, #0
> > 	b       start_kernel
> > ENDPROC(__mmap_switched)
> > 
> > ....
> > 8<----------------------------------------------
> > 
> > Now, I found also that 'KASAN_SHADOW_OFFSET' isn't set due to missing
> > 'CONFIG_KASAN_SHADOW_OFFSET' and so no '-fasan-shadow-offset=xxxxx' is
> > added. Can that be the reason why my board isn't booted anymore?
> 
> The latest that I have is here, though not yet submitted since I needed
> to solve one issue on a specific platform with a lot of memory:
> 
> https://github.com/ffainelli/linux/pull/new/kasan-v7

Thanks for that hint, I will try this series too :) I read that you
wanna prepare a v7 but didn't found it ^^

> Can you share your branch as well? I did not pick all of Arnd's patches
> since some appeared to be seemingly independent from KASan on ARM. This
> is the KASAN related options that are set in my configuration:

Of course I will push it to github and inform you shortly.

> grep KASAN build/linux-custom/.config
> CONFIG_HAVE_ARCH_KASAN=y
> CONFIG_CC_HAS_KASAN_GENERIC=y
> CONFIG_KASAN=y
> CONFIG_KASAN_GENERIC=y
> CONFIG_KASAN_OUTLINE=y
> # CONFIG_KASAN_INLINE is not set
> CONFIG_KASAN_STACK=1
> CONFIG_TEST_KASAN=m

My config is:

CONFIG_HAVE_ARCH_KASAN=y
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_KASAN=y
CONFIG_KASAN_GENERIC=y
CONFIG_KASAN_OUTLINE=y
# CONFIG_KASAN_INLINE is not set
CONFIG_KASAN_STACK=1
# CONFIG_TEST_KASAN is not set

> are you using something different by any chance?

Unfortunately not.

Regards,
  Marco

> -- 
> Florian
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
