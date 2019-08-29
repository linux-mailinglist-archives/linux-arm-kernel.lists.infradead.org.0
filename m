Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99643A153C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 11:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=248LJXdbdsxlRHFvrjhTRhQVhxfSWc0aj/zLJTRjQqY=; b=OZY2ITlvtrgdbP
	eaXAty/mHZZAoQYEp+mGGYKMg5OuHnOaqL8QsINcxY7BZUVnBg59WeNvtxulVp7zqvxHkCM5s3vyq
	QvEBrl/dlsCKNxlCQtGT1aDJRwyk7fTEcSVt5iqZsAOLL2mwQdLNrBZ7cqisCKZMbUp3vNGz+qzGd
	1v7xe36+mC+7G46COJtGLJVASVXL0WY0hjd3QDs/Lo4jbA3kejdH/jQ01lXNwJet3DHHqE1yp5iuT
	AmMHSbXivZKrNaPQcwTc3teoDeBgLCZr4vizjRENNzNipMirw0vIXu6oQuOUgHuNIWPhctYbYGDJq
	OWjd6DmzTYinakAP0dTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HBk-00070t-PB; Thu, 29 Aug 2019 09:57:56 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HBY-00070L-Em
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 09:57:46 +0000
Received: by mail-yb1-xb44.google.com with SMTP id u32so967941ybi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 02:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ISl2iKyaWD2+8GZkMSQ0qKIH02qSJLjTEU8jAfUr+rU=;
 b=k7FXeZNu42B/KLMaEv7nz+hIcxwo/BZoAgo3XbhGFrgEK6HjPy0Hc/h3/cMK7wJ8ut
 F3c7eXDBXZSwNe5evjbFnoUC3TY77zLH68g756m1QzFRtk84a4/lkpvIDh13XWTSu7fS
 hu6bmdMtRiupJEZarCuJS+IN/xkoNT6jAdOesWkOauOuyHL3oLUDDVj3Js7Zd7CURSxj
 3cJmS2s+ZHCfLi+IBfe9miiRijXy5jeG6ezKW6V/AeHpmJzM+a11j8jyjFLpn6O09BGk
 9i6CoRAr2Vl0Wr5icNRCZd+v29dRpq/QfxzEFMIx4BdwZRR5lwmNf4y2C1IVptgnSkf6
 g+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ISl2iKyaWD2+8GZkMSQ0qKIH02qSJLjTEU8jAfUr+rU=;
 b=bAePapCnDva5yxiBIsXMoAW9J/gbTYSvKRVTMPFQp2jAywbSQ2bVRGWiV88Cr27LXA
 AgdB379tRor7Ue9FC+vvIgENhAw4yju6GQ8WZ4dNshCwP3JiKAIzruFCWa1dYUvWbvge
 dckMfW/TFf8P2mEH/MpnWll0iBHLTaqHb4/iwVlSWRMMznjoPSHEqCM/9ktrbzqOimkY
 DH7KulAIGRYnNOJ9Ds88t3E1Tv+Eeav0X50A7J/bmrJm4SkYloocdMi/u4A59UhXqq9G
 z5JFhHjPjbwm9TP3dU0NmQ2ebNdTEfwgr2ADlqpiCXyKOI/hTNiJiCZJFbH8S2kLxZHb
 x07A==
X-Gm-Message-State: APjAAAX9ZWA5fG2jpXtA9V4gsFhOl1Mg2JKc2proGBKyLpC8RTEIF9Ut
 kYv2l5uosnsf0PixuJJxGX2p0g==
X-Google-Smtp-Source: APXvYqy+S+BbWJ8TsKJZ4za59tW0wJipOu5WuI0dhL2NA/mZ0kpYe/VhXaaxlRXSMGvhzgvC5br6xQ==
X-Received: by 2002:a25:5d0f:: with SMTP id r15mr6048540ybb.59.1567072660740; 
 Thu, 29 Aug 2019 02:57:40 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id l15sm387568ywk.72.2019.08.29.02.57.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 02:57:39 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:57:33 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>, rmk+kernel@armlinux.org.uk
Subject: Re: [arm:for-next 13/25] include/linux/error-injection.h:7:10: fatal
 error: asm/error-injection.h: No such file or directory
Message-ID: <20190829095733.GE10583@leoy-ThinkPad-X240s>
References: <201908290809.FsnDYulr%lkp@intel.com>
 <20190829064310.GC10583@leoy-ThinkPad-X240s>
 <20190829083159.a3ywiivey3u4kxwf@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829083159.a3ywiivey3u4kxwf@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_025744_503047_90CB282D 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Thu, Aug 29, 2019 at 09:32:00AM +0100, Will Deacon wrote:
> [ Move RMK to To: ]
> 
> On Thu, Aug 29, 2019 at 02:43:10PM +0800, Leo Yan wrote:
> > On Thu, Aug 29, 2019 at 08:49:16AM +0800, kbuild test robot wrote:
> > > tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git for-next
> > > head:   d0d54dc04e37be14a9e51d9a2e431f302948e99d
> > > commit: 566c290c6498b2fdc04a54556c4e8747f0298c7b [13/25] ARM: 8899/1: arm/arm64: Add support for function error injection
> > > config: arm-allmodconfig (attached as .config)
> > > compiler: arm-linux-gnueabi-gcc (GCC) 7.4.0
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 566c290c6498b2fdc04a54556c4e8747f0298c7b
> > >         # save the attached .config to linux build tree
> > >         GCC_VERSION=7.4.0 make.cross ARCH=arm 
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > >    In file included from include/linux/module.h:22:0,
> > >                     from drivers/pps/pps.c:11:
> > > >> include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory
> > >     #include <asm/error-injection.h>
> > >              ^~~~~~~~~~~~~~~~~~~~~~~
> > >    compilation terminated.
> > 
> > This building error is caused by there have a dependent patch:
> > error-injection: Consolidate override function definition
> > https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/error-injection&id=45880f7b7b19e043ce0aaa4cb7d05369425c82fa
> 
> Ah, I guess you put the ARM patch into the patch system without reference to
> the core parts?

Yes, this is exactly what I did.  Sorry I only put the ARM patch and
didn't give out the whole context.

> > This patch has been picked up by Will in one of arm64's next branch:
> > https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection
> > 
> > I don't know what's the best practice for the dependency between
> > two branches, if need me to follow up anything, please let me know.
> 
> The for-next/error-injection branch here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection
> 
> is stable, so I suppose either:
> 
>    * That could be pulled into the ARM tree, or
>    * The ARM part could wait until the core stuff has landed in mainline, or
>    * I could take the ARM patch via the arm64 tree if Russell is ok with it

Thanks for these options.  I'd like to know what's Russell's decision,
then I will look closely to know what I should follow up or not.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
