Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7412C69E7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 23:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2tnb5gba8YGbM2YuqVNG5pMIRS4CpUGZ31qE1OBAVs=; b=DGslE1Iv0QnqAk
	nXdDaqlm9iAeNmfKP2HDfHvdLE13bLHG4MpeVcmmiTOjb0OS88M8Q3oD9vg6xV8LftPMoaUA/ewBD
	tlhEHIueTnRDyqMS7IkzYo6grmHCATrmrEX4gHCDMMjMsWvzINnviM29x5bpOr1OLYkgQVoOD/phZ
	IGShxgeSPrfUk9wMoufhry7BfLQTi3sBVgsZi/ZvPbIGnep2W73/HbbY8zrvBpgZsTBr8xpI+NCG7
	mFW33TuBJkkPSrYSkdGUGS5B/10cn1aM505zbV//XF3aFIN7jUYpRX9FTYe5sqNmDmQbJaP8UWCFL
	0APBb7aN9iP5DnhNRV9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn8n6-0005tI-NC; Mon, 15 Jul 2019 21:45:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn8mv-0005sp-S1
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 21:45:39 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 124BC2086C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 21:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563227137;
 bh=bOxv9M7FSpciDgt5fsuUf7+3jKRJ0QVRRRcpPCwYOrw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WmLnbmURCH4WkzfOOmkBAw5lk7MnVQisf4J3MnwuyPiMhlhvBuN5JVyeGXEXB+Ixk
 xX3e4vtAccficMlMVXAiP+KyuXptRzGS8NOXbwTY73S7l8pOXpdzc4RYjZ5jwf1aCS
 Hxpz+CCxHWGCPJWm87wV8ehQ0urqeD+Y4R6DxHFs=
Received: by mail-qt1-f176.google.com with SMTP id h21so17275315qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 14:45:37 -0700 (PDT)
X-Gm-Message-State: APjAAAUE2j/nLMvjBORhv5CiAaT/xlm38Mq14WVqiaaqCd/Sw5ey2Vo2
 b4EC/fv9NPu8IRl2JrVR8pcxYw9xHhVyRYC4+A==
X-Google-Smtp-Source: APXvYqwx3zKms08dwfbW9Rrd7dTNSoAFjSjWmA1WWziCEAZ9wenpckHkrtk0kHSnx6k9ODHZtx+s9U+m7pB8Fa4kPOQ=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr21342915qve.72.1563227136354; 
 Mon, 15 Jul 2019 14:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190516225614.1458-1-robh@kernel.org>
 <20190520145830.GE3274@piout.net>
In-Reply-To: <20190520145830.GE3274@piout.net>
From: Rob Herring <robh@kernel.org>
Date: Mon, 15 Jul 2019 15:45:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
Message-ID: <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_144537_931465_4F7018FB 
X-CRM114-Status: GOOD (  18.76  )
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
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 8:58 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 16/05/2019 17:56:14-0500, Rob Herring wrote:
> > While properties and child nodes with the same name are valid DT, the
> > practice is not encouraged.
>
> I don't see anything mentioning that in the devicetree specification. I
> think this is something you should add if you don't want that to happen
> again.

I suppose, but I prefer tools to enforce it.

>
> > Furthermore, the collision is problematic for
> > YAML encoded DT. Let's just avoid the issue and rename the nodes.
> >
>
> Or maybe you should fix the tool ;)

You mean the YAML and JSON specifications because the problem is it is
not valid YAML? (I think YAML allowed it at one time, but it is
deprecated) The only way to fix it in the tool would be to define some
way to handle the collision like renaming properties and then undoing
that.

> Do you plan to enforce it at some point? How close are you?

Soon as this patch is merged. There's a switch in parsing tools to
disallow the collision, so it will be an error instead of a warning.

> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Is someone going to apply this?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
