Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F767784B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 12:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYvjd3Ax/B8nzh9fzM3ZIsh7TXV7ZfBzlHHb6479SFg=; b=ieKJ4dz6tN+Nx8
	NAV/A4Uz61Z/1y0ZAZTd3XUheK8WyYqb8RJWQcFvALYNpdm1+jD4f3kbAj6kwZ8gN6ry5Yy9iyYgc
	d84MorS4Ev84lrqVLf39862QDmK0gHzIsiF82LwiqAkqtbcQL6nd88cjNiEoLBok4VM/WjkVJp4iE
	aVYOLBGDaKDS4kpT83JuRqLPkfjfDPJwsjcHRdOxVc4kIQYlNUG7au2FgbfwSpv0w2bC0as/bNmNq
	BDnSIsjU/KYPuW+psGQhAMHgDrUdpaqE/DS0CqotCzoyC6kalOWvkTFliRLehiBZ5/5/P9WbqvttO
	Nf39hXnhWcVkg7TltuBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrKHM-0007JU-Ra; Sat, 27 Jul 2019 10:50:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrKHF-0007If-GV
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 10:50:14 +0000
Received: from localhost (lfbn-1-17239-195.w86-248.abo.wanadoo.fr
 [86.248.61.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37D112085A;
 Sat, 27 Jul 2019 10:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564224612;
 bh=g6N3S38sMlPdUwOIQ954YRUIiHzxHJSm1difeoQG+D0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LK0V1Uytt60lUv2RslLChq0URR7ysSdVmJbcdtZNiVWm4tzK2FONkUo2nLMt7PQzC
 XOqn+hSmXLZs44TwrgBNI3MVzTEYcPQReIUhkOtbpBeClUqncnuk0MwyHmomUMW9Qy
 dT6gZH2XQCPmC5TtvO4CzUdBvkz7TjtDea5VhCEM=
Date: Sat, 27 Jul 2019 12:50:08 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/6] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20190727105008.he35sixfvoyl2lm7@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-6-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-6-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_035013_570727_D35DAABC 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 08:40:44PM +0200, Jernej Skrabec wrote:
> PWM core has an option to bypass whole logic and output unchanged source
> clock as PWM output. This is achieved by enabling bypass bit.
>
> Note that when bypass is enabled, no other setting has any meaning, not
> even enable bit.
>
> This mode of operation is needed to achieve high enough frequency to
> serve as clock source for AC200 chip, which is integrated into same
> package as H6 SoC.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

It doesn't seem to be available on the A10 (at least) though. The A13
seem to have it, so you should probably check that, and make that
conditional to the compatible if not available on all of them.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
