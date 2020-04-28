Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE321BCF4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arkGQBSGGpSxVVDAaPuTeXHlctu7lCcr3G+TqV6VHdo=; b=RYSh452JmbhVkz
	8CoPukJlI7mRlM0s+3ZJ3OmP0rR69x1/qVD7QdN9YX8iyXz/3fWeMns+98uW6Lbv8XH7QDMTkqdh4
	1CpmChOtn7JRTIQD4+wUBEVcE94v0WT7SHVv+ayF9rhLlygDD1XIkW+97HwtFetwY60dA9qdjTLyx
	rThpwGZU+VI/ZKM9Kynwazi/bq+E1Rh/PJi2V9VQ66DsOc6QUh737vS5qHW0UCwmx1+DxTLKwZfdh
	ltScrucYhtfArYprHzjwuSCUbYcJ2V9j7jUCsjkVdBzUUfz5KMAhcJ6KrJ0sOsP/HmQpbJ0kK03RU
	jMDh0NSi7SOe3zdFP7Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTYIo-0008HS-SZ; Tue, 28 Apr 2020 22:02:06 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTYIg-0008H0-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:02:00 +0000
Received: from mail-lf1-f45.google.com ([209.85.167.45]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MsHwC-1jAExy39BK-00tlrH for <linux-arm-kernel@lists.infradead.org>; Wed,
 29 Apr 2020 00:01:56 +0200
Received: by mail-lf1-f45.google.com with SMTP id u10so18097116lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 15:01:56 -0700 (PDT)
X-Gm-Message-State: AGi0Pua/oPVwHcKKJR3IDn9q8G/8qVuGp/BS83q4g5bsJJXbmsZibUEF
 U9TXJnJ3CbsJKZtZgALWYLB27Reu64aYqy3vENA=
X-Google-Smtp-Source: APiQypKRCC3KPD04zAsw5+cxuEvdnddfpLWkPhoC2m7sjHNQVxlSGSJA7IqZ0gPza4uX18XwephNlgb4sPXRsKwTwuc=
X-Received: by 2002:a05:6512:10cd:: with SMTP id
 k13mr20513654lfg.173.1588111316217; 
 Tue, 28 Apr 2020 15:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200428212752.2901778-1-arnd@arndb.de>
 <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
In-Reply-To: <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 Apr 2020 00:01:39 +0200
X-Gmail-Original-Message-ID: <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
Message-ID: <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-Provags-ID: V03:K1:Q9My/awdUdCdfObAlo3WhG2UHvBEfnsAYwY8+XBAY68CcdXpCzh
 r83I0If0BKI2JnNyM3vM26tO1sWUw0T+HVL2x/cpT0LcRPcNpyrdFIMDdZkLSt0ZkB4e+3L
 9Poh0GTS/33Kecmgiiiw2atDASRiM4bdZ79u3b1YrB9rbT+dA1qxlwlu8TPJmHBD6VHDBjG
 Muijgf5U37fDeeC/rbgwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5HONMwS62W4=:3Ftnkta/OQl7TdIpBQ9Nnd
 mxgUkT5tFJiBr7o1ABseRU3klrXbUdES330REjsjT2vjYV0SecmytF+DHSSO6Nu1FcUiv0//P
 szeSD+oNdk23ts0gSyUklFJIQf5J0dYk4AHzV0ENGZIvfXDK1wusNeq1CsJxrVaxEXer+86N4
 8ihvpLgEY+cpyg1w4tpPrEmMrUJln1S6oYDkmAxgxfeQycxANuFeZ/C8wTy7SluxzWT+LdoEa
 wpUiA9w4p9fpBJs7w41kzkynTZetX5Bi35lLAn7/B+NfRf38Xul7hKXxUOzvFXLz810nm8cq3
 8CWaosN1I6yL0XzK5YFkue6llOl3iIaVHrfa75Ru7CI42sNngxAcTmfemnCqu6bwlKr5KYCg6
 MiskD/u7QQVd/1/hQU2sOBS6EnfGTWzQwHf5shXje4cguYru2ujCs3rHpbj9vQ8DC59xSmfhq
 mQw8ZSGJhYsQojbEP1KNA0vruQ5VxHnkVTBXBcNr8VNknmKXwC+Z0PqYVs+e04lJ7sP+vVpef
 q70LWySFccPi6MzUQb902/0voqjI3sFyLnE9DvggTLU/h5neNQmhaItXDzZaur6K7YANGdB4c
 guUC8lHUYgQhUYISZDhZQoOe/Kw1JQ1Ab0aJ4nGRGPnSl5xNdcaQKqdcsas5KmtgybzU3uzdK
 fFlKs7yr6mFF5dASWv5YSpYVoB5cWodUQcUdAvMBqufrA+snCyWhfuPTFzuS28edw9XF1fBzg
 LHmSNq/strac+wpiffOa4SNIS5f3mfEqZR4bA1bt/O3Jn9qnf77u3gcEQv5ynZMT9J3bI+uxP
 ADjLLM979+aeVCGN01qozREGOABGKmgMY/Qbi/OxkrGqEHj/UQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_150158_844065_DE4DC939 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Takashi Iwai <tiwai@suse.com>,
 YueHaibing <yuehaibing@huawei.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jaroslav Kysela <perex@perex.cz>, Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 11:43 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
> On 4/28/20 4:27 PM, Arnd Bergmann wrote:
> > The imx8 config keeps causing issues:
> >
> > WARNING: unmet direct dependencies detected for SND_SOC_SOF_IMX8M
> >    Depends on [n]: SOUND [=y] && !UML && SND [=y] && SND_SOC [=m] && SND_SOC_SOF_TOPLEVEL [=y] && SND_SOC_SOF_IMX_TOPLEVEL [=y] && IMX_DSP [=n]
> >    Selected by [m]:
> >    - SND_SOC_SOF_IMX_OF [=m] && SOUND [=y] && !UML && SND [=y] && SND_SOC [=m] && SND_SOC_SOF_TOPLEVEL [=y] && SND_SOC_SOF_IMX_TOPLEVEL [=y] && SND_SOC_SOF_IMX8M_SUPPORT [=y]
> >
> > This is complicated by two drivers having dependencies on both
> > platform specific drivers and the SND_SOC_SOF_OF framework code,
> > and using an somewhat obscure method to build them the same way
> > as the SOC_SOF_OF symbol (built-in or modular).
> >
> > My solution now ensures that the two drivers can only be enabled
> > when the dependencies are met:
> >
> > - When the platform specific drivers are built-in, everything is
> >    fine, as SOC_SOF_OF is either =y or =m
> >
> > - When both are loadable modules, it also works, both for Kconfig
> >    and at runtime
> >
> > - When the hardware drivers are loadable modules or disabled, and
> >    SOC_SOF_OF=y, prevent the IMX_SOF_OF drivers from being turned on,
> >    as this would be broken.
> >
> > It seems that this is just an elaborate way to describe two tristate
> > symbols that have straight dependencies, but maybe I'm missing some
> > subtle point. It seems to always build for me now.
>
> Thanks Arnd, do you mind sharing your config?

https://pastebin.com/HRX5xi3R

> We noticed last week that
> there's a depend/select confusion might be simpler to fix, see
> https://github.com/thesofproject/linux/pull/2047/commits
>
> If I look at the first line I see a IMX_DSP=n which looks exactly like
> what we wanted to fix.

Yes, I think that fix addresses the build warning as well, but looking
more closely I don't think it's what you want: If you do this on
a config that has the IMX_DSP disabled, it would appear to the
user that you have enabled the drivers, but the actual code is still
disabled.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
