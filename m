Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07AF1669F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwPUSqyWPEYH4Roc2ZMUC0RUYGjbn/sZx03pMtk0X/g=; b=EEbl1ovHFgP79S
	x+oYeBUc8FUEmJSRNMEVRJvJjKXZVjJMvNbPWf0pS96lZGKODBgnCJ4/nXta1aDFPwl9mDLsDp2wX
	cyzuwihEMXaVg1nUF8MdhFS5Xp0rEyGeMc763sdkYeHLfolDoBno0QC/oAzmiFH95XTAfcnlrgkj1
	g8hLd9r3irgbUA8lRALjIK1e/erP49FHlb2+kRx6Qg7zOFqywvqlOeFB+NoEfaWUFBzBbQ9IVvE1M
	esoqEweKLNdH8Hv4HjZE0Ah5eygg/vIHFwLhskdf81UvKI9j7u2t6iinzinmn2FCDZ3BRHZO8QJ7Y
	U0X2Nly15/o/qTHWCKwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tVz-0007AG-Es; Thu, 20 Feb 2020 21:37:47 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tVe-00072J-JW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:37:30 +0000
Received: by mail-qk1-x741.google.com with SMTP id b7so5053211qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oh9NnMK5dEkxSL8LqLeezQXMtkg2eo9bP7+6KDERK7c=;
 b=dkZ+fmKTL4NxfsQL//wkNrqdn+7ALxc9PWB4/cJdjaMYai6+a2ObaTrZTi3QiRCL0V
 TMTIpnezZMnaC9KNCUXgF5o59tmklGM0vyhpkCSUldlOCdklJMYjN8kgqicn7b0H5uvR
 mRyrf9vU9fUmbYaeaIRealAwfliz91+76OSwSjZRyYEy8UDGoP0f0sy8JOKnLJPzFxbC
 rMegihWdjYtYGneebotaZntHloXNCy8nrj2aAhjn/yFq/gWFTTJg6TRppJoIn0GMcVsY
 NpvhM1m57XvH2otQn99m5FFoJbCjQ9wgnJAVRPPA+LBskBn1YeWZ4SpX//vhyZqwvvN3
 mFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oh9NnMK5dEkxSL8LqLeezQXMtkg2eo9bP7+6KDERK7c=;
 b=n8Nn2oKDuZtG1fjTwOop/BDCM3JGXUT92uajNbmUp/aQyJL2MgoMWviAKRrcOkw6yp
 aTQnw8VQ46sl8Kx8KBKWVdRqBGFG/rMKsMr2n4CB31lhHAlEYwyl6Pq2YpMMJPUtV2EZ
 QiisB1jvPbOHOtz62QIMXFb++zl58+MFYeXzqjQ6+VkW637O9uZn/c/aD4usfoWuTAZj
 IS5W3Tv8lJ/oPa8o47KWl3wComVjr/UB/uMKfGY1QiTUnaRJyLnvHdhpp6l3I6zHCkuA
 ABtMoYsHkJenfyqiwtErF/grehjzriNK0APEpkey5yRVe9ncHSp4LOaa32d4TT1utAlW
 URGQ==
X-Gm-Message-State: APjAAAUbt8XSa2bVc4jLSi4Q6dx3k42+lz5YmxWmFXdRKkO7jTOTpPO9
 Ez+NbOvLyFnm6vU42hTaD/MZ11LOORknG7OyKNE=
X-Google-Smtp-Source: APXvYqxbMtUxwi5PqTgTmL0zS8fcAZIOH3LG0rqKdR9B+eNvxbGatS+IgDq4lagM0iirCc+ygm9t5HGOeR8kbKdfxTs=
X-Received: by 2002:a05:620a:1426:: with SMTP id
 k6mr30609606qkj.276.1582234645770; 
 Thu, 20 Feb 2020 13:37:25 -0800 (PST)
MIME-Version: 1.0
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-4-anarsoul@gmail.com>
 <20200220093528.GA10402@ravnborg.org>
In-Reply-To: <20200220093528.GA10402@ravnborg.org>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Feb 2020 13:37:12 -0800
Message-ID: <CA+E=qVf2eGddyBd7G5+W0cScLSQF3qmPgw-ja_F=4LeEMeLn5Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: Add Guangdong Neweast Optoelectronics
 CO. LTD vendor prefix
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133726_804290_04D4BC10 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Torsten Duwe <duwe@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 1:35 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Vasily
>
> On Thu, Feb 20, 2020 at 12:35:05AM -0800, Vasily Khoruzhick wrote:
> > Add vendor prefix for Guangdong Neweast Optoelectronics CO. LTD
> >
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 6456a6dfd83d..a390a793422b 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -665,6 +665,8 @@ patternProperties:
> >      description: Nexbox
> >    "^nextthing,.*":
> >      description: Next Thing Co.
> > +  "^neweast,.*":
> > +    description: Guangdong Neweast Optoelectronics CO., LT
>
> Alphabetical order.
> "new" comes before "nex".

Will fix in v2

>
>         Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
