Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E979135F11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bdi9iuNXhD4X4qjbPgycyXI6s7/U39R+LIIdIReTadg=; b=HofUHcQioolXMb
	feyFwUuYiWrGhdYM3dCP1Q5Q4hTCQmE4nzpXUU2t9WLMZEf9cG5LKNz9P8VTPN/HKe4twyaXEJxpc
	SqSZlWsKUWhvUVPfWlBjd4eAuB5dq2EwkOFPhFRdk0uLAx0CUpTlplL7mF/ie5pGXTxD5qoJYiQbe
	IwVc3bJ0q2756G77HSsYz9P+B3C3fCTAxt/NRlet5yN5nlXCGZoX5vRGUG2DUGN3t2+zUArUm+zNr
	vjq8lzRU+uJr1TUrsy8uEAEs4ouReqgtGnQItGShtfXdJrsezLCxnp1l0pd1RSl4t7bG06AwFTyV3
	iKqK3HhGH6EiLxPlPLBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbOS-00024K-KK; Thu, 09 Jan 2020 17:14:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbOJ-00023a-PX
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:14:41 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E4E42073A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  9 Jan 2020 17:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578590078;
 bh=Dch1iGkhTV+eYdJdzZBn4xYXbKV8xPq0X3G4VgsfXEM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=C4n5O6/0S00QhfNWP8s/GpLMHcZE7jx9perbLBZwGrsT8my8StFTHdlaxcxFfQMMc
 ya6pRTPRNoPiGxvt8flGOMw9aLD5wl7eBnc9S16M2UgVsyX2yS4yJU7FS4zNqrg6O9
 cSzCZhFCkoZw9SuoYtQQ1jNBPQH47Yh4XC0uWvJE=
Received: by mail-qt1-f177.google.com with SMTP id d18so6449716qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 09:14:38 -0800 (PST)
X-Gm-Message-State: APjAAAU6tZkZX8rRre8NbgSW1vNm44FsxpYfOzSLQK3caicU2tEs+h9/
 gEdcgUz7Gzo6pXQKfToe/4+WI6+N3GYi8PhWJw==
X-Google-Smtp-Source: APXvYqzapBWqvVlPCkoZzEPyI6taChV5dThBfHj/lQBiEQvTNIevbWEXIyuSW398SFqpdsfSbqSBDGVgQxNPtTh73oI=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr8935081qtp.224.1578590077587; 
 Thu, 09 Jan 2020 09:14:37 -0800 (PST)
MIME-Version: 1.0
References: <20200103152801.47254-1-maxime@cerno.tech>
In-Reply-To: <20200103152801.47254-1-maxime@cerno.tech>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 9 Jan 2020 11:14:26 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+nVOb5+yg=bOJMyOocJD6kst0BX7NGhZepNtm_B_35ow@mail.gmail.com>
Message-ID: <CAL_Jsq+nVOb5+yg=bOJMyOocJD6kst0BX7NGhZepNtm_B_35ow@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: Convert Allwinner display
 pipeline to schemas
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_091439_868282_BFCD9230 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 9:28 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The Allwinner SoCs have a display engine composed of several controllers
> assembled differently depending on the SoC, the number and type of output
> they have, and the additional features they provide. A number of those are
> supported in Linux, with the matching bindings.
>
> Now that we have the DT validation in place, let's split into separate file
> and convert the device tree bindings for those controllers to schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> ---
>
> Changes from v2:
>   - Changed a number of maxItems to minItems to make more sense
>   - Fixed a few enum that were improperly declared. This raised a bunch of
>     warnings that were unnoticed before. Fixed them.
>   - Added an if clause to the HDMI PHY binding to check the number of clocks
>
> Changes from v1:
>   - Declare the ports in the bindings
> ---
>  .../allwinner,sun4i-a10-display-backend.yaml  | 291 ++++++++
>  .../allwinner,sun4i-a10-display-engine.yaml   | 114 +++
>  .../allwinner,sun4i-a10-display-frontend.yaml | 138 ++++
>  .../display/allwinner,sun4i-a10-hdmi.yaml     | 183 +++++
>  .../display/allwinner,sun4i-a10-tcon.yaml     | 676 ++++++++++++++++++
>  .../allwinner,sun4i-a10-tv-encoder.yaml       |  62 ++
>  .../display/allwinner,sun6i-a31-drc.yaml      | 138 ++++
>  .../allwinner,sun8i-a83t-de2-mixer.yaml       | 118 +++
>  .../display/allwinner,sun8i-a83t-dw-hdmi.yaml | 273 +++++++
>  .../allwinner,sun8i-a83t-hdmi-phy.yaml        | 117 +++
>  .../display/allwinner,sun8i-r40-tcon-top.yaml | 382 ++++++++++
>  .../display/allwinner,sun9i-a80-deu.yaml      | 133 ++++
>  .../bindings/display/sunxi/sun4i-drm.txt      | 637 -----------------
>  13 files changed, 2625 insertions(+), 637 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-frontend.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tv-encoder.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
