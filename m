Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105A060FD1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 12:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0+sdciDAQ4G5u5SmBbli98nKsIC5hvGTWhsp8Y56xA=; b=rrvqbLEB0mmKTO
	GZIVpLhT5lPTEIylANCLyOuIBuvFmxFZUIs8IIoVBh4QvaGKPutt8dykBk2muL6V2c6oxidRkIQoH
	CGxlb2Wudh2Q/yipk76d2MVX6VWzI06Tx+UMhh6IOPWnVLZ/EgPzwTv0oXvgeIMAkVqyOGVEZnYIE
	ar8hwTekop1Wx42c7CmY6z/B0WJUewGy4b2cpbSDMqTZIlwtRKrf12r1Lt0nfGp0okF7gMBDpIBwN
	Dl36Xm4hRC5W9202n+IrohpRsEvbYfvNkvkGM4RX+2KPcgfFa+05iiynBGZR2If5+aehfpzNJTEBO
	kQpGJnD4PU3UnDATs8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjhm8-0008PO-Ez; Sat, 06 Jul 2019 10:18:36 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjhlw-0008OD-FB
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 10:18:26 +0000
Received: by mail-vs1-xe41.google.com with SMTP id a186so5258290vsd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 06 Jul 2019 03:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jAVwcJuM+YKewDeekBtdpzxDH4pN8Z1qY7lRoAxlQ2k=;
 b=LxmgdcxPecTrogSpOJXeHAvpLygjo6I3MXbMM2SYl+QXjS6fO+EQHhi8KNRAZ1Z1aa
 7c0i45kq3WMa2ftCYUtfQ1IWl836CgNJ1myvCLLiNdPdEEBpafk5GG4cD/UCrtAGhTqT
 oaI01JbitM9uW1q7vmGKd2LVxuVnT5f0gv4yM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jAVwcJuM+YKewDeekBtdpzxDH4pN8Z1qY7lRoAxlQ2k=;
 b=sZTjwD9EGJ9b6AZYj8GjsT/Toz2HfGc3HM3fjXyxbR/AP1ayfT01gloVdxKJVXsr3E
 m54+oH73+cIkpwUeyZpCj4r+s4sMInt64JpwY8MztV3QAf4TeL04lxROK0JUBNddfxwu
 PWT4/8ScdfuLzik/XzNVEkE1IU+Bn28EKgejfLhFBzeq9TI1V8up87O6aEJWBN8b1S+j
 hvM77/3yhDAj15uHol1HjoBuX3lA8HT47tf97hIplIuARkFWED0SMtD/g1os2sV4PVBC
 21Jnp5OFlT8Qu6gK1H2KGkHwcnQojQgG6W2zCJ49UU/zFu+Grh8LanH9oQt2Fi2NSCHX
 BoVg==
X-Gm-Message-State: APjAAAWheLHm4USJ4eGc42L+ZygHTqltMByywcKwn2Lq8ZS5SsAayjQA
 LDm1axxbqS+h+8jadJL38A+fGrX5zAsqHNR6c5uT7w==
X-Google-Smtp-Source: APXvYqwHXziO50Z/T/wc7OBaLrepyZ4DeDeLVwv5g2F6618IyLzz5j+3wEg9LMO4ASJyJbXamm3xKkz3W1VhuzqonMQ=
X-Received: by 2002:a67:f7cd:: with SMTP id a13mr2560400vsp.163.1562408301993; 
 Sat, 06 Jul 2019 03:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-3-cychiang@chromium.org>
 <VI1PR06MB41425D1F24AC653F08AFA463ACF50@VI1PR06MB4142.eurprd06.prod.outlook.com>
 <CAFv8NwJXbJo=z_NDj+JQHD9LOmnbfM8v_N1uHn4sdBzF-FZQfA@mail.gmail.com>
 <20190705171618.GA35842@sirena.org.uk>
In-Reply-To: <20190705171618.GA35842@sirena.org.uk>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Sat, 6 Jul 2019 18:17:54 +0800
Message-ID: <CAFv8NwKhBKaDAzfdRVGzOs0M3quZeZANWQ2EDo210jy9M-c0cQ@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH 2/4] drm: bridge: dw-hdmi: Report connector
 status using callback
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_031824_775445_4F2DEB40 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "dianders@chromium.org" <dianders@chromium.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Takashi Iwai <tiwai@suse.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, "dgreid@chromium.org" <dgreid@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 6, 2019 at 1:16 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, Jul 05, 2019 at 03:31:24PM +0800, Cheng-yi Chiang wrote:
>
> > It was a long discussion.
> > I think the conclusion was that if we are only talking about
> > hdmi-codec, then we just need to extend the ops exposed in hdmi-codec
> > and don't need to use
> > hdmi-notifier or drm_audio_component.
>
> What I'd picked up from the bits of that discussion that I
> followed was that there was some desire to come up with a unified
> approach to ELD notification rather than having to go through
> this discussion repeatedly?  That would certianly seem more
> sensible.  Admittedly it was a long thread with lots of enormous
> mails so I didn't follow the whole thing.

Hi Mark, thanks for following the long thread.
The end of the discussion was at
https://lkml.org/lkml/2019/6/20/1397

Quoted from Daniel's suggestion:
"
I need to think about this more, but if all we need to look at is
hdmi_codec, then I think this becomes a lot easier. And we can ignore
drm_audio_component.h completely.
"

My thought is that the codec driver under ASoC are only these two:
hdac_hdmi.c and hdmi-codec.c  ( forgive me if I missed others. I just
grep "hdmi" under sound/soc/codecs/ )
hdac_hdmi.c is like a wrapper for HDA and drm_audio_components.
hdmi-codec.c is the only other codec driver that cares HDMI under ASoC.
So adding the jack/eld support at hdmi-codec driver can cover the
existing use cases for HDMI codec driver in ASoC.
That said, adding a new unified approach for Jack/ELD notification
that will only be used by hdmi-codec seems not a high priority.
Hope this explanation helps your decision.
Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
