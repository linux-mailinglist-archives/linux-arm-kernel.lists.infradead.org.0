Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC221387F9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cLe2vrcsklyw8nNjH078Q5F0nH6al0P4yPdydeF074=; b=GQqVN7Z1NjuLJY
	Udd94y9oEjaIxW8vT+fYcUhQZzu8PbhiiPcOHEpyD8GoLuBwNfdPDIgb0gJx1GuB3klekjE/QXyJ1
	G6aF5AEwuWtqzUiu2q5skYvOUR/LOIIODs4PcxozddnJtDkJXQ1VP0CMtDvrs0Casl21xjZYIY0R2
	j/n6AiW0K4ZhCGSmFbsRJF/xb7jEzUH6e2p3W1wg8KTMlScbx+lORS93mUheB8DJhp/OJ5fOveSAg
	pL6mD52Xv1CG+XO8kMWQHWCyG9kw29xqSRCV4CmJMMozQJhdzmQVpTJB59US9hXWuHjB/7Le2aLh9
	KsnXS1G8cn9edWOe0X2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjGf-0006jI-OP; Sun, 12 Jan 2020 19:51:25 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjGW-0006iM-NL
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:51:18 +0000
Received: by mail-io1-xd42.google.com with SMTP id n21so7316863ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 11:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=REmH10/0/8xQ7k+OvzyeQmQ9it7Xxyg3EjuGe+TsGnY=;
 b=vt47ukZrybvWAeptWdA2VYKJuKDIM5rG8gfVgVcwk16lAZig37c8aQEVScEvXjCgJq
 kyfDW2D11/19ueUZMsfgYB7KT1pV8+lnu1DNZ+Ug8VB8Z0QsiPtSPRhx6AU7IIuOG72k
 IsgGsmWy6sNW45h1kFl63kiLKnSHxXAHfUmCXEI5Ln+Crwb48wdjyJm2Pfts5Kga6dZ6
 A1bbn9hgHcyNVnuwoMcPm6F5hwVO9fMVt1z4p3V6piKOgPfeVolh6aEBr0PzSQJdfjB8
 eVcGrvslYFiFckag5SwhnVVMULl5/Z+IBRYinIpgYy36sV+HnO2C827PBMkN5kjBAhWg
 jzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=REmH10/0/8xQ7k+OvzyeQmQ9it7Xxyg3EjuGe+TsGnY=;
 b=uEdD+4BkQ4eVd8cjfzlkXFHLGmb706QUr3S+pgNDZBs3dltl8zGECiDcDLmDouGHLq
 kC+flIWjFm8Up2bl4Fec3N89eE7v6Nz38XsHu4a1dFYWn2drOTvh+gEYFOmTIjDxqaDM
 ENIEb4dNQjuL5uCwWGG4Crt0TlR2+yOOLWvS9BFpm14TmektAFAfugAvCZQYIlljP1tY
 gH7PLAnVxd47DIAlJqWuakjgPCGSU5OfU0OIYneZJJyyBa3SXr15sbe7fCpRSXkps/Be
 5sMW5f9fFj9dQekPcMWl+97ZkXcl8wm8PNrAL8RIl4qtgsNoRYdXZSq026+LdfmZN4qq
 CK6Q==
X-Gm-Message-State: APjAAAVNTaC8gA4Yaic8PUxu8jk7P/bJ5+56urq1/YDDSEgRGfFEuq4c
 XSeTEV+GKz/dhvRPB9pDUUgCAgf5MFZRmAupeGfmqw==
X-Google-Smtp-Source: APXvYqwA/wUce7PObFd/HBY7rmKaCk71Y8EsmtYHpneyLVR294R7hKEWRlQ+hiRZU8PROXtUm8/MzSrP1RitepUDExU=
X-Received: by 2002:a02:ce8a:: with SMTP id y10mr11980243jaq.21.1578858675345; 
 Sun, 12 Jan 2020 11:51:15 -0800 (PST)
MIME-Version: 1.0
References: <202001120045.BaGKHeel%lkp@intel.com>
 <CA+E=qVdq-zNJDOV_4PXEA_MfvkbXjPbaTVe1S66Zc0FVAdgpMw@mail.gmail.com>
In-Reply-To: <CA+E=qVdq-zNJDOV_4PXEA_MfvkbXjPbaTVe1S66Zc0FVAdgpMw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 12 Jan 2020 11:51:04 -0800
Message-ID: <CAOesGMh4TaDNCa7-DqGgotjReSFosx1RNDerient7_UA7KWLFQ@mail.gmail.com>
Subject: Re: [arm-soc:sunxi/dt 49/52] Error:
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:54.19-20 syntax error
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_115116_811775_1BCFC668 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ARM-SoC Maintainers <arm@kernel.org>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 11:06 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Sat, Jan 11, 2020 at 8:57 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi,
>
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git sunxi/dt
> > head:   6163ce8467052cdfe42581036bc71fe4aac09eab
> > commit: 7486ee80f62e610053a33e4f94fb04172c09a41a [49/52] arm64: dts: allwinner: a64: add CPU clock to CPU0-3 nodes
>
> I can't find sunxi/dt branch in arm-soc tree nor this commit, 'git
> show 7486ee80f62e610053a33e4f94fb04172c09a41a' complains "fatal: bad
> object 7486ee80f62e610053a33e4f94fb04172c09a41a"

Yeah, I dropped it based on these failures:

https://lore.kernel.org/linux-arm-kernel/20200111225938.hp6xxr4k7jp7yvv2@localhost/

> > config: arm64-defconfig (attached as .config)
> > compiler: aarch64-linux-gcc (GCC) 7.5.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 7486ee80f62e610053a33e4f94fb04172c09a41a
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.5.0 make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> Error: arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:54.19-20 syntax error
>
> Line 54 references "CLK_CPUX" in sunxi tree sunxi/for-next branch, so
> I assume that someone merged sunxi/dt-for-5.6, but not
> sunxi/clk-for-5.6 which exports this clock.

Yeah, Maxime missed the dependency when he sent in the merge request.
Bindings headers cause pain like this, unfortunately. We often end up
needing a stable branch for the binding/header change and bring that
in as a base to both clock and DT branches.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
