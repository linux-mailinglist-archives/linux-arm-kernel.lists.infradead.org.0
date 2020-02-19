Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5911C163F9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFeVWAFju8z1+5ukgqNav3XeKCfKRc+KSPRRB7sYdes=; b=bc9qi7/3o+Xqvn
	BSiuuStITmP9HS/eQmp85xGS9BEUc80DrEkjulbn+KRaVyWtb6ZkPn+QK4qL4uwHMJrIeR1v06KcW
	NPPXFCrNz9ugnKzgHV+EVzEb+TkCvGwh3483HjK7wyeQ6ywTFOs6g8aYTdahaNIK6ZdCtnn/m/j5P
	xkM190GlQAnLDUysqYdPVL5aVMYr3GeQzX4gGB7t8GhV89Pd6aK/UXXSsz3iMQRUnizUFLtJuKyho
	sFSV5ourlohPzrP1M0OpJw7a0qGnwARBuiKsJ8Y9KQaKi+3mN4f1AyjqN9yusoUai/eAB/3DUX02I
	HgQYHLqeBAui3XHA2UFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L2K-0003RL-I9; Wed, 19 Feb 2020 08:48:52 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L25-0003PH-Od
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:48:39 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 7so14589006vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 00:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2V6V8Tth/AEs59J+YGgMnXxzDIW957+lx2uHMjqQCr0=;
 b=ldh03lcoR52qghNjM5H1Wivomk6M4SJSe2RNN6S/loI4EhRnlFP0DuKFKiDL12cCP0
 +g87PsyqwJqXvMybSBXpUOsjaqzo6DE5ga2LY2p4LrjZMFkJoP4XXBdyMAo4huL920Le
 Q8scHN4ZS8Or54BY/WIUXzVyBCH4xthQwueHxRybsNhYfi6NsXIOGpM/OmxR5P/5x/7T
 qvVS4OgVAWkklQdixBq2lQavhcZzWLd31eSl5BBF7lAGkPL9ZFzoA9KaXxH1AnQ+A2mQ
 Tvvx8YA6PiqBBv7qyXMYqzCWOeW7qWrfUwoRoiaRG/7Mzj4F6XwABlo36dPyxDn3BKAN
 BAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2V6V8Tth/AEs59J+YGgMnXxzDIW957+lx2uHMjqQCr0=;
 b=onAKUvVyFm5LruH8p9UJoQbSZ1EFoA+0V+BWA2EiF8Ad63RlW5H14ctTSWAyzJEzIL
 qcBacVWlvgE8uZt7+BrWZATWaITFjL4EFACalCLX46TgW3Fioi8jZAkJSEFEZioKHfGk
 1UB7qIcgMKO05KA3DqVq0cA8jNbTQiZfnVnHxGEygO7f0b3MNOo4uV9W274huuhuqNi9
 FCc6n3gRXQJ2f9G/E8zDP7sdfG+wdFQZVkxTnlzV8NzeNyWkfde4hTzHpdSc0+Ckganh
 siEeU962GYvKYqawNdIdaMRCnIM4phvfOrKZZjuh2ItAaUrJvY0cn6rgLP7PhDp3pQPB
 +nSA==
X-Gm-Message-State: APjAAAVWRAzdssLocnMc2XtgYrlLoJLsftcv7wk0xELYJn/YepLbyt5A
 F9Imwu04r5FF9DfmT5vkUjySAOkEmez+WzwX09g=
X-Google-Smtp-Source: APXvYqzAOL/FPk+knGzR1eBqUMmLKf19+kA7wViHwNZxANl3QsdiVCUIz8Uq3dpnoys1j8gFeE32O0FATF6a71Zr3YI=
X-Received: by 2002:a67:6341:: with SMTP id x62mr13158482vsb.88.1582102114853; 
 Wed, 19 Feb 2020 00:48:34 -0800 (PST)
MIME-Version: 1.0
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
 <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
 <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
 <20200217041936.GH5395@dragon>
 <CAH9NwWeT=h=hPzDbwRggNYNx-mSdQkjUypPWk2nmsLDOfw8Zqw@mail.gmail.com>
 <20200218091409.GA6075@dragon>
In-Reply-To: <20200218091409.GA6075@dragon>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Wed, 19 Feb 2020 09:48:23 +0100
Message-ID: <CAH9NwWcNZzKt9gwYRRbgppeL9xqcK38z0ZP-5eGF9vXmg7T_=g@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004837_799078_AFB85E8D 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christian.gmeiner[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Am Di., 18. Feb. 2020 um 10:14 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
>
> On Mon, Feb 17, 2020 at 01:09:32PM +0100, Christian Gmeiner wrote:
> > Am Mo., 17. Feb. 2020 um 05:19 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
> > >
> > > On Mon, Feb 10, 2020 at 02:30:12PM +0100, Christian Gmeiner wrote:
> > > > Am Mo., 10. Feb. 2020 um 11:58 Uhr schrieb Krzysztof Kozlowski
> > > > <krzk@kernel.org>:
> > > > >
> > > > > On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
> > > > > <christian.gmeiner@gmail.com> wrote:
> > > > > >
> > > > > > Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> > > > > > <christian.gmeiner@gmail.com>:
> > > > > > >
> > > > > > > Makes it possible to multi v7 defconfig for stm32 and imx based devices with
> > >
> > > What do you mean by stm32 based devices here?
> > >
> >
> > CONFIG_ARCH_STM32 - I have a STM32MP157C-DK2 in my board farm and
> > would love to use
> > multi_v7 for imx6 and stm32.
>
> The patch is all about enabling drm-imx driver support.  The commit log
> gives the impression that drm-imx driver also works on stm32 devices.
> Is that the case?
>

No - the common thing both share is etnaviv. The patch subject "ARM:
multi_v7_defconfig: enable drm imx support" is fine
I think but in the commit message I missed the verb so this should be
a better one:

--->8---
ARM: multi_v7_defconfig: enable drm imx support

Makes it possible to use multi v7 defconfig for stm32 and imx based devices with
full drm support.
--->8---

How shall I proceed to get this change in?

-- 
thanks
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
