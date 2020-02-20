Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2593F1669F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DTL52wR020gINVp+b9PWFWUqao1wYki8hQdLhX2mNg=; b=lM6CSlayEIpeFx
	U9RyUgOQN1YppXziGR4sCYcYzvjTsZ+ovrq05EQ0jyqMd/lhLXI6+svu4sVFncLSiCsVx8o/Kydsm
	4KhSmILAdHk4jWbusev6ia8oLi8KlMVZuOKPUussFzfaWEgReCu9J8JujRWc4lvKsj9kDgrZfjmU8
	atqgVprD++H3T5FWGi3ysv3cY/EbzFptkGHgbl85dgZRE+9dwTHVg1UdTkT0VinLXmtyfUdZroDaZ
	yBEeHw1xzCMJVSLWy+cfoQSgxnj4DruP3NeYM366IEnmKmdm5X9B5xpMlwyGVvsi2Vzo6Dqft2mZY
	YtQawqeeQRsRy9z9OvAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tWF-0007M3-PR; Thu, 20 Feb 2020 21:38:03 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tVl-00079L-AF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:37:35 +0000
Received: by mail-qk1-x741.google.com with SMTP id j8so5025858qka.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AYj5LNpCUCCnBa2oy1JmbMYUv7Pxu05SUX364TAcUFQ=;
 b=D531YR+wxORn5yMqquYHuw0LOWJwbMGqJ/HNHEyXBvdaX61mb84C66r8YuwEn3FbWt
 B/4c623opxfVqQ+1xjlyGZUz1cj4ayk53VLlmQwfrriCzxb33kj2nNxvYuk1dMe2nX61
 l3AU+Tji7SjC591I2p8T9VMcXTtwLNlxZBdUZzHGQQRX0OIgYU0bKXkGmYdNWOFO3DSi
 n6lUEqkPx+kB698msH6xwbOr0YZFMTxcQGTpEqDjyHB4k6ZX2WksZV05JoWvHdAbMvuq
 spgfJOviI3N/k8F6SjsJ5Jq4wq3N7rNdG4rv0BPhG2hNi+8F2rSq252ySBXhEcw7BNvt
 YtiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AYj5LNpCUCCnBa2oy1JmbMYUv7Pxu05SUX364TAcUFQ=;
 b=fRPso3pRjWKmbWg0uUxIHuWDh46pcDOCgV0dR2fjWGp/E/0A+qoPM24YeH/RQYnTSs
 SVowmpZ35kAg3mfiHq8GB3uvb0keHABaBcgEwpedL4EAtluley96C7KwomXxaX/xCEnL
 gHeLlK489KVMMDhdFffPjWdZ2UO0HEo9GNmmUOXCGGpXKS5cL4NhnXjspfagbL8uSwne
 HxqlUXR6h1/fuv5IysLApokh5QoMlrCSo4LfUYj2MxITCOv6A9SDDTBpATvgerma74J/
 0HiC+/2aMAhH7g3+M9+83KnsJOdodny1ZoEN2XsSpEbBJmnesQmYMuitaqM/Cabmzn84
 syQA==
X-Gm-Message-State: APjAAAXcV7TX9m65WTI2qbOJrBT9fFDvlj3XUxp9Ep9UUDN1emMw+BnZ
 syivVEVGrE4rhG7LR8iANegGjS8rN+BAU/E10mo=
X-Google-Smtp-Source: APXvYqwplzoe4CvRRPMOeVSyg+GmZ7Xr+hoa90z86t8lCC8IWOl3oqq6wqqyXavOdlPzo69TGu/dWGFBrsXKgjK6BPo=
X-Received: by 2002:a37:a581:: with SMTP id
 o123mr28961726qke.131.1582234652483; 
 Thu, 20 Feb 2020 13:37:32 -0800 (PST)
MIME-Version: 1.0
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-4-anarsoul@gmail.com>
 <20200220135608.GE4998@pendragon.ideasonboard.com>
In-Reply-To: <20200220135608.GE4998@pendragon.ideasonboard.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Feb 2020 13:37:19 -0800
Message-ID: <CA+E=qVeYUgPZMxmp5oHu1W8LYYqaJfEK6=L-3wadG6s-a2NPEw@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: Add Guangdong Neweast Optoelectronics
 CO. LTD vendor prefix
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133733_411684_DAC4EC37 
X-CRM114-Status: GOOD (  15.75  )
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
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
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

On Thu, Feb 20, 2020 at 5:56 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Vasily,

Hi Laurent,

> Thank you for the patch.
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
> Google only returns two hits for this name, beside the ones related to
> this patch series. Are you sure this is the correct company name ?

That is what datasheet says:

http://files.pine64.org/doc/datasheet/pinebook/11.6inches-1080P-IPS-LCD-Panel-spec-WJFH116008A.pdf



> >    "^newhaven,.*":
> >      description: Newhaven Display International
> >    "^ni,.*":
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
