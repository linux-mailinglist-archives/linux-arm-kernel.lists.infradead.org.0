Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2791DE7C6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5091rc8FBhxs9CvdgVBFJLfSmZ/LwLyqPHNB/aDxsQ=; b=tcRHrh5QgUy54A
	Zu2WzFtJK/L4aS2liCFwa46pDCbhphhPshizsxnKB19a9usR/ygcsb2jLA2ZPmOv5PO2uXFZ32LRI
	7IKL1Rhdzn5urQVs5GIb8l50603xJlj+gnJiVSCMDD1HCqoEM91Fo8gRvdDecYHevM30n3gooK37m
	JJgFBAO6W3hsKQvOUHwQls5VEDZMuJDpiFcbasjlU14MCzgMJlymGl43jLWrHn7g3UfgwodEwAOC1
	qAMZ2P15PP7xRKQzVdx2caG8b9Zi/XwLX08hcCNMtO7XoTsrYF0d3MKcNDjhQhH8tNih2oK86/5ME
	uh6XAAmyIQefwRizD8NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDe0-0001kP-V5; Mon, 28 Oct 2019 22:37:48 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDdq-0001jX-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:37:39 +0000
Received: by mail-il1-x143.google.com with SMTP id t5so9628461ilh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z3tX+ks7PoiFwrJMh00/G0a0ftQIDY3RWS8pN1PA/BQ=;
 b=SKuPRKpveC6kpd0ROoNvdHULXUx99U0LlGRXDpWC4BPC2PLCNKrud8USuQ9T6iTjuu
 yY/RhELZCceNf3/45XZWM6GsNyRX8KOElh1Wg6prkLUzt27uk4jeSXYo/9oCWj7trUCm
 /4sm/8LdQPwR0vw2Ic0Nb7446p1joXFqG8Khw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z3tX+ks7PoiFwrJMh00/G0a0ftQIDY3RWS8pN1PA/BQ=;
 b=s4XR6zGG/UNfWSodUmb05w2QoK5JuZTQ/K2OwsW4CVgDfKt0wSYJ7mbyd/HKPHvttN
 65k7W7Kd734GonKTSgdRauD5smXcCs0T2el7uRfghGcML3Sd3N0QFT0YuWeNZf9D6iMZ
 2RrJTl31NbKClGyPzFYX3aLOAFifp2zrpmJwkG+eMeKxLtfuaSYL8Cy2YVTIgk/jYY7H
 /qyLyuthDvb8rqXB4CxC3bniWUucqgmDl3CyJvTA7O1qMgB80AuWkya27Gw9KWUWShY9
 gbfD9zUvZ6jSeTabcq1uEHSR9r5z1GiaJfm1Sh0nISqAr2fYvL1WQ0laAABlQ+vYpydf
 hBqw==
X-Gm-Message-State: APjAAAUkl+aWFJqL77ojqfhAra4oOUIUAvkCiRi2RMk7Lm0Dv7SMA4PA
 ILtPGnikdp6CxUyvgEiysjqkEDQzn+GgOVDGrGk29g==
X-Google-Smtp-Source: APXvYqwIZOpM2fC3dmpYbeGTVPOWxOzVO5pYPcw3MFmyjgnC+e3sCBKiQMsTwG3PiO7rE0i53YmxyINxh4//HXXlb2c=
X-Received: by 2002:a92:91d3:: with SMTP id e80mr24149380ill.77.1572302257323; 
 Mon, 28 Oct 2019 15:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-3-jagan@amarulasolutions.com>
 <20191027211737.GA30896@bogus>
In-Reply-To: <20191027211737.GA30896@bogus>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 29 Oct 2019 04:07:26 +0530
Message-ID: <CAMty3ZD8P1KGS+6AZOCbYyLpV=c7wowUdwoJXYvEMq211xbM1g@mail.gmail.com>
Subject: Re: [PATCH v11 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible
 (w/ A31 fallback)
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_153738_314863_DED1BC89 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 2:47 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 25 Oct 2019 23:26:20 +0530, Jagan Teki wrote:
> > The MIPI DSI PHY controller on Allwinner A64 is similar
> > on the one on A31.
> >
> > Add A64 compatible and append A31 compatible as fallback.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.

I usually collect the tags when I send next version w/o any change.
but this dt-binding patch has a fixed version compared to previous
version. I have updated changelog on cover patch and may be will write
it on respective patch itself.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
