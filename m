Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD9EC3951
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWw5DF2sawG3tXKngsEwI14iAyQkReS2Ub/mPdT3eNU=; b=rf0b80BVAW/bPf
	wLRx8wL/hKtB56wT4woWyOv51bD70xIOZXeN0vdizIbbeGPpaTaNBDYhkbH7umb9tOPZtXb4c1hHw
	f2bllLzRiiOPLYeFxmVmbYkbzEE6m2JwqzAOYStmohq46mM0JQOtSi5NCcBEzvqPHVzVqpwVDovK2
	y1wskhg79Sii3DtxTms0n/jH6HhQVvWAGMRg2aJFCgGcaSu2G+4/VSuw41pUVA+eM3CZqOllMr5Oj
	7vHyLlB4PEwrhjbB90FQDCTWguj3+Z4AySZhPSoTTAQ9ocJzRS6SSiKyGnSnhEl2j8I2AHYlrfNiP
	9rjNNGhh5iYIPvM5yxDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKHX-0005lG-PK; Tue, 01 Oct 2019 15:41:43 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKHR-0005jm-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:41:38 +0000
Received: by mail-qk1-f195.google.com with SMTP id w2so11681831qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 08:41:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PYNED/gHAQZWO+3A/3UN+zfY12A/7ApPwVWXSrVnRe4=;
 b=ahW8tJsmpk1QjYwphSoZQLqxwSCJP22sap8rBcrSLJKFGRo0YpXYmZxWUCd/Dc+lny
 DwBOO+2wcUFLQoXdYJyPVmTysyRwAfA4Dnc5nvalFEHf0Tp9I4SmoFYZwIVyVzeKUffE
 wMtZRBEv5IJt8ga6Basf/8A8aD5sG1hC9G5beuwX3L1Bwo9x0fairzw6LkRFRoKrRNN5
 NEF/pU2mOCm+cxlohUu7DtSnVYRsn27B7sVyB/3Dii+c+8UAdNU/Ui4sdVUTxGUEtmYE
 A+a1BQ2q+i7BMlrkDzCuP3wyNfDgpMet64VwKP/o7n+yZua3r8CWU3Co/kWYCzdimduO
 l2RQ==
X-Gm-Message-State: APjAAAUOfig9PYJtvw061gkPlsrolzNFa69C+tBvTwUJlpbWgV0AaP7a
 onj7PVBMO2MuOA1f4b+hyeNKI5H44CtUBCaU48Y=
X-Google-Smtp-Source: APXvYqzYVsIwghV1g7M189GjA1p2gl/d+MucD1KvbEioKPUwygJiOOw9tiSuacOJf+g/Fbf9+E9jGyNtKXcZR+sjTxc=
X-Received: by 2002:a37:a858:: with SMTP id r85mr6681072qke.394.1569944495423; 
 Tue, 01 Oct 2019 08:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191001142026.1124917-1-arnd@arndb.de>
 <bb58c7cc-209d-7a2f-0e5b-95a9605ffe7b@linux.intel.com>
In-Reply-To: <bb58c7cc-209d-7a2f-0e5b-95a9605ffe7b@linux.intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 17:41:19 +0200
Message-ID: <CAK8P3a3Js2dNhnRhP7PLadWZ69DZr1mz6DowN9HDJL4CFDAAFw@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_084137_085655_41F0BCFC 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 5:32 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
> On 10/1/19 9:20 AM, Arnd Bergmann wrote:
> > CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
> > turn referenced by the sof-of-dev driver. This creates a reverse
> > dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
> > is built-in but CONFIG_SND_SOC_SOF_IMX=m:
> >
> > sound/soc/sof/sof-of-dev.o:(.data+0x118): undefined reference to `sof_imx8_ops'
> >
> > Make the latter a 'bool' symbol and change the Makefile so the imx8
> > driver is compiled the same way as the driver using it.
> >
> > A nicer way would be to reverse the layering and move all
> > the imx specific bits of sof-of-dev.c into the imx driver
> > itself, which can then call into the common code. Doing this
> > would need more testing and can be done if we add another
> > driver like the first one.
>
> Or use something like
>
> config SND_SOC_SOF_IMX8_SUPPORT
>         bool "SOF support for i.MX8"
>         depends on IMX_SCU
>         depends on IMX_DSP
>
> config SND_SOC_SOF_IMX8
>         tristate
>         <i.mx selects>
>
> config SND_SOC_SOF_OF
>         depends on OF
>         select SND_SOC_SOF_IMX8 if SND_SOC_SOF_IMX8_SUPPORT
>
> That way you propagate the module/built-in information. That's how we
> fixed those issues for the Intel parts.

Yes, I think that would work here as well, but it keeps even more
information about the specific drivers in the generic code. It also
requires adding more 'select' statements that tend to cause more
problems.

The same could be done with a Kconfig-only solution avoiding
'select' such as:

config SND_SOC_SOF_IMX8_SUPPORT
         bool "SOF support for i.MX8"
         depends on IMX_SCU
         depends on IMX_DSP

 config SND_SOC_SOF_IMX8
         def_tristate SND_SOC_SOF_OF
         depends on SND_SOC_SOF_IMX8_SUPPORT

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
