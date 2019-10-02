Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC830C8B43
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czhfLBJY2WHRuNCp0j3lDsgYvFuJVY4QhVM/vxhjGSE=; b=kn3sVI6MscnXw4
	S8kg4cjSQwUMZ7Uf4meetWG7sOnL6cmkBXbbQp0Sdl8ALF0mId8FVTdhhs4HVRb6RrUis9qJBZd48
	tIR+3fG0EwiVfh4iLKmjdJjpXgyQy/N0v2kVhnQ/nPkimIZV3zYKvpHOIjafqja8Rr6BdmxJDmhFe
	M6P6/t3EwZXpNXrO0PzVNlkKM2xDoZIc0Gh+O+krjNC4kNZS0FijK8W5sSN2TU/2goBUOwr4v1ptH
	4M/cax0/ZU8iTj3wsioRCRbNorVzAousTYzvSYZWHoEuJxlm4e4Y9FUedor98FqVElnoq114iN3IF
	H1ZrqIASKit1yi3QhkTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfe1-0007aM-Cj; Wed, 02 Oct 2019 14:30:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfds-0007Yt-LB; Wed, 02 Oct 2019 14:30:13 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 187A121920;
 Wed,  2 Oct 2019 14:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570026611;
 bh=WpPgCl+g9ZzL3G0BUaPixm3EVaJp8snYP/4w+OBoehk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Dm6RTYpnTIi0ZDVTW1+XMKlWKlmuCwHWjnYOgGZKR8gw5JbFnw5kuSx7QZpIiUOoA
 DYWM/HcFpQ80aAQLXBS7byICx0hczfGe3du+Q6Eb/XOwo7YilaxldE3yV3xiOfr5rb
 G4f/OKmomTo/JL0fIbcKc80/1ZMi+urdsO+DA4Ls=
Received: by mail-qk1-f182.google.com with SMTP id u22so15163225qkk.11;
 Wed, 02 Oct 2019 07:30:11 -0700 (PDT)
X-Gm-Message-State: APjAAAWnJHVC0U/PZgj+vEdByMOBE9L64wY/chb5gFRyCDxdWklBt0R/
 olQjCJyEpNLFMN3F+vj/trz7No6gXS+HXtOOkw==
X-Google-Smtp-Source: APXvYqzdn9uUBorveNlH9/zku6XeiHfTcpcd3PnD7qfkjK0RFzES53PVyzXJzDlm8TCLXVM/5BlhuUiICj6nXK85HCg=
X-Received: by 2002:a05:620a:549:: with SMTP id
 o9mr4051798qko.223.1570026610271; 
 Wed, 02 Oct 2019 07:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190920162124.7036-1-krzk@kernel.org>
 <20191001222109.GA26050@bogus> <20191002074828.GA6221@pi3>
In-Reply-To: <20191002074828.GA6221@pi3>
From: Rob Herring <robh@kernel.org>
Date: Wed, 2 Oct 2019 09:29:56 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+KG-7G-VF_hjgugvAP+CrNb+fxy1yca6SC6G3M_WGYiQ@mail.gmail.com>
Message-ID: <CAL_Jsq+KG-7G-VF_hjgugvAP+CrNb+fxy1yca6SC6G3M_WGYiQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: watchdog: Convert Samsung SoC
 watchdog bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_073012_720879_F67C4502 
X-CRM114-Status: GOOD (  12.23  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-amlogic@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 2:48 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Oct 01, 2019 at 05:21:09PM -0500, Rob Herring wrote:
> > On Fri, Sep 20, 2019 at 06:21:22PM +0200, Krzysztof Kozlowski wrote:
> > > Convert Samsung S3C/S5P/Exynos watchdog bindings to DT schema format
> > > using json-schema.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > >
> > > ---
> > >
> > > Changes since v1:
> > > 1. Indent example with four spaces (more readable),
> > > 2. Remove unneeded timeout-sec description and include generic bindings.
> > > ---
> > >  .../bindings/watchdog/samsung-wdt.txt         | 35 ----------
> > >  .../bindings/watchdog/samsung-wdt.yaml        | 65 +++++++++++++++++++
> > >  2 files changed, 65 insertions(+), 35 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.txt
> > >  create mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> Hi Rob,
>
> The generic watchdog YAML/DT schema is already in v5.4-rc1 so this can
> go either trough you, or through watchdog tree.

Okay, I've applied the series.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
