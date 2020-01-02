Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA1D12E83B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 16:44:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEbwmYv1vtlCwmPj/8KXnDVQAsd/AY+SoS6JPLvfgEQ=; b=FL0w+AvUJKGlEN
	GrEgs3eInQQmr3I/qJLaRpj8sYDA0YgMVBENgGVqyP8ZKkpyc5MxznjfSkvYpR9RI/4r2M2wkofOL
	Bv9NGJheBEzuYgPeRQP4rhLQQS3CDY1ngPBtBgLw3lvG5gog0pnv68Np8x5q4DV/LtrjrynFB6HDY
	HTJR+4EOIatF8ErLBcdJZyP5KEYXUInkEffWpCpL4djihFVk6cMQ+6t4Zv/y4+xxlnLdaOHrJYp9T
	LVRdRCsO5ftnjyxvOQw1lWgQOhRwYieqyXo3ZeJKD9/GuY0627dWkoQeyXNoT7x6DonsYIWtAa/TW
	shPeKDmGWdrV2PyO1Jsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2dm-0002WU-0B; Thu, 02 Jan 2020 15:44:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2dd-0002WB-Cw
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 15:43:54 +0000
Received: by mail-io1-xd43.google.com with SMTP id v18so38675508iol.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 07:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tocxIO5F9WiGwdyi59k65eYp6LMpmfQ5nQn9VUEVPqU=;
 b=Mtxy2+o0bGr/YIkhtVJRxWVKb9Ts8KHINjjApSRDlUQUw8j5A3XxCYZ8CKfnITE+FA
 /KkxbNERhd0WMLvxeqjJLVICjFaIgydE1Rc8bRMLYlyYjj3njZG1bjNacTARHK5oNFaw
 jbDX9RRTa4yi7hWnPb7e0E5g/8zfiz+SWjmiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tocxIO5F9WiGwdyi59k65eYp6LMpmfQ5nQn9VUEVPqU=;
 b=Y+qeSQ7Ve3Lm1Zr1TUuk1ugOQeogCldnA8+S4DKLN9y4hn46fmlqf5OvuABYUl7V7K
 KNJjU8mAUOw2l7Sbn/1NcmsQP5fLXVap/HrbRgnhPDlcBZ8V2BKZ7FZszMKyOtrmBL1U
 Spi2rr0PzK5/bCbothZ3ApxwQLEtavHWPsOng3GJqhi/sTMb9nNfx2V7M6FQ8jPnQ6Lu
 YSwmeEK8/3aOrvsaI4UgKzZLt2L7JaakcWuQlOBxNOXNx3gswi5l2F0Qy8UbrUMmUNPp
 gee4SOYjI8ocXy0KQnJcINkdFoHlaRzP40qCYv2fiSxx/0j5jL1Od+RPwoqWax6GolWa
 2WCA==
X-Gm-Message-State: APjAAAWfVBgpjM/vjPGp9RCBjMVAPeJfbbvLME6BLFXfOeFL7uLLY386
 LyVtRaS5Oxis+YsS1Gisrj/Wy70JAqs5qYysxi5y3g==
X-Google-Smtp-Source: APXvYqygOqKSlxE+0TT0WUiiUg0DLdEp+in8oQr92U8mxkGOhOUcB0XCaUZGiQdDnqZWvyQeVmWXtdoyza5Z2wi099Q=
X-Received: by 2002:a6b:f716:: with SMTP id k22mr44050760iog.297.1577979828013; 
 Thu, 02 Jan 2020 07:43:48 -0800 (PST)
MIME-Version: 1.0
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-7-jagan@amarulasolutions.com>
 <20200102110347.v7lsnmmsbp66r3ia@gilmour.lan>
In-Reply-To: <20200102110347.v7lsnmmsbp66r3ia@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 2 Jan 2020 21:13:37 +0530
Message-ID: <CAMty3ZAwaqE31=rCiub3bRZBOa68ck5Ld=A7kVsQjssps9TCxg@mail.gmail.com>
Subject: Re: [PATCH v3 6/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible
 (w/ A31 fallback)
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_074353_435905_1F12A0A4 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 4:33 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Tue, Dec 31, 2019 at 06:35:25PM +0530, Jagan Teki wrote:
> > The MIPI DSI PHY controller on Allwinner R40 is similar
> > on the one on A31.
> >
> > Add R40 compatible and append A31 compatible as fallback.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - update the binding in new yaml format
> >
> >  .../devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml   | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> > index 8841938050b2..0c283fe79402 100644
> > --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> > @@ -18,6 +18,7 @@ properties:
> >      oneOf:
> >        - const: allwinner,sun6i-a31-mipi-dphy
> >        - items:
> > +          - const: allwinner,sun8i-r40-mipi-dphy
> >            - const: allwinner,sun50i-a64-mipi-dphy
> >            - const: allwinner,sun6i-a31-mipi-dphy
>
> This isn't doing what you say it does.
>
> Here you're stating that there's two valid values, one that is a
> single element allwinner,sun6i-a31-mipi-dphy, and another which is a
> list of three elements allwinner,sun8i-r40-mipi-dphy,
> allwinner,sun50i-a64-mipi-dphy and allwinner,sun6i-a31-mipi-dphy, in
> that order.

I got it Maxime, thanks for pointing this.

>
> Did you run make dtbs_check and dt_bindings_check?

I sure I didn't, thanks for the clue.

Will do this on another patch as well.

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
