Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06031829D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5kXjS09vKczTCSqSv8wxqaktRV0b2rP8svuMixbjws=; b=WPqs2+saq+KwvO
	34/vVmaVfk0tgP18VkKYhKq27PzwHwiaieTXSfxEvl9Ib/DzNMkcGhGM6WMynLksQ1YoKmJ1AimBe
	qIVFQ+nTivW/M3a/HfFzq4vbEQxarIBnDFIs3MGSsQ9k931cpFJJjeleLg3SOcDVzebccEAp830eA
	UdeZz3QnSML78TVRz6keNg3x375Fi1qaWmtICYCO4CRyJAtCrZwsllnQln2goda9W/ZGi3XvRKJ84
	mXzIMakiSVPa++/6s6EhOg74un0od9p+FolFmFi3sB2mMICpZjpHiP6ZTM07aDLQFm8fe0JwubFOh
	8oCenvGFaMOlHIq3Od1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCINE-0003h2-Ca; Thu, 12 Mar 2020 07:35:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIN6-0003gb-08
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:35:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id r15so6054967wrx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 00:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X0f21W2MrGo2hnLGv+BYSYakn/7LmxxEYohimXgzgbU=;
 b=mqgVBDNoyPwzx26l3YyvRztYlv7veET1q91Qs6uvdXK1wSOdeKTfLscfXenX06M0y7
 7FFfCZ5mBgM5r2YnS+OKPbWwYmFdea35m73kxe5XwScoD2gU2VvYnOGs0EAGNhhfdzKS
 fdsJIpXXzvSZSTY7XG7gMNGi9BHCO4UWFOYWuersbic+PElUPFhjelKk7GJW6ukjcw6o
 HksCvWVZ6CgKf2C90+g07K4SVW1CFZ4cMVwWNaXhEOybjjvD0e2L66zrnBGTWFID9Iyz
 0+uesIA30OzycOj9UE6+Wz7BiGrUGQrCL7UneHXd99WWmeGTAHD6eeib5jWXnMCZChEV
 fjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X0f21W2MrGo2hnLGv+BYSYakn/7LmxxEYohimXgzgbU=;
 b=Gk0g6XhiJ6ShsJoc7hBmwWAIo76Yf8cPBc634NY2Ei69xddSSVY7vkUc0X3fgODMzd
 B1SWFQoY0a+jmQEAD8sf6MtL6BbwTV2+GUh3vARr8g2FK808ogUXZyDBHQ6UsWl+qxaR
 0NLQWl39a78Zotv+b6EAjQKAHgqxRvB7UODf8UUUoUu0iiUdpaUbzT6+/shrFlNyGB8X
 OcJcldQuqE+Fg9gWSXHYA0GPzJra5y9YSuKbbKmVuGYogRx2pfqxXftPwQYOJXn3wZkg
 UVQEJVLVTQVIDkHB80PCmIXYMAPLRgEAlS3PlYQpieIo1ShdBe/oVhoWkpE8tPg6aIFr
 J9NQ==
X-Gm-Message-State: ANhLgQ18QB5MY34sCJeNOccuzcfQf+qhKnieu7Z5u5soIFa6fOTC2TuF
 NTT2StJmUBfVS/P6xP7j/pxEW8dYaKDji9pGbY4=
X-Google-Smtp-Source: ADFU+vuUfBEm9U7m7o5XDIh7wvf1mmCaP8c6aaiAk4xIQ9k7165uWsz6meLkY8e9N2xr6w37az8DgpKcFA4dIE3rpwg=
X-Received: by 2002:adf:cc85:: with SMTP id p5mr9220480wrj.196.1583998510514; 
 Thu, 12 Mar 2020 00:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200311112120.30890-1-zhang.lyra@gmail.com>
 <CAK8P3a12iN4HzN3HsRSBJPLpwJzdVwhrK7Mje0V6eW3Lvd77iw@mail.gmail.com>
In-Reply-To: <CAK8P3a12iN4HzN3HsRSBJPLpwJzdVwhrK7Mje0V6eW3Lvd77iw@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Thu, 12 Mar 2020 15:34:34 +0800
Message-ID: <CAAfSe-sKXT5K_m8f0vhCqSVsH1Sma1cSfiidiCFAGKS6eKFMkg@mail.gmail.com>
Subject: Re: [RESEND PATCH] arm64: dts: specify console via command line
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_003512_067984_44E85D69 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, SoC Team <soc@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Wed, 11 Mar 2020 at 22:31, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Mar 11, 2020 at 12:21 PM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> >
>
> > diff --git a/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts b/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
> > index 2047f7a74265..510f65f4d8b8 100644
> > --- a/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
> > +++ b/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
> > @@ -28,7 +28,7 @@
> >
> >         chosen {
> >                 stdout-path = "serial1:115200n8";
> > -               bootargs = "earlycon";
> > +               bootargs = "earlycon console=ttyS1";
> >         };
> >  };
>
> Hi Chunyan,
>
> I would expect that you need to either specify the stdout-path, or the console=
> kernel parameter, but not both.
>

Ok, now I know how to fix the problem without adding 'console=' :)
of_console_check() [1] can tell if a given port is the console by
reading 'stdout-path'.
I will address this issue in serial driver.

Thanks for your reminder,
Chunyan

[1] https://elixir.bootlin.com/linux/v5.6-rc5/source/drivers/of/base.c#L2135

> If earlycon was used, shouldn't the driver know which port is the console?
>
>       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
