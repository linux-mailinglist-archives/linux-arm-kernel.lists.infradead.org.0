Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9013C131D52
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 02:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=me3NPNyIxjjvFKPfwSYXRdaQfS91AcRNK9BRVj8O1UE=; b=Q+hp7+jVCX+b7U
	x2nR6xcqF9t6dRvE/d5LXGv7lJy87k2+KeVsO9AGXfpByGjUmtCqr+szHpl3PEiLtn0P15y8r1Y/C
	x3PoDR3lczoz+9un6gCIV9z/AWm1RPujxLi3siWYphsMfb7QGstdUG6wTZMfIesR75JpaO0Mk0yTg
	v+AWtaufNtX9zwrKACFvUWqWHsXUGtcVz+iz9cl55dVCsKu6INvea9qQP9YRHLQOkher5eaL+Ik/5
	EkBD7nkKRzuX8DMx4yVEUZ0bcr2lpG8TDzNvCNA5/rTU2iUqbDim9RcWRGOuSzJIS3Y+R7uXGEjiF
	r0hEA7txngidvAgaL8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iodwN-0003ar-Va; Tue, 07 Jan 2020 01:45:51 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iodwD-0003Z7-F8
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 01:45:42 +0000
Received: by mail-qk1-x744.google.com with SMTP id a203so41685027qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 17:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ft6xmRm0Xn4A+6zJu2AAPIsi5FGpNr4OiKyWPq8PF3E=;
 b=mdt/L/fHFt2uUCxneOT+wJBx1zeGq9fEF86Cyn+w5YQHYXVdG2UDKU90QAJJDbAT6E
 IZWrNX6Taxnc5BNAW8Yp3jFm3p+efXels7I1FhUsccQ4zciOFeCl6pRPzl9m7pO2PuDr
 KccNYENPlAXa8/HDVUEFXxyjyo87LkIjp98PX/W8bgzxDLiDmuBzWbE0awp041Lw231F
 +39mAOxKlUQKQGTmn1zMvdes8C2LY2Tfwuk7RCMGiBDabQHnqMP7NGNdvxL2BEaX+Sak
 z7fe9ZeK79KghIH6+sVVA3NzodbDqzqiLcC+fviJJ+agPmBXo3F4bTuXNJhJr2KcUTHw
 nV6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ft6xmRm0Xn4A+6zJu2AAPIsi5FGpNr4OiKyWPq8PF3E=;
 b=FtJzXbD3iar3Q9MxTh50ylMZo6mB3WcDr4BB2beUWJtm09VeBsLhfL6Ndx/BnEbCtp
 HnQObK6BSjpopuj5+xhn+njfm/CLa6vkqU/2l6B0odoO+b21G+PjprVxogd0De7jFYHo
 LO1EypCID9LhKv6nkArJjUIq6ZFIjQHK4BD/WkzAlhR0JMQt1S5Ol85j0vN9fiYV0VW8
 7ZTYyg6waUx9saXp0I19OuLKUKESMG1+6snE/t1pqT9osoywmBENyFQh9A0QobiAkIn8
 PzuE9lTbRQzYc5S+JtHh4R1xQSh9I/J3yA+MTGePepMgjyEUnfL5nxN7976pMA/Mx8uJ
 bauw==
X-Gm-Message-State: APjAAAWbuC08rtPQVyyX7U/hFZ/CdVPUp4pcvBN3X9f6uceW4tLQGZO5
 Z4Qez8IaUwfUj0VyxVvQ7blQVpRXw+k4RvOJRksgmQ==
X-Google-Smtp-Source: APXvYqwhpelqz1BD3Zaxd7qhMERDtnjDXuXuK5sCqGFKA0nX5yXFO0Qqv4/D7HsevTyPJjTlnid1ORnGa9dP/VZvId4=
X-Received: by 2002:a37:ba03:: with SMTP id k3mr83504125qkf.127.1578361533830; 
 Mon, 06 Jan 2020 17:45:33 -0800 (PST)
MIME-Version: 1.0
References: <20191210195333.648018-1-arnd@arndb.de>
 <d739240f-aaa6-c310-9c68-16c1a08ce759@nvidia.com>
In-Reply-To: <d739240f-aaa6-c310-9c68-16c1a08ce759@nvidia.com>
From: Curtis Malainey <cujomalainey@google.com>
Date: Mon, 6 Jan 2020 17:45:22 -0800
Message-ID: <CAOReqxh9wamuKQnjPqUsZS_=4xUbsy-Y3v+=OXGaWV5EuONPmA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rt5677: add SPI_MASTER dependency
To: Jon Hunter <jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_174541_513482_7BCBCA20 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Charles Keepax <ckeepax@opensource.cirrus.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Jie Yang <yang.jie@linux.intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Ben Zhang <benzh@chromium.org>, Mark Brown <broonie@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Curtis Malainey <cujomalainey@chromium.org>,
 ALSA development <alsa-devel@alsa-project.org>,
 linux-arm-kernel@lists.infradead.org,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 3:00 AM Jon Hunter <jonathanh@nvidia.com> wrote:
>
>
> On 10/12/2019 19:52, Arnd Bergmann wrote:
> > When CONFIG_SPI is disabled, the newly added code for the DSP
> > firmware loading fails to link:
> >
> > ERROR: "rt5677_spi_hotword_detected" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!
> > ERROR: "rt5677_spi_write" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!
>
> Would it be better if the above functions or the functions that call
> these are conditional on CONFIG_SND_SOC_RT5677_SPI?
>
> > Add a dependency to prevent this configuration.
> >
> > Note: the does not work with the DT probing, as there is no binding
>
> Are you missing 'SPI' or something here?
>
> > for the SPI half of the driver, but nothing seems to be using that
> > with the mainline kernel anyway.
>
> From a Tegra perspective, given that we don't use SPI in conjunction
> with the rt5677 codec, only I2C so far, I am not sure we should make the
> tegra_rt5677 driver dependent upon it. We should be able to operate
> without the SPI bits enabled.
>
There should be no changes needed for tegra, this should be isolated
to the bdw machine driver. The only things added to the machine driver
were some dai links.
> Cheers
> Jon
>
> --
> nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
