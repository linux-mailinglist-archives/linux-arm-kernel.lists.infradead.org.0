Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C4E2726
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 01:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Psk0ApMv9t4z0qJvfWHH8JE+yTqC0kSa3kJ6BqwNfLA=; b=m6WFWh+Pc64/tX
	EEEa673ubmKzPf3UxpHJ6veQroGCPoiWX/gqP45f9t2HmQBByzbdrKvmUEGj+xifpPTYI9tdMi9Pi
	ZoGFh3+yVwGv1G2u6qHxE9XpnmxSDklTU8HZcIQHjqKXIq/edHxHbyaAwqyDcaJFfgCEBE5KqMAsI
	CxxHTbZXbmcHAB0ChkiwZIOdpBbImFM+B1GfFGK0wUGw+LUPWehBfrUE02tdCW7MdCtSAPv3fiiiT
	VFdWZDfAV9hU/hQPuvgTCjcnd11PEF9DVAzySCQZ9b+V6xT61OpwTO2/CE9w1Hgy7i/4Fzg3eJT48
	OEnSj+gmN3JyjXtRzODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNQK8-0005zj-G6; Wed, 23 Oct 2019 23:45:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNQJy-0005zH-Lw
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 23:45:43 +0000
Received: from mail-yw1-f54.google.com (mail-yw1-f54.google.com
 [209.85.161.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D2B82084B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 23:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571874342;
 bh=Fa2BUPBPRcQjdyWWpFyyHoW4dQxZIcz9syU46fPjnKI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tA9Qqei3FhXSnB6neknr+m6VKuRlDXX5FuvMql6gJUtN7mx7PvTa45NEp2xjOYGL1
 cGr6CzFFB6rrHDAK1kZH3KE6/YHDKCN9enufBCDoDZBm6x8DslCKNvCwlS7T4yCTwI
 hl3IboeGHDLkCCGFIe0Q3BGQfdpZm3HhbQG6uQQ4=
Received: by mail-yw1-f54.google.com with SMTP id a67so4356752ywg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 16:45:42 -0700 (PDT)
X-Gm-Message-State: APjAAAWdMjiX4zjVa1BxnAYilum82eEnqavbyPRTI10oPiUcnSOt11J4
 1c9Uq3MWqno6N5TT0N3mySJ46pi+ROI3Tk9MIA==
X-Google-Smtp-Source: APXvYqyFLY8JEsxRT4xuHCHY1O1xGIo/yncNBmpBlQbPJqs9qHVdgTyVJ0Tp+2CyWQP/88e55lcfuUKbBeS/tmTHYMA=
X-Received: by 2002:a81:748a:: with SMTP id p132mr4577615ywc.174.1571874341350; 
 Wed, 23 Oct 2019 16:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191023200228.GA29675@bogus> <20191023224357.GA26445@goma>
In-Reply-To: <20191023224357.GA26445@goma>
From: Rob Herring <robh@kernel.org>
Date: Wed, 23 Oct 2019 18:45:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKTiieO_7gM4YNGV-BAT67Mi+PX4Gqyyd7nowZsjhnFqQ@mail.gmail.com>
Message-ID: <CAL_JsqKTiieO_7gM4YNGV-BAT67Mi+PX4Gqyyd7nowZsjhnFqQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
To: Daniel Palmer <daniel@0x0f.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_164542_743040_7B5D70C0 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 5:44 PM Daniel Palmer <daniel@0x0f.com> wrote:
>
> On Wed, Oct 23, 2019 at 03:02:28PM -0500, Rob Herring wrote:
> > > +# SPDX-License-Identifier: (GPL-2.0+ OR X11)
> >
> > (GPL-2.0-only OR BSD-2-Clause) is preferred. Any reason to differ?
>
> I used the sunxi file as a template and thought they had some
> reason to do that. I'll change it to just GPL-2.0.

That wasn't a choice, but dual license it please.

> > > +      - description: thingy.jp BreadBee
> > > +        items:
> > > +          - const: thingyjp,breadbee
> > > +          - const: mstar,infinity
> > > +          - const: mstar,infinity3
> >
> > infinity vs. infinity3? What's the difference? It's generally sufficient
> > to just list a board compatible and a SoC compatible.
>
> Apart from some very slight differences (max clock speed, different PWM block)
> they are the same and the PCB for the BreadBee can take either the msc313(i1) or
> msc313e(i3). My v2 patch will remove the mstar,infinity line from there and move
> it to a second board called the breadbee-crust to handle the i1 configuration.

Sounds like you want:

items:
 - const: thingyjp,breadbee
 - enum:
     - mstar,infinity
     - mstar,infinity3

If one board can do both chips. Though if the same PCB is populated
differently beyond the SoC, then maybe 2 board compatibles makes
sense.

Why not use the part numbers (msc313...)?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
