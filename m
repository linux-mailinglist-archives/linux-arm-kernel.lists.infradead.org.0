Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8253B5AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGWUhEMtPz9sUL+xlP6cmfgWFQ/uPC4mByxRJ/3emTk=; b=a4rmnHZ5nq3dKS
	m5sjZvgjwxA4H8rjQUrlxlqhP65TmDGCmOYYRGzaKRdeO3cdCHQa8o2vIzl7T4TAM1JYY6KOGGJdF
	S1LnN+wY9uoXm4ycuAz/6dCbnmZyyb3IU8eL2qw9DU8OpwcSLH3SoPcmXkjtvZ097GWr2ln7O9Ppc
	01BHwEtZJdjREJxCAvQeDBsRf5KMMn8WQ/5j1CE03gEW8vpczQ3HUyTbpk95Ls+LgDZEm+yelSMqb
	gRzZkLf5+W8G6PXuDpJkHw49W6qqFRGpYxuSOaWL5NuMbBclyuEueqByyQQ3NKhGGu5psK0I3mMcn
	5QUjaWuPJla8u+MqgrLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJwI-0001Nc-K4; Mon, 10 Jun 2019 13:02:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJw4-0001Ma-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:02:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id y198so6580950lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 06:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FvVmgwiazCcMY+QGQrVG7dPwBjyoAsTBZz5XDskINwU=;
 b=EMSHvZxrNj7zSeWW6JUMb1PjD7XA4L2F3EJBWazAQYFiTny584qw5TGz+HoR4WtRPs
 jt0BFoSOGoG5cEKmGnSsVNUFOekU91241Gxig8HqO889e0o8n1mR0IGZzek77ZNEH0nR
 HNZtFC0cMDMDejIk5zmWW2LivA0+TD8QfSWxb873mnou5gQReddEbu9l7uaLLRATj9k6
 J7joALu5V2Uz0HXzTFybC991OzTTITbWKqyzTde8jVHngHRLH1MBiA42vMBZWBfmHdmL
 TtBrP9BIUOsdEwIlfDTfHuA+NE+2ZOKsggvG/+JwOwZa8/YD8lsLqeWXSvXlt6BSuR9U
 fTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FvVmgwiazCcMY+QGQrVG7dPwBjyoAsTBZz5XDskINwU=;
 b=QvjZAg7oTb/f6qTuppdMunzJC35x/4DEWwRsGrkdlj8vEkaTPkJqlfLgEAAn7yFIXT
 OZRylvq8X4TAv9SQX5uYEMf9Xwg9BI3SPRPIPqXnCsQbkTwE1E7r9CytFGiUnxPy+ncM
 l28rgpPCeSPwOeyCdUkB/1Z2zi12b8GaQJU8kroM6kKd4l/A4eOudZ5hKudEur0vl4C6
 GhCyoNKBRB00pyI1vmkqRqakvkT06d0U/72JRNUKBacj5qOP48PnKNOZxq0UNyonuOEW
 Bh+fHFwsHtkLoaUnbE3Y9HO8P80/l0+7mzwigiwn5WI2fIQYT5n4hj2pyWhKCrxWuRuw
 BaQg==
X-Gm-Message-State: APjAAAWcdINaQFv7eAujTDAtOCqZC6rBjpDxlD1+aeyMcxoWcExCrCcf
 ypQuQEGuTdhrhRfereL4ZwAF8kPpzX7xX6oOuOmIeQ==
X-Google-Smtp-Source: APXvYqztCweeAg9bUK/19CvnD4JyBvcZjEnwDj3sBiLhrLCK6pXF7PHLmDF1b1+3rnaeDnoReMLep6XRUs3DNxTDDHc=
X-Received: by 2002:a19:f601:: with SMTP id x1mr34368114lfe.182.1560171721490; 
 Mon, 10 Jun 2019 06:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190606094736.23970-1-anders.roxell@linaro.org>
 <20190606105954.GZ2456@sirena.org.uk>
In-Reply-To: <20190606105954.GZ2456@sirena.org.uk>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Mon, 10 Jun 2019 15:01:50 +0200
Message-ID: <CADYN=9+5RCiSRQdV+vcUT9cqH6fMAMFpMUmApzT2hRfeivfhHg@mail.gmail.com>
Subject: Re: [PATCH 8/8] drivers: regulator: 88pm800: fix warning same module
 names
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_060204_436228_4C2AE742 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stefan@agner.ch,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, a.hajda@samsung.com,
 Lee Jones <lee.jones@linaro.org>, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, b.zolnierkie@samsung.com,
 s.hauer@pengutronix.de, dri-devel <dri-devel@lists.freedesktop.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 p.zabel@pengutronix.de, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 at 13:00, Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Jun 06, 2019 at 11:47:36AM +0200, Anders Roxell wrote:
>
> >  obj-$(CONFIG_REGULATOR_88PG86X) += 88pg86x.o
> > -obj-$(CONFIG_REGULATOR_88PM800) += 88pm800.o
> > +obj-$(CONFIG_REGULATOR_88PM800) += 88pm800-regulator.o
> > +88pm800-regulator-objs               := 88pm800.o
>
> Don't do this, no need for this driver to look different to all the
> others in the Makefile - just rename the whole file.

Thank you for your review, I'll rework and resend v2 shortly.

Cheers,
Anders

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
