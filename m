Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A421ECF9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eknEaukrxiUxHAvU1JSNVp+IXl4bj9ZUQau8hegtHnA=; b=LMI8jqaGfNrJVo
	4Z8CLZixQWbHq2T3vWZy+gfsstVjDHdzevNnH/OxjRuquGw9gB1gSOGpgIPB4ACCHZsLq355diG4L
	MnBOP/oPISt+e8Qbzg1Plt+4CiTDY5fJiSJXNe5r1dba2p6CaSl6rPsuQc2PQNGEP4F7CDqzqN2h0
	/Qsn+j/SeKlzBAsisDlcGsu7NzdUCHP38iZiqFTugtCHKx1es0m4JIvvEIiybZvtX55o7mT6KEjkA
	e59NXOlR6AE2pz5QQ5GkR2b1nw7mU1/T7jqKBX+C0DXtHL6QvfN66sLYifTV41Ow6s47q93WuobGV
	uFib5O+kaRp99sV9cMmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSL8-0003lJ-Pi; Wed, 03 Jun 2020 12:17:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSL0-0003kW-1I
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:17:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id e4so2438794ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 05:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D41G1t3TtndFsp3Fk5xdy8Udf6eOJ1N1fW5sl9opBC4=;
 b=yo8aKusFH8rjFRbst7Pd2XRO5OM0uzRQkbHZ/REysSt9JSXHyjarMKg82fb2fZueI4
 Z6uU6ik1Rmgp6EzdDMlfumXvHOZzogk0BRn+cCt/EXdVKlybK1MJsj7dfXCgIcJNdw5e
 uchM2b4rb4v09XFMhxn9alZQilyh6w/79e9HBFCgj15Di6/OqD5GRdhwneCO9SKflWb5
 7PzvnUPscIJpoV87H0jipvwdMBb5k+NZG0JtHsl/YMxDbDh8qiiKDTzaGa8VxchlwGH/
 fVkdhjK+sVIpM3Ho2VmmHLERJKhRfsYPBhTQg+sc+oXWusQdFDiToZ61BvLaLBlfZnYD
 Kj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D41G1t3TtndFsp3Fk5xdy8Udf6eOJ1N1fW5sl9opBC4=;
 b=nXUoyEXz+gr4ZP9kAoM02RMiPnk8SHYLQiEhzRZWT9IrRUGSgVdzIVWkeSgHvETodw
 JeFcS97R1qLOlwGrOT+GrVe6gzlq3FweXxaJuDIS6kDtdRK5tuLrXopOgB+iQEUrfKWm
 duLB7ks0gawDN2y1euYrg4hj2kUj7FOCIEzjsucCCUoHUvN8mSrkR67C4DYkIXAaSUUs
 Pn9L4XI5FMtegY/DZTTBfbiagHfbMtZkCntL16wNUyH5wl9q3TqPMzx2UDKkb8Smlw6Z
 hQhBgspmbvXvdedf4sP4AqVciAvTUg9hk9GSjsacB2dGPQgMEm2CtMK/QI+6yk2fMv6O
 aKaA==
X-Gm-Message-State: AOAM533lJ2CbO3Zv2QFIcoYynh478S7ZfDDqxFbFNhHr14fjHaU9yY8g
 n6dRVCaMR8okj6se7Uc3lIO0g3DeLN8cdisd+0oxhQ==
X-Google-Smtp-Source: ABdhPJyoeZrNepeqk+9jgqLKZrt7i+C1qWTwwmCR1qtAPIbZRcMnPhJXEc9R2F8Y1mjnsppMks/wRXFQe154ZzFwVB8=
X-Received: by 2002:a2e:a40f:: with SMTP id p15mr1143186ljn.286.1591186660293; 
 Wed, 03 Jun 2020 05:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200531001101.24945-1-f.fainelli@gmail.com>
In-Reply-To: <20200531001101.24945-1-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 14:17:29 +0200
Message-ID: <CACRpkdad8K-uDpYWOwxOW33YM3yWsKOS-Fr4OjkXhNoVxJv1jg@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] pinctrl: bcm2835: Add support for wake-up
 interrupts
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_051742_083895_4934DE88 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 31, 2020 at 2:11 AM Florian Fainelli <f.fainelli@gmail.com> wrote:

> This patch series updates the bcm2835 pinctrl driver to support
> the BCM7211 SoC which is quite similar to 2711 (Raspberry Pi 4)
> except that it also supports wake-up interrupts.
>
> Thanks!
>
> Changes in v3:
>
> - added Rob's Acked-by for the binding patches (#1 and #2)
> - correct check on the number of GPIOs in irq_set_irq_wake (Stefan)

Applied this v3 version right in time for the merge window.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
