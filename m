Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A00F17BFC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpojDOrWJyXJrWrKKlTI06uNjP1WDvfLrG9cqXXj6rg=; b=nzyJfQh72xyWUV
	qgJ9ND0U4woLi9et5j1/8ZDWQGF4qx3arG+m0Me2PjmMcLrisBJ6p5CkcjoyQf+Je90HXXwBoH55V
	+tu8fvSMeLEkohoB1fulw2h8LLe90KFDiUIPiWmiUEpotXgn4UIGyz5d1mj4jeCGFzdwY6JmS/7bR
	swaJlFbdvl8fDFVez/pWNFxWH366FTDrbb/1uu/nQjI2VywUUaOj5omT+Li/VbtGSwkEchh+K5YT6
	z2vAI8xjtcBIkRr9wyr7QMTGv/Gs1cbneW4ovymBuTHZyt5yREbM4r5ixNHauAfmKGaF+zTvVLeaN
	kmepUvzAv9t6ZljW0Q1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADV9-0003lW-6y; Fri, 06 Mar 2020 13:58:55 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADUz-0003kK-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:58:46 +0000
Received: by mail-vs1-xe43.google.com with SMTP id n27so1572153vsa.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 05:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8LQTxqk+dVkcgHEpsAvnNL6hiqy7/nef8xEXr/Gx0Rk=;
 b=LrTKsjXgh8+22tuGjDJDwxBAkV54NOa0/DYM/zU3lPwBhaeSvKclFFa9cJsdi1S052
 gz6iM8mJdmO8I8/9x8TSwBctsRrd+KdBNtb8w9Rb7BRq+rErVVaVTqjTGY2WSIU712VK
 xIVbEnKyV5rSa+AP/lZg0rvrYDgYH288dvkTxu+xihGLiVRp6NgSkXUplj+v+Fcl2Ga6
 VNOqWUaH1YptoeNXuop+pEaEpJWVZZMOIigXCgPkgGjVpSQk8wdJA0a5hfvmNOLYPy00
 tNASLJpLzNW963BuOWfCvOLu5am5HnTI4nI0D1k0O4/q2NieyYEENnamNcZBFsnHr+iR
 s4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8LQTxqk+dVkcgHEpsAvnNL6hiqy7/nef8xEXr/Gx0Rk=;
 b=dRQwZPDM2VWLvbBvtDMqBAQFoer/g+2OgDVuM9a0QPrMzRevbPNdEw2SIjhkSEhazJ
 aJB/m/680cRqHZjp3SGct0S/VJo6G3l3t1B/TmWL7I+/9vhgj2UzhzGTFgo8Fa4/0k9g
 DAE/U+8Y8guq4XG2Lbe6SsNZ4H2J5x0UmNJ68hrnvgEOEkcTDZbJK8R0sMEeG9YQUza6
 UkSe8Ub0CUdi+Ted1YqJy6rsQvi2mcEAGiG94g3Ldf7joPiFqR1yy+BoL8kac5PeXhAt
 h4VG6YZtLopZL0yEn8devaYNqGei3OAUKv9mQ9WZtPMgIv2W0jEEAM4HBV/rjIGgtWvz
 nSUw==
X-Gm-Message-State: ANhLgQ2X7uT1ivuLXo4p3eDPEGQtciRNQbGZNMGilkptzYDLf/MScv9w
 PA2evigh478U5pGbAzOAWIZpqoffaxJI6T+Zx9I=
X-Google-Smtp-Source: ADFU+vtN4vHHDoCKUmfGb09n+EZ1fiD42trzmLlrpYF4QumAG78dslKt2JOc0OmEMTXHL4cDJGxH5RtITh87Oft9jsQ=
X-Received: by 2002:a67:2f8a:: with SMTP id v132mr2022888vsv.95.1583503122419; 
 Fri, 06 Mar 2020 05:58:42 -0800 (PST)
MIME-Version: 1.0
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
 <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
 <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
 <20200217041936.GH5395@dragon>
 <CAH9NwWeT=h=hPzDbwRggNYNx-mSdQkjUypPWk2nmsLDOfw8Zqw@mail.gmail.com>
 <20200218091409.GA6075@dragon>
 <CAH9NwWcNZzKt9gwYRRbgppeL9xqcK38z0ZP-5eGF9vXmg7T_=g@mail.gmail.com>
 <20200219091138.GA12803@dragon>
In-Reply-To: <20200219091138.GA12803@dragon>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Fri, 6 Mar 2020 14:58:30 +0100
Message-ID: <CAH9NwWfgJvPDE4_gjMhKaRSxJm-yJkzxOSDbU-HaQkcHuTL76w@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_055845_367339_62327B7A 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christian.gmeiner[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Lubomir Rintel <lkundrak@v3.sk>,
 Patrice Chotard <patrice.chotard@st.com>, Joel Stanley <joel@jms.id.au>,
 Philipp Zabel <p.zabel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Sorry for the delay.. totally forgot about the mail.

Am Mi., 19. Feb. 2020 um 10:11 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
>
> On Wed, Feb 19, 2020 at 09:48:23AM +0100, Christian Gmeiner wrote:
> > Am Di., 18. Feb. 2020 um 10:14 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
> > >
> > > On Mon, Feb 17, 2020 at 01:09:32PM +0100, Christian Gmeiner wrote:
> > > > Am Mo., 17. Feb. 2020 um 05:19 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
> > > > >
> > > > > On Mon, Feb 10, 2020 at 02:30:12PM +0100, Christian Gmeiner wrote:
> > > > > > Am Mo., 10. Feb. 2020 um 11:58 Uhr schrieb Krzysztof Kozlowski
> > > > > > <krzk@kernel.org>:
> > > > > > >
> > > > > > > On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
> > > > > > > <christian.gmeiner@gmail.com> wrote:
> > > > > > > >
> > > > > > > > Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> > > > > > > > <christian.gmeiner@gmail.com>:
> > > > > > > > >
> > > > > > > > > Makes it possible to multi v7 defconfig for stm32 and imx based devices with
> > > > >
> > > > > What do you mean by stm32 based devices here?
> > > > >
> > > >
> > > > CONFIG_ARCH_STM32 - I have a STM32MP157C-DK2 in my board farm and
> > > > would love to use
> > > > multi_v7 for imx6 and stm32.
> > >
> > > The patch is all about enabling drm-imx driver support.  The commit log
> > > gives the impression that drm-imx driver also works on stm32 devices.
> > > Is that the case?
> > >
> >
> > No - the common thing both share is etnaviv.
>
> I did not know that before, and thanks for the information.  But looking
> at the code change, there is nothing about etnaviv driver, and it's all
> about drm-imx driver.  So I'm still questioning why stm32 needs to be
> mentioned in the commit log at all.
>
> > The patch subject "ARM:
> > multi_v7_defconfig: enable drm imx support" is fine
>
> Agreed.  It's perfect.
>
> > I think but in the commit message I missed the verb so this should be
> > a better one:
> >
> > --->8---
> > ARM: multi_v7_defconfig: enable drm imx support
> >
> > Makes it possible to use multi v7 defconfig for stm32 and imx based devices with
> > full drm support.
> > --->8---
>
> I don't think 'stm32' should be there, as the code change in this commit
> has nothing to do with stm32, if I understand it correctly.
>

Okay.. what about:
--->8---
ARM: multi_v7_defconfig: enable drm imx support

It will be useful to have it enabled for KernelCI boot and runtime testing.
--->8---

> > How shall I proceed to get this change in?
>
> I can edit the commit log when applying.  But we need to agree on what
> it should be first.
>

Great!

-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
