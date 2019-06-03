Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75ED33454
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W//Pop8jufvgaiMUNoFxXaqUGHPVqZfIUeirQSwHU1Y=; b=QnS2iKHiqNPQqh
	CO2P36cpooPlVWOZEC6PZF7hYYDjZeyjPmBF2l3yuOLjTr4CRruEES6Vw2j3UDQkaCDFLDHggzwrw
	hoS3dA2Onnn3GZAIfS/d+qdNePowuAgsyBMkLclPMwhU5TS3tT7J3ZJGIVdr8vGE6C2GWH0w+QOX4
	pN6VmHtEhPK06HCWWCKJ0YB54lt/VAPRFvu+pxhE0H5l2sYjggQASVlY+mPJ3BK1pIY0ANs1wh7xm
	ACLqCfEaJGXyG3jZg9ceiOK4ctasGwSVmuctzYqCZJ1V/z1OGvWuNO/Z0MuSW30Da0fO0yFaRx3h9
	LTHtSbLcAZBstUFVzWEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpK6-0002Eq-I5; Mon, 03 Jun 2019 15:56:34 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpJk-0001wy-Pa
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:56:26 +0000
Received: by mail-it1-x141.google.com with SMTP id a186so28341728itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 08:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cbGQBnJeaRGv6ajJJGIzuBiVBbh+VlWtI63dl/Lnkko=;
 b=Sh8raQlzVzdw4PULSC/mogzcqFkWKwBBgV6cLRMCwsJEYD850vyQys6ZgUR7Gm5J4W
 mcCxIuhNZQBOUevcvwIuV2IehFqN8+LsfxW1BF8ziMs9i1oLjg25ncDcDXgrz6eMv5ym
 LwZW9xQU/OgsCR3IPYqAY9Z55tKswE77JQshFFOJzEI5F71VrBNcbptKnbw7vcPkJ47X
 Mictj4iCCWFVFmIdsZl5qNq2pEV87wuGAVAOE7jzOHBP/AEjX+mjIsLWxu0GvuLAoSCa
 IgH2re+ZISlry2y/+p1DYlOse5xe7XARYaiXaIb+Y+Jx8GFuaSpnwFxaw002IrrcGRBQ
 GSDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cbGQBnJeaRGv6ajJJGIzuBiVBbh+VlWtI63dl/Lnkko=;
 b=aAvq2lydTVtBouf0inORAk+btAcB1YLH4uGqTaqMUaYBRpej4Un/3q9ZeIoMbPpswa
 6cQ2pVixWQi9f79DYlHPKkGoKohkbNsbcGxaYpompJC+SInHqC+2YpzC9Ur5q2YkCaVk
 DanI2mtxthYqr7fOHu1Psj/Rtf+eEEg9aQXn3XRfx7yZons0w6hxX9qPemqc4gUUbKrB
 LizYUPI+agaUEWTRmXcfZNmYenoRtUIBZYVVd3r9OU2pXVd2+6q+iVlFHQ5q8m0MW9n/
 rNq1pUjWqF1plaQI6t8Gk77/AZx7LoMKdOv7d+ANODyDxNTEkGR4rBMwChvTIYrnjodE
 S3CQ==
X-Gm-Message-State: APjAAAWwoBFAkxzwaYCTxlsFZXcd520Rxn+9EmzFLZS71DlOikwbUi0m
 NMZWeH43ZWUnBoCrsG43uQy7xmDEX7cfUOQTQZiK1A==
X-Google-Smtp-Source: APXvYqyNIUEIC4FJstcSw0ast50jY8Rc7M6z+5vxyipKpUnBdP9XGbW2up/SGXXWPzJQkN6LZK3sTc718Whw8rZYhVE=
X-Received: by 2002:a24:740f:: with SMTP id o15mr1823315itc.76.1559577371376; 
 Mon, 03 Jun 2019 08:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190530111634.32209-1-ard.biesheuvel@linaro.org>
 <20190603110832.GA2781@lahna.fi.intel.com>
In-Reply-To: <20190603110832.GA2781@lahna.fi.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 3 Jun 2019 17:56:00 +0200
Message-ID: <CAKv+Gu8rTernjct93rsWo0X3FTp6bsV=0JvNGQr8C8OaqB1S7A@mail.gmail.com>
Subject: Re: [PATCH v2] spi/acpi: enumerate all SPI slaves in the namespace
To: Mika Westerberg <mika.westerberg@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_085613_546346_9F5FACF3 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lukas Wunner <lukas@wunner.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-spi@vger.kernel.org, ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 at 13:08, Mika Westerberg
<mika.westerberg@linux.intel.com> wrote:
>
> On Thu, May 30, 2019 at 01:16:34PM +0200, Ard Biesheuvel wrote:
> > @@ -1948,7 +1988,8 @@ static void acpi_register_spi_devices(struct spi_controller *ctlr)
> >       if (!handle)
> >               return;
> >
> > -     status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
> > +     status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
>
> Would it be simpler to differentiate here between Apple and non-Apple
> systems? Then we don't need all that special code and the above becomes:
>
>         depth = x86_apple_system ? 1 : SPI_ACPI_ENUMERATE_MAX_DEPTH;
>         status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT, depth,
>         ..
>
> Probably requires a comment explaining why we do it like that, though.

Yes, but note that both the root and the depth are different in this case.

I'll play around with this idea, to see if it simplifies things.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
