Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579741669EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:37:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbLL5xzBPfIDjG84AljbFIWZulptEBPpAckmtaPAESs=; b=Rbd1pmi8OC62DY
	CmYfDEXTrUljl0KGKB0ECrxe/o9M3F3mRjOP7CGlHTjkXqwoP9eboiyhjKrPTEc3N8QvRsKDKplm8
	ndtNcF7N1sCs5Ee0ehVxFa7pivWGNS2xITvttsk6boYm3+g+FCtxt25mVrX0KBgKmZYCDY6HzoNdl
	h6sCavHM1aTw2iIafDRs2FBh29+2sm1UkYEAz3fBFhpApqPUyXVaSuD8zyVo5cDO2BcqizOBGG7YX
	zEbHCbOK3RPQOJyrSUhGWxgqlfmVupmb3I1hL3kAFqwgvqj0ECFu5K/HYca1m1LqSNv1QB3DjkBnZ
	yFMIk2v9T7UeGcKq7LJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tVS-0006iu-4K; Thu, 20 Feb 2020 21:37:14 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tVJ-0006hk-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:37:06 +0000
Received: by mail-qt1-x842.google.com with SMTP id g21so4007120qtq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WBuh5ANX049XvoAuYc6kDkKQiW67h+g1q8TDSOz1dqU=;
 b=gGDChIYPb7jifbHXTNEr728+h/KDQM6oZ7iVOorsQNIlKeVpq2/SWfmMjeV3fCn0IT
 5Z2JU3eyCSYgMYZHr282T7BARLiT6neyNUQ8AhMzPP76JzdW6pxlHmMZdB0qc5ODL4h9
 dTIAfGVApio3FQtTS8zEDmHH4KRuYmBYE2XNcUx04fQpRWwqO4r9qVGQpgKTNOi4uEic
 RqehqrYh6mTmB3uzl2Dk9YpAwvbBV1u3Dp+MoE0D4g/Z4K/aN5dyS2UfmMu1bBRLILNw
 Wxkqw+0ZOuLIe+c5df12j53P273GoEdnEFHR3m5YPd1PY/pFyiVUmYdqVU+lm3jINvgH
 mpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WBuh5ANX049XvoAuYc6kDkKQiW67h+g1q8TDSOz1dqU=;
 b=jcScXV9G1hNXlvzixXWt4iObDtJUR90UbFMauCkH9WBtnbUAQRgf2uuWWwIqBxY6YF
 j6BZA6i5aefS3+yxJIgIOl1ik5MJWoqOz4QBrhua+R8lapYqCttxa86xhjLSeE9V+YYK
 Tz7QIptU6uowrAEZwQ7LXDZhhozPyO1L5a0kz5uW48lDGS911XGbK6I5NycSqfRWD3bU
 8uLHEIscvJqRZ/y4x9Nh6z5UAF8fOppcW1boRED0l6Sqq0CpXRSjiNME38HjE8mOUyy0
 MWYBiRtZypcsvKJMIsNNBhFwgJP9vDKWNS6xCqxMXNYEwWLdlEXU0c+QbRYL+DkQSf5L
 bLcQ==
X-Gm-Message-State: APjAAAVNKn13TaWqYP6JyEj3FhygJuwbZ8qpyrfbzDiFbNeIaIrOkvFG
 JptInYS8J8kgVBnX+piiv2jF4ZCEa05dljON8OI=
X-Google-Smtp-Source: APXvYqzVOuz4VOsLhkc8YTufGND1jjwArsxRuKUoHzscIuXxfusDClP5+wUXXUMLe5wT6EW+hBj9NijsRym/f5FvRGs=
X-Received: by 2002:ac8:424f:: with SMTP id r15mr28256802qtm.71.1582234619657; 
 Thu, 20 Feb 2020 13:36:59 -0800 (PST)
MIME-Version: 1.0
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-4-anarsoul@gmail.com>
 <20200220135608.GE4998@pendragon.ideasonboard.com>
 <20200220212120.GA24526@ravnborg.org>
In-Reply-To: <20200220212120.GA24526@ravnborg.org>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Feb 2020 13:36:46 -0800
Message-ID: <CA+E=qVfFJn_Nx+-2=m8uDk+yisJE0MrsXOEPURqzmbqVLZmEKA@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: Add Guangdong Neweast Optoelectronics
 CO. LTD vendor prefix
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133705_385348_983B950D 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Torsten Duwe <duwe@suse.de>, Samuel Holland <samuel@sholland.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Jonas Karlman <jonas@kwiboo.se>, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 1:21 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Laurent.
>
> > > +  "^neweast,.*":
> > > +    description: Guangdong Neweast Optoelectronics CO., LT
> >
> > Google only returns two hits for this name, beside the ones related to
> > this patch series. Are you sure this is the correct company name ?
>
> Seems legit:
> http://www.eastbl.com/
>
> But maybe their chinese name was better a basis for vendor prefix?
>
> Guangdong New Oriental Optoelectronics

They call themselves "Guangdong NewEast Optoelectronics" in English,
so I think it's better to keep it as is.

>
>         Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
