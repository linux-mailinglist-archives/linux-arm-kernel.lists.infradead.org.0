Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D0F1FD5F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MsF2qAGZF7BOGt7zVi0tpLApRy7no/MbBZOwb92Z60=; b=XcO2drkIbBrg5i
	twLpPOIUIPEOIr45rvLM6rFGWwKOG2necP2sMA/+LXgRU1wo3mwLdYXWA+fWe8r3IpfTYeMjuJPJu
	WIUV1luJYa0BqR56YdvDWcC5rhI/HZlyWA7ilgVYh+1UP3fKawW/nMBf04xhF3aPfPNb4o6HalV0m
	ALoc1AWm37HmkUkhEuTt0HylZnwe7ysc7DVBTQQ2bmZi/r7Yj6kmm9CmZHFuC0iT64A7dBGTKpJBV
	8j7LQHTX9eI9RA6f4addF3lfF+A9v0oM8z4ONxfvxDJ12F7wCggUGLduqZcXqau3fXIKbeeIp2Gg/
	jCTva+9R+nn3rrQkJDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleZc-0004tv-4L; Wed, 17 Jun 2020 20:22:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleZT-0004tS-Qw; Wed, 17 Jun 2020 20:22:09 +0000
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2305C21532;
 Wed, 17 Jun 2020 20:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592425327;
 bh=xNE9XSOvhghCOem7BB7ItlRidhpb63R/mvntoncsZiY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cM/8adJS/CfoBabKgs5smCjZMrm8f4R2wBu/gfpLBZYw+kKE8o3U72M3S583OKTjP
 PCrAgGaKQQvjKKN85m9N2/+zEAPa/OWP+SnRpU8VVUEdGURnzSYRgx2brhjdwglSNO
 GbFlg7PGff1nb9Qr5CibEyTntz1Xma5RKY/dSU2Q=
Received: by mail-oi1-f172.google.com with SMTP id b8so2985424oic.1;
 Wed, 17 Jun 2020 13:22:07 -0700 (PDT)
X-Gm-Message-State: AOAM532N1G961++QXcPuwC1w82llvEJD2j9kCFKv5N3947OneVvvzBXv
 a+K3OtPw65z1YZhVuUSjZ/fRFsGxN+Og8sA3tw==
X-Google-Smtp-Source: ABdhPJzi4G/SG7UPJZAtkdxWsR+QkKnM2jLwSEKoazMNV1MrKFH3VVff+tCgS2ag5HdiA3cWgQIOgK9y06+Tn3frHYE=
X-Received: by 2002:aca:1e0b:: with SMTP id m11mr388478oic.147.1592425326440; 
 Wed, 17 Jun 2020 13:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <2dc6384c945c7d35ab4f75464d3a77046dc125b3.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <2dc6384c945c7d35ab4f75464d3a77046dc125b3.1590594512.git-series.maxime@cerno.tech>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 17 Jun 2020 14:21:52 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+pZebUgG_fyQkhhbp2khVc+L-kJ2D2O8BiO6SyjfAK_Q@mail.gmail.com>
Message-ID: <CAL_Jsq+pZebUgG_fyQkhhbp2khVc+L-kJ2D2O8BiO6SyjfAK_Q@mail.gmail.com>
Subject: Re: [PATCH v3 006/105] dt-bindings: display: Convert VC4 bindings to
 schemas
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_132207_911023_9E89A452 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 9:49 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The BCM283x SoCs have a display pipeline composed of several controllers
> with device tree bindings that are supported by Linux.
>
> Now that we have the DT validation in place, let's split into separate
> files and convert the device tree bindings for those controllers to
> schemas.
>
> This is just a 1:1 conversion though, and some bindings were incomplete so
> it results in example validation warnings that are going to be addressed in
> the following patches.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt              | 174 +------------------------------------------------------------------------
>  Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml         |  66 +++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml        |  73 ++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml        |  75 +++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml         |  37 +++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml |  40 +++++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml         |  37 +++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml         |  42 +++++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml         |  34 ++++++++++++++-
>  Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml         |  44 ++++++++++++++++++-
>  MAINTAINERS                                                             |   2 +-
>  11 files changed, 449 insertions(+), 175 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml

Not sure why my checks didn't catch this, but now linux-next has these warnings:

/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.example.dt.yaml:
panel: compatible: Additional items are not allowed ('simple-panel'
was unexpected)
/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.example.dt.yaml:
panel: compatible: ['ontat,yx700wv03', 'simple-panel'] is too long
/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.example.dt.yaml:
panel: 'power-supply' is a required property

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
