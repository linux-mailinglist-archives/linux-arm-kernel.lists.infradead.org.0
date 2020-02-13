Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7757715CD02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2NYA94ia12n1qs+pLg/4wz6j+1r+AK5sUd6+GNLPSk=; b=gh6zLKDVTEECEc
	nnPn26Mtfw681SKrrvi36auNvePDuODAsDitmhX++jNWoViowR15s2pTl0NTFk2G3EeWc2HgXL9OQ
	I3gn/czGQBxI3h7CmergwXAPUtxm9/tNNlsWMAru/p6SPiotgrBHxkVqTEEg4NIsdujLwV0nSTSRn
	lqIB3XFJCTNrcG5QsUQ1pJufe8lnApqytt57SKDpHxqPcyuoPJTIFv2X5hdD7Q7ukHklNTT+FncYz
	afkxvYj01Xc1qY1hlcPc+0Bqrr+dlJ/VqhecdosiQigGqh9EPSOc1Aq3TjvlFyORU9AjH0ci9lHFC
	eAgJ2v9ADK0+LHYHzDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Lmu-0000kV-IT; Thu, 13 Feb 2020 21:12:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Lmm-0000jy-89
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:12:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so8473497wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 13:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iLnuSGH6jNEPRpXsbLdWMvvm70on1OtXGRCIuCTYax4=;
 b=THiYYtRd1Hw9OOJtDh3m0bsQpuPbcL6D15Or8KKVQBdszixBwTMpdrWI1sdey73UL6
 OMnfWvyrWMTpxJtIWoOC3klZgu1IWrwgGpKzMr1l6YiTs0DTZmmHJJcXX96UNF87RkqM
 HIFVzoYj/EtPV4PceO73UE9E2E+l505vMkvdCLvqEdLKR6NepxAChTX8Ksv5A3MY10wx
 MRDdAInFdByqnE458Nnhm4UsbhvGkS+b6VwbMIinCdiLagqLPLJoH+eJrkk9PW7dAYay
 e6CshZ/C9jEucmAiBLXhWu3nU7PBF+CispXbP2m0DDejFGVPd1+CTDQtGHZ+f7WzC7Ag
 k7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iLnuSGH6jNEPRpXsbLdWMvvm70on1OtXGRCIuCTYax4=;
 b=mZ/0mQsQnIJzL1veiS13Tp9NUqBbwzkRvP2VqY4l0Ken8PUf/KOsWpKQWynaIbv2dd
 IViUCS0aUzE4SLzNFfhCkfSCd/iAyLSMh8aZUA55Gwj/slQB4kKZ0XLcnndhpghGA429
 Ds3UDh85aC1eMgMqiUUvgqwGAEuHQX7Fkf5A5ynq48gMDKMbHW7Mj5VsNtGxgwr5zlCV
 C8HcAT3WEeGjSCw18czoxN2b28PMPnnMTNQuSQuryg2xEknwmGsdWYZ28OYZeYDfZFM7
 hdaZaLe9mQPHHVxVhgJzZq1BAUQh/gKwLdzWnCbwH95uuriS4GkpTVN50wtd638tAWrY
 QdRw==
X-Gm-Message-State: APjAAAXAT85QmMTHh9leHGDH/vAU8g02bsKbro6oxP6COUx7V+VSFi1p
 C5xOSJpUgp3fVHVOkFyBocSbpOyJtb+/tvKXGsA=
X-Google-Smtp-Source: APXvYqz2/8nyozAwb5c39LHVAvkkzIlzsIxS4KXcp3M3SHYFP+afkm8+EUw7r7XUouiqxTfEbIygo0weNf0szTqLQ0o=
X-Received: by 2002:adf:ed09:: with SMTP id a9mr24147253wro.350.1581628354989; 
 Thu, 13 Feb 2020 13:12:34 -0800 (PST)
MIME-Version: 1.0
References: <20200210061544.7600-1-yuehaibing@huawei.com>
 <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
 <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
 <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
 <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
In-Reply-To: <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 13 Feb 2020 23:12:23 +0200
Message-ID: <CAEnQRZBgpcLz29PG6pY_6xaULO6siGumqrsO0gRReMRwUOqW2w@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_131236_292429_9690D92C 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
>
> > So, I think we should change the Fixes tag. Are there
> > any clear rules on when to use select vs depends?
> >
> > On my side, I know what both are doing but it is not clear
> > when to use them.
>
> Visible symbols usually should not be selected. The same with symbols
> with dependencies. The docs have this rule mentioned.

You mean if module X depends on module Y, we shouldn't use select?
But this exactly what this patch does :).

The problem here is that when X depends on Y, and X=y and Y=m
when we try to compile X if get an error because we cannot find a symbol from Y.

I think if X depends on Y, and X is forced to "y" then also Y should
be forced on "y".

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
