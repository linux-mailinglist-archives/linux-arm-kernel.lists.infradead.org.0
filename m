Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E216A4AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+CcoF6bE0j4DUY6LhwzHT3lSPM1JzifQdSl948MADM=; b=fRgc5ImDxig2Fy
	h+IT3anJJpg2L0OVZdvR/TZBAD4oRabDUcFjmaWEQkIf2yvWhZhsomOH9jO7M28lzr28D8he6MXAi
	lc1ugMIfksdz7FIcbw5OeN57W6hsDAmnN7follh/ftiVDtIsJfhF8PhjX0YV9otHv9IeMrLUulwhW
	lC3FlUSyAavk35ILtwbCbDn54wLwUaL6nV1ZW8K+5gyj5+pq3PlMQ78AxYn8pHl0q+EWvL0954xqe
	kSb1bVKQWe0Roa0xjnSILtieSvhhj8y1tKEz0ZODP1oYEiiJ1G7ZURfxT80l+44fBPKq36ay2SG0I
	YEeA2G5i3MRV3cM+d3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BhV-0005aH-3z; Mon, 24 Feb 2020 11:15:01 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BhM-0005Zl-FJ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:14:53 +0000
Received: by mail-oi1-f193.google.com with SMTP id r137so8570925oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 03:14:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6J56GZAIisN7s+G2kGZDSpihGRsq1TAS9IAl8pKmY94=;
 b=lDLqNXILXb6E9zJeVLOXVyqTxLKiYOrtJY9QSKs2o7f8XsFbwjXdcgbH2U1DrDp+pC
 eEQqNW18UkoD2/3gW0eDwBj+guHY7a72DUXg2pEZ2f7pAsDVPTrsYCnV9Zcz0HSfrFN3
 0tnHB4Ja6tuM+ijW+u8GzcMw6VnxLw/T8gVwzrseApzuDVm3ZqXWqe42a/dJWSiPtFCa
 N4ltfOVM0vWvrE+NthdAI2G/d0xhMHNtd1zhHp3wgL+P7jaZr5I+DZ6vQjvidwhKlDmF
 QPnO6583eLWKULfwIqqQ6LWEY6/pL7Wcqqf8uYRm+IB63EtGWrkoGtL/7GFmq01ikooB
 A2Jw==
X-Gm-Message-State: APjAAAX6b5qI9ZAaeZEHRWumW7sx1L7lCJeR01dzT5BRxglbnh8xje5+
 GeBxMZSRVqOvsnUyXtw07UVOCbc7kAzq45LOqr8=
X-Google-Smtp-Source: APXvYqyJGLntakWARp86s91QH32t/qVwHjeTCsojy/gtzoQLTXH03yoyT3RIy6NniXxO35oP/uCuX+NiSRuYe1mWX5k=
X-Received: by 2002:aca:b4c3:: with SMTP id
 d186mr11814856oif.131.1582542890533; 
 Mon, 24 Feb 2020 03:14:50 -0800 (PST)
MIME-Version: 1.0
References: <20180603201202.15468-1-robert.jarzmik@free.fr>
In-Reply-To: <20180603201202.15468-1-robert.jarzmik@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Feb 2020 12:14:39 +0100
Message-ID: <CAMuHMdU3uxfBwKd8SkOtZSDV5Ai3CKc3CWRhDy0Cz94T1Hn0iA@mail.gmail.com>
Subject: non-existent SND_SOC_AC97_BUS_NEW (was: Re: [PATCH v9] ASoC: pxa:
 switch to new ac97 bus support)
To: Robert Jarzmik <robert.jarzmik@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_031452_513665_145717D7 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Mark Brown <broonie@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jaroslav Kysela <perex@perex.cz>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Sun, Jun 3, 2018 at 10:12 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> Switch to the new ac97 bus support in sound/ac97 instead of the legacy
> snd_ac97 one.
>
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

This is commit 1c8bc7b3de5e76cb ("ASoC: pxa: switch to new ac97 bus
support") in v4.20-rc1 and later.

> --- a/sound/soc/pxa/Kconfig
> +++ b/sound/soc/pxa/Kconfig
> @@ -20,13 +20,12 @@ config SND_MMP_SOC
>
>  config SND_PXA2XX_AC97
>         tristate
> -       select SND_AC97_CODEC
>
>  config SND_PXA2XX_SOC_AC97
>         tristate
> -       select AC97_BUS
> +       select AC97_BUS_NEW
>         select SND_PXA2XX_LIB_AC97
> -       select SND_SOC_AC97_BUS
> +       select SND_SOC_AC97_BUS_NEW

The actual SND_SOC_AC97_BUS_NEW symbol never made it upstream, although
4 of its users did (3 have been removed in commit ea00d95200d02ece
("ASoC: Use imply for SND_SOC_ALL_CODECS")).

The definition seems to have been dropped silently in v4 of the series.
What should the select be replaced with? Or should it just be dropped?

Thanks!

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
