Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D76158C42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 10:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpcFDeG064uwIcB8hhLCkAFMdjlBJxYN0SrMqnNbr/k=; b=ds8aRcqsDKZjx9
	dBCPsi7BT6BkTogy9yFnC+YrdvyzOYiV4qDKv0L08f/7eqdnWqrLY/e/ZNeLT+f1vo5lgClb5aA4K
	w5HDQQc0d+lWNtlemF0nddvynOGrtj6IVRpKF76HOK3r+EEVgE5UPrbaK9bHToYwmYIGL6c1bS/WF
	/gYnOP8hrrxy90qW1rpiatappRdYDuXgtkFFVPXq5Hki8B9R4XXQYDPPok8NRu890xmEHIx3dDT+w
	pHVMTp4sv0gkt/uh6rTn+Yaoj/kB3fGBLNHMVhvUT7aOdOXUJzsKdTMurW/DjqmzS6me3u6TOzKqw
	74dQdzxDmwJkr/Y1mcDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SKO-0004F5-MW; Tue, 11 Feb 2020 09:59:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SKG-0004Ek-4T
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 09:59:29 +0000
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CB052086A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 09:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581415167;
 bh=eZTJW3fyuVfF78EHcMrcN6Hj2iRFml/KLBuxmsVst/I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ontb1bxQ5hDW5q1FR8Br/ISHJ7XHTUW3ug/87faSNg2bqLqit8Rl8hfXZsGqLbSJq
 hJw4R7PUK3ijRg0f8YseHgmgZlH61VXB6J80qFs5xjpKY/rHGAE8NnaVwdbMf9DhdK
 BfhtnOclYZp6S2JCpvk8o1itiL2qrI3frrZZk4MU=
Received: by mail-lf1-f47.google.com with SMTP id r14so6534893lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 01:59:27 -0800 (PST)
X-Gm-Message-State: APjAAAUZI0hBJDjckxzO4ufYvqmtWA5qeJwAOTWYf/etel1pORbqBAWF
 E8Vg7v/zOUl550jAZZl/wC9lrIWiVIvok+cIUBA=
X-Google-Smtp-Source: APXvYqwAHORsy+C2v7lVpCe02Mf1CVE+/0/5jXb/E/zbgMCk+yjlFnDzUNYbiYCIu0+5WnyY8bNqPOsV8tBJAugOUOM=
X-Received: by 2002:a19:228c:: with SMTP id i134mr3249949lfi.2.1581415165575; 
 Tue, 11 Feb 2020 01:59:25 -0800 (PST)
MIME-Version: 1.0
References: <20200210061544.7600-1-yuehaibing@huawei.com>
 <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
 <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
 <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
In-Reply-To: <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 11 Feb 2020 10:59:14 +0100
X-Gmail-Original-Message-ID: <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
Message-ID: <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: Daniel Baluta <daniel.baluta@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_015928_219551_55743794 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Yuehaibing <yuehaibing@huawei.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Feb 2020 at 10:46, Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> On Tue, Feb 11, 2020 at 3:59 AM Yuehaibing <yuehaibing@huawei.com> wrote:
> >
> > On 2020/2/11 5:00, Pierre-Louis Bossart wrote:
> > >
> > >
> > > On 2/10/20 12:15 AM, YueHaibing wrote:
> > >> when do randconfig like this:
> > >> CONFIG_SND_SOC_SOF_IMX8_SUPPORT=y
> > >> CONFIG_SND_SOC_SOF_IMX8=y
> > >> CONFIG_SND_SOC_SOF_OF=y
> > >> CONFIG_IMX_DSP=m
> > >> CONFIG_IMX_SCU=y
> > >>
> > >> there is a link error:
> > >>
> > >> sound/soc/sof/imx/imx8.o: In function 'imx8_send_msg':
> > >> imx8.c:(.text+0x380): undefined reference to 'imx_dsp_ring_doorbell'
> > >>
> > >> Select IMX_DSP in SND_SOC_SOF_IMX8_SUPPORT to fix this
> > >>
> > >> Reported-by: Hulk Robot <hulkci@huawei.com>
> > >> Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency")
> > >> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > >
> > > Thanks for the report.
> > >
> > > Would you mind sharing the .config and instructions to reproduce this case? we have an unrelated issue with allyesconfig that was reviewed here:
> > >
> > > https://github.com/thesofproject/linux/pull/1778
> > >
> > > and I'd probably a good thing to fix everything in one shot.
> >
> > config is attached, which is on x86_64
>
> Thanks, I think this is legit. It was introduced with:
>
> commit f52cdcce9197fef9d4a68792dd3b840ad2b77117
> Author: Daniel Baluta <daniel.baluta@nxp.com>
> Date:   Sat Jan 4 15:39:53 2020 +0000
>
>     firmware: imx: Allow IMX DSP to be selected as module
>
>     IMX DSP is only needed by SOF or any other module that
>     wants to communicate with the DSP. When SOF is build
>     as a module IMX DSP is forced to be built inside the
>     kernel image. This is not optimal, so allow IMX DSP
>     to be built as a module.
>
>     Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
>     Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Hi,

Since it's a module, don't you just miss EXPORT_SYMBOL there?

> So, I think we should change the Fixes tag. Are there
> any clear rules on when to use select vs depends?
>
> On my side, I know what both are doing but it is not clear
> when to use them.

Visible symbols usually should not be selected. The same with symbols
with dependencies. The docs have this rule mentioned.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
