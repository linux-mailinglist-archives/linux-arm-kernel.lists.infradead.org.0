Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72125B885
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5Pf8XN23aUmuatpPmuNsIwG0GuR/FBBJbkp3BE6qjc=; b=VgoBeq5DTi59Ey
	KdeFlZoHN5+Q5GRVC17RoKJdwnCeKVOK0scp6N2GyLaZmziMX242J9tJ3ZvPIPUDsEvzhX3JOZ84Q
	gSsl+ZQT8xmFzq3O5ZkhK+YNoQs68Pwhy/Tlr3KVNbf+aN5l71fmec90QQuav2xb2N/+PovbVngrt
	2LjF8KiWHtNzfft7r+mSk5gGzYiJFT0XqtTRP044KGTZN9zEq9tioASXhq+mb6oomud739keBNTO1
	gEKOPsTFchAqRxaqi6f92jsljJ5Yl6PaQTSQXUwQoSBsEntlZePe3gX/YVQqclWfKMn6WclPiy0rR
	32FjatRwY1Tf5qmrcahg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hht69-0003I7-RS; Mon, 01 Jul 2019 09:59:45 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hht5k-00039h-A4
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:59:22 +0000
Received: by mail-oi1-x242.google.com with SMTP id a127so9465983oii.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zJ1eCqybR6XBDa3xMqEmhEU7kRa806a7wltOX8SiK1E=;
 b=Img0Pav5pdGVOal2OPYiuiF+ozFL6PDQsvm+tSDEOJ39/1ug//jFIEp4R97AHMGedS
 MBD+FyKb5hf+nz1oJ/L4rBvtKuBmFhsxW4ulJMJ93tHMLZMUfg4370PIplJC7mx186sW
 4TfYSKAIVKNV7gHoP8I2Yn4tTGY+uEGjJ9gzwgzBHTBgG2oNFK8OXfdvJJPS3lJBO32R
 pRksTU3sxQ1y636HuyCVuAwgRlZqNCdCOi1kCJzmvDLrx5bc71EckHpNNSIhoEeJnMQ3
 yoOfmO4V9xkAErOH2tA9TnER0MWkGYPT68wyol5j1jZzXTWW83v0zo4y1vFcs1Fem1Mg
 is0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zJ1eCqybR6XBDa3xMqEmhEU7kRa806a7wltOX8SiK1E=;
 b=WGKUv8pKxp6LhIvRgN2hnGajIvzWodLYYJXWDxhICwC5ixm9MUwzpQdfDzKsqeraUe
 jvRpMKCu3+QR+vx35IGXg6mKiB2wDQyRjlcxGmpblo+d6u8osuQRFqzajUvi5d5exaoM
 WbtZsntONLIVj2WfD/c01qYo8Nw4MrF7HIliSjm4VhEwp4L4XJiR4zWUet7T3kgu9Vau
 vRME2rE+enRDE7gkPV34l/VW/60HtAbRATkIwiwrzZEFN4ZCeJuV07dPLpqhv8WFMbIN
 EP0EXg9MMDxsBVzWwYz/QDcUbxgJQQC+8zUyfvXoqp647mIcKWrPFEC120nEBjwMRPyI
 14nA==
X-Gm-Message-State: APjAAAU2AoAYc/tCsi1+KjTBQrRsfFVKzkwM/+d7TFVhS6A1zN+WzW95
 h3aUT6y5NzmEejut5NuVcIS+QA==
X-Google-Smtp-Source: APXvYqwuzxYxvAyr6Pwp7jk4NOSZbMD9VdMPR6CLCUueq3LidiHNe8WNZ6Gl1AMTFZjImE8teVbY7g==
X-Received: by 2002:aca:37c5:: with SMTP id e188mr6133417oia.66.1561975159282; 
 Mon, 01 Jul 2019 02:59:19 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id r25sm3999683otq.39.2019.07.01.02.59.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 02:59:18 -0700 (PDT)
Date: Mon, 1 Jul 2019 17:59:10 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190701095910.GC32042@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <20190628024529.GC20296@leoy-ThinkPad-X240s>
 <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
 <20190628085154.GD32370@leoy-ThinkPad-X240s>
 <20190628090013.GI34530@e119886-lin.cambridge.arm.com>
 <20190628094116.GF32370@leoy-ThinkPad-X240s>
 <ff3c3659-930a-1572-588b-9cb040f38e4f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff3c3659-930a-1572-588b-9cb040f38e4f@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_025920_386500_6829973B 
X-CRM114-Status: GOOD (  31.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, stable@vger.kernel.org, Sudeep.Holla@arm.com,
 andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Mon, Jul 01, 2019 at 09:58:29AM +0100, Suzuki K Poulose wrote:
> Hi Leo,
> 
> On 28/06/2019 10:41, Leo Yan wrote:
> > Hi Andrew,
> > 
> > On Fri, Jun 28, 2019 at 10:00:14AM +0100, Andrew Murray wrote:
> > > On Fri, Jun 28, 2019 at 04:51:54PM +0800, Leo Yan wrote:
> > > > Hi Andrew,
> > > > 
> > > > On Fri, Jun 28, 2019 at 09:35:24AM +0100, Andrew Murray wrote:
> > > > 
> > > > [...]
> > > > 
> > > > > > > @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
> > > > > > >   	control &= ~0x1;
> > > > > > >   	/* make sure everything completes before disabling */
> > > > > > > -	mb();
> > > > > > > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> > > > > > > +	dsb(sy);
> > > > > > 
> > > > > > Here the old code should be right, mb() is the same thing with
> > > > > > dsb(sy).
> > > > > > 
> > > > > > So we don't need to change at here?
> > > > > 
> > > > > Correct - on arm64 there is no difference between mb and dsb(sy) so no
> > > > > functional change on this hunk.
> > > > > 
> > > > > In repsonse to Suzuki's feedback on this patch, I've updated the commit
> > > > > message to describe why I've made this change, as follows:
> > > > > "On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
> > > > > only used on armv8 let's directly use dsb(sy) instead of mb(). This
> > > > > removes some ambiguity and makes it easier to correlate the code with
> > > > > the TRM."
> > > > > 
> > > > > Does that make sense?
> > > > 
> > > > On reason for preferring to use mb() rather than dsb(sy) is for
> > > > compatibility cross different architectures (armv7, armv8, and
> > > > so on ...).  Seems to me mb() is a general API and transparent for
> > > > architecture's difference.
> > > > 
> > > > dsb(sy) is quite dependent on specific Arm architecture, e.g. some old
> > > > Arm architecures might don't support dsb(sy); and we are not sure later
> > > > it will change for new architectures.
> > > 
> > > Yes but please note that the KConfig for this driver depends on ARM64.
> > 
> > Understood your point.
> > 
> > I am a bit suspect it's right thing to always set dependency on ARM64
> > for ETMv4 driver.  The reason is Armv8 CPU can also run with aarch32
> > mode in EL1.
> > 
> > If we let ETMv4 driver to support both aarch32 and aarch64, then we
> > will see dsb(sy) might break building for some old Arm arches.
> 
> If we add support for ETMv4 on aarch32, I would recommend adding a "dsb"
> explicitly for aarch32 to make sure, it doesn't default to something else
> that the mb() may cover up as.

For aarch32, mb() should work well with below definition:

#ifdef CONFIG_ARM_HEAVY_MB
#define __arm_heavy_mb(x...) do { dsb(x); arm_heavy_mb(); } while (0)
#else
#define __arm_heavy_mb(x...) dsb(x)
#endif

#if defined(CONFIG_ARM_DMA_MEM_BUFFERABLE) || defined(CONFIG_SMP)
#define mb()		__arm_heavy_mb()
#else
#define mb()		barrier()
#endif

> There is no point in creating another level
> of indirection when the architecture is clear about it and the ETMv4 supporting
> architectures must implement "dsb". Had this been in a generic code, I would
> be happy to retain mb(). But this is specific to the ETMv4 driver and we know
> that dsb must be there.

Okay, I understand the purpose for more explict barrier in the code;
this would be fine for me.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
