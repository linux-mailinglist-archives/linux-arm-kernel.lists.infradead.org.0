Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F871BC4FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rY7fHmXiBOYFPXMStOc75Kw4KQowztH8rvPVlGDsEOg=; b=fgNYgSl4ILbVS4
	glcKHq3jOz6pnXBOFuWsCfmm8UxR8KnRs8YCTzJZLu3e42yAX2YRwd8Cij5OyrZv91aZGLGWJ1voQ
	zAagNI+MA9TPspv9lzaRzX2X3almNn0LfEcaI1m6oPD1RJ9P03gdJjUYzYjJ0NDd/kvpbfl0qFid2
	mWg2kVxLptOPHjn1lwS5ZRSfSbfbOarJmhtHmMUP8AmqaUm0tFiWb8VlkJbIB8aOjmFx77CyBlUbq
	jf0UQypjD4+OBIt23+FT2Np0rGRjwBMDH7I3kMKZCUdjzu5c7Yz2nX0kobzkxFtFq5f87XaSEsU3L
	VSNB1yZM/53rjMuRuZ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSy4-0002VT-9d; Tue, 28 Apr 2020 16:20:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSxh-0002U1-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:19:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id x4so3478641wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NopApeXh01c7L2Io03QMx8cqkS9YkQo3viws4wlNnSg=;
 b=PryLDU8fNN6N3kbaEKSnFW3ZljxLU0aEKb/QT9PXimf+nSVuMU7ucP99uGmeVTuXFL
 0p/ee18S1smX9x1e3ceylcDz2SWJwa72ZTbsMwetmBYWEVX4cF27O41AGTzVcwrn8u5g
 PbIsYOtqM23NIaTvc9y3sESXaAwIbJCxITZ2P2HQx3/XwghUA3gnM5d5HELhhFuWkpcF
 jsrnu3vL/GB66Xo166FKKryG/ir7ksho4hffwu3LLfhCcE98upCyoVzWUi8wsLFGyxd+
 bjwNjleFhAVyz2XyiubXZlKf1ikUnHD9bAdfHhukEalyqgFJiEGxZrgQIzqPY+WYytnp
 esGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NopApeXh01c7L2Io03QMx8cqkS9YkQo3viws4wlNnSg=;
 b=M6hQgecCRTUxvbThodETSdJ3Dhv9RsaST84FMV/ohOsZQuLF8/xjjxBZeIEy5Mcv7Z
 /PVIbci8l2HRv3vFB8MxFWtJV+o4bc6ooaNmAsTGfeGJjQVybP7VspG1Tzk95xB7Afcj
 bc8+vJZ838W8Y6yJ1Llfm/8bRv/3mw7urwrOl+ViKhmevEXImXBWOXwMTlDRJ8WiFiIs
 84PQeBsGmHbkHwYW+yHKOSEf9DCBYLCUqXjJEiQpRtdGQh7DUbprhl4dNBvt9V7QHTO1
 sptNl456aezfVDAdVhlhQj4eN7nijMnwnJKJ0CBfPC5cedfizFrhGpb52OcRe5iBMpWS
 urcg==
X-Gm-Message-State: AGi0PuYIEaaJVlhDwbZTuGTeCZTCT48bANgoNd1ZInTC4BMaKlZiuT2X
 TlyfzSuGD6plFL+b7FY8N9qCaXm4Ha3naOqvSVzIqA==
X-Google-Smtp-Source: APiQypL3EsQ0jh1kA70/8Mgecdub3pq/2jqTXvhu/nseZ/tzt8oMEkOy7SFss8lrIFNxrKhvMfuy0TfvWG9Tvdn0UgM=
X-Received: by 2002:a1c:2457:: with SMTP id k84mr5090599wmk.96.1588090793272; 
 Tue, 28 Apr 2020 09:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <4cd617827cc28875ef36f3632122a83cff2ea4a7.1587742492.git-series.maxime@cerno.tech>
 <63f9e71a-1beb-7a67-ea48-dbc579fa3161@i2se.com>
 <20200428155711.efpq6vbqcq52gjk5@gilmour.lan>
In-Reply-To: <20200428155711.efpq6vbqcq52gjk5@gilmour.lan>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 28 Apr 2020 17:19:38 +0100
Message-ID: <CAPY8ntBkKebzCM8uG0=YN_XngWS=Kgmgs_LBXmJb1nY3uPEWUw@mail.gmail.com>
Subject: Re: [PATCH v2 79/91] drm/vc4: hdmi: Deal with multiple debugfs files
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_091957_452717_6D82F3CB 
X-CRM114-Status: GOOD (  22.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Tim Gover <tim.gover@raspberrypi.com>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan and Maxime

On Tue, 28 Apr 2020 at 16:57, Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Stefan,
>
> On Sat, Apr 25, 2020 at 11:26:31PM +0200, Stefan Wahren wrote:
> > Am 24.04.20 um 17:35 schrieb Maxime Ripard:
> > > The HDMI driver was registering a single debugfs file so far with the name
> > > hdmi_regs.
> > >
> > > Obviously, this is not going to work anymore when will have multiple HDMI
> > > controllers since we will end up trying to register two files with the same
> > > name.
> > >
> > > Let's use the ID to avoid that name conflict.
> >
> > even with this patch there is a name conflict in debugfs using Linux
> > 5.7-rc1. Dave Stevenson addressed this by using different card names
> > [1]. Since this patch won't apply anymore here is my suggestion:
> >
> > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > index 29287ab..7209397 100644
> > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > @@ -1181,9 +1181,14 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi
> > *vc4_hdmi)
> >
> >      card->dai_link = dai_link;
> >      card->num_links = 1;
> > -    card->name = "vc4-hdmi";
> >      card->dev = dev;
> >
> > +    if (vc4_hdmi->variant->encoder_type == VC4_ENCODER_TYPE_HDMI1) {
> > +        card->name = "vc4-hdmi1";
> > +    } else {
> > +        card->name = "vc4-hdmi";
> > +    }
> > +
>
> Thinking about this some more, we don't really need VC4_ENCODER_TYPE_HDMI0 and
> HDMI1, and it can all work with the same encoder type for both, so I'll drop
> them.
>
> To address this issue though, we can add a card name string to the variant, like
> I did for debugfs. Is that alright for you?

My patch doesn't fix everything with the audio debugfs entries anyway.
I'm working against 5.4 on our downstream tree, and even with my patch
I get
[    7.459508] debugfs: Directory 'fef00700.hdmi' with parent
'vc4-hdmi' already present!
[    7.511017] debugfs: Directory 'fef05700.hdmi' with parent
'vc4-hdmi1' already present!
I seem to recall I reduced the number of complaints over 'vc4-hdmi',
but internal to sound/soc-core the node is still registered twice.

There was discussion about this a few months back.
https://lore.kernel.org/lkml/1jblpvraho.fsf@starbuckisacylon.baylibre.com/
seemed to conclude that it wasn't totally trivial to solve.

Regards,
  Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
