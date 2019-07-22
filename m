Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00586F7BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 05:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZrrL62Cm3HfwIjqgNO0YersMdcaxZYx1kIBNEcGWz0=; b=C9Q7xEqhKBEDRc
	GGwP1hajipNvipTOATg0n2X793MjT6rRB234Q6tyOjBFhSU/rfBY+N1RLJivwZCtl4mH1i5r4kB7y
	hc0mvNUW7S8KtdLJUskCPkN3kzQOwtHtBSzU1ci0RxOa1sRfZKFsdQb/K3rwofBA1h6y7Har/NTv4
	6hExB0N3tHzLOjxbtaVlkLj80FgM51MU7lWM53F6dTNFRUxHz62aTzw30Eb/9qlLM/5WVH5KhHILd
	t/GOm2VGktSb9nkSzO2eF/F4ZMat3l5bxCbucdqMsgyqcmMwwFIlSJ4VhLV6JwuWsWzbVldjV3Lxe
	tbNUF4e5W6f3YbLZbODg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpOhi-0006Vh-5d; Mon, 22 Jul 2019 03:09:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpOhU-0006V0-Um
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 03:09:22 +0000
Received: by mail-io1-xd42.google.com with SMTP id g20so70716730ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 20:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o+16KM5xLP/QO1SI0sX6tAfF7qRIQFaiyLdsltC68TE=;
 b=xrj4D8QnMXYIr93PF5Yc8AiwtnNdlVc7lMGlquGN5N7KYV+4vnk/TmQGOHSPzqS3uZ
 j1F9dwKlqKajS8kLHN5bqBAoSwDWkVUx9rEtKdJht2ItWsqmfwFAQVa8o+mc9DWFLpDP
 59hnm0RachSLlzYLdSU2GUJIj1LhJxvTWKPefcQ8Fpspy6OgdZCO32UtaTguAx3YR63f
 k0L/6K2P+mR7tlE5Xg4tXympp7LEYOHhn9qtrEl/+2mB92/K5gIBP2DvtT+XUj6DZAkO
 +G3+7gwhffwmH50UsHfi7qzvHPlQhYzK/P9eSvkGob6g5QZMw4xVi7USa2K7a2ZcmOhZ
 6m+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o+16KM5xLP/QO1SI0sX6tAfF7qRIQFaiyLdsltC68TE=;
 b=P2wmhkSgGC7F+qtiRqQdmrKD3echohoYXB05durEBkSmBtuRb4r2kW1HGoenjzLwUQ
 WiytbGN912RQ6i3zr3dZb8KHEHPC2TsF7ZEb9aJ1RboOsVL3yRwiIQ0hDW+BR+uIuJ9y
 dAUHpb+2qF7VwAVp/srNKgruVGAE2G4H8VVKS+XzfuZR2644YayJMynCpBd/rIXjd2JG
 8tHJlDeaM7LVKoFLxTszcD/J1zCdDT2O02xhCsbt4sX6K8KPgqXLGdl1gwbjLPifTzPd
 CW7bfl2y2ixSLQKmjWHKJyW0mv4i6Z64yZPI1asbn+VBlf8z+g8hxZs9pLXmXetfZRLa
 RLQA==
X-Gm-Message-State: APjAAAWk8cAfhdric9wJNqwkfObrEuM9GxY7L0t85uD4O+4CtkXTVSHb
 v1IcWB88tDJp1XAuFy/iVIUWisHK2xT8wcJxy9Q=
X-Google-Smtp-Source: APXvYqzUoWy0wB8RJRPIUcJopUgSvdghHl68ekK9TC1qp6nqLgq/OaPxWxFb+M4c7KHfKJA2Dmrb1lw7lWWLGZ3Nukc=
X-Received: by 2002:a02:8814:: with SMTP id r20mr73305566jai.115.1563764957258; 
 Sun, 21 Jul 2019 20:09:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190721224157.6597-1-linus.walleij@linaro.org>
In-Reply-To: <20190721224157.6597-1-linus.walleij@linaro.org>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 21 Jul 2019 20:09:05 -0700
Message-ID: <CAOesGMh0gwHo5mFP28taYbQtWNb=Bat5peASVyNGnihbhixBxg@mail.gmail.com>
Subject: Re: [PATCH] ARM: Delete netx a second time
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_200921_039668_286ADA29 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: soc@kernel.org, ARM-SoC Maintainers <arm@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Robert Schwebel <r.schwebel@pengutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 3:44 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Commit ceb02dcf676f ARM: delete netx machine deleted
> the mach-netx machine. Then eight days later
> it was resurrected by SPDX tag fixes. I think.
>
> Taking the liberty to fix some additional debug uart
> cruft.
>
> Fixes: ceb02dcf676f ("ARM: delete netx machine")
> Acked-By: Robert Schwebel <r.schwebel@pengutronix.de>
> Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks, please apply this directly for fixes.
> The machine is gone from all Kconfig etc.
>
> I don't know if it was a person or git that decided
> that the best way to add SPDX tags to deleted files
> was to undelete them. If it was git I wonder if this
> is the only thing it undeleted.

Odd. I wonder if this is something I did at my end, or if it happened
elsewhere through the merge path.

Anyway, thanks for noticing. I've applied this to arm/fixes now.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
