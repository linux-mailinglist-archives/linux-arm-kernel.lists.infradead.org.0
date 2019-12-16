Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BE21219EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94exjzGnoxzbcA4E7NX3out2LEI7SlELAKKRfBO3DpQ=; b=IGqC1YdqHLD1/1
	1/ncM0wiPHk2xnNWaxjp28cjzHjMlYEIfx2h83o8OFL20HoW91kNhKCU4ZBLZzexUqu9Zxohp3CS0
	7JxclA2s2HQtcuh5OGVsdC4vWZ4a/oUbfcRQrXQ8PYR5f9fcGaDzlNw8KkRqOupVB9aoJyWEHlmcO
	7h41uNquCoqV4ODYlEEJy0ZyUJlLVyTYgyoGDUTYyS0RLts9c/DrdtycuImIsY3PvtzLZzXGTCzZO
	leGSeZsmjLV3OuYMeUZFmj31804h+lvwJqRsUD8vSdP6jlSMBQ23rTdjFP44Dp4ROLoLFeHcxDGwP
	pknF58XGCxc/yOGlpj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igw3e-0006mf-0d; Mon, 16 Dec 2019 19:29:30 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igw3Q-0006kY-F3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:29:17 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x18so4884403vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 11:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x8Xzx0seGNgO73hnwCUt78Q5JjYJnfBh8nshT5JtITU=;
 b=FJW4xgqSh5a/O2CUVNjPYRBXY74pPDy4QIoSGisOiMeSnHhVx4x7WmsEYq/C1aARh2
 o25dmJ5gkBc34HgKuBdX6vJoKfJ7vPb7WZLgliAToedhYlNr8nt1JngCb8UzCP1kFKmI
 QjeLH+Cs8rWWuVmAb72lCvAPcNVii/xoEU63s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x8Xzx0seGNgO73hnwCUt78Q5JjYJnfBh8nshT5JtITU=;
 b=hsqaplgU/hq9w27XVK/Z+pj4TemoWAP96hRm4oA/LrEAiaarfnaHD5crqIzN3JwstO
 B1YELfJmTnlG4kZ6Wqg4JCygzlmVYv7NXoQ9Cx63gOxKOBvAjuRu3zqquyosyBRS39P8
 MSOtlRAoJqFv12Rf2AR6Jsu7kibQz3exE0gSZ24uJrz/+faps1MJaEGi//RtN0LW/4ZD
 3mzHFBPyI/WZDDn23cdfTR6TKPlLxWHrjo8U9CwTBOu1eJRK0h+qKTxAcBrJgCS8ZWC3
 9iVz2D9GVZV6FVzZCrDQcj4UHOFrVcCmGhZNnQSL15slFtJmOrVhJIWycugyhPD3iPda
 zj7A==
X-Gm-Message-State: APjAAAVB621/Rlvw0cYJUP0gP7Y+mh3zhiUytztdiOELYeqWlEK3UED0
 TgY+OlBkVdlPIEirGx7ezYA9U65hHzZYL2VFpCmZig==
X-Google-Smtp-Source: APXvYqzq/Wjfn9HsXPu0Kmf0tLhdL8GHb4eZwK2nmAxrayk1ebVFL1ajC+pqXAwYewI3IgNW08qyvQE/D6dLOQc1TnA=
X-Received: by 2002:a67:d007:: with SMTP id r7mr349749vsi.93.1576524554661;
 Mon, 16 Dec 2019 11:29:14 -0800 (PST)
MIME-Version: 1.0
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <4093066.yl7jOIBBcd@phil>
In-Reply-To: <4093066.yl7jOIBBcd@phil>
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Date: Mon, 16 Dec 2019 11:29:03 -0800
Message-ID: <CANFp7mV61sjQ2sy9hAtVQ5hUNmwRbytL+sDPe5eAHP50TwiMfQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_112916_533774_A5A5EBD7 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Bluez mailing list <linux-bluetooth@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, I was out last week and didn't get a chance to respond.

Thanks for following up on this. Happy to see this merged. :)

On Tue, Dec 10, 2019 at 2:32 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Mittwoch, 27. November 2019, 23:39:09 CET schrieb Abhishek Pandit-Subedi:
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> > - CONFIG_BT_HCIUART_BCM
> > - CONFIG_SERIAL_DEV
> >
> > This is applicable to rk3288-veyron series boards that use the bcm43540
> > wifi+bt chips.
> >
> > As part of this change, also refactor the pinctrl across the various
> > boards. All the boards using broadcom bluetooth shouldn't touch the
> > bt_dev_wake pin.
> >
> > Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
>
> applied for 5.6 with Matthias' Rb.
>
> Thanks
> Heiko
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
