Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E171BD73B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWAo85W80DhRwDwblr3LvmHy5lPQVv6g0qveKx5HqtE=; b=cY4Kvf39QKzmXH
	NKh0RxLdHh6gLH1S2v4u6Nhi2cfTDdu21+iDxLynHIeuHLO9pyEQU02h9gBFNukZvQWDmATqonn7A
	FvEBoj4G4mpZp6DPCmJNgrT7DEoyGEZrI/TFXcaGgBCFPQRqWigx57xkNFB0OZEVBq+RisMP7f8Z6
	6krvVEqpNh4bPaWo0DO6kN4SKFjfi/0ceDZ25BIpCrietiTJlKcF2TAfFn2+Xlx95u7Wv+B0HVL91
	is6AJtqRiFljcQ8lO0HdeYj/wDsVxsv+t7zf5ZUC7rSObk635rwLe5EvIwE2wbEnYUW7QSXtby7tO
	f+SdP+IixuMwXwPhGbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTi20-0003FY-4Y; Wed, 29 Apr 2020 08:25:24 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTi1i-0001pX-CP
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:25:08 +0000
Received: from mail-lf1-f54.google.com ([209.85.167.54]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MlwJv-1im5gT2aPL-00j17C for <linux-arm-kernel@lists.infradead.org>; Wed,
 29 Apr 2020 10:25:02 +0200
Received: by mail-lf1-f54.google.com with SMTP id u10so900417lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 01:25:02 -0700 (PDT)
X-Gm-Message-State: AGi0Pub3vAqGLyjcVj47dI2H7yxHxSGApeXPENEl0785lrxZJSlCwMK0
 FW2dSaRCZjG4peFk9FTu7/ycvH72aAZkf5gB8lA=
X-Google-Smtp-Source: APiQypKYwuif1CT2TpVka5FFL7aLnwCZS2moXiiZbTlODTEUY1BIra8wbAmWai01XE2gYsYojcCm4wCdH9lAq0wmfsY=
X-Received: by 2002:a19:505b:: with SMTP id z27mr4237553lfj.123.1588148702030; 
 Wed, 29 Apr 2020 01:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200428212752.2901778-1-arnd@arndb.de>
 <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
 <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
 <f91c9a68-7641-beb8-a23e-bd1b9b8d0acb@linux.intel.com>
 <b784c008-7094-05cb-6200-6b246ff39bb8@linux.intel.com>
In-Reply-To: <b784c008-7094-05cb-6200-6b246ff39bb8@linux.intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 Apr 2020 10:24:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3vri_-tdEy3x6tRGUjb_k-+Mc+Jt9bQpgFvqm2RN+cJA@mail.gmail.com>
Message-ID: <CAK8P3a3vri_-tdEy3x6tRGUjb_k-+Mc+Jt9bQpgFvqm2RN+cJA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-Provags-ID: V03:K1:Iod+K91ebqu7vl0FxDwY7ZS4gzSQ9I89O2kdREtHKlufIBGZl4o
 4A3//fbbXD7LR4PakMa+Lt57FieaCDg2VjDEg43dpk8SdNK4Gq1sSm63LJgB1U6+7qmAL3w
 y5SlSKgErku4kUiF/zMFS+MtkIcajzgtIrWboxSiVz9Lt31pcNIjSlQejrWnXB2gycOwM9i
 lOSxi7C2r3PIJzL0rnm4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rF7eFkhqH3M=:z4aE3fGcXShFjukotuO7NL
 hBoidppsaOyyfEAc6ukvOhevginkL200sPBUxL9sv/6IGU9WQI+JoR2tqOsVcUAQumSJpWGYi
 C8l0kRnwgqNCjYPB6Qcjh76HvMbjvDbutg73OUS6QcWJeyB8otN9iUwHncXiCQuSpyAB66h7P
 eJh6tUA/wCVBkEZp6nhoU6FCXW4VI5EVd8eiq6L4f6szSi7W/qkSmCvqxVTckZW+Od/ybgkqM
 6SHqAHLcN6y3eHNX0NfzpRQtLkzpU0Fm/nNACGsutw2LJB2mSdP0ywxEF0M+7QIti1V1me8+O
 QWu5gGfS8ESeE+mKKyYhSGI5oPasgGfrL+OqxDjYOjhI9mZ8LeOe8xb1hoWWpm+QhZxZ4Z5jM
 aVyMf5pxUI0FdPIsfDZUlC9pOxW+Ql+PI4Sbjb8/wsF4sUV0wOgQvSbgdzY7xfP5rnNUs4rnb
 NAYx9O+2ub5ivtv6laYQ++yV8E3pMvhQsCsrZHyumwpiQG+sCuTCnv8ZWBar1gK4f9tmOae0M
 3rJhYUoi5sN97FD5m5Yoh7Ayds1GBwegtOh1mvu9dqBJoTvq43hHOSYrZQTpf/CTfU+CywF6K
 Jk7HB/KFDYGMfDYd+zcClsKGLn+K52ndTU9KmTiC3lwqMc1j7Q7a9JvTiaXM8il/C5SH46Y3G
 WaaTvXNFykg3Telavr+ZE4pGC8pW4NMis5Kc1UZyv94Gv0vzAaMU2WhMlZflHMo28PHcsUyVM
 Q2z0poKJfEDg+s9cVH1xhjBpy9SQqlkS+xPLTCPLVqKlVfQsGUKxxyHQDmpRUD2DxasuiJSfl
 U4mQkADpFfpaeq9hmbpJYUDi9XVeWzkBnwXoFr2Svf+GglkQzI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_012506_722450_B5D51B16 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Mark Brown <broonie@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 1:00 AM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
> >>> Thanks Arnd, do you mind sharing your config?
> >>
> >> https://pastebin.com/HRX5xi3R
> >
> > will give it a try, thanks!
> >
> >>> We noticed last week that
> >>> there's a depend/select confusion might be simpler to fix, see
> >>> https://github.com/thesofproject/linux/pull/2047/commits
> >>>
> >>> If I look at the first line I see a IMX_DSP=n which looks exactly like
> >>> what we wanted to fix.
> >>
> >> Yes, I think that fix addresses the build warning as well, but looking
> >> more closely I don't think it's what you want: If you do this on
> >> a config that has the IMX_DSP disabled, it would appear to the
> >> user that you have enabled the drivers, but the actual code is still
> >> disabled.
> >
> > Are you sure? we added a select IMX_DSP, so not sure how it can be
> > disabled?
>
> I just tested Arnd's config with the patch we came up with for SOF
> (attached) and it makes the unmet dependency go away and builds fine.
> the problem is really using select IMX_DSP if it can be disabled by
> something else. My proposal looks simpler but I will agree it's not
> necessarily super elegant to move the dependency on IMX_BOX into SOF, so
> no sustained objection from me on Arnd's proposal.

Ok, thanks for testing!

I looked at the bigger picture again and found that the more fundamental
problem is the dependency reversal in sound/soc/sof/sof-of-dev.c, where
you have common code that knows about and links against a hardware
specific driver. This is something we try hard do avoid in general in the
kernel, as it causes all kinds of problems:

- Expressing the Kconfig dependencies is rather unnatural and error-prone,
  as you found

- Adding multiple new drivers at the same time leads to merge conflicts

- A kernel that supports multiple SoC families, like all general-purpose
  distros do, and Android is going to do in the future means that you have
  to load every hardware specific module in order to just use one of them.

- In Android's case, it also breaks the model of having one vendor provide
  support for a new SoC by enabling additional modules they ship in
  their vendor specific partition

I think this is all solved by moving the "module_platform_driver()"
and of_device_id array for each driver into the module that defines
the corresponding sof_dev_desc structure, and have those drivers
call the exported sof_of_probe() and sof_of_remove() functions.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
