Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F167BAFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfzvCxvQN5pElqq6FxRHVeoFYmb/8aPrp5aPF9nqR2o=; b=UAhE3Ci48jaMUo
	8spFi7NPWaICAio0AKdo11ubmERx74E9PrdsZCNOzLUfPLgXY6RodZB32CGWINyZvfLmt70i8wtt4
	CWnqP0JOcbN5McQm0ECgTyL557vooPhyR5lDay3dp6ERrAO0PxFOBOzMVCVJBXezVLXH26wiLHFx3
	WOBLbK8qlAPMU/4NKAmPzjXAMnuBbUCCbZWVwsFrwkFdImvBKWBk4qOtGzHmdfSDm8Js/g0/TmMV5
	ZC9hs1a/DlSoI2yEI9QC8ENSCGt1VLbaEST9HtMpwu+QMV6+R62CTh+CD6wCibZlvpHAA1EMk4eWc
	Y1VfnC1etOWlnLT04FHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjUT-0003nN-D4; Wed, 31 Jul 2019 07:57:41 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjTa-0003mw-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:56:48 +0000
Received: by mail-wm1-f67.google.com with SMTP id u25so48534203wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 00:56:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QU5L0vbXmLbZe0E3jBTU5NfJkkh9UqRqr6Mps/3EPOo=;
 b=esvgv1Hajh1iwxBnkvkMAq3iYMf5ayOTgxsWSvZVX7vSLlp4fnAWOpxR9I4vhF3NgK
 Lj2c7GMKrZs5MPvH4XnVlUNGdjXCbaOvIqHQkVxX3bWREzMNbjYpCjPTRUQNJTgHqRtT
 BbR9EbQuIu5vcVa+fXKKK3sJqozyasIJsQnLmopGF89SKXP1jFNIVOD8BaHxFGO4epQQ
 bKUCt3BPcOJLA0F8UmNqiGVyd4GbPHj+RBMl1NwGhfXijG6NvGCGzhrHYf9XvQ8+YZnL
 msJjvw0+ijOx6SX+igtazLLuoCYy+OsKHJwoOCcOSMV1OWP8+P8JxIjhrHNSYi+gr6wz
 17+w==
X-Gm-Message-State: APjAAAU0mX5IFrkwDj3a+e8UaPoGE5ct4HJcAbb3D/WtfaRKSnEqvYH/
 rEVvNWYX4rPhOp3ZfB+dIsFSeLWYKBaUSguISGU=
X-Google-Smtp-Source: APXvYqxI3SDVuWcUSNpHB6iYKBKkhycQn1kNJ3nJf+4smL6dxeHCwc7CUToIujG+dw8npCkbHpL8diEb42e4A0p/Wmg=
X-Received: by 2002:a1c:1f4e:: with SMTP id
 f75mr106666180wmf.137.1564559804817; 
 Wed, 31 Jul 2019 00:56:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190109140045.17449-1-marek.vasut@gmail.com>
 <CAMuHMdX3bP_WCYNRRMmVRPwV52e72NOZMtW8cf29Fo+E9_CvcQ@mail.gmail.com>
 <20190109165822.tmj7qbho46f7clvg@verge.net.au> <1690279.yngTTxF0vm@avalon>
 <0d08d3c1-94ec-dcbe-ad3d-b079ab2ad17e@gmail.com>
In-Reply-To: <0d08d3c1-94ec-dcbe-ad3d-b079ab2ad17e@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 31 Jul 2019 09:56:33 +0200
Message-ID: <CAMuHMdWajtaDGFFkd-GiyR_V8fnpRcn=Uuf8UQuJdcYSigivQQ@mail.gmail.com>
Subject: DTC check_duplicate_node_names (was: Re: [PATCH] arm64: dts: renesas:
 r8a77990: ebisu: Fix backlight regulator numbering)
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_005646_733505_17214E34 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Simon Horman <horms@verge.net.au>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

Bringing this to the attention of the DTC people...

On Thu, Jan 10, 2019 at 3:38 PM Marek Vasut <marek.vasut@gmail.com> wrote:
> On 1/10/19 1:59 PM, Laurent Pinchart wrote:
> > On Wednesday, 9 January 2019 18:58:23 EET Simon Horman wrote:
> >> On Wed, Jan 09, 2019 at 04:26:25PM +0100, Geert Uytterhoeven wrote:
> >>> On Wed, Jan 9, 2019 at 3:01 PM <marek.vasut@gmail.com> wrote:
> >>>> From: Marek Vasut <marek.vasut+renesas@gmail.com>
> >>>>
> >>>> There are two regulator1 nodes in the Ebisu DTS right now, one 3.3V for
> >>>> the eMMC and one 12V for the backlight. This causes one to be
> >>>> overwritten
> >>>> by the other, ultimatelly resulting in inoperable eMMC, which depends on
> >>>> the former. Fix this by renumbering the backlight regulator to
> >>>> regulator2.
> >>>>
> >>>> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> >>>> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> >>>> Cc: Simon Horman <horms+renesas@verge.net.au>
> >>>> Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> >>>> Cc: linux-renesas-soc@vger.kernel.org
> >>>> Reported-by: Simon Horman <horms+renesas@verge.net.au>
> >>>> Fixes: 9d16c4a10e07 ("arm64: dts: renesas: r8a77990: ebisu: Add
> >>>> backlight")
> >>>
> >>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>>
> >>>> --- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> >>>> +++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> >>>> @@ -191,7 +191,7 @@
> >>>>
> >>>>                 clock-frequency = <24576000>;
> >>>>
> >>>>         };
> >>>>
> >>>> -       reg_12p0v: regulator1 {
> >>>> +       reg_12p0v: regulator2 {
> >>>>
> >>>>                 compatible = "regulator-fixed";
> >>>>                 regulator-name = "D12.0V";
> >>>>                 regulator-min-microvolt = <12000000>;
> >>>
> >>> Perhaps the node name should get a more descriptive suffix
> >>> (e.g. "regulator-12p0v"), like is already done for some of the other
> >>> regulators?
> >>
> >> I think I would prefer that addressed in a follow-up patch.
> >
> > Agreed, but it would still be a very good idea. I think we need to standardize
> > names for regulators, otherwise this is bound to happen again in the future.

And so it did (patch sent for the same bug in r8a77995-draak.dts).

> Isn't the YAML DT schema validator supposed to catch those problems ?
> I'd even expect DTC to be able to catch such duplicate nodes and warn
> about them.

DTC indeed has check_duplicate_node_names.
However, it only works for the base DTS, not for any later modifications in
the board DTS.

I.e. the original dup-nodename.dts in the DTC testsuite triggers an error,
but the modified version below doesn't.

--- a/tests/dup-nodename.dts
+++ b/tests/dup-nodename.dts
@@ -1,8 +1,11 @@
 /dts-v1/;

+/ {
+};
+
 / {
        node {
        };
        node {
        };
 };

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
