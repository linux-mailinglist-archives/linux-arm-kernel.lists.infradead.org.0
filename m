Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9599156A03
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 12:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/TqxccMfUevSXPlS4U9mDY+67VN8RAtTrc4zL8VW8s=; b=MGZUtpXi/zQpon
	6kR1KlszC3ac+2zqtVdNZtFmGV3yqs97lDQNvTtc2YIOmu2KYUdUV+ZnaUMMAGuNM32N/xFTwLxa8
	W520HhQ787PabKJTdn58TK4cI6rUW6puscZqRljNheIkHkzXeiVHn0X7KMyHPi1BO6s10/pygjpjR
	V1FTxqDYi53AyhHoMFjod08AfY/Z7Gs5yg/XR912wMvTxcjr2PXLA6RJl+2Y6hS10HhtSQMZsxIMK
	Sxphyu77cxBX6v/aM0IMDVP/jthsLrhgn4asnRNADnow6P6jSctyvQcH1lncbWzfbQA07QMPGNSg6
	jVskYjcYV9P9KvhC1OwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0l8C-0003LM-Ac; Sun, 09 Feb 2020 11:52:08 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0l82-0003Kf-G4
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 11:51:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id q8so3926652ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 03:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cYfE72YZyxByl4dR2QWGKhFqP7/CoINOriIGeXLOawg=;
 b=NptrmHtYTiL5YgJrYH1ti+K078fPaTfnbfGukV1wYirmvtVfyLHmk1Y4G+sPJKzhtO
 VgRFHCDnWWN+XuVsDUc/DNV0NsDAuA2QOU06s5e1+fW6D8mS1IQM1mZXo/5tOruAXnEz
 4MjqiZlt4kB0G3I7w9ipN+dGcniokuXyuNBVVhpbVKp4hPGH1jz37zk8Iba/rzzbc43S
 IUejSY2mrWWstTFatbHDPiv2stxA0cAwteuFIXbqAZFLIlyD+iRgkFrkzU9rs6XzYD42
 8VCyfkaKdOZCtqpix7QOOcXbC0dgvoPIxPEVz8rICA+iBFfrWxPSl/cJVJaN4lxXkrIm
 sAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cYfE72YZyxByl4dR2QWGKhFqP7/CoINOriIGeXLOawg=;
 b=d8Vnndcd1U0vvFsqO05TeUtdI6X0hg+tk7rkT9jP4GOo4nto5Vva1Q1OEIbZtekvxx
 7SpxfJdieDkPhVhsPRQ4H6MglRL19xlx5S97si4UwJYJ5Zfvo+kTa+1cIFznCOGb4gjQ
 As1iMPCcuUXp5Q009U5w5qt5twJfXi7sNQgJx/rpPZy6yLJXRwwfmRVVao9/F+v61Q3o
 0BDCLDCgKDOfnwo+P2JVjV56tA/vMQt/YvcNn0wdG/3OitN3iA4MUHLZLW58b57F9OCn
 sGK6kNCpKJqHnGJuBR2FAp9UJ2y5i+ln0OA5YkDlAS8y6qiQSPy8lmfpcArBbF6K0CK9
 dtEw==
X-Gm-Message-State: APjAAAXke2aAld+dtgU0PlRKAuJDD15YSljCiOVJRYbrZqwgQ0dqjqt6
 X2/Z5kVH4yuXqblVX9quHTC4dg==
X-Google-Smtp-Source: APXvYqyBJcdgJJntrsixcqZPfIHwYwrfiSxVX8Hkh88iVLuNcb42dKupf9X+gL/jDnv0ncXLtXIzSg==
X-Received: by 2002:a2e:7e11:: with SMTP id z17mr4960192ljc.279.1581249116367; 
 Sun, 09 Feb 2020 03:51:56 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 14sm3752313lfz.47.2020.02.09.03.51.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 09 Feb 2020 03:51:55 -0800 (PST)
Date: Sun, 9 Feb 2020 03:44:22 -0800
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] ARM: configs: Cleanup old Kconfig options
Message-ID: <20200209114422.as5xpytakhaa3vur@localhost>
References: <20200130195525.4525-1-krzk@kernel.org>
 <20200130195525.4525-2-krzk@kernel.org>
 <9f8a0a8e09893e7087d2212fb0eeb94a908b7be1.camel@perches.com>
 <CAJKOXPf5Mf4FCmtME5yJsBZeP8BkYJgcxkKzS2hd-gp-mq3nag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPf5Mf4FCmtME5yJsBZeP8BkYJgcxkKzS2hd-gp-mq3nag@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_035158_539021_7C74FECD 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Tali Perry <tali.perry1@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Benjamin Fair <benjaminfair@google.com>, Alexander Shiyan <shc_work@mail.ru>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, openbmc@lists.ozlabs.org,
 Russell King <linux@armlinux.org.uk>, Nancy Yuen <yuenn@google.com>,
 arm@kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vladimir Zapolskiy <vz@mleia.com>,
 soc@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Joe Perches <joe@perches.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 12:52:45PM +0100, Krzysztof Kozlowski wrote:
> On Thu, 30 Jan 2020 at 23:06, Joe Perches <joe@perches.com> wrote:
> >
> > On Thu, 2020-01-30 at 20:55 +0100, Krzysztof Kozlowski wrote:
> > > CONFIG_MMC_BLOCK_BOUNCE is gone since commit c3dccb74be28 ("mmc: core:
> > > Delete bounce buffer Kconfig option").
> > >
> > > CONFIG_LBDAF is gone since commit 72deb455b5ec ("block: remove
> > > CONFIG_LBDAF").
> > >
> > > CONFIG_IOSCHED_DEADLINE and CONFIG_IOSCHED_CFQ are gone since
> > > commit f382fb0bcef4 ("block: remove legacy IO schedulers").
> > >
> > > The IOSCHED_DEADLINE was replaced by MQ_IOSCHED_DEADLINE and it will be
> > > now enabled by default (along with MQ_IOSCHED_KYBER).
> > >
> > > The IOSCHED_BFQ seems to replace IOSCHED_CFQ so select it in configs
> > > previously choosing the latter.
> > >
> > > CONFIG_CROSS_COMPILE is gone since commit f1089c92da79 ("kbuild: remove
> > > CONFIG_CROSS_COMPILE support").
> >
> > Hi Krzysztof.
> >
> > There seems there are a lot more of these unused CONFIG_<foo>
> > symbols in various defconfigs. (just for arm and treewide below)
> >
> > ARM defconfigs:
> 
> Hi Joe,
> 
> Nice finding! The trickier point is to nicely remove them because:
> 1. The easiest is 'savedefconfig' but then some valuable options might
> disappear (like recently happened with DEBUG_FS),

Note that while they disappear from the defconfig, they were already not part
of the build. So kernels have been built without them for a while. It's a good
way to surface the problem, but it's pretty clear that trees fall in the forest
here all the time and nobody is noticing.

> 2. They could be removed in automated way with a script. However in
> such case what about replacements? If some symbol was replaced with
> other (or just renamed), maybe we should enable the other one to
> restore the desired functionality?
> 3. Or maybe let's don't care about keeping defconfigs stable and just
> clean them up automatically.

Churning defconfigs is just noise, and a source of annoying needless
conflicts when people do it at the same time. If an option is no longer
in-tree, it doesn't do any harm. But it makes sense to clean up every
now and then like the original patch here.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
