Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D570484FED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9yvJbVJsfWEkZqeBE33tjm0Wq1b+anOvMsrE+D5SME=; b=sb3nVwz8mmCL0V
	uZ6cvlrsKTZOPe+hlkmKYAM1DLN1JJ9tm1W2QTSiBXVl0yemjltXJ3pOoBa2IiSx5W3x2TGBFwCe4
	e/Z0BRzUUb52PzrFuN5NBxeeYMhcnLzSgpx/qIR6pHhQ/x6z/AlREdo64OvRQSnA7Y2MSUgyTjG9/
	sppVATAQ/HszwDAnv+2zrKfJPXPkmmp8N37v7aPJBAhlJE4Vx/GDpFQn71y4uiXtzK3YVEu+pWV8j
	FZ4YXVkzQT3l+steI5iuavo3zfg/Gd2mkEvx2ih9MUTE6vYXofkONcKlrq84wyrdKp0//S6Sbs9KF
	mp0JGYO73Bpdz1ghTlmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNtH-0003sR-Ga; Wed, 07 Aug 2019 15:30:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNsq-0003i2-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:29:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so491469wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 08:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VG/v2EcjQtU+cEfTNI3UprkTRn21iUqihlnLWb3k5us=;
 b=XnJXIanO6DT+z/NNIAJBl2xdwwXc1b4c28EKcSXn8OpDji0A83SN/+NDdoqHQVCuwa
 48kvieuPJwwLoIYqdfm3qNiBVfVLY2VXlnkCzZrvMh20GTh9o8LoI/n8Bo32IglogZy6
 w8Bn7wDDaOvt8mlIKKa9Otk6kIj6aE/bziEpUioS+gsrcJJA2W1361dahPaaXM9C0+LP
 +rofKoHfx/q9k6ztoeNdSQeLv+3t9vjjthUN9O+kWt7tOR99fIsarJHV0w/33utSVMrs
 tc7eZoz8HTz6Yictyamd6QKjw639q3obifcvSOgwJGGmDQdE+oOTqEDE0Y3OX7xTv2Dm
 w5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VG/v2EcjQtU+cEfTNI3UprkTRn21iUqihlnLWb3k5us=;
 b=FoH/hpOjMK5EFBVnsrIPIlQHaPyXSoiKSNAG6WNyI49lcaTfoMhjCwsFlxEjk7NxNv
 RtHYFb5D3ZM8EfB7mGDaklYJ1WN1MRMwn0r6YCIZNDUDXzQHOuUFvVyC4b0IGsJ8b1a1
 F5Rpw051kHPxcyCUhf5n6vfQW4O+XQx4TFwuve1J8A9Dfzp1Pimswh8+9DdXgZacjQRs
 YFfLQw2FwJzmn4c2PTD7SHUGSsH8pRl9JqkJ6wG+atzFeLBg7u2UuAuAhaoRHgpA1Kxo
 cWjRpfmLecACgPWRVQVW8WFgaYD6WdHMWGDvJaOZVumc9avHycdL1vVTBuc/An8JigEl
 XG9Q==
X-Gm-Message-State: APjAAAXiicEOJvKT068ktCdwAB9BFsI3UR0VwHtknMxLrpBqAJ9UvmAI
 9aBnnp3CQQEhveeO6T+cDVfM4sASYKkvrnAZpms=
X-Google-Smtp-Source: APXvYqw2rwj2dbTOShRFHhRt4TkyI57KEtaj4B82n3AdjyeJjOGYe3gvF3lE/vwP9WXD9jGhm5Rr8vb2SW0mV/cQFcQ=
X-Received: by 2002:a7b:c247:: with SMTP id b7mr535018wmj.13.1565191787233;
 Wed, 07 Aug 2019 08:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
In-Reply-To: <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 7 Aug 2019 18:29:36 +0300
Message-ID: <CAEnQRZARFQjutkvW3_xkQAQznNm8c5jSjtAG715VtrZnDxztoA@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082948_787780_D909D2B7 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 6:19 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
>
>
> > diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
> > index 61b97fc55bb2..2aa3a1cdf60c 100644
> > --- a/sound/soc/sof/Kconfig
> > +++ b/sound/soc/sof/Kconfig
> > @@ -36,6 +36,15 @@ config SND_SOC_SOF_ACPI
> >         Say Y if you need this option
> >         If unsure select "N".
> >
> > +config SND_SOC_SOF_DT
> > +     tristate "SOF DT enumeration support"
> > +     select SND_SOC_SOF
> > +     select SND_SOC_SOF_OPTIONS
> > +     help
> > +       This adds support for Device Tree enumeration. This option is
> > +       required to enable i.MX8 devices.
> > +       Say Y if you need this option. If unsure select "N".
> > +
>
> [snip]
>
> > diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> > index fff64a9970f0..fa35994a79c4 100644
> > --- a/sound/soc/sof/imx/Kconfig
> > +++ b/sound/soc/sof/imx/Kconfig
> > @@ -12,6 +12,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
> >
> >   config SND_SOC_SOF_IMX8
> >       tristate "SOF support for i.MX8"
> > +     select SND_SOC_SOF_DT
>
> This looks upside down. You should select SOF_DT first then include the
> NXP stuff.

One more thing: So this should be 'depends on SND_SOC_SOF_DT' right?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
