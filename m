Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E67F13385
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 20:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzvYjsYG8oqQSFOP4d1zB/IdEmbSNYbozhxyX1G7oTs=; b=YDwJ8xJRHfncqX
	k1J0eJaWON8YpjBqQwFAvYH7ewRxa7YP5yC9cY3Qx8R71qGSI3PkVqQ8ZtDVfATktmye0bhIWTeGW
	R2lmNK85afCSOX8TyC8KLDHI7ynYu0IQYl760r2SHo0SaqDfYrtaGFMTLiG0bY9reN+PzcDFqA2AU
	4tLNpIxGe2dEHHqdVC7kkbdlbn+Ti9pzaQm7ZUFjRK4Oi/bRMoKFlhgBnWIsPDxhXT2jtIHQiYdmj
	pAWO64RfMwH+ZNdKbCbv9xOqU11Znlpczk3nThmw87Y7vi4MeYaQJ+pYoHLqqUf2G8U0+n00qrpHq
	OyCLHkKAXi1lqAaS43Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcgb-00079N-4t; Fri, 03 May 2019 18:13:29 +0000
Received: from mail-ua1-f65.google.com ([209.85.222.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcgT-00078O-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 18:13:23 +0000
Received: by mail-ua1-f65.google.com with SMTP id u34so2335197uau.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 11:13:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3gjzOmwtBtfKqkGn3S2GmjBOVaVXE+wt0Qm+gLbvmMQ=;
 b=pkbmjKP3OdzlBD5nZLd44ImfEMUcSN1ILYdJPJV8Xm8ZpIgzjrDTXzyOw8pONLI6VH
 C4lwZOFQJM5VgPOBDx8y5jptPwr9nnsBjT+4l+qO12Y8ZVZ+oPZCRPfPVE8yuvhP3WRF
 2bK12JIBEKIcJBhsyaIDSkaCbIOnqMxewl3941uPce0wXKDa2ul4E1yfDvHHXcsbcEvr
 J0sAW3DftVjUWlWpIktfAgWpburYlPPP0LvEgF1Y7Qrpv3pN0oAMP0tLV/sA4FwfZV/e
 nUZKVbpJ3PEAJeD5WczI5cBHe8/rQ+tRIp3TvS41njaSs/UaiJXzXwmewyuu+NmGdqz8
 tW6Q==
X-Gm-Message-State: APjAAAU3LALY0cCvHcFq3nmLd7EQYCu/teDtwqh4/elg8/dFlRQCkq39
 HYaJwWX15hH1a5jrii59NhsM5YoYLdWjnRVVlVQ=
X-Google-Smtp-Source: APXvYqz/BkTb3TnX2KzjbmuMueVosaqavf6OJGBUk3o3HyYsAgiApYixzerzW/uL8CA6Lgv2gbHMFx5R8CMU+WsHD/s=
X-Received: by 2002:ab0:d89:: with SMTP id i9mr5851213uak.96.1556907198361;
 Fri, 03 May 2019 11:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190502140634.4529-1-marek.vasut@gmail.com>
 <CAMuHMdVGAq1XgSohBjc8i4c_o-N-yWGedS_LLS_Apr4Bx10xGQ@mail.gmail.com>
 <fa79e656-d71a-6f3d-21a5-8acac72e20f0@gmail.com>
In-Reply-To: <fa79e656-d71a-6f3d-21a5-8acac72e20f0@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 3 May 2019 20:13:06 +0200
Message-ID: <CAMuHMdXrK7CMhBjFXAYX4wUPK=4Q2LpBCu+65-t5Y7-VjEBsog@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_111321_951962_2F05A129 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Fri, May 3, 2019 at 5:18 PM Marek Vasut <marek.vasut@gmail.com> wrote:
> On 5/3/19 2:36 PM, Geert Uytterhoeven wrote:
> >>  &rwdt {
> >> @@ -309,6 +314,8 @@
> >>  };
> >>
> >>  &iic3 {
> >> +       pinctrl-names = "default";
> >> +       pinctrl-0 = <&pmic_irq_pins>;
> >
> > Given Blanche has a single device connected to irq2, I think it makes
> > sense to move the pinctrl properties to the pmic node below.
>
> It makes blanche somehow inconsistent with the other boards, but if you
> insist ... ?

Typically the pinctrl properties are part of the device node that uses them.
For the other boards, that's not possible, as they are shared by all PMIC
nodes. Hence the other boards are the exceptions, actually ;-)

Note that for multi-PMIC boards, adding the pinctrl properties to a single
PMIC node won't work, as that would break:
  1. The case where the driver for that PMIC is not compiled in,
  2. The R-Car Gen2 regulator quirk.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
