Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA067C3A86
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fgo/uP4jVjHJbDmTMn2AbnutgtfvdOFT5u+BGculAQk=; b=fGBUyvsdYqAOfg
	PKLCNZnHWxswC3JSDKZB+2ovahLP/L0mVQlWeeUAH/UFhFhKTj4BIw08Ru75lBUOEYatDeDNFwJe6
	FzzkOGuUJSoPUnYmIQ0SdfK+D+jTNy1BfCyD8r89wjgQDuk3QXBkycrTyFUwajfDELm6DgpNmrW91
	xA0eOj2BugzmGIhMYHqLSBTLEQfViHajfqfd/+u8ldkuUH2nUwRHqqqyPE2nSzhaUm2WgHyUeQx/s
	d4ZFeOYiOzvqtuesM92tfg3NwUu37mICY687l+u82r7AeAC1uVX3WdufQXmMY3xYDxYULYauwKujH
	XYUMEIJVH5ZZRYUv7jpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFL2C-00015d-Ta; Tue, 01 Oct 2019 16:29:56 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFL26-000150-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:29:51 +0000
Received: by mail-qt1-f193.google.com with SMTP id f7so22374715qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 09:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0zO73icoSPJ3pNVWiNNF9L9OEEbriWKwEbaN0EtJRPI=;
 b=kVeii5imEvg8nneQNcTQnzRnmwV0b6p43mVRqnh5M9AspeoYahM5xs8DmbcekrBT6/
 2YkCRLNvZtzXLm/W8byLPgOudASZdij03bVyxmSwm5pEFN4e1RiH0ME5TgHC4+AfCYze
 GCRtPKEIS5/RtBYP8cliDBtHQkLq1y7gTJrfAJk40ReU4ENvvTjoeFuR460nBQWy3EyW
 mey7yKvVs3dy2R89pfJXrch7B86ytNXJMw+ktc+aBfry8sdrQYDz2edw3WD5yHSe/PW5
 dPVfX5h/0+/HqK0XwjAEH86jQI/ydVP7n9SAYZ0zi+i8iGXLMaOIAybR9KcMXtDPuzV9
 rLLg==
X-Gm-Message-State: APjAAAUCC7mHRdErm1KgSxl3SUqvPTPpmMCyhp/Uydi+NVEpbUaR0yaU
 s/prwRN0G3GD839kgxzdbrWuS6wc4XmgxUQavC8=
X-Google-Smtp-Source: APXvYqxkgIX2gcVaLjsRtcgaC+7CiGnoTPy8gmARgU5xbBtCjA5leLB24V7ISErrIwWtMs8YA3rGRE+qoQ6Sf7PgVcI=
X-Received: by 2002:ac8:1a2e:: with SMTP id v43mr31469917qtj.204.1569947386677; 
 Tue, 01 Oct 2019 09:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191001142026.1124917-1-arnd@arndb.de>
 <bb58c7cc-209d-7a2f-0e5b-95a9605ffe7b@linux.intel.com>
 <CAK8P3a3Js2dNhnRhP7PLadWZ69DZr1mz6DowN9HDJL4CFDAAFw@mail.gmail.com>
 <e4b90233-846c-bfc1-68a3-a7b7c28b60bd@linux.intel.com>
In-Reply-To: <e4b90233-846c-bfc1-68a3-a7b7c28b60bd@linux.intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 18:29:30 +0200
Message-ID: <CAK8P3a1vHECVV86JHxEZmo7jQOosHO=H33v784keqLMNiiHSxA@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_092950_186915_704601CB 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.193 listed in wl.mailspike.net]
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

On Tue, Oct 1, 2019 at 6:03 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
> On 10/1/19 10:41 AM, Arnd Bergmann wrote:
> > On Tue, Oct 1, 2019 at 5:32 PM Pierre-Louis Bossart
> > <pierre-louis.bossart@linux.intel.com> wrote:

> >
> > The same could be done with a Kconfig-only solution avoiding
> > 'select' such as:
> >
> > config SND_SOC_SOF_IMX8_SUPPORT
> >           bool "SOF support for i.MX8"
> >           depends on IMX_SCU
> >           depends on IMX_DSP
> >
> >   config SND_SOC_SOF_IMX8
> >           def_tristate SND_SOC_SOF_OF
> >           depends on SND_SOC_SOF_IMX8_SUPPORT
>
> Ah, nice, thanks for the suggestion! That would be my preference, we
> have a similar select for PCI and ACPI parts in sound/soc/sof/Kconfig
> and I was looking for a means to do this more elegantly.
> I can submit a new fix or let you sent a v2, whatever is more convenient.

Ok, please send a patch then, I can add it to my randconfig test tree to
make sure it covers all corner cases.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
