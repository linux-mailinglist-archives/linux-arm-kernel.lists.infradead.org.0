Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87E349A0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OlvAEd0CrYyCNjMkhHQyACKTPWVOhQxlzn32xK4WHw=; b=a8drrENoQ3cxML
	z+y1MDuWCd5NLaBSmhRtdY60t4CyqSgeZeNyZfVuqtyxJ4qJl/dB5EQNu2lPGLPz7/g3kKBK3vKa2
	ISlw+99fKYR18TabqcmrhpAOksN8eySdmbyh8jnYHAhpf+QVx8PfM4Knzb8MUTNILS18jMe6b/MTC
	3/qM1rAAasHaA3yJMbW2SOHiNPMKJ83DSbIG+NxC0ln1E/c4LkbfIZOnJy+3vMXa8vqvZfQt7rAMG
	7srKJFjoeWxN9HQSKs0pA9yFGVwv2hXJ4F0X9Bt8J+dettgL1+aC5EaOwhrIgmSEEGHNXIzn9ZCAG
	HE3lsyzJUIXitfB0P86w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8IQ-0003g4-El; Tue, 18 Jun 2019 07:12:46 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8IG-0003f8-B7
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:12:38 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so27498400iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HmL++hI8lQoZaDbMBXIiWF1lw21O/uzMRwn2y/O0Xwk=;
 b=iaB9nIVlWH6LV1DMIrnPdNE4Ys6DzvdzS2TdZXtSSCE+E+q//N61iRLXcbqzVqDJaM
 QqF1qJCQwPEafzabEz0t6xWOChZQsyc3weFjZWETylgOH5RD2KFWKbMKG4bLlXxFg9OX
 dq6AUnd4hFcU4o+A0TnJag+k3HkoKHdrN5hKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HmL++hI8lQoZaDbMBXIiWF1lw21O/uzMRwn2y/O0Xwk=;
 b=l+DDYkX1UWqyyOcvpmFHOjYqglpgd4UgnwhXEgSHBhMkiGvFmQD/EaX2LY4jnXTx7/
 YIttwltlmJaK98UAcsObQDWyuZF5AtZNXXif1kAQ0LD9UdBnG4XlNhpbLZHLM0DHUMtV
 5naESOwhfNDhoTt9298a3ATjiBFD5dB0fnXW69e44mY/nivKYKqmmmGfYIxOa0r42Oxm
 e/cVCNCOEEl8zLGgv1v3hf02bXTLFOOKbxUE7uOU7hT5R2ByLGIQ4y6MkjLExNmVh8Fd
 cx1TEG89gd8hve5BZ9dNvEYszBsqYTCEXP6VXGgOKzq6LkCEetHozywravoe6OeNtJ/7
 aFCw==
X-Gm-Message-State: APjAAAURYBauvMxUpU2qk03a+PhRmlLxf0tkmrB0QcNDk4nZwKw/IO39
 UBO+vTAg4nmiTgyk+bcMcB4uazgxoL0spOWX3snpIw==
X-Google-Smtp-Source: APXvYqzNRlDJxCxF6O+3RbQgMZ8Vz5JWFmeOF5YnAqT2HmdW9eHgtOSbGNu6hfDOSRSNCnLlinOQTSXbS6Nte7phh2s=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr6191396ioc.28.1560841955317; 
 Tue, 18 Jun 2019 00:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <20190617114503.pclqsf6bo3ih47nt@flea>
 <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
In-Reply-To: <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 12:42:23 +0530
Message-ID: <CAMty3ZA0J+2fSRwX+tS-waJDLMyTOf6UY_1pHjXe0qOk5QuzrQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 5/9] drm/sun4i: tcon_top: Register
 clock gates in probe
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_001236_541602_C9D0402D 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Jun 17, 2019 at 6:31 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, Jun 17, 2019 at 7:45 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, Jun 14, 2019 at 10:13:20PM +0530, Jagan Teki wrote:
> > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > now these are register during bind call.
> > >
> > > Of which, dsi clock gate would required during DPHY probe
> > > but same can miss to get since tcon top is not bound at
> > > that time.
> > >
> > > To solve, this circular dependency move the clock gate
> > > registration from bind to probe so-that DPHY can get the
> > > dsi gate clock on time.
> >
> > It's not really clear to me what the circular dependency is?
> >
> > if you have a chain that is:
> >
> > tcon-top +-> DSI
> >          +-> D-PHY
> >
> > There's no loop, right?
>
> Looking at how the DTSI patch structures things (without going into
> whether it is correct or accurate):
>
> The D-PHY is not part of the component graph. However it requests
> the DSI gate clock from the TCON-TOP.
>
> The TCON-TOP driver, in its current form, only registers the clocks
> it provides at component bind time. Thus the D-PHY can't successfully
> probe until the TCON-TOP has been bound.
>
> The DSI interface requires the D-PHY to bind. It will return -EPROBE_DEFER
> if it cannot request it. This in turn goes into the error path of
> component_bind_all, which unbinds all previous components.
>
> So it's actually
>
>     D-PHY -> TCON-TOP -> DSI
>       ^                   |
>       |--------------------
>
> I've not checked, but I suspect there's no possibility of having other
> drivers probe (to deal with deferred probing) within component_bind_all.
> Otherwise we shouldn't run into this weird circular dependency issue.
>
> So the question for Jagan is that is this indeed the case? Does this
> patch solve it, or at least work around it.

Yes, this is what I was mentioned in initial version, since the "dsi"
gate in tcon top is registering during bind, the dphy of dsi
controller won't get the associated clock for "mod" so it is keep on
returning -EPROBE_DEFER. By moving the clock gate registration to
probe, everything bound as expected.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
