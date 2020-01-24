Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AD51476F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 03:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPaWz6PSRMi1hmBGash/TL3m9IPfd5QzAov9nmHMomQ=; b=fvOhoms2gGBYoJ
	TRSpr9rYLMsaktidFoEdhndFht2XP94zlYvvj1fuuf/5v/e5IP3T83I8CY2UXOSAyR4q8BNcXB4N2
	fla+U5PyPupByvWSmqU8snjtEL+zfF20gK8yVZ9NjJ4SMEwz7b1bjPMI3McVQ5xGjUF6RzAzQRiFG
	vWsM/z1qspqpdT9wQhK6GqJeKkEfGn5JwgpeqMIGNl6B7z/8BLjvhTC/eWKwuxQp2gCE60YAXCdZ/
	qozIIxSAoad1ZAPgRh3zfgvkPTopq9U0Gaty7zxRHseel5w8YczvAc0Q1Z5/Fww3C4CQzcDxK2hqG
	e1dblO/BV6LXksIQthTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iup08-0004hz-Lj; Fri, 24 Jan 2020 02:47:16 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iup00-0004gm-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 02:47:11 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 00O2kq3m018817
 for <linux-arm-kernel@lists.infradead.org>; Fri, 24 Jan 2020 11:46:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 00O2kq3m018817
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579834012;
 bh=+EzVSJ88AM6VtQOKMl81qWyrjKidBjG7lFGZaq37WKk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T4kSGwRXq/rPM0A0FKrelStc8qGSm7t81IAEsKKfm9m6YB01kRasOYbQrDyhpfdQV
 JrOvmIGdQsPUkWSuTEFVrE3i+djWZ77zyJJxRV1PmyX4jf6Bcohl9aWcXq9RsOULW6
 C7F/9vJYsaZb650ATwNpV0cawE4HxRIuE6XHzKIjge/Az6tmwynoNfZKgRyDFe0iWl
 FV9i5SR9j8MmCNJ+RAfdTUHobBKRMZfoBJaK5XWbip2oPqfIz8g7aLVpNRtfj/zv6k
 4ymKAhWTJvvZL1ng+9e16gFSYb1gVIUeYEWN/nLoI2/I1NBsCzWV9blpgSMdL6FYTD
 OykIPesycNPrQ==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id x18so369467vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 18:46:52 -0800 (PST)
X-Gm-Message-State: APjAAAUbTCsUFhwFP4wAGb+XiBObyxahybuo3T4eGTNkmHYrq+FRbnab
 slydps9sHj2L5KQDtfCfuvrvJ6TgNcPuhosDMyI=
X-Google-Smtp-Source: APXvYqyNJHWo8CL9vRIwpnUvgr5kzniDUpyOSGA0K3qHXpVn2R+Rv9XBqnrEpWYZowgKPN086DVKKSpRLiqbARoN7RM=
X-Received: by 2002:a67:f8ca:: with SMTP id c10mr938838vsp.54.1579834011513;
 Thu, 23 Jan 2020 18:46:51 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNASSVYHunCn154ktOVDm=MOe+jhEq8Xc8g0JAtCjjJRHwQ@mail.gmail.com>
In-Reply-To: <CAK7LNASSVYHunCn154ktOVDm=MOe+jhEq8Xc8g0JAtCjjJRHwQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 Jan 2020 11:46:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNARy9eDNHWDYNKAJKGu8U9AChpMPPTLhmTu9bp+VpNhWfw@mail.gmail.com>
Message-ID: <CAK7LNARy9eDNHWDYNKAJKGu8U9AChpMPPTLhmTu9bp+VpNhWfw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: dts: uniphier: UniPhier DT updates for v5.6
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_184708_954831_6F260F52 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.90 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd and Olof,

I know it is already -rc7, but
it would be nice if you could pull this for the next MW.

Thanks
Masahiro


On Sat, Jan 18, 2020 at 1:16 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Hi Arnd, Olof,
>
> Here are UniPhier DT (32bit) updates for the v5.6 merge window.
> Please pull!
>
>
>
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
> tags/uniphier-dt-v5.6
>
> for you to fetch changes up to 37f3e0096f716b06338a4771633b32b8e2a36f7f:
>
>   ARM: dts: uniphier: add reset-names to NAND controller node
> (2020-01-18 00:56:09 +0900)
>
> ----------------------------------------------------------------
> UniPhier ARM SoC DT updates for v5.6
>
> - Add pinmux nodes for I2C ch5, ch6
>
> - Add reset-names to NAND controller node
>
> ----------------------------------------------------------------
> Masahiro Yamada (2):
>       ARM: dts: uniphier: add pinmux nodes for I2C ch5, ch6
>       ARM: dts: uniphier: add reset-names to NAND controller node
>
>  arch/arm/boot/dts/uniphier-ld4.dtsi     |  3 ++-
>  arch/arm/boot/dts/uniphier-pinctrl.dtsi | 10 ++++++++++
>  arch/arm/boot/dts/uniphier-pro4.dtsi    |  3 ++-
>  arch/arm/boot/dts/uniphier-pro5.dtsi    |  3 ++-
>  arch/arm/boot/dts/uniphier-pxs2.dtsi    |  3 ++-
>  arch/arm/boot/dts/uniphier-sld8.dtsi    |  3 ++-
>  6 files changed, 20 insertions(+), 5 deletions(-)
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
