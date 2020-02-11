Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5600B158C0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 10:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWK4wy9xRr5GU76AuHzuA+8eV/HdKUfHFyznVm9uctY=; b=Avx0l2ib/Yq8xe
	RR9ojeLdvaxC8iqPTrBGKHs9SQ8qagVa4/oC0C98x8uakRcRw5t8HdHDsk6dn/Hf+NYQU99Mz7CAo
	fDmY2uPlX6+2vMY13IFMUYAykC9r/qLoxFbtar7XvrhsOW0S97AAZKXVwtiVyTX/6EKkVheoYoiGg
	gaFNMJOdrTsT4rFu+5UPVP7befyFEvZwtZTgsO4KWUk0XPe4UkPCK60YTbBxARmQWjheamWfp6Xpg
	M21qi+42HcgMunqit690bSp4iAaZWJXF5MTOb412EyvKKPsEfLCivXwuCX/sPyvRb1XAsMINk/bV8
	aQzbmhGVgvPnPJbUxk9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1S8B-0008SY-5w; Tue, 11 Feb 2020 09:46:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1S83-0008Rq-S5
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 09:46:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so11355766wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 01:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w1TSPc+JlTHAhFmRkBjf4YDoyFF0cD7ftWasXNuoumE=;
 b=FjsA5BIkZ+hT2wm9mmhX5eKcsNzWDFh8FGGRHbRT6gQ9+e4gbSCL8XUhCvFdE9YSxm
 +O2IY3hVHB+BNd+87rqADV+sqQ5SGlwrKmZupaGnHcEPtO7b06ZqZ+mOUwqwfaJoIEHH
 yX/nBYG2N75UIkPiSwTr9GasTdh4gW36/zcwWqSmkwvgIrkm+mg5TmeGUN7D7oaEpvNg
 BhkvZ0GtgFAEkgw0vrXnFnAQyfvz8D1GkCYuCXzPWpTTSiVl4Qs4MOfXJJ4H2wPk1hvR
 utZEamgdQNk0xMtA+Pxk/ranvt1ndcWGzL4Ph95+IcIyFFSYHKpysmncNo5yrWfTF7X9
 jn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w1TSPc+JlTHAhFmRkBjf4YDoyFF0cD7ftWasXNuoumE=;
 b=NC+H491t61rcRU+zj8ibQvfCRzZ5Zyo7FhXAaBtnYHbulu/skVB1vnNodIY0Cwz65t
 RzoOSxGpxT+6lNKpAMzW8MSKhJhe2dbfn39GWM1TaQadNH1aZQw+lDgOv65L2dfIdrYe
 xRY9IHNGUbkXs2XNiKbZ8Opu77rgZdHQlC/sbo8Im8Z9J2SY0yiwKHtdhmWTfOfRZnpX
 d3JAUGnzoUHgSQINZixs2cChBbOLA9DLsxE/gZdKjBkpp60GNh8g38bNLn+an7K8u+s4
 B4xh/s6kTRFBV/I7GYzFr/3PutMDyAsBaPzZfn3dTT0hB9yLL8cSwW9xkfKI0wmBQVGH
 mESQ==
X-Gm-Message-State: APjAAAX69KdCw4YMJDN8mtHOjSGPyZPkD9fwYTvzoQtbcVMv8aDrhDio
 eGi8/qoTbfbZRzpaU79A4xrQ0jh4GQ0K3L/mkUrlgFB9dAY=
X-Google-Smtp-Source: APXvYqwhSf8JavKelhdt3J0bOLew5DzoXQ+67dDmYAeO5cfMhbaTYXoo2bO/py7GSWzLHg3jBl4sXXUIKRdKaJbTXNo=
X-Received: by 2002:adf:ed09:: with SMTP id a9mr7806457wro.350.1581414409744; 
 Tue, 11 Feb 2020 01:46:49 -0800 (PST)
MIME-Version: 1.0
References: <20200210061544.7600-1-yuehaibing@huawei.com>
 <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
 <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
In-Reply-To: <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 11 Feb 2020 11:46:38 +0200
Message-ID: <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: Yuehaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_014651_926768_6C960CDA 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, krzk@kernel.org,
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

On Tue, Feb 11, 2020 at 3:59 AM Yuehaibing <yuehaibing@huawei.com> wrote:
>
> On 2020/2/11 5:00, Pierre-Louis Bossart wrote:
> >
> >
> > On 2/10/20 12:15 AM, YueHaibing wrote:
> >> when do randconfig like this:
> >> CONFIG_SND_SOC_SOF_IMX8_SUPPORT=y
> >> CONFIG_SND_SOC_SOF_IMX8=y
> >> CONFIG_SND_SOC_SOF_OF=y
> >> CONFIG_IMX_DSP=m
> >> CONFIG_IMX_SCU=y
> >>
> >> there is a link error:
> >>
> >> sound/soc/sof/imx/imx8.o: In function 'imx8_send_msg':
> >> imx8.c:(.text+0x380): undefined reference to 'imx_dsp_ring_doorbell'
> >>
> >> Select IMX_DSP in SND_SOC_SOF_IMX8_SUPPORT to fix this
> >>
> >> Reported-by: Hulk Robot <hulkci@huawei.com>
> >> Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency")
> >> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> >
> > Thanks for the report.
> >
> > Would you mind sharing the .config and instructions to reproduce this case? we have an unrelated issue with allyesconfig that was reviewed here:
> >
> > https://github.com/thesofproject/linux/pull/1778
> >
> > and I'd probably a good thing to fix everything in one shot.
>
> config is attached, which is on x86_64

Thanks, I think this is legit. It was introduced with:

commit f52cdcce9197fef9d4a68792dd3b840ad2b77117
Author: Daniel Baluta <daniel.baluta@nxp.com>
Date:   Sat Jan 4 15:39:53 2020 +0000

    firmware: imx: Allow IMX DSP to be selected as module

    IMX DSP is only needed by SOF or any other module that
    wants to communicate with the DSP. When SOF is build
    as a module IMX DSP is forced to be built inside the
    kernel image. This is not optimal, so allow IMX DSP
    to be built as a module.

    Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
    Signed-off-by: Shawn Guo <shawnguo@kernel.org>

So, I think we should change the Fixes tag. Are there
any clear rules on when to use select vs depends?

On my side, I know what both are doing but it is not clear
when to use them.

> >
> > Thanks!
> >
> >> ---
> >>   sound/soc/sof/imx/Kconfig | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> >> index bae4f7b..81274906 100644
> >> --- a/sound/soc/sof/imx/Kconfig
> >> +++ b/sound/soc/sof/imx/Kconfig
> >> @@ -14,7 +14,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
> >>   config SND_SOC_SOF_IMX8_SUPPORT
> >>       bool "SOF support for i.MX8"
> >>       depends on IMX_SCU
> >> -    depends on IMX_DSP
> >> +    select IMX_DSP
> >>       help
> >>         This adds support for Sound Open Firmware for NXP i.MX8 platforms
> >>         Say Y if you have such a device.
> >>
> >
> > .
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
