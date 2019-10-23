Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D69E21FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiTy3uAGpP5iuEQnotPz8UesWaWZga2AvVVhGXAnh4A=; b=pHYH3jMa8nSLJv
	yoQH6vjQl1qzS0LwUnQ//ELEW96sPqPK0e0bPkHbI8A1ge7VHhHObHMJ3iJCwWMAUhgBfZXgbkwKP
	bMgKDn6Ov5M2yMP6oQSn8tUKJpePWQv3mBCE8ZehvN8FnR8DLwaD3/VHpJjvU/tQ1GhJda6ThA1tm
	jWWJ2n6/vglMY3u3vuvsVAVfzpwMl/rhSJz4gYRrn5uDkALBQFgO6utfLTeUUeim2rQvXsLJ+VuNk
	xDhgCjMjO/M30HsU4Eqj9k/0AO3CXeeQfKBfqaMBfRxKjeTYcdo4ppcdqyvc8Pq4RPzz/JUO2Fg/v
	6NPY39hg5+IN/dM33KHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKf6-0007Hn-4N; Wed, 23 Oct 2019 17:43:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKet-0007H9-J6; Wed, 23 Oct 2019 17:42:57 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AC5621872;
 Wed, 23 Oct 2019 17:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571852575;
 bh=Zdd+bgen4VCdF1TuKnoa4pMTs+dOffO7IeAg+rc9+gE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eh7HMESxDN1m3ndZNJdg5HSRI8CkYBB2carSLn+avNAW9l1F1Bkv9veylygmjsFoN
 SHNlKpRIbd9x6tBOMS/IvKXbwDlDV5yoQITMR30rNGV2cHjeaZA/N0JoN/FQ9Of8Yb
 b3u8sJE9FFjhWMQdh+HlR4zQ7M7XDGqgjqg7E2vI=
Received: by mail-qk1-f178.google.com with SMTP id p4so20564999qkf.5;
 Wed, 23 Oct 2019 10:42:55 -0700 (PDT)
X-Gm-Message-State: APjAAAVqg9lh9ysvZf9dQdMs08sIP96tSyLjPmp2mJLF3/C6StgJ6WA9
 fIU5B7qEh4tEz6d9d7bhVL0VgB1c/qbN0b4LmA==
X-Google-Smtp-Source: APXvYqyuh/XWFNyrpsa1JhFwoa2PiHMb3DrmJcjTiQicDd2Twa2DKVtOZdwWw/pNA4z2JJqXpQHFweiKQz+jhiRVtUU=
X-Received: by 2002:a37:9847:: with SMTP id a68mr9887831qke.223.1571852574174; 
 Wed, 23 Oct 2019 10:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-6-robh@kernel.org>
 <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
In-Reply-To: <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 23 Oct 2019 12:42:43 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL6G=F45G+-QXF6T1269f9YquXfYtjoUkCpAoNartxM=Q@mail.gmail.com>
Message-ID: <CAL_JsqL6G=F45G+-QXF6T1269f9YquXfYtjoUkCpAoNartxM=Q@mail.gmail.com>
Subject: Re: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_104255_671263_9B75830C 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Daniel Kurtz <djkurtz@chromium.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ulrich Hecht <uli@fpond.eu>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Philippe Cornu <philippe.cornu@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 12:07 PM Matthias Brugger
<matthias.bgg@gmail.com> wrote:
>
> Hi Rob,
>
> On 21/10/2019 23:45, Rob Herring wrote:
> > The only reason the Mediatek driver doesn't use the CMA helpers is it
> > sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
> > vmap() is not even guaranteed to work as DMA buffers may not have a
> > struct page. Now that the CMA helpers support setting
> > DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
> > use CMA helpers.
> >
> > Cc: CK Hu <ck.hu@mediatek.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-mediatek@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
>
> I tested this on my Chromebook with some patches on top of v5.4-rc1 [1], which
> work. If I add your patches on top of that, the system does not boot up.
> Unfortunately I don't have a serial console, so I wasn't able to see if there is
> any error message.

Thanks for testing. I'm based on drm-misc-next, but don't see anything
obvious there that would matter. There are some mmap changes, but I
think they shouldn't matter.

Did you have fbcon enabled? That may give more clues about where the problem is.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
