Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F1A150620
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 13:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0l3DoiNHkxbz+tH0zsXP0Ym4sVV8Zi+4XSZE6CooxQ=; b=ayNW5nRBhOwPwc
	umYNvgG5ANZZVXW/t7LAOs+QxVv133caycjZDKpDKab0f/Dnor67kxlrf7up/CRkCuApu0GbRguKk
	3ucbPF++FyV1zj6IvRgSHcUFHIXvZG5R5yOK0zRi1bCGpw3xwljPMm97GQjgOW2fVl/ZDTxQAfWHw
	FEjPqQ8gRfphMve1Hs0JsMgk700ri4+wl/dBF93cNflXsYYiL4k3wPs+hfIjGCnPJ+nCFCZxycR61
	dnVXkKGAdDlZRT/OHbyQMGdW/fnV0BY6oN5TRC++Efx1eNQGQCHh3ZIjrZI3IPH/qO+Jdfwdvb9C6
	jZTeXeW/V5Mgohlb89zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyanc-0006cO-3L; Mon, 03 Feb 2020 12:25:56 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyanV-0006bc-1Y
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 12:25:50 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mofst-1jIpT00tmz-00p77k for <linux-arm-kernel@lists.infradead.org>; Mon,
 03 Feb 2020 13:25:47 +0100
Received: by mail-qk1-f180.google.com with SMTP id g195so13899896qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 04:25:44 -0800 (PST)
X-Gm-Message-State: APjAAAUelXMJbm8V+Ea05lB+To4Jjxh+LIvcILphOJlltF1E33GNfObX
 HW4hJzhc1PDdXKmp70H+A2DDypmso78keGa/gDY=
X-Google-Smtp-Source: APXvYqx0ocLgdidrznoQ8Enyx2eLL3hOdlL2MjBSkguYuLYfdkmdQylLrutBTZG2BNKne5lK1uCb3UnyrUHgc1yB+DQ=
X-Received: by 2002:a05:620a:909:: with SMTP id
 v9mr10712027qkv.138.1580732743857; 
 Mon, 03 Feb 2020 04:25:43 -0800 (PST)
MIME-Version: 1.0
References: <20200130195525.4525-1-krzk@kernel.org>
 <20200130195525.4525-2-krzk@kernel.org>
 <9f8a0a8e09893e7087d2212fb0eeb94a908b7be1.camel@perches.com>
 <CAJKOXPf5Mf4FCmtME5yJsBZeP8BkYJgcxkKzS2hd-gp-mq3nag@mail.gmail.com>
In-Reply-To: <CAJKOXPf5Mf4FCmtME5yJsBZeP8BkYJgcxkKzS2hd-gp-mq3nag@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 Feb 2020 13:25:27 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3VxqKuPyoparMZQYNNic6K2QsuzHE2mHskBt56cjny=g@mail.gmail.com>
Message-ID: <CAK8P3a3VxqKuPyoparMZQYNNic6K2QsuzHE2mHskBt56cjny=g@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: configs: Cleanup old Kconfig options
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:kcS/eHXUnNXDvmFibFL/bvGA294XZIRujaA1sGgB2TToqTycitS
 zCmasKkP58vY9E8FVOpIsSyHbxPG1SAQMK72YEqkpQI6+ayZQQzrI2VW3WXTzuJ+GoAcTfO
 gu65VqNOYHpM42/fwT8WAPOA2OPiPfUGBU4Qjayg6C6w5uiNboPFZh6sJUlXGBoQ/N2De5U
 ZngbHvlCVyqU1ewnl/iwQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dn31IktaNX8=:mIMtqNvrJ/CkJ2VwsiQqJZ
 p/vY4Ls4T+N8ES5NR4kIrwX8t7t1rm68+jwl8eizoVjRXnLWUf7bDXhd+8MKfccJLdE0l8MSy
 +7YZJApj8hWR70Tx6mGoxQZbV7QV/ZGmqMqlU89I/7oO/w0WsMZJ2aXwUFponknVPg7+8V/XF
 LGZNYBhcl+kjJ1wLlhIL0WblAVlhk1DinKY2BpK1sEx6eZYfr+FeOvYZzl678aCHrtJRXbepr
 kvWHG5yHLD6EmyIQVlGP+JC5haG06i8eVgi+jS7vfUWtI36aMxyFfkEWqr+LqSBLRbPGjfkBF
 SdZ+NMYZcxU6x8a3QP8n00T3T0gTbPohxVsp5COPG4wl97uJJ0BarxnDdky9cEjqcRYFzNN4D
 gK2DF2347Sy5tzBtXHzkIkjwtx1/K/rjzeSNWG02E2cf0zHj0U6fnThjbsVwgaE8M5GDsUmh7
 BwSYSJUC5xR0sj5eKkWV2ak4r+luyhayKZPPppf7U3W5rcrxIc8+3bGAz6jUzHDmIcgDRZ1mo
 C52MeqvMrcIg2hBcw1IUXCI+K8znhGyHyaBh7KdE4IttMcGTx99CVcEmZmcKgNrPALvxELnpN
 2hXvqozteg3C9MiziwVXOvWgP6Ao8/N8nEQRd1ynqUyu/lUCKkD3S1dPQhJHXtOANG9LHWkFr
 H++ZGOtuyCsodeZFFvi4A6R8draNHNnK2bO8DEr7MyFw/h2ki3G0I/FWcCF8vGo+sK+BKLKl5
 ECcR6Dk2asdMdeBGnc9d/B2u1NZFASy22GrNt6weYx1RFdKfhpbKh3HnfRbHIf7UHc22zKnum
 6vwcMEGsTX2/01cP4nL4Xmr1TYrmMy8KpmBXBOLe497fQlk1HU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_042549_382158_FCD20C51 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Russell King <linux@armlinux.org.uk>, Nancy Yuen <yuenn@google.com>,
 arm-soc <arm@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vladimir Zapolskiy <vz@mleia.com>,
 Olof Johansson <olof@lixom.net>, SoC Team <soc@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Joe Perches <joe@perches.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 3, 2020 at 12:53 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
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

Acked-by: Arnd Bergmann <arnd@arndb.de>

> > Hi Krzysztof.
> >
> > There seems there are a lot more of these unused CONFIG_<foo>
> > symbols in various defconfigs. (just for arm and treewide below)

Feel free to pick any of these symbols and send patches for those.
No need to do it one symbol at a time, but please group them like
Krzysztof has done.

> Nice finding! The trickier point is to nicely remove them because:
> 1. The easiest is 'savedefconfig' but then some valuable options might
> disappear (like recently happened with DEBUG_FS),
> 2. They could be removed in automated way with a script. However in
> such case what about replacements? If some symbol was replaced with
> other (or just renamed), maybe we should enable the other one to
> restore the desired functionality?
> 3. Or maybe let's don't care about keeping defconfigs stable and just
> clean them up automatically.

I don't see a good way to do it automatically. It would be good to check
that we don't remove Kconfig symbols that are still used in defconfig
files without changing those files as well. Cleaning up afterwards also
works, but this always requires manual inspection for each symbol.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
