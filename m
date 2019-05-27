Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B44C2B87E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHu07+aDqEuHmgHc97Wp/fjeIwbG5ScW7RVOlgYAmeo=; b=obcXqAmig/9dWp
	f4fS10NJo3mhff74yOpFZnrjwI6NJh7QQmrfeatGQEnL0H0TSGc8ZU92lq6yOZMzuPKnTCk5Fznr6
	xztQPuo6pJ9JE2nZc9/1p+HXWwmTvySQ43UuUdhAhDb+B7AJR64kX5uMxK+l080Z4GPotub3ibIS7
	k9q4RiqbKlgBys/mryRf8izhGIZZaGDmsYMo2r4CT/0h1c6ZWwKjHcbNrc7zEb8S/eX4J7eDhlJ/B
	SqvRgTaX9Ee+i/gue+U7P6AYpXX/Hz2M3Tdty5PGaGuzSNlcxsRI/1VrOpzg+eL8xbdDgTi2ELZXe
	KlgtzQQBBhIba1gEDQ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHkl-0003rS-6F; Mon, 27 May 2019 15:41:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHkd-0003qX-AQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:41:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so10057488wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 08:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tdsw2aGiBLowdBKompMuLQW0FpeZcju49WmFG8bHyOw=;
 b=ybdiq5GDzdAVwWuupgM0Vyj2TRBmG9n1bTEgd7DCD5KhZsLgMyduZvYjiBX98fmitU
 bjqoEaotnbM2XtAXoWExidPPwYhpO+3qfQF0pgQ1E2bMOeUheDJayDWzbf6I8bm8z2dW
 74NeFGQkTxKdwyV1QbqvLb5z4ykIgEmVs1qc/fNn+PKZUmrenAu+zBO7ZHsRBmPprdFr
 Fk9aXYknb8WelAnOFM9JRIrQOtNVHqjdZitx6wkYHLlMny5I/OULokvXyJzg25c2TTLF
 xJ5HeJcWPT37ChPr5pr2Tr3JBPb46yU0f4aojrereBVSGoH1x+ezLFvTY2aYnkZzwecr
 hoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tdsw2aGiBLowdBKompMuLQW0FpeZcju49WmFG8bHyOw=;
 b=NVyvp3gx/DU7znovIn1jzdKAFaCTZJedSRwz6qozKlKn9Qdzw36D1OC14PXTbCg4rO
 cDZM+otY+bfDpDNaaL1Ko58qC53eXgco6SbFuBfTy55mDOwXdCGE3mzRqlPli528HiQJ
 OvV01aVyFe0Ae9+XRmJys/bq4ZYqwsetvJf4GVjXLb6WDGu3o2qYaKSTS2yCxpX32xlL
 1e/1vuJYYnQ9FY6Kr4ugAAcqmCkLQ9YyACLBUMefn5TOCUXKGRC0TyPc6yoSgb1PRc9i
 oChHBhlzv6Xsc2cUSi1g8Vlhk9cyfUauSal4SMmOp2FnKDw90cgheC8xJwOKqK+oRZVU
 9neQ==
X-Gm-Message-State: APjAAAXi0gisa7jJNZqTaYp8Oz4MRSxSlkAycEfhT7JUyM8ypbI2SiCX
 L8AmkUHWqmoXQZEHHnvqtKdcHo2qjPfpe11Hgj6ScQ==
X-Google-Smtp-Source: APXvYqy609IJf/GhOKyCiAwxR8WSs6/tX1M/ieVpzUVpTTjy82ChyMKy4v5VAw0i+AX1iLX+Rwq4+F1lz7sR5gM8dzg=
X-Received: by 2002:a05:600c:2306:: with SMTP id
 6mr10042110wmo.162.1558971685659; 
 Mon, 27 May 2019 08:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190514135612.30822-1-mjourdan@baylibre.com>
 <20190514135612.30822-4-mjourdan@baylibre.com>
 <07af1a22-d57c-aff6-b476-98fbf72135c1@xs4all.nl>
 <CAMO6naz-cG3F_h70Chjt+GprGWe2EShsMjrietu_JBAdLrPbpQ@mail.gmail.com>
 <0821bfd9-58e4-5df3-4528-189476d35d89@xs4all.nl>
In-Reply-To: <0821bfd9-58e4-5df3-4528-189476d35d89@xs4all.nl>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Mon, 27 May 2019 17:41:14 +0200
Message-ID: <CAMO6nayi+wWU5jqtWkY0riJc6emHiPh7eqpvdzP=U7NgewfwqA@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] media: meson: add v4l2 m2m video decoder driver
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_084127_363852_F9E63996 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>,
 linux-amlogic@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 4:54 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 5/27/19 4:44 PM, Maxime Jourdan wrote:
> > Hi Hans,
> > On Mon, May 27, 2019 at 12:04 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>
> >> Hi Maxime,
> >>
> >> First a high-level comment: I think this driver should go to staging.
> >> Once we finalize the stateful decoder spec, and we've updated the
> >> v4l2-compliance test, then this needs to be tested against that and
> >> only if it passes can it be moved out of staging.
> >>
> >
> > I chose to send the driver supporting only MPEG2 for now as it keeps
> > it "to the point", but as it turns out it's one of the few formats on
> > Amlogic that can't fully respect the spec at the moment because of the
> > lack of support for V4L2_EVENT_SOURCE_CHANGE, thus the patch in the
> > series that adds a new flag V4L2_FMT_FLAG_FIXED_RESOLUTION. It
> > basically requires userspace to set the format (i.e coded resolution)
> > since the driver/fw can't probe it.
> > At the moment, this is described in the v3 spec like this:
> >
> >>
> >> 1. Set the coded format on ``OUTPUT`` via :c:func:`VIDIOC_S_FMT`
> >>
> >>   * **Required fields:**
> >>
> >>     ``type``
> >>         a ``V4L2_BUF_TYPE_*`` enum appropriate for ``OUTPUT``
> >>
> >>     ``pixelformat``
> >>         a coded pixel format
> >>
> >>     ``width``, ``height``
> >>         required only if cannot be parsed from the stream for the given
> >>         coded format; optional otherwise - set to zero to ignore
> >>
> >
> > But MPEG2 being a format where the coded resolution is inside the
> > bitstream, this is purely an Amlogic issue where the firmware doesn't
> > extend the capability to do this.
> >
> > Here's a proposal: if I were to resend the driver supporting only H264
> > and conforming to the spec, would you be considering it for inclusion
> > in the main tree ? Does your current iteration of v4l2-compliance
> > support testing stateful decoders with H264 bitstreams ?
>
> The core problem is that the spec isn't finalized yet. The v3 spec you
> refer to above is old already since there are various changes planned.
>
> If you want to test your driver with a v4l2-compliance that is likely
> to be close to the final version of the spec, then you can use this
> branch:
>
> https://git.linuxtv.org/hverkuil/v4l-utils.git/log/?h=vicodec
>
> You can test with:
>
> v4l2-compliance -s --stream-from <file>
>
> I wouldn't be too worried about keeping it in staging. Having it there
> will already be very nice indeed. Just add a TODO file that states that
> you are waiting for the final version of the stateful decoder spec and
> the corresponding compliance tests.
>
> The V4L2_FMT_FLAG_FIXED_RESOLUTION isn't a blocker. That flag makes sense,
> and so it has nothing to do with keeping this driver in staging.
>

Okay, I understand. I will send a v7 with the driver in
staging+TODO+MAINTAINERS update.

Regards,
Maxime

> Regards,
>
>         Hans
>
<snip>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
