Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6163316422
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puSog11oKaHRAN4tKUo7QVvVMZpztAt5z8lQOdQthnE=; b=tghYi1IeVouPqZ
	VReutGO0tABDzPJ+GWry4r31GVem2EC0PDtO0VwbJlraZRfzF+IS0JsyCDJPIs0h80c7MAjfHlQ1S
	xCmoH+SpX32uGd/qGLfbDfHL4y4jZfkxtLCZyVsgDC2qkV8MarDHtS41C5NwlagV+8PGsc/QoIaA4
	DeSepe4xjS4pMMpprfQ+PygVkTFlhQitgY7XqdNJss4apn+CvQ2E5WOpgUHAlsK7X+JGTFuyWsjDO
	GtxZjcnSrdqSKgjtAV0yvtYCXMlXN8t9SL6qJYwmfta0FPzs8hOvxnMqHM3N2GBUE1DkccIM02t6J
	a6ysswNhJRkULhmdLPmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzg4-0005M1-8u; Tue, 07 May 2019 12:58:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzfx-0005LB-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:58:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id c24so1530910iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 05:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d1BYInvs1oFf7Gbsgx4CY3rSRVa9DYGZ8/CYy23V2us=;
 b=nQ6gegFmujDnuKXP6cFCYr0axTyHf4uFwZaIrUljHKVC9068oWSqJkAfk9Gh17PHyE
 uuCAjcmQeEOEjMHmCxUBI66XpnjQXroNYqsF+bbQt/09H+irkR7ubMcF5QEqvKJmmrN5
 2R8R63oORKLnObh4WCc2I0C7S4zjFiYauYq3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d1BYInvs1oFf7Gbsgx4CY3rSRVa9DYGZ8/CYy23V2us=;
 b=EE24nEllWLBdTUUm7gJxINMJlw+AbnyuKGzcvtXM0lvwEm/W5cvJlY18pAaxrVlfL1
 3o+OXe++hR+amnT53nlijhaEy31Na+JWrqW9GEOJv/IucUkOncT8pQBU7k4lZ5ZU/j4w
 d7CU7YN2byexzrLejHPUhMaeeC3MDElfJ/Pl6iz0qCwyWjnSSk1LpCF0R7O9cQUYwW00
 ivHKFl4AJj5f3ojAYr8KMFdSPunpQCPRffF4KRCYsRFWKuDtxXx1MlJCIdW2Lc95Lom0
 BuckzoGLY9Os9PcL4GNXWAkNeVQtjVGy60VuSYNgdiO1wytbnF6IoPfekGnoMSn1JGl3
 BuSg==
X-Gm-Message-State: APjAAAXhLO+xpxl1CIbk4AvVuMsR9OKC+1fpR0MMVE1HimRlBdEG37Rl
 2xPiLgsgCfpeDds1PIFcH/g3ySrnG9Z34DmGbXoU/w==
X-Google-Smtp-Source: APXvYqwhx0sRi8/kQiro3wLZ7MDPkblbSgfSAjdeAhU/iYZfl1yQK/PGVAnga6qoHKYhXx/3TZGLyhlEorR953lTIZc=
X-Received: by 2002:a5d:9a11:: with SMTP id s17mr892216iol.267.1557233908042; 
 Tue, 07 May 2019 05:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190503115928.27662-1-jagan@amarulasolutions.com>
 <20190503144651.ttqfha656dykqjzo@flea>
 <CAMty3ZCQTiX5OvCG_uMRS02vFu0c1-bkcyauLD6oaFcd=y3RNA@mail.gmail.com>
 <20190507070617.h7loqiqvznqvvprq@flea>
In-Reply-To: <20190507070617.h7loqiqvznqvvprq@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 18:28:16 +0530
Message-ID: <CAMty3ZB0+uAKzoi=LpbE0nty2BHxqwY=0Pm36uiNnjuc5TKCdg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: allwinner: h6: orangepi-one-plus: Add Ethernet
 support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_055829_475752_86731D82 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 12:36 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, May 06, 2019 at 03:03:15PM +0530, Jagan Teki wrote:
> > On Fri, May 3, 2019 at 8:16 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Fri, May 03, 2019 at 05:29:28PM +0530, Jagan Teki wrote:
> > > > Add Ethernet support for orangepi-one-plus board,
> > > >
> > > > - Ethernet port connected via RTL8211E PHY
> > > > - PHY suppiled with
> > > >   GMAC-2V5, fixed regulator with GMAC_EN pin via PD6
> > > >   GMAC-3V, which is supplied by VCC3V3-MAC via aldo2
> > > > - RGMII-RESET pin connected via PD14
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > Your commit log should be improved. We can get those informations from
> > > the patch itself...
> >
> > Thought it was a clear commit log :)  will update anyway.
>
> Well, yes and no. The commit log is clear indeed, but it doesn't
> provide what it's supposed to provide.
>
> You shouldn't put *what* is being done by the patch. That's pretty
> easy to figure out by reading the patch itself. You have to explain
> why and how you did it, which is lacking in that case.

Make sense, will rework.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
