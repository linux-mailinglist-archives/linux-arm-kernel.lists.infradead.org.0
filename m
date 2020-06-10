Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D45B1F5161
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnS4MXjrdO273BU323NllJCNNwjjF2kN8Qoh9aZNjOY=; b=ipA2ej0Qrve+PD
	IYmj5Q71/51B1j/FcJ3WGIZTHXl5kQ57oRygBLcHnVKGRvvXcM9PKS1I6vtFnu8HMRxR0cx942SLq
	qOepkD1gLX9NuFB/MTsR6f9cmFqFWSaCJpF5WksTAxWCOsmj04/kGj29WQ4w1hljzwq8r2XQFMHiy
	PRm6GkFfegCIke03DnJU/9RVXa9iOBxK4CWlxtIwRqMIiDdhTRwLnuRABia3tSXIdMiWH98UCJQvo
	u38OQV/4x/4G3/a8C79SLphvd4WTy8L7p36rpTPWMlE4TqbMbGw/iuyEr3rSBaTtqeumxyyTuB+jK
	pIClmRfH8LhznuQwhHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixHi-0001IP-A4; Wed, 10 Jun 2020 09:44:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixHO-0001CG-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:44:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id s1so1676874ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=svyjfmEJc3+r5Bull8lSuu/qgDN2rTAndZ5rJi9Ba2o=;
 b=AMgNG3LbXSbZD6eBl2/IEceHF5cilPgFw2K3RxPXAl8WAyTiHclajD38G1Tc2Q7IIL
 JSAl5vPSokAFzuD6dghWzOBP8VQeaIBnEhmG7l6DbIj5XLzYlaKFxl68kpyO7qxTJuch
 Oknbf4oKQ2BxCbsKbeM4DVYh+BL5fS+J3SitSurgrSviegmUdN1RTWASwgL5E7dK3Eea
 ftChCFiQWkpFaq8mqhE2kLdcsDJoZmen1UBhmI1jCJ/cSLyTijZ0xSpCTHcX9e5qpBOV
 KK4npBNbzohL21ccWphgOTo20/ZK6StWglohLHKmhPuVh27p5gBk18RwPFlLeJWaHDQQ
 dH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=svyjfmEJc3+r5Bull8lSuu/qgDN2rTAndZ5rJi9Ba2o=;
 b=YNaBukD6mPCrOiCkVa5jDw/neLB5fG6sKOwi5AJtpUCQ036uinQfYE3fGbvXIsde0L
 /miM/BtDreYVtQJUeXRhG3Vf7P+qJzc539Ej2/hV4npUDl7aZggH/UghGmGBsg/EBEAt
 p7xejYlxBoo6jDfpORkZukeSWH5dbYWHSZAKlwmUIUoodI5EQJQS3xl7pAzW4hvW5cCV
 nIO2JgQgC2wL1OOrR6ec3Y4e4SWFvTPTNmWexhszuZK5x9cMzNQmDahmI4FJHtULF0sG
 pED9GlJtO8TrRZBDtYQHXI1RhRvPh+S5KA7oOfKrYpPQQlx50+TqM1FLutQSAPnjITK7
 RR6Q==
X-Gm-Message-State: AOAM533qbr/trXwk6JRPHD2k9K88RlUQMycw7xrAn4JRycXEnMfKTi8x
 kl0eyNKPj+dgoioN712pnLNoBokyWcNOex5kO5BS2A==
X-Google-Smtp-Source: ABdhPJxUjW4GtVDMwGhimJkXUwNvX7Tr9JwCOPxfrbQrulwUS0MDRdszf4lJ44i0EOIMa/Nnos4vHOhpiJdziWPCCqs=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr1266313ljz.104.1591782257094; 
 Wed, 10 Jun 2020 02:44:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-3-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-3-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 11:44:05 +0200
Message-ID: <CACRpkdY4RzgpGg-dCSJet-es39bmC7KNxxCjma_mgjpUzVTvKg@mail.gmail.com>
Subject: Re: [PATCHv2 2/6] power: supply: gpio-charger: Make gpios optional
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_024419_128129_B936C82B 
X-CRM114-Status: GOOD (  12.38  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> While strongly recommended, not all devices have a gpio to
> detect if the charger is connected. This moves the 'gpios'
> from required to optional section.
>
> This also modifies error handling for the GPIO a bit: We
> no longer fallback to pdata, if a GPIO is specified using
> GPIO descriptor tables. This is a bit cleaner and does
> not have any real impact: There are only two mainline pdata
> users (arm/mach-sa1100/collie.c, arm/mach-pxa/tosa.c) and
> none of them specify the GPIO via gpiod descriptor tables.
> Once both have been converted the driver's support for
> specifying GPIOs numbers in pdata will be dropped.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
