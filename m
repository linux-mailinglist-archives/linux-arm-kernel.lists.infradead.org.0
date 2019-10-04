Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E2ACC057
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAb9dGe+sHD4OENDg48AKu+/tPUOzQW8s59wpoOhQ+o=; b=ft3viVkEdYI6JN
	TempKQs3djY5AcNQagHTFIXURcFT3FTZ5uEaTGNjIDy13+IGzE8i+lNt8AK2CQAoa0QBxni4I7h2H
	cVG+Cf26En++RhRfpXGg+suht/Q0QoVZfuCiFofar2ImVIpj0WK+e39dS0zLrFI0xC+Hwiqx+5t2E
	EivRfOTzUEhX3QcIR8yYb7CnVgaxedUzlBMjf1npztxa9t4UhecLVkh1w8mI4VnnLEG+uPOenstBn
	a0kYT5t7ii+3ApEvCVcYg0kuFFv8PoPZdDA9Cewrn7NrYXIIOMT8KftYlZdxWjI5z05ixZII+MReU
	ScQXBYg3mpxn3Ia+SIXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQEc-0001jT-I8; Fri, 04 Oct 2019 16:15:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQEJ-0001i5-Cf
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:15:00 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6894F215EA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 16:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570205694;
 bh=R5sSirwUbEkqcu4d1r6lkTNzDq1obCEV8XM1j86dPs4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mWLE5C6mhG6IzW9QjIbm92y0poURo1jhbA2Lw5QuTrbTZbTKnH01WvE3aGhA/f7tF
 RXMUNDRsfXW8aSHRHFS/F3jN1yxyrVBWFiM0iyrPTG0HIjHZMBUjDl5KP6YtMlCz2/
 kMaaMTGnY4lnCKdbjKeOtAnOyE8wWa4VXouzXxcY=
Received: by mail-qk1-f173.google.com with SMTP id y144so6286333qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 09:14:54 -0700 (PDT)
X-Gm-Message-State: APjAAAW3nxRdhEr9uBd3KTNyq6dr7RTWTnIpiEfUBsAd8TN0LIIGe7tp
 hdfepYCSCyAQMt+Acfkarr7CLFiV/4IKbZ3b5w==
X-Google-Smtp-Source: APXvYqz/kmnAhT2fOXDnY0OfmKw4xGmJxsKKNwku/uLv+v2VfNMmt/d91t0lQQbb2yu77oqQYoqTZiAxYEctjkRy6aE=
X-Received: by 2002:a05:620a:549:: with SMTP id
 o9mr10924164qko.223.1570205693580; 
 Fri, 04 Oct 2019 09:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
 <20191004142738.7370-18-miquel.raynal@bootlin.com>
In-Reply-To: <20191004142738.7370-18-miquel.raynal@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 4 Oct 2019 11:14:42 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLQ+mfdDoTMiN8T3-0+LAv+rU=G6qVOvEcKb4beWGTWmw@mail.gmail.com>
Message-ID: <CAL_JsqLQ+mfdDoTMiN8T3-0+LAv+rU=G6qVOvEcKb4beWGTWmw@mail.gmail.com>
Subject: Re: [PATCH v2 17/21] dt-bindings: marvell: Declare the CN913x SoC
 compatibles
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_091455_453715_00A130CE 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 9:28 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
> Describe the compatible properties for the new Marvell SoCs:
> * CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
> * CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
> * CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)
>
> CP115 are similar to CP110 in terms of features.
>
> There are three development boards based on these SoCs:
> * CN9130-DB: comes as a single mother board (with the CP115 bundled)
> * CN9131-DB: same as CN9130-DB with one additional modular CP115
> * CN9132-DB: same as CN9130-DB with two additional modular CP115
>
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
