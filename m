Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CC594D84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=junp5+SO1KOthGdXaaosxE5vBeKEwM6X/ycfVZHzEhs=; b=EuHJKpdp9dsgLp
	GS72LuwkiG5K6a9x66u00neXeg7J/zn+faunXYeeW49ufYnX9YdcjmhhNwLWLb0SPie7YNa/xSozz
	iEwyqePkQPBv5T6dfNKxp14aBUDme3p1V8C3pYdJ8Zphk2xnXI432rjRYXSY8LAKhDE2Mh1Xs28cd
	A86tfGF38KwYVvcuPIIv/7VCVpRhBADSyec1t4pO9c4ODoyuPyFXiCeGsTILO7jylLvFfCCobBXM6
	0ieWPC+O/KjYCJoUoJlRvlO0YdonSrpbjhEUij1uZhEwF52dOfOtCB9P/6GodiD2ZXQuELiixFF6K
	I9971ByW5QpXV+W1y+DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmzu-000886-7A; Mon, 19 Aug 2019 19:07:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmyu-0007cQ-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:06:17 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAF6A22CE8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 19:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566241575;
 bh=U2Nk8SjazRvtA6qJtd4/WFVsvVICrDmtDKqfB/oakMU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=z30n64I1ybSsDgNp7Sm/tmUI88SriuZlp+co5g3PVLQYSYmWUziTHOkiCw2NwkIwW
 ikeyRUHxAyncVx3ZadxjGD5UK8+Nt8d/eeRZPX/L7wci8lnho61vRCTUc+5sV2+Kx3
 gHouyC8vq+9nmqmpGkC6eymls4vevEj44r8vAGR0=
Received: by mail-qk1-f179.google.com with SMTP id d79so2349746qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:06:15 -0700 (PDT)
X-Gm-Message-State: APjAAAX2XN9E2lLYtEXanBXUGYNOBNOpd8anKbri4x3EGLgUYlGF+9GO
 99QF+Tnfnvf3aXBAdVGzaQaCHlWCPLKWaaDD3g==
X-Google-Smtp-Source: APXvYqzfzVyi2fwu520h4u9KLrCEutmcKpSatt/kv6lrxMdq0xYytFoYD73hFunEhVIaphJSdOw+ddGB6mJQxXmimCg=
X-Received: by 2002:a37:a010:: with SMTP id j16mr23023013qke.152.1566241574987; 
 Mon, 19 Aug 2019 12:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190819182039.24892-1-mripard@kernel.org>
 <20190819182039.24892-2-mripard@kernel.org>
In-Reply-To: <20190819182039.24892-2-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Aug 2019 14:06:03 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKKFfSifovSSfdtMh_buxnZ3ZPS5NGfi1eU8P0FE6S+zA@mail.gmail.com>
Message-ID: <CAL_JsqKKFfSifovSSfdtMh_buxnZ3ZPS5NGfi1eU8P0FE6S+zA@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: watchdog: Convert Allwinner watchdog
 to a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120616_339521_592AA19A 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 1:20 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner SoCs have a watchdog supported in Linux, with a matching
> Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Use generic watchdog schema
>   - Use unevaluatedProperties instead of additionalProperties
> ---
>  .../watchdog/allwinner,sun4i-a10-wdt.yaml     | 48 +++++++++++++++++++
>  .../bindings/watchdog/sunxi-wdt.txt           | 22 ---------
>  2 files changed, 48 insertions(+), 22 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
