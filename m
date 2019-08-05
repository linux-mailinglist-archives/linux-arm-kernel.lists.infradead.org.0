Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB3C82734
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=190WDXg9flnUeth3FxKEKDIB1sT+yFI6t5g+4DqW79Q=; b=c06z53+UPC8IU7
	F8rti9mwHgI+G9/YHobm01hNxcxOYSgyn1etaDnosUu1x9NGrKTHmnNkVmuFO1c9HQBxGXzZi2vD4
	y0A9b+m8DJXP4WhuYDXWJmEBSXpYA8wuNdmD+TAGubQrGj0afIXDelYsTNgrZ8vtvJsuSnhTEtFjt
	N2YPELsNmQSQbrA0XdH+JIF7CS8G/8ZxKevnEPtji/VNRFKJMxdMVfH/8JOWpmwOp0dcffmWIzo+n
	ovoicmWx0v1pYXPUgO6qx0C1kDp2DdMcyGiCQyxVCPtoyn2II/idI56ieAmbVq1gp4ZkQKF1Ds4hq
	/nJEmBs/1HGTvqKOgEPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huktb-0007Hd-UM; Mon, 05 Aug 2019 21:52:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huktR-0007G7-A3; Mon, 05 Aug 2019 21:51:50 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE31C2173B;
 Mon,  5 Aug 2019 21:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565041908;
 bh=MgPcfIWpdlyaz/4ct/wZ0UcAXhmKA32yt1LEiLncyHQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KQh6zDK9Ke23uQWuSJnKLlcaV8wGQ9Ki7/RxGeNJG9RUBBXMZn0+63YFm+K9E+xql
 6bhuvGqHcONsTuyp0uF8f8i5f3DF08y2girPhRLMhu/iTv0Sv5+5/FgkCgWY+o9RD9
 6lL6tcSzP1tJKQ3S6y3XVc1Ly2ZfjpXzPKu3aURU=
Received: by mail-qt1-f173.google.com with SMTP id x22so9139995qtp.12;
 Mon, 05 Aug 2019 14:51:48 -0700 (PDT)
X-Gm-Message-State: APjAAAXxeikg/atHJrwzHCbtTXEsw0Im+u1YcMD3ezP3IPNUDMz4+nv0
 wZbQAj3hMuNOmEciQzMlh97knxh5JgEjU6Arww==
X-Google-Smtp-Source: APXvYqxZCbKR4+PbJDpQLUsmi/4xl7NR/p4fqmhm9SFCdgM1DYmSwogal7/7LXK8ld8NUdCwOW78bsSs41kuNcTohmI=
X-Received: by 2002:a0c:acef:: with SMTP id n44mr147329qvc.39.1565041907997;
 Mon, 05 Aug 2019 14:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 5 Aug 2019 15:51:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJzwtSXX0nrS7RBP8u-e=16SiWOBjLrvy8Amc08PfpXag@mail.gmail.com>
Message-ID: <CAL_JsqJzwtSXX0nrS7RBP8u-e=16SiWOBjLrvy8Amc08PfpXag@mail.gmail.com>
Subject: Re: [RFCv2 0/9] dt-bindings: first tentative of conversion to yaml
 format
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_145149_368067_DB6324A2 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 6:03 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This is a first tentative to convert some of the simplest Amlogic
> dt-bindings to the yaml format.
>
> All have been tested using :
> $ make ARCH=arm64 dtbs_check
>
> Issues with the amlogic arm64 DTs has already been identified thanks
> to the validation scripts. The DT fixes will be pushed once these yaml
> bindings are acked.
>
> Changes since rfc v1:
> - Fixed bindings according to Rob's comments
> - Added commit log
> - renamed yaml files using amlogic prefix
>
> Neil Armstrong (9):
>   dt-bindings: mailbox: meson-mhu: convert to yaml
>   dt-bindings: rng: amlogic,meson-rng: convert to yaml
>   dt-bindings: spi: meson: convert to yaml
>   dt-bindings: reset: amlogic,meson-reset: convert to yaml
>   dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure: convert to yaml
>   dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
>   dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
>   dt-bindings: serial: meson-uart: convert to yaml
>   dt-bindings: watchdog: meson-gxbb-wdt: convert to yaml

For the series,

Reviewed-by: Rob Herring <robh@kernel.org>

What's your merge plan? Do you want me to take the whole series?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
