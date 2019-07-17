Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F5F6B7E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAiBadu8pTl/0ZjV5vqxEIaVVcna6OdBGX3r1Y5CBNU=; b=siCevj9O9UxcYR
	p1hC2RhJtX7JYziEDMAGqzc94kJyDznkCJ41Rc/CaOevIyWvsNJISVmRO28uqGOTI9jhahhPpJ0ov
	O6PkGuomz0k6W0xicS/UYQD52QwT9sPTSJt6FH2nChsZABYACndqWotpB3YSdnOLrKAHc79vsRTWQ
	VCTg+3/WkpiIVsCLf1wcCE0ZWZqzG2a2kkNV3jBUmB6D310NPDpp1zfOG/WmICSDgRUEO/xrMhvo0
	1VwoTHRW8sqHcPH41sm6c5J8DeM+WXjOkjkeLNL2NeRIM5Faon6xcdkj2ypyfg37STT2bQe06r3r3
	tnD5eclKpM4eoWrHGBSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf4D-0000Q8-D2; Wed, 17 Jul 2019 08:13:37 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf3w-0000OM-5j
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:13:21 +0000
Received: by mail-ua1-x944.google.com with SMTP id z13so9314998uaa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rPZj9UlJHzFlKhJn6/fmruVkm+j5FSEf7iBCwWIUVP4=;
 b=PGAFc+PfE3kR9fcYCHC8OBC1+IoRoDTjks9fGGEtJhXcGwvydqTrmOTUlJG5NcIoi+
 DhgCrVbGujMZ7kdW7pd2LxhnmzfkWVhrSGU6+vUrDINKdXOnsMlhOmTpRSBNgMGfmh6M
 2FzdJiKfwVdXZUmZgAS729lwaeb3EbIcBDD8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rPZj9UlJHzFlKhJn6/fmruVkm+j5FSEf7iBCwWIUVP4=;
 b=KIZkU22G5zNkUA4LbrNgd56qryU09TOrRAEK1wMhEeUnvH7hb330N37jdHre4TLZpl
 hQH/flR/y7jWLxA183H+kEYk8U0u+WyNhn3GkPgP/ONZ6olz6T/8JeyVRV8ELRkcDnPB
 e5YSsDJHC07nI4fQk+m1fq53UjDeNiai2xuKWuCQFOqJCt+gEMhuh6S29cNSI1312nwo
 8ks6NfnA7c5lQTIgEuCIfXKBL3pvlfCtszel52VRY8LL3MK0ekWba74CbabmXERAi1Rl
 9ZH1yvus+/r9Uj4nSNOWuIZaTMLyEieXLBkAdecHBHcxlGYF/xg2tVz7JeI58TwCRzSG
 85QA==
X-Gm-Message-State: APjAAAVYMJLGvy/FGHjdnALlbNq+xrZBdElrvQm+NVAjVd4C7AuuoyQE
 +pAx6WwBvRn6zz5mDojsq6KnP7XecvR6Zil02+tl7A==
X-Google-Smtp-Source: APXvYqw12VFX7Lv6Sh5rKLzmIJDafMfD4+5vdQs5GbevDPTLgen0n5WPlVHqD/WI9vXfnk5kxptgrH3h3fBuUjYs/4Q=
X-Received: by 2002:ab0:7c3:: with SMTP id d3mr6146624uaf.131.1563351195035;
 Wed, 17 Jul 2019 01:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-5-cychiang@chromium.org>
 <CA+Px+wV6RSfv4GL8+EJzXGq2nqzKtH9p23VTo2s30h0To2rQtg@mail.gmail.com>
In-Reply-To: <CA+Px+wV6RSfv4GL8+EJzXGq2nqzKtH9p23VTo2s30h0To2rQtg@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 17 Jul 2019 16:12:48 +0800
Message-ID: <CAFv8NwJu14XEDLE3Y+GTU2foFH3b5iBQ-q=tehjBYQ51m2LiCQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] ASoC: rockchip_max98090: Add dai_link for HDMI
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011320_219552_30432FC2 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 10:14 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Tue, Jul 16, 2019 at 7:58 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
> > index b43657e6e655..d610b553ea3b 100644
> > --- a/sound/soc/rockchip/Kconfig
> > +++ b/sound/soc/rockchip/Kconfig
> > @@ -40,9 +40,10 @@ config SND_SOC_ROCKCHIP_MAX98090
> >         select SND_SOC_ROCKCHIP_I2S
> >         select SND_SOC_MAX98090
> >         select SND_SOC_TS3A227E
> > +       select SND_SOC_HDMI_CODEC
> >         help
> >           Say Y or M here if you want to add support for SoC audio on Rockchip
> > -         boards using the MAX98090 codec, such as Veyron.
> > +         boards using the MAX98090 codec and HDMI codec, such as Veyron.
> You should not need to select the option in this patch (but in next
> patch), because this patch does not depend on anything from
> hdmi-codec.c.
Thanks for the explanation.
I'll fix in v5.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
