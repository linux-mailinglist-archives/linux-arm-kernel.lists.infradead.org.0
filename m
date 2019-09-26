Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAA7BF9CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjRt7yfx3tc5mjQE6fJR+k+Q10aqiXKvn/HDvCG+8Bg=; b=Z4H+P/9Nlh7M9O
	JZUGk1vNPd5PJfC6mUuExof0QWMAJMvOU2KuVf2GvWA2qFld93WxVNFZnAXXh9ZTcLUCjnmMW6cns
	SDwB6E/Dc9mCqCYg2/1Kw3x+wvgh745nE08JrZPGGoe0gvbCIkw1YSXXoc97jx+h6VQxvc9FyaGQp
	SdEWt+KXU/VoNvMFglTXWIrfv361WdrvjGN3o4RJJnS6qNA26xEnBO5cfL1r4ePpYW47KlJcveHJ0
	g+9i3EjambwSsYtCMBxuig7Ebpmb2r1UN2H41edJKoSpC5XXR0c5UxrzsFaVqNaiCSqEM0LODBLf9
	pFyE9FA5SWFhQZmRgOtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZ7m-0003rx-06; Thu, 26 Sep 2019 19:08:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZ7Z-0003qa-0n
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:08:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id v27so2035777pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=F73+uceeMuwpCeg4MV5QzpHw3q82Pex8Nuzkj5F9opo=;
 b=jG3mOcORe7V8TStUeyIHOoco3/ZswveSY1cOOp7+I6U41pzEdJnFQwWJ98wBGIA2JH
 ysiJn7mqk0oWBxQ/cx9Ucobt9do5ZcSNfrPnJ8SxX2FJ3OTLpp65IYyr1yVF5s1zn5g1
 y47d+NB/p0veHoUaA/rMoR7KUvOVtyee6EJUU0sm3hwXuBRVVFS8Z4QnY9/NNrsw5js9
 557vui3D5YVUp+54ISTnwmbrDt4XS18I/v/hSaT1mpHn3Sp2L4ZUhV/29wqn3bwaNI69
 A9cjhnRNxswTYp8QBLslLYsx6mHdnviP7NKfIu5cZlTlsiTa5yx+dQJ7UHqFj07JaEeO
 81MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=F73+uceeMuwpCeg4MV5QzpHw3q82Pex8Nuzkj5F9opo=;
 b=U/O7rHvMWfs8YnnMDSJf3MZ43JMyZJEQ6z9Z+iYRnFi/BLkEkooj7kbHGUb8uKLc+B
 u58JwxfbVNDHPmB+3OS77WVuB0nk8tzjL0mOJjH+OyaNY9SLOoJpNt37GYcHO6NGx7rF
 mssqwe/Dl9EueaP9Pcy88pZW9Sq36DPTiXSNwz5OGBBIniIPdxo3megwuGTzsiN1xxmf
 NCJK4EE70hlDxGyE92A9KtYK+p62luhyFLLYt3HF9P4HyE8kyCs/3mgrSoRgRvq7rxlE
 cYo90dqfT3eLKXjAEYi3qxiRoO7B5dR/zUoFv3fNnnLQeRs0k4nYFZTJODcl6sGP7Cty
 VXBA==
X-Gm-Message-State: APjAAAXzdPOX9kyVn1v3IoHOD62S95F4Tfj/BXjFYkl8M+J4KUOrPDon
 s7LkbnS7vx+Q/wziDfbtATe1LA==
X-Google-Smtp-Source: APXvYqwcQ3nCA8Z13SSlrZG7RcPrMaxO33BCtRCxeOgnBoi95HRUlE0FcaBHLDCq4saFBcU8qbnZnQ==
X-Received: by 2002:aa7:8acf:: with SMTP id b15mr5312222pfd.191.1569524885043; 
 Thu, 26 Sep 2019 12:08:05 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id k3sm3221570pgl.9.2019.09.26.12.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 26 Sep 2019 12:08:04 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@kernel.org>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2 2/2] soc: amlogic: ee-pwrc: ensure driver state maches
 HW state
In-Reply-To: <8936e777-8996-5c7b-ea9d-8e17c8d6c4b1@baylibre.com>
References: <20190925213528.21515-1-khilman@kernel.org>
 <20190925213528.21515-3-khilman@kernel.org>
 <8936e777-8996-5c7b-ea9d-8e17c8d6c4b1@baylibre.com>
Date: Thu, 26 Sep 2019 12:08:01 -0700
Message-ID: <7hwodulvu6.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_120809_096414_DC273368 
X-CRM114-Status: GOOD (  27.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 25/09/2019 23:35, Kevin Hilman wrote:
>> From: Kevin Hilman <khilman@baylibre.com>
>> 
>> During init, ensure that the driver on/off state as well as clock and
>> reset state matches the hardware state.  Do this by always calling the
>> drivers 'on' function, and then callling the 'off' function if the
>> HW state was initially detected as off.

[...]

> I don't see what you are trying to solve except simplifying the code.

Simplifying the code is a worthwhile goal on its own, but that's not the
only thing I'm tring to accomplish.

Part of the goal is make the init less VPU specific and thus make it
more understandable/maintainable.  But the more important part is to
ensure that the driver state and HW state is consistent for all the
domains (not just VPU.)  I've had to debug lots of power-domain issues,
and inconsistiences between HW state and driver state tend to be the
primary cause of problems.

Also I'm generally not a fan of the "don't mess with bootloader state"
approach as that leads to subtle dependencies on specific bootloader
versions that are also difficult to debug.

Antother equally important goal is to actually be able to power-down the
VPU when it's not used.  Right now, we'll never power off the VPU if the
bootloader enabled it, and that seems a bit extreme so I'm looking to
improve that and be able to power off the VPU when not used.

> And the case is more that "matching the clock state" here, the
> pm_domain_always_on_gov was is a real case when booting from the Amlogic
> U-boot.

I'm not understanding what you mean about vendor uboot.  I've done
testing with vendor uboot too:

I tried on g12a-u200, g12a-x96-max, and sm1-khadas-vim3l all of which
have vendor uboot, and I tried before and after $SUBJECT patch.

In all cases, I see the vendor uboot splash screen, and I see the
framebuffer console from linux after kernel boot.  I see the same
behavior before and after my patch.

I also tried on g12b-odroid-n2 (vendor uboot), and there is _no_ uboot
spash screen, but I see the linux framebuffer console come up both
before and after my patch.

What's the specific case you're worried about with vendor uboot?

Also...  note something interesting I noticed on sm1-khadas-vim3l:
before my patch, the framebuffer console appears, but the background is
a bluish/green color.  After my patch, the background is black (as
expected.)  

> The display power domain is complex and as been half solved by using
> "simple-framebuffer" on gx and is missing on g12a/g12b/sm1.
>
> For example, Debian installer runs without the modules, but will use
> the EFIfb set by U-Boot, but in this precise case :
> - the DRM driver isn't loaded
> - we can't hook this power domain with EFIfb

OK, so I agree that this case where we want the display to continue to
work but linux DRM drivers never loaded is a special case.

Is there a way to check if efifb is enabled?  Is the the linux driver
(drivers/video/fbdev/efifb.c) or something else only done by uboot?

If we can detect efifb from the kernel (not just whether the domain is
already on), then a simple addition to my patch like this:

 	if (is_off)
 		meson_ee_pwrc_off(&dom->base);
+	else if (efifb_is_enabled)
+		dom->base.flags |= GENPD_FLAG_ALWAYS_ON;

would force the domain always-on in the case of efifb.  

In fact, now that I think of it, simply adding:

 	if (is_off)
 		meson_ee_pwrc_off(&dom->base);
+	else
+		dom->base.flags |= GENPD_FLAG_ALWAYS_ON;

to my current patch would get back to the same behavior of the existing
driver.  But I still don't like the idea that we can *never* power off
the VPU if the bootloader enables it. :( I'd rather see patches
conditionally adding that flag with detailed explanations as to why it's
needed.

> When *not* in EFIfb, we use simple-framebuffer on GX, using this
> power domain, but it hasn't been copied to G12A.

I don't quite understand what problem simple-framebuffer is
solving. Could you explain that in more detail.

Assuming it is solving something, why can't it be used on g12[ab]/sm1 ?

> Personally I'll leave this code until we really tested and checked all
> uses cases, 

Right, I don't want to break anything on purpose, but I think the
current state of this driver is fragile and difficult to
understand/maintain, so I would be grateful for any help in
understanding the corner cases better, as well as testing them (or
explaining to me how to reproduce them.)

Generally, with long-term maintenance in mind, if I'm forced to choose
between understandable/maintainable code and "covers 100% of corner
cases" I will most often chose the former.

> not only on the sei510/sei610 using mainline u-boot.

See above about all the other boards with vendor uboots also tested.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
