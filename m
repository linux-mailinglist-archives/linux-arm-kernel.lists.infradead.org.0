Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AACE0CD2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 21:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2B2MhN1kUuxzGvdX/EENJDg9jlUoO1MJLw7vLiswL4=; b=pUFVKSSWtwvMFR
	4JV/jarfUJWmS8XiU5oH60jkhhKznjXs9iMYFihqSWHK3ihDFL2zVn0uhP3QzNoC/flbr80VUqONh
	W4W38V6HMpJCPxlxDrLMyJiNMTYqsk/tDhIjYFfaPOBztKastx2YmsdwEnFfC5Xd7yq8p1m5Wahxe
	7ZXruE99gzk4y9oRLcVfEzlUI0t05IWaCIvBBS2tmKdJ0k/8HvOgKIt8xW/HIpd1QFUfWXCsRfVvc
	n7AFjO2bjL8m2DjHniy8+dboR1JcDEODcQqrkoeLMAV5qTqBCWbSIN1cTIhGzYrY0C0DcBE4DzSWq
	zhcUtLyplA/9KdMfglyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN0DB-0002U8-0x; Tue, 22 Oct 2019 19:52:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN0Cw-0002Sp-EN; Tue, 22 Oct 2019 19:52:43 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDDC821D81;
 Tue, 22 Oct 2019 19:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571773962;
 bh=lVep/kGw+Qm/9BH6yFF5Ta8I/nos5oV6cOnqMoFM8O4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SbSsk/ekDVLBB454r0f1fvmvvTfmN03c5NGb9PdZ9IvpRX8d1DtgQ08Z0bcIFwtzs
 VJWkSkAkUUYtQwyf9KuPhqlpVOF4v4w2h5TXmW4XmSDy7Bzdam3XJW9stl7dqdpFvB
 VeMeIZqvsNaRGBObR2DhS1fZ9eyDJP3dVFLqhiSw=
Received: by mail-qt1-f176.google.com with SMTP id d17so14058651qto.3;
 Tue, 22 Oct 2019 12:52:41 -0700 (PDT)
X-Gm-Message-State: APjAAAWFRztYI5DuJGiRUNffRn1tmvtxVdCUean9PJmT74wIG6OMZAIe
 Fzq4mz/3bCf51LsiEVSEMJtN9Bsk7u4ZGqZdNA==
X-Google-Smtp-Source: APXvYqwfTFQvEWZsi+fmlXq4bJ/93h8u27YyErOcN6+jtvSG/aNt4UCbC5GoUws1bleVICB9W55vYXnUR58eU0hZLWI=
X-Received: by 2002:ac8:741a:: with SMTP id p26mr5266590qtq.143.1571773960946; 
 Tue, 22 Oct 2019 12:52:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-5-robh@kernel.org>
 <20191022113001.GG4756@pendragon.ideasonboard.com>
 <CAMuHMdXCq9urRDCSmLueVpsv9-FxJ6pxQf-9Ua=vT-TrRs++fQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXCq9urRDCSmLueVpsv9-FxJ6pxQf-9Ua=vT-TrRs++fQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 22 Oct 2019 14:52:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJwJgNHy4wr0as0n-R3ist_yKp3ytyBw4bPXjtSOSMOXQ@mail.gmail.com>
Message-ID: <CAL_JsqJwJgNHy4wr0as0n-R3ist_yKp3ytyBw4bPXjtSOSMOXQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/cma-helper: Support DRM_MODE_DUMB_KERNEL_MAP flag
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_125242_527486_8A00404F 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Philippe Cornu <philippe.cornu@st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rongrong Zou <zourongrong@gmail.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 6:40 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Laurent,
>
> On Tue, Oct 22, 2019 at 1:30 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > On Mon, Oct 21, 2019 at 04:45:48PM -0500, Rob Herring wrote:
>
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> > > @@ -419,6 +419,7 @@ int rockchip_gem_dumb_create(struct drm_file *file_priv,
> > >        * align to 64 bytes since Mali requires it.
> > >        */
> > >       args->pitch = ALIGN(min_pitch, 64);
> > > +     args->flags = DRM_MODE_DUMB_KERNEL_MAP;
> > >       args->size = args->pitch * args->height;
> >
> > My OCD gets triggered by flags appearing in the middle here while it is
> > at the end in other drivers :-)
>
> ... while "flags" appears before "pitch" and "size" in the actual struct
> definition... Aaarghl ;-)

There was some reasoning here as my CMA helper conversion patch is
going to insert code between flags and size.

But to keep everyone's OCD in check, I can set flags first.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
