Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006DC15A56B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kbx/pgeHkYzk1zQEPNQOubIZGDSUkjcTNNLclwPPJzM=; b=adYyiS51Vo2292
	VULCvg66VNPO46OqSl3TmadBR+nZ6eVYUyoGwfzh/dPcwYs7HOZh8vSEkJhnv1sX3t3EORfpMSzxt
	NturOSP5TtaOptPvze3HhioEMMV/uYkPJJhpBHfMkOWfwVzg9JVY10M6BB0fi3BWhpdT+25XUky3i
	U7/1nTLHwj3/EaxMAU4RhLFi0h/cBKDy2zFvf1m5s9WTsb/NFiP8SbEOrQZ4eUoKLg8acsYpsEmiB
	CIO25Yi+0S8DPQ5/rHz28KaGAXdMKNr0kY1H/FMNFZ5SsLDsyEHAhBcEWfdK7H/5GY8ye2xrD4fa6
	eVQYcg9c6eQRTRaC3qsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1okB-0003lW-Pi; Wed, 12 Feb 2020 09:55:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ojy-0003gq-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 09:55:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so1408081wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 01:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5qqmmgh1mRA8+uKd3OvijHJxqdZDdPNm7C7N0rHwtQ0=;
 b=ZQTj4phV6Ct6hAZ9+3hpFPdlE3z+Cx/i/rtMRiLdQSrUdYcPxaojrRblBDxxa9sUFr
 z4/+4zKw6rfRxYW1MyKnDCMlDrNwIEqHnZ2oRp6ckiZA6XWcT8zUmtRvkopMkOfRmunq
 a0X31u+6mOY7gexXKHddCIOlf2V9zMC2huzBvbOBm5jznmroIIpWafVfqoJLwEYdE5M8
 pT2y5sVIRhjfuakBod8G4f5eJXiYCUZ+8j3897A0IK+3idy4rTesYmDiBfm2L03KOUxi
 nS2WG4GzIK8YAls2dsBBOYXz/riEAmjDZi9MO3zW9DqQMRvwBZGz0VJ08eC6f3J96v2l
 nhUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5qqmmgh1mRA8+uKd3OvijHJxqdZDdPNm7C7N0rHwtQ0=;
 b=DXujbp9ZJZm5Jp1d4RqpOrjlLpwmVngMedz1jwfWhAmFz1fTRNSCsX03YaimuCe4FZ
 kpGKZgBBcYuv7O3EL6fRtFPze9nbfrSzlrNa170JQr+YdwS+R0wf0qBbWu61wDDpN+kR
 UqKB0enZ/uswXO2KoPOzb+oBHAsfy8Dru1fwqAByw9k7ITo2jp9TM7SR0+GRaWooA0R/
 cIiLaW/9XAzVlE8kO6y8DQW9oNqnzb9r4ylwTEBnT7PGN2VVvhilP1D++QNfOceshGp3
 fbVJJSa0BTmnMswkZB/ZJIJah5RxT1ULYs7Xj7gBBwIPCypEDwq/zbWNxjKou1OHsQ7s
 ZZxQ==
X-Gm-Message-State: APjAAAWkOLhaFQ8Vk8ewyzLaSo219FtW32fPo/e07stwG9UzcSUT/Ljn
 RP3BJkyhQLoxkx7kPj9ERGX7DbjF5LnIO0TRIC4=
X-Google-Smtp-Source: APXvYqxL9Eo4qb2sOJrd1wkpY5K5/0EEQ1noRNaNgdXfALwcSpj9a+jGRMYLeglfrh/aGIAZ7gTQTMGTxHsaLfrIN3k=
X-Received: by 2002:adf:f7c6:: with SMTP id a6mr15060118wrq.164.1581501328222; 
 Wed, 12 Feb 2020 01:55:28 -0800 (PST)
MIME-Version: 1.0
References: <20200210061544.7600-1-yuehaibing@huawei.com>
 <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
 <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
 <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
 <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
In-Reply-To: <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 12 Feb 2020 11:55:16 +0200
Message-ID: <CAEnQRZB2n+NOEete9fe7=EU9D2gfURf52NnUZTRDM0n9ey_FSw@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_015530_615432_9E62F743 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Feb 11, 2020 at 11:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, 11 Feb 2020 at 10:46, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> >
> > On Tue, Feb 11, 2020 at 3:59 AM Yuehaibing <yuehaibing@huawei.com> wrote:
> > >
> > > On 2020/2/11 5:00, Pierre-Louis Bossart wrote:
> > > >
> > > >
> > > > On 2/10/20 12:15 AM, YueHaibing wrote:
> > > >> when do randconfig like this:
> > > >> CONFIG_SND_SOC_SOF_IMX8_SUPPORT=y
> > > >> CONFIG_SND_SOC_SOF_IMX8=y
> > > >> CONFIG_SND_SOC_SOF_OF=y
> > > >> CONFIG_IMX_DSP=m
> > > >> CONFIG_IMX_SCU=y
> > > >>
> > > >> there is a link error:
> > > >>
> > > >> sound/soc/sof/imx/imx8.o: In function 'imx8_send_msg':
> > > >> imx8.c:(.text+0x380): undefined reference to 'imx_dsp_ring_doorbell'
> > > >>
> > > >> Select IMX_DSP in SND_SOC_SOF_IMX8_SUPPORT to fix this
> > > >>
> > > >> Reported-by: Hulk Robot <hulkci@huawei.com>
> > > >> Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency")
> > > >> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > > >
> > > > Thanks for the report.
> > > >
> > > > Would you mind sharing the .config and instructions to reproduce this case? we have an unrelated issue with allyesconfig that was reviewed here:
> > > >
> > > > https://github.com/thesofproject/linux/pull/1778
> > > >
> > > > and I'd probably a good thing to fix everything in one shot.
> > >
> > > config is attached, which is on x86_64
> >
> > Thanks, I think this is legit. It was introduced with:
> >
> > commit f52cdcce9197fef9d4a68792dd3b840ad2b77117
> > Author: Daniel Baluta <daniel.baluta@nxp.com>
> > Date:   Sat Jan 4 15:39:53 2020 +0000
> >
> >     firmware: imx: Allow IMX DSP to be selected as module
> >
> >     IMX DSP is only needed by SOF or any other module that
> >     wants to communicate with the DSP. When SOF is build
> >     as a module IMX DSP is forced to be built inside the
> >     kernel image. This is not optimal, so allow IMX DSP
> >     to be built as a module.
> >
> >     Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> >     Signed-off-by: Shawn Guo <shawnguo@kernel.org>
>
> Hi,
>
> Since it's a module, don't you just miss EXPORT_SYMBOL there?

This is a good point. Will have a deeper look at this asap and sent a
fix .

>
> > So, I think we should change the Fixes tag. Are there
> > any clear rules on when to use select vs depends?
> >
> > On my side, I know what both are doing but it is not clear
> > when to use them.
>
> Visible symbols usually should not be selected. The same with symbols
> with dependencies. The docs have this rule mentioned.

I see. Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
