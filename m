Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3B8160F0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp+ptdAlk2MMbLpTT21WuiXfz3ukx77zFMJX8UNItiw=; b=iOX1ZhIgEQf8Xz
	LIa88bC4KtVZ306aWGKsoL8FJH7+5ow/AFqbxt+rU8UpK3sSi9Avt6Z4uoVVoG4DHWUns9rRwhRON
	sWmT3zkQHv3HRSaYK2n9RVd5ZxpeJ480RD+dEFyuRsb+EXQE85W3+tIB6lR7lwkwjNr36S/61Naof
	1qDhje93OH+2ThUAjK30jrouX+8j85modX123qLJlMMbMLmMb4j/ebHn5KwNJgeNioCTAvRBFDf2g
	CXBlZGq8hS3Whi/sHx8GCUkeOxXpwtNhe80sKLuvdvDavp9FX0GrG5CsNkXJZ19Oh2RZHS1DcH+46
	7hE+NmE3FtdgQP9JYAYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cxX-0001OU-RM; Mon, 17 Feb 2020 09:44:59 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cxP-0001NY-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:44:53 +0000
Received: by mail-ed1-f68.google.com with SMTP id c26so19910383eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z5Mm0UcTlrataEbH992JlC3fdkxaoZqbYWxeVKMRIWw=;
 b=eS8+DDw9B8465sm5XWSI4EMu9hIAmFy0+lCBG4wTAOJ63mPB/bStAmk6RMjRFtMhXg
 vJ0aNm/F7h4Ap9hi3iwSlitd7YLZ6SgSNVihqZTiJ2neYsRcZ5j5PUoq0R4FmtsaGgZ6
 Vp7a+lEXRLAWXNuXr1NkqlE5EpWXLtk9sg8jnWDzGih7szQq470oy03BTj5p2sE4z/wa
 9EAeilKHavpls+B4dNQHBVtBdxyMnfl2zblmjpjHJ7c3MovlFmDJ3h7O7dusvD/4oCsa
 Kyigv2YuPMECeaJJR0bM9bifNWek2GHct38dCFbovTMaMFgfOy//Tf46yRWVIuV0HDk2
 ReTw==
X-Gm-Message-State: APjAAAW/66N3ggYMtrkCNK/od/4VzbK6Xp9gXUwK19Eg9VkS8hB+SS7u
 gdiRuIyeNLpuH7rK34FAtHvSDdxAbtw=
X-Google-Smtp-Source: APXvYqwLxe2fqm+9XK0IIh7ezXSj0N+gEY1R1OsbJeYp778B4ym23Dd37OjWhOi/u9do6Yp3i7z+9w==
X-Received: by 2002:a17:906:cd13:: with SMTP id
 oz19mr13656463ejb.259.1581932687871; 
 Mon, 17 Feb 2020 01:44:47 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id dk14sm815156ejb.12.2020.02.17.01.44.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 01:44:47 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id t23so16417890wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:44:47 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr21930702wmd.77.1581932686942; 
 Mon, 17 Feb 2020 01:44:46 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217091423.y2muniz3hosquho6@gilmour.lan>
In-Reply-To: <20200217091423.y2muniz3hosquho6@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 17:44:36 +0800
X-Gmail-Original-Message-ID: <CAGb2v65GuwLdJ3Rkt1cyU6EroWZ6pim7-sGry5jYBoi=mubpUg@mail.gmail.com>
Message-ID: <CAGb2v65GuwLdJ3Rkt1cyU6EroWZ6pim7-sGry5jYBoi=mubpUg@mail.gmail.com>
Subject: Re: [RFC PATCH 00/34] sun8i-codec fixes and new features
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_014451_556255_9E4A4BFA 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Samuel Holland <samuel@sholland.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 5:14 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Mon, Feb 17, 2020 at 12:42:16AM -0600, Samuel Holland wrote:
> > The sun8i-codec driver, as used in the Allwinner A33 and A64, currently
> > only exposes a small subset of the available hardware features. In order
> > to use the A64 in a smartphone (the PinePhone), I've added the necessary
> > functionality to the driver:
> >   * The full set of supported DAI format options
> >   * Support for AIF2 and AIF3
> >   * Additional routing knobs
> >   * Additional volume controls
> >
> > Unfortunately, due to preexisting issues with the driver, there are some
> > breaking changes, as explained further in the commit messages:
> >   * The LRCK inversion issue means we need a new compatible for the A64.
> >   * Some controls are named inaccurately, so they are renamed.
> >   * Likewise, the DAPM widgets used in device trees were either named
> >     wrong, or the device trees were using the wrong widgets in the first
> >     place. (Specifically, the links between the analog codec and digital
> >     codec happen at the ADC and DAC, not AIF1.)
> >
> > I tended to take the philosophy of "while I'm breaking things, I might
> > as well do them right", so I've probably made a few more changes than
> > absolutely necessary. I'm not sure about where all of the policy
> > boundaries are, about how far I should go to maintain compatibility. For
> > example, for the DT widget usage, I could:
> >   * Rename everything and update the DTS files (which is what I did)
> >   * Keep the old (misleading/wrong) name for the widgets, but repurpose
> >     them to work correctly
> >       (i.e. "ADC Left" would be named "AIF1 Slot 0 Left ADC", but it
> >        would work just like "ADC Left" does in this patchset)
> >   * Keep the old widgets around as a compatibility layer, but add new
> >     widgets and update the in-tree DTS files to use them
> >       (i.e. "ADC Left" would have a path from "AIF1 Slot 0 Left ADC",
> >        but "AIF1 Slot 0 Left ADC" would be a no-op widget)
> >   * Something else entirely
>
> I'm not sure this is really a concern here. We need to maintain the
> compatibility with old DT's, but those will have an A33 compatible
> too, and as far as I can see, you're not changing anything for that
> compatible, so we're in the clear?
>
> If not, then the third option would probably be the best, especially
> since it's only a couple of them.

Unfortunately the description for both chips are shared, and they're wrong.
So we probably need a new compatible (or a new driver)... or like options
2 or 3, keep the DT visible endpoints (but deprecate them), and route them
to a new set of proper widgets.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
