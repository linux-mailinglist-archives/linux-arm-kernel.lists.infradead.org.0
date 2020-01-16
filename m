Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8604313DCF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbkOB3Cbxs5HnuYhheXXZN57UtZ3iq0k+Vvg+1ov1NU=; b=PH99gqEXEuKLbn
	FexpEulBy2UsHnRuZjOgQoyyla/M08mkNtTmvK19dlKdpXTJloNmheSu118ImaCT21A++tf6R2wBR
	QOJ27CbWXiRIeWvfI51TtJlI7cgFoctESqJpBu6CcX0+d2ahkYQ18eC2XedeZpiyAL1lQfr/9bkmb
	iGEzr47+0rpue5WPqTORJ2Zaw5eDoO+urccl12zTgwVpgZj+PGou/HTeQEVFarlvpDuiP/SRH60+y
	lTAHdDyc2MnQFpx9FtHIzmBg5duCJgzWainO/HyOAXdIwwnFxfouMXBjjOLm9fX7GKXoB8llGfHw3
	otjCyLVOdRuMGIPyIR9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5oy-0001MX-QR; Thu, 16 Jan 2020 14:08:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5ok-0001JY-Rb; Thu, 16 Jan 2020 14:08:19 +0000
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A5F72081E;
 Thu, 16 Jan 2020 14:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579183692;
 bh=ZxkxbPI6NB+qslqenM1VguIV+ka+agAz0tPoV5Dlv88=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Sbzl/C+9E3Romi6TePNREX+gQjoxYwdnxEMR5vQElQWkvqLhrESPM7k0bHWBgn+yU
 vyISsyebITJCQPzWBfQ5JvKfbuoe64kto7/6FeFhrlhLPKYtqMoaVu2nPuDGHJo/ZJ
 +RKjDnua8QaOG0KpT7pgHsA1qYXlXKt5d0POj8pY=
Received: by mail-qv1-f51.google.com with SMTP id n8so9075537qvg.11;
 Thu, 16 Jan 2020 06:08:12 -0800 (PST)
X-Gm-Message-State: APjAAAU8QWC3ouJG7Dd/hXIFitL0ZIWLPqRBQKsmCJf204fBNtNT5arE
 A/ykwVBqbzgNqhBP2FVFGb04gGtYvMRXzmKH+A==
X-Google-Smtp-Source: APXvYqx0fiWdQh99DDa9iyjEeQMVJwq4um15JGwrzKiS3meVyPIMlcnqQ5A6IgAke6Qr+dljfrbL0MMk6QxnsO93Q3k=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr2644594qvn.79.1579183691461; 
 Thu, 16 Jan 2020 06:08:11 -0800 (PST)
MIME-Version: 1.0
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <20200114213809.27166-2-jbx6244@gmail.com>
 <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
 <203e9217-9aa8-b65e-4411-2d9b23c1362a@gmail.com>
In-Reply-To: <203e9217-9aa8-b65e-4411-2d9b23c1362a@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 Jan 2020 08:07:59 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+cJd0Ht+4FNX9RjbZL2vHjF90+G-v05XuyxrT7Ng15sA@mail.gmail.com>
Message-ID: <CAL_Jsq+cJd0Ht+4FNX9RjbZL2vHjF90+G-v05XuyxrT7Ng15sA@mail.gmail.com>
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_060814_918928_E7B6D2BA 
X-CRM114-Status: GOOD (  14.95  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 6:00 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> See below.
>
> On 1/15/20 4:18 PM, Rob Herring wrote:
> > On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
>
> > [...]
> >
> >> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> new file mode 100644
> >> index 000000000..6f85a21d0
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> @@ -0,0 +1,88 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Synopsys Designware Mobile Storage Host Controller Binding
>
> [..]
>
> >> +examples:
> >> +  # The MSHC controller node can be split into two portions, SoC specific and
> >> +  # board specific portions as listed below.
> >
>
>
> > This split doesn't work because the examples are built and validated
> > now. It may happen to because all the props are optional, but the
> > board hunk goes unchecked. So please combine.
> >
>
> Hi,
>
> I have no knowledge about this particular hardware to give a realistic
> example. Could someone advise here? Or should I just use the first
> example for now?

Just combine the first part and one of the the 2 board hunks. I don't
think having 2 board examples with the only diff being the dma
properties adds much value.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
