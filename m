Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA07749A7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMHwVa5KCZzoIqa9Yy1/3ztTF38kHxrXfp/bBDATWvU=; b=gzVqEBXqE+Q4FV
	tOl2tIvgKmiX313rnN7QJ8HpEhlNwqoRV0hnnDksSgdDs9mm1N6LT/dCgereiKrcjvHfb9mxCN7e4
	RSCZPafkwVquzLiGP3Xbzylm8dhjrFlQBjxyVvauueWSP7z5KPALXkUAv6KXizKXkElgh5kGdAz+S
	df4zf/Xda3PaH7OlrRKpUYXvA3yU72/mqTpXfWLa+4JTjVI3Tr2O8qLy9v9QfSOJkULYTDZXZESql
	JOKhqrRnW1zhDWumdh1tgfa/zmg/HDwSBYFQI7j7fAhqAk2TyTSQ/m+Qnyyw7uBtKZUYx21YkfYgK
	J246VXvxs7uX0P8UuJeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8TW-0001ob-AJ; Tue, 18 Jun 2019 07:24:14 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8TF-0001k6-I9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:23:59 +0000
Received: by mail-ed1-f66.google.com with SMTP id k8so20134474eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qCmSq7/dX8Bi0Rr7j3EyPomsJ3SBkWb71qFb9BFHhSE=;
 b=REgcP7mxmUIjkssCFuNUJh9Tz4g1T1bYSOaAH+OT4/guuBt5WZ+x64fROvPNFJCZzp
 +vcARh7tQqeQD4vLt2RR7yZORCEipPO4TIObKhOT72plqKTVNRkIuCoLw/9O7QOWwhec
 6lQPLnIsFRcWiRDgqpXuc8bwJz8zw9dh5J0RkXbdMQovpAYY8O62YihGu0sqkz9lopp4
 hsp5keC30VdEta7wn3bNhlY9tguczFP1cny/HVbn4Gzv7X1CHz+0yup5J2qQgkQ5EAuP
 iO3p2zRIu10dEBkLUcC8d2sZlqLzbmy/yv6kSHbahhUukzvr+Z1Ca2YNsWO99tmEGnkg
 fNsw==
X-Gm-Message-State: APjAAAWKg1t18eSYrUiveGTB1q75UVelSXpT4K+CZ0EdXTvqti05lyEl
 O+dFyrywamuUgUjoVAedePLV3Cn3+Jg=
X-Google-Smtp-Source: APXvYqzuk0HmAjs6S1cUjzpwJTixdmTYQnj/VLinENPgTod0Y0qHl+YJcVpHpSTi96R8lKeVlESSlQ==
X-Received: by 2002:a17:906:5512:: with SMTP id
 r18mr100382985ejp.298.1560842635664; 
 Tue, 18 Jun 2019 00:23:55 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id y11sm2602909ejb.54.2019.06.18.00.23.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 00:23:54 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id c66so1989944wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:23:53 -0700 (PDT)
X-Received: by 2002:a1c:f512:: with SMTP id t18mr1991013wmh.47.1560842633421; 
 Tue, 18 Jun 2019 00:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <20190617114503.pclqsf6bo3ih47nt@flea>
 <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
 <CAMty3ZA0J+2fSRwX+tS-waJDLMyTOf6UY_1pHjXe0qOk5QuzrQ@mail.gmail.com>
In-Reply-To: <CAMty3ZA0J+2fSRwX+tS-waJDLMyTOf6UY_1pHjXe0qOk5QuzrQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 18 Jun 2019 15:23:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v64htYr+iRUnLx0hKkqCtYa0GbzZJEvb-ViyJFAYzU1sig@mail.gmail.com>
Message-ID: <CAGb2v64htYr+iRUnLx0hKkqCtYa0GbzZJEvb-ViyJFAYzU1sig@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 5/9] drm/sun4i: tcon_top: Register
 clock gates in probe
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_002357_628741_6DAA3C9B 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 3:12 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Mon, Jun 17, 2019 at 6:31 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Mon, Jun 17, 2019 at 7:45 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Fri, Jun 14, 2019 at 10:13:20PM +0530, Jagan Teki wrote:
> > > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > > now these are register during bind call.
> > > >
> > > > Of which, dsi clock gate would required during DPHY probe
> > > > but same can miss to get since tcon top is not bound at
> > > > that time.
> > > >
> > > > To solve, this circular dependency move the clock gate
> > > > registration from bind to probe so-that DPHY can get the
> > > > dsi gate clock on time.
> > >
> > > It's not really clear to me what the circular dependency is?
> > >
> > > if you have a chain that is:
> > >
> > > tcon-top +-> DSI
> > >          +-> D-PHY
> > >
> > > There's no loop, right?
> >
> > Looking at how the DTSI patch structures things (without going into
> > whether it is correct or accurate):
> >
> > The D-PHY is not part of the component graph. However it requests
> > the DSI gate clock from the TCON-TOP.
> >
> > The TCON-TOP driver, in its current form, only registers the clocks
> > it provides at component bind time. Thus the D-PHY can't successfully
> > probe until the TCON-TOP has been bound.
> >
> > The DSI interface requires the D-PHY to bind. It will return -EPROBE_DEFER
> > if it cannot request it. This in turn goes into the error path of
> > component_bind_all, which unbinds all previous components.
> >
> > So it's actually
> >
> >     D-PHY -> TCON-TOP -> DSI
> >       ^                   |
> >       |--------------------
> >
> > I've not checked, but I suspect there's no possibility of having other
> > drivers probe (to deal with deferred probing) within component_bind_all.
> > Otherwise we shouldn't run into this weird circular dependency issue.
> >
> > So the question for Jagan is that is this indeed the case? Does this
> > patch solve it, or at least work around it.
>
> Yes, this is what I was mentioned in initial version, since the "dsi"
> gate in tcon top is registering during bind, the dphy of dsi
> controller won't get the associated clock for "mod" so it is keep on
> returning -EPROBE_DEFER. By moving the clock gate registration to
> probe, everything bound as expected.

I believe you failed to mention the DSI block, which is the part that
completes the circular dependency. Don't expect others to have full
awareness of the context. You have to provide it in your commit log.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
