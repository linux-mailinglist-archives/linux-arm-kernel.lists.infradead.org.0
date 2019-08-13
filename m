Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5818C3AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7heeIghHyA2y7t+EHB+D4Z23bG6ymj0l+A/NF1djjZI=; b=K2DT+snSI9eT2n
	1QIg8CHnkNCM4M+fnPdou3bEJPGvtRpbUmCSeH7+qWcuN6BkdSkJJHlEyo5vVhPSfHnuKsNOW+ckr
	HlYq8F230vtDPFZSRUTWnESgJQqnfQ6Xlu5kSPIQPVsN3vuHnddCiWOCrb2SG0lAfQ3gnjF9QZaKZ
	eVSy6QDdawubXTZWw0/tpWhebxAneDmybFSfGjSYlbRrwBNlcPtkV56/2HhElM42QwbENCykVB8WT
	aQD5f294NNli5V1ogYH7fhMsfEZQvAOpItuNLESLxorFFT7nCF19vsKjYywngxMpB8BC63xKdiYUY
	rvw81deZe8Zk+Ak6Fs1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeL8-0007LY-1Z; Tue, 13 Aug 2019 21:28:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeKz-0007L6-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:28:15 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5880E2084D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731693;
 bh=8jkWiBOKvCTyXhGYCXnRrjcLUKDEnMsamSfGEyFzJoE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ViIAHHfDhraiK9pWAosKVYxwPNkGeqD7S5Bbuu6clK4kisNhTvyqtC+iJ0BZ1pZ+A
 zIRkcDQz94IJO0DTa9v57Nv8OzvoDXDkgYDbm8dJ3p1CL+SLlo0Mo9SxJ52aOtzcJy
 5B3a2RvT8Kbk9fqAn4Syh5XpFPO508kamqR/eAV4=
Received: by mail-qk1-f174.google.com with SMTP id d23so6116597qko.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:28:13 -0700 (PDT)
X-Gm-Message-State: APjAAAWfIbmW3SR8F0O+nKl8/yyiRlZw1pBRdRksDHx7njTac1DabhdU
 AQK2FMqYjkHEikdbmEbouMDn4KnRTDzLW4Cwgg==
X-Google-Smtp-Source: APXvYqzaipedO3/eiAs1OzzKcswroOaLDbbRD4qdZTpHO5+hp1kjxBebIssMQ25LK/FM3EF2avxUcojclBfrohsZkQY=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr34614965qke.393.1565731692535; 
 Tue, 13 Aug 2019 14:28:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124744.32614-1-mripard@kernel.org>
In-Reply-To: <20190813124744.32614-1-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:28:01 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+QxsxxCsaJ8GjSQhKVHnas3WqjOPnv86=-fWs143CUQg@mail.gmail.com>
Message-ID: <CAL_Jsq+QxsxxCsaJ8GjSQhKVHnas3WqjOPnv86=-fWs143CUQg@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: mfd: Convert Allwinner GPADC bindings to
 a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_142813_848263_58CF7D06 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Aug 13, 2019 at 6:47 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner SoCs have an embedded GPADC that is doing thermal reading as
> well, supported in Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../iio/adc/allwinner,sun8i-a33-ths.yaml      | 43 +++++++++++
>  .../bindings/mfd/allwinner,sun4i-a10-ts.yaml  | 76 +++++++++++++++++++
>  .../devicetree/bindings/mfd/sun4i-gpadc.txt   | 59 --------------
>  3 files changed, 119 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
