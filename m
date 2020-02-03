Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FF81505AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:53:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfkgp50L6AhUPA+z9F7NMZT1p5OczGFGfOJSuHatE2w=; b=rFTGmlylm8Txxs
	H15kFyQk6EPhJ+Z6tWNGjhJycEXZRi3loRetC5brEXnOlksoMZ5w5xYmZoStbwxYMP9p4bEIIKEEl
	bC5n1V9Cl31woszli3BTg6W8XJOurzyNLFsLnUMs+d+5Az4zhY7aaNLLWcO/sqLDDv+Gy8efNHXE1
	IHY5fkVpG/CmtCEW4AJXKz00YLN2fuLtNuD/GiKmbkUDy3fqCtRfH2Cmb7v13sYso4MQkG5FfdDuS
	4gVreaxpqqXEA1VPAT6Q53DXu744KGcCATjz14yRpZgdGvzzrRpAoorWVgYbcs7AoSPirdWiUe05Q
	4aceRUJsvmWNW+EryCYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyaHt-0003VU-3p; Mon, 03 Feb 2020 11:53:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyaHj-0003Up-On
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 11:53:01 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 896E021775
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  3 Feb 2020 11:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580730778;
 bh=7xf6l0x9f3yqiOhlxlprQWM2OQY9DYvJlDJWXMnII54=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QAAyKp0DMnE4/Ke93ayIXNd2pfxyBG9VkCoj8wEGNaGM/6XTQdWI1P194C5TNIw6h
 m5Wu+ATH6+LztErcvWKxz2sep2OFwsgKGWHxZAE3wqMr3bSNwm8ZVYc7FsB4J1FZJx
 GFNHkcd4WglHAIf2oN4mWPlfR9HRwokyWSF3soKc=
Received: by mail-lj1-f179.google.com with SMTP id f25so14258104ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 03:52:58 -0800 (PST)
X-Gm-Message-State: APjAAAV2RSD514phidszHZNXc4SUGYLzvvYj5LVm6xsULm9nMLelq+DS
 XK1ROK9OWh34FOJSUS6nrJmYDDgTplQR8zNHgNg=
X-Google-Smtp-Source: APXvYqzr5wd/VbPIliYCYFMvvcM1qcze60h66l8h6hCiB4vZZDzfTGLOeSa9EfTbYebXVLxdN/na3R/Ef6tYAfxaBEQ=
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr13176749lji.256.1580730776602; 
 Mon, 03 Feb 2020 03:52:56 -0800 (PST)
MIME-Version: 1.0
References: <20200130195525.4525-1-krzk@kernel.org>
 <20200130195525.4525-2-krzk@kernel.org>
 <9f8a0a8e09893e7087d2212fb0eeb94a908b7be1.camel@perches.com>
In-Reply-To: <9f8a0a8e09893e7087d2212fb0eeb94a908b7be1.camel@perches.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 3 Feb 2020 12:52:45 +0100
X-Gmail-Original-Message-ID: <CAJKOXPf5Mf4FCmtME5yJsBZeP8BkYJgcxkKzS2hd-gp-mq3nag@mail.gmail.com>
Message-ID: <CAJKOXPf5Mf4FCmtME5yJsBZeP8BkYJgcxkKzS2hd-gp-mq3nag@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: configs: Cleanup old Kconfig options
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_035259_847841_DAB559C8 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Tali Perry <tali.perry1@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Benjamin Fair <benjaminfair@google.com>, Alexander Shiyan <shc_work@mail.ru>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, openbmc@lists.ozlabs.org,
 Russell King <linux@armlinux.org.uk>, Nancy Yuen <yuenn@google.com>,
 arm@kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vladimir Zapolskiy <vz@mleia.com>,
 soc@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Jan 2020 at 23:06, Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-01-30 at 20:55 +0100, Krzysztof Kozlowski wrote:
> > CONFIG_MMC_BLOCK_BOUNCE is gone since commit c3dccb74be28 ("mmc: core:
> > Delete bounce buffer Kconfig option").
> >
> > CONFIG_LBDAF is gone since commit 72deb455b5ec ("block: remove
> > CONFIG_LBDAF").
> >
> > CONFIG_IOSCHED_DEADLINE and CONFIG_IOSCHED_CFQ are gone since
> > commit f382fb0bcef4 ("block: remove legacy IO schedulers").
> >
> > The IOSCHED_DEADLINE was replaced by MQ_IOSCHED_DEADLINE and it will be
> > now enabled by default (along with MQ_IOSCHED_KYBER).
> >
> > The IOSCHED_BFQ seems to replace IOSCHED_CFQ so select it in configs
> > previously choosing the latter.
> >
> > CONFIG_CROSS_COMPILE is gone since commit f1089c92da79 ("kbuild: remove
> > CONFIG_CROSS_COMPILE support").
>
> Hi Krzysztof.
>
> There seems there are a lot more of these unused CONFIG_<foo>
> symbols in various defconfigs. (just for arm and treewide below)
>
> ARM defconfigs:

Hi Joe,

Nice finding! The trickier point is to nicely remove them because:
1. The easiest is 'savedefconfig' but then some valuable options might
disappear (like recently happened with DEBUG_FS),
2. They could be removed in automated way with a script. However in
such case what about replacements? If some symbol was replaced with
other (or just renamed), maybe we should enable the other one to
restore the desired functionality?
3. Or maybe let's don't care about keeping defconfigs stable and just
clean them up automatically.

Best regards,
Krzysztof

> --------------------------------------------------------------------
>
> # find all defined config symbols in Kconfig files
>
> $ git grep -P -oh '^\s*(?:menu)?config\s+\w+' -- '*/Kconfig*' | \
>   sed -r -e 's/\s*config\s+//' -e 's/\s*menuconfig\s+//' | \
>   sort | uniq > config_symbols
>
> # find CONFIG_ symbols in arm defconfigs
>
> $ git grep -w -oh -P 'CONFIG_\w+' 'arch/arm*/*defconfig*' | \
>   sort | uniq > used_in_arm_defconfigs
>
> # find all the unused symbols
>
> $ cat used_in_arm_defconfigs | \
>   while read line ; do \
>     echo -n "$line " ; grep -w -c ${line/CONFIG_/} config_symbols ; \
>   done | \
>   grep " 0" | \
>   sed 's/ 0//'

(...)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
