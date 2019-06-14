Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1CE45B0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykycGNarHk5me+SFV5hAewwAyQrMLatMwsg1mLlhF6A=; b=q5dgDZdvqjqDjZ
	0oPNo2688kLXjJcY0JCNJfPpd+3i5QoK0KwNfqifKkSYxBX2eqhHsgaReG5a7tULIP3P033awturj
	dVGBMR4hFU6noJ8RPP23zFZs7HyxonHzAOUhlzdk8Ck+EBYavR/sNgddPgubZaPvylFg7D4rVbjk4
	V+y6h4zEWyO+4K6xXWihgeLyyftVAcqW5SEf+GyAzAZVHMUnva+T2vwBFOB46rZY9K4rd4Bchd2+/
	tOvQoB7jDqic4X3F6bR6OF3Rxa/c+CizXChHpqO7SsjIbe2pBvsg+BIlSjJqSMJeHrQclrv+UsbwB
	XN3b0fPd8X+uCZrFahWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjym-0003ko-04; Fri, 14 Jun 2019 11:02:44 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjyb-0003k2-R6
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:02:35 +0000
Received: by mail-ed1-f68.google.com with SMTP id a14so2867400edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 04:02:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L90M1yJRaEbJvP50zlp+g8JncxyhlOF+tsQgaXRymkc=;
 b=NsdnMvMpI0HTG1Ik7Tk4rcKGb8Ou08fydshGIKf1zvDTaZmp3XT/W8gxNt3a4ABONc
 lDuotL/MVBRnRbPRVcmW05Cgr6NS3jYkepiA6UFEAEfAghk8WfmFyTYlEyp3ppY44rB9
 EMhfCdo/tAX7RmB8L5jBS9+EXvsVJpURK8ktWKCGW66zK5nTR/k2hhY6fCNi9lIx4ov+
 RwtJnTt4tdSOCGfanCYBs3Zvji4k03ujPS1geg+wmvSr6MfFk7yB7WOfy2teQP9/IBs8
 guiyAHGl1/Cj46loB4Aa6htks54uNqUuroqv9DuHIaimoQ5/sb7w0gmwvIrM2mbXb1Ld
 BJAA==
X-Gm-Message-State: APjAAAWvIEMFongsLYqbAjSMu9Kl1ooy+Nx1BO9Q6RERQ+BCr1xy6igd
 VONY0jldgImkLHm9t/IFk+iRz23/AKk=
X-Google-Smtp-Source: APXvYqys8slZ3/LzcpJay1XmQ1u+A/xHRYFaAa0i4zNKf9FD2MCG0t3ToCX0r70UN4CL9wmeTuJxqQ==
X-Received: by 2002:a05:6402:8cc:: with SMTP id
 d12mr42474843edz.60.1560510152122; 
 Fri, 14 Jun 2019 04:02:32 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id m6sm766291ede.2.2019.06.14.04.02.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 04:02:31 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id g135so1880235wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 04:02:31 -0700 (PDT)
X-Received: by 2002:a1c:c545:: with SMTP id v66mr7776405wmf.51.1560510151032; 
 Fri, 14 Jun 2019 04:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-3-jagan@amarulasolutions.com>
 <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
 <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
 <CAMty3ZBc-AqbNGZCxRhOPw46iMvEZxoq1oATA46=K29gRYi4Sg@mail.gmail.com>
In-Reply-To: <CAMty3ZBc-AqbNGZCxRhOPw46iMvEZxoq1oATA46=K29gRYi4Sg@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 19:02:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v6466QSF1wJ_wJsVwAgHsnLXD9GAwbPQtXcTDq4aqAeEfQ@mail.gmail.com>
Message-ID: <CAGb2v6466QSF1wJ_wJsVwAgHsnLXD9GAwbPQtXcTDq4aqAeEfQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support
 for R40
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_040233_876590_BB0DDE19 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Jun 14, 2019 at 6:56 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Fri, Jun 14, 2019 at 9:05 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 11:19 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > >
> > > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > > LCD interfaces like RGB, LVDS and DSI.
> > > >
> > > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > > tcon top.
> > > >
> > > > Add support for it, in tcon driver.
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> >
> > I take that back.
> >
> > The TCON output muxing (which selects whether TCON LCD or TCON TV
> > outputs to the GPIO pins)
> > is not supported yet. Please at least add TODO notes, or ideally,
>
> Are you referring about port selection? it is support in
> sun8i_tcon_top_de_config.

No. That's supported as you already pointed out. That only selects
which mixer outputs to which TCON.

I'm talking about the GPIOD and GPIOH bits, which select which of
LCD or TV TCON outputs to the LCD function pins. Keep in mind that
the TV TCON's H/V SYNC signals are used in combination with the
TV encoder RGB outputs for VGA.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
