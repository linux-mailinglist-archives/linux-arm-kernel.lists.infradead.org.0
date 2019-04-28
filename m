Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3942B675
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JwZPxLwQrGndEfQXaSwGPNUBu3QURcDO92kyErRe6k=; b=POcbdo8GyXkIk0
	lZpfRgPvu08a9Pszi6r5i0iIkT4d618n3Be+w+HpvbknJ+UEazPhc+CsW0tgAGuAKi5lqXVH+obbG
	J4+P9gLYGJckH8WQNfs1QKBOOvIFOFD5LyIskvOFxUPX03wyXupzNSST4WMhlvPKz1TSkr6AR7Qrl
	C7UTJuVDreSXGfZXg8vkM9HSeFgEY5eP1x/RseP1K2DRxiLVgNhW9VJBNQAH9fTdblZW1AlYT9IVe
	MK1vbeQc+60r7ccgbO8t/KfnroojB0IfRz/da5G4U0yYJ8ycRA93zMrxXPrAY0X7grxi5furve8RJ
	kx1PD33wf6tlEuTCzx3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqGW-00076z-Kw; Sun, 28 Apr 2019 20:19:12 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGM-0006yI-Bh
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:04 +0000
Received: by mail-lf1-x142.google.com with SMTP id h18so6192557lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WA3e/cEiSBkEK5yKHvYWUF3un/eLPYLusFICieyye8U=;
 b=aUpQ8hVdBt7oOZdgLzSySOnv50TtterKq5Ea2xXP7cQf+OzfwKv/TTFF8yRWy1ZfNq
 P1q8ykpLOOaEWO4Qw3pgABU+bm4Z0dcZgFKiFFhgnk03JDnzsuufJc2qrKRBkdT2YGG0
 tkNh5RpfDN6SdhZZEyFwXgEeXWwId3jZae7kYJRYeYaUr6T+9yLhxx+YW8SG62kF9ej9
 5MnpBdOh0uVgJvRKH+Kx9fHAdtK8XH9aXFjSHNNzvJ2sUM4x61hy5INvhVP87+ysauJS
 jfH+I+sd7vxPr/oriv5sscjnVGt4CBEokP0hOOTf8E/lysLD9o0bLAdyvCEMPIzffR8m
 I84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WA3e/cEiSBkEK5yKHvYWUF3un/eLPYLusFICieyye8U=;
 b=k86I/BqpYTBU+dA+9elOCX8fTilp6UG5Ifj7C7JPpJLHY3+m4uRkXUTB+NE3VBTpab
 siRgREvDEc60j/YWsvChVj1jvD7mvdEeEyd/4KQ9kors3bdQTvfJCPuU29LRMmwhd17b
 x5obd3crbXc2llE0SHpoKmlO5r3exg+7ebtxEKtjoxqzewT0+/MgRBA3U0nz/WKqwEn6
 LK7xsE3XXOSUrstQolmuhE7MUn5XVZnH+3mPNEzYdc0kNVW7glDSDjOwlBi6RauML/lX
 JI0/o6hbK6rof4uvO/OI3LTxA787T8tIKWQk29zU9vEu9/UwlSK82lZnNmU92XKEJrY+
 V64g==
X-Gm-Message-State: APjAAAXKbheH4YP6Lk5FdoPsZG4GO2ji3GSUHgZvhouZXGvb/6YxpmmV
 1fneoA1kEjAQwd2E6MS+wMow7w==
X-Google-Smtp-Source: APXvYqyfjd1CX9qdD2nfSgr7eaDOjzJcWaywWbwpimMomPErxVIGR8/AvcSOOkua+qkcawOcSDgbHg==
X-Received: by 2002:ac2:4893:: with SMTP id x19mr6449894lfc.109.1556482739509; 
 Sun, 28 Apr 2019 13:18:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b28sm5907676lfc.7.2019.04.28.13.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:18:57 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:06:34 -0700
From: Olof Johansson <olof@lixom.net>
To: Marek Behun <marek.behun@nic.cz>
Subject: Re: [GIT PULL] Turris Mox Moxtet bus
Message-ID: <20190428190634.3i6tjpflqezd6xkq@localhost>
References: <20190328192232.4b5c993a@nic.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190328192232.4b5c993a@nic.cz>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131902_449147_0364D76B 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Thu, Mar 28, 2019 at 07:22:32PM +0100, Marek Behun wrote:
> Hello arm-soc maintainers,
> 
> please pull the implementation of the Moxtet bus driver into arm-soc/for-next.
> Moxtet is a small bus found on Turris Mox.
> The patches are reviewed by Linus Walleij and Rob Herring.
> 
> Thanks,
> Marek
> 
> The following changes since commit 93958742192e7956d05989836ada9071f9ffe42e:
> 
>   arm64: tegra: Disable CQE Support for SDMMC4 on Tegra186 (2019-03-25 17:12:20 +0100)
> 
> are available in the Git repository at:
> 
>   https://gitlab.labs.nic.cz/turris/mox-kernel.git/ arm-soc-moxtet-bus
> 
> for you to fetch changes up to cea960603584ff05ae6dba647d1641508e5998b4:
> 
>   dt-bindings: gpio: Document GPIOs via Moxtet bus (2019-03-28 19:03:01 +0100)

There are several things that should be addressed in this pull request:

 - Please use a signed tag. In that tag, you should provide a description of
   the pull request similar to above (but with a bit more context, i.e.
   a high-level description of the functionality and why we should merge it.
   Similar to cover letters for patch series.
 - For said signed tag, please get a PGP key established and get other
   developers/maintainers to sign it for you.
 - Nit: If you pipe the 'git pull-request' output to cat, or redirect it to
   a file, it'll size the diffstat such that it fits in 80 columns and won't
   wrap as per below.


I know time is getting short for the next release at the moment and
getting keys signed might take some time, so if you prefer to send the
contents as a patch series and have us apply that, feel free to do so.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
