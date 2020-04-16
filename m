Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14621ACF18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9ukpXJP9hQXW6hdLWV2w0U5AyFIz5i3i+kpOiUQ91g=; b=INT9TnCqfgkRu+
	ol2ewP77qqXUSMcdJo7Lw8hbr9PbEll1heBDWpCpwBePubaN0KutwQT4ueNBrDmenbIYj4vDQtTYc
	zyuGHHwX/1nOdSLtdNwsQKouMlQcUmo7yCVhzO1CXw4tNb1PjCtujfDs6DFm0z9penhZdodvmSHn+
	6QSBwcKo3lzptru+W0dDCaYujQXUHD64eVxMxlwESnuAzL5utDiPlKYh+q/UbuZsohUEC/iI7vKFu
	88KtQr28YP6+00b95ub1S8LTaCzZNKoZnEPcyVvSjlw+U3Z5yaCmTVstQxxxASNhF9pQ2buD7ljER
	1fDmHRDeEN/ANcQbjITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8ea-0000bB-4W; Thu, 16 Apr 2020 17:50:20 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8eC-0000ZZ-QC; Thu, 16 Apr 2020 17:49:58 +0000
Received: by mail-ej1-x642.google.com with SMTP id n4so1925443ejs.11;
 Thu, 16 Apr 2020 10:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O9vqKvQJSosI2zy51g44Ony9xOnUOUnQzLKmbPYbXLs=;
 b=rfmBJsjW7+iTxonwOCa9eCjK/EmzWmpsGcOogRYhp8EKYhNyd9HpF5Ix//iAy7xSf2
 Mzq9b7MumB9KO/PUheOIa/m+S6RHDonRpqTFDuMG15bAWrFdQJea/fVK3pL4tIiv25YI
 E1u5q1/jCMFhdUA1jQ8jvzX0mzbNXFLEAys1Gju0aZITfFrNkM7TqdgdFzNvw2UjwIZN
 POeYLUtBG+z/YvS9AI46Ddr8gt5atrXRUib1JNxz4OiBBWl7ijjeVA/eTLQ97eAlrJO3
 8Df88AU9SeyWCF+ufDJ9hXne0Ahwgg1njLoo0yg25cXkPYpsQyn8i6sY1jhOVX2Au0mO
 A3jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O9vqKvQJSosI2zy51g44Ony9xOnUOUnQzLKmbPYbXLs=;
 b=cXcX97auNeQTMn4FD9F1HDP7dDJ0rhiKwBYeb7Pb0gQ2yL+ejr13DwBj17MGfghQha
 nKecxYfZrf5T6Giz66FUxAKSeaM7KmKpAGRzApZDPfdPPapQgU7ztPf2oCEf0zmz/iE8
 rKv91TM/6kAEYZoa5GTCJ06Qr0CHl5EqQwCUi9kURxATqBUrhK5SVelQRjKjRmYxeTKL
 teJVz1ypSNQW8tPWHeaieT3vxTgIbNCjN2u8kcJFBtYsUD5aRMgQZN7tf9msMksKTMlZ
 SrvL6tpb5yCFxuLcrBsYGTO1/qIkhF71GP8UZji/cFbSApCaIbTKRV101SgHxV7AezyC
 HLlQ==
X-Gm-Message-State: AGi0PubzFxT5bZ2e25NTlS2gLoiUzQyoNCi9BNs0xTuertAsVyvdZGqG
 hhZcV5x/RxEjkQwMtvJddis/bYHv9er1DoyRMeJLTSdZ
X-Google-Smtp-Source: APiQypLEk2gMPX17Qyadyvo1VqaylHm20tB8KtuyppUGRUqPXNDwTXsEmsPQN4DGCwkKaSyK8Y5IYXm3qjuuAz/y7dQ=
X-Received: by 2002:a17:906:2962:: with SMTP id
 x2mr10033635ejd.233.1587059393912; 
 Thu, 16 Apr 2020 10:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
 <20200414200017.226136-2-martin.blumenstingl@googlemail.com>
 <1jblnrbu16.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jblnrbu16.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 16 Apr 2020 19:49:42 +0200
Message-ID: <CAFBinCCV=RNqLpJfj6JUkoc_+NXMWNgsdUSdAfucLCJCFWddUQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] clk: meson: meson8b: Fix the first parent of
 vid_pll_in_sel
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_104956_875980_C84C061D 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Thu, Apr 16, 2020 at 12:32 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Tue 14 Apr 2020 at 22:00, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > Use hdmi_pll_lvds_out as parent of the vid_pll_in_sel clock. It's not
> > easy to see that the vendor kernel does the same, but it actually does.
> > meson_clk_pll_ops in mainline still cannot fully recalculate all rates
> > from the HDMI PLL registers because some register bits (at the time of
> > writing it's unknown which bits are used for this) double the HDMI PLL
> > output rate (compared to simply considering M, N and FRAC).
>
> Have you considered adding a fixed_factor pre-multiplier, like in the
> gxbb driver ?
>
> Seems to be the same thing
it seems like I haven't been clear enough here: the doubling only
happens for some - but not all - PLL settings.

Let me give you two examples with values from the 3.10 vendor kernel:
1. the CVBS modes use a hdmi_pll_dco freq of 1296MHz
it uses: M = 54, N = 1 and FRAC = 0
with our existing clock tree this works out perfectly: 24MHz * 54 / 1 = 1296MHz

2. HDMI 1080P mode uses hdmi_pll_dco freq of 2970MHz
it uses M = 61, N = 1 and FRAC = 3584
with our existing clock tree this doesn't end up right: (24MHz * 61 /
1)  + (24MHz * 3584 / 4095) = 1485MHz

I did play with the registers and our clock-measurer.
it *seems* that the HHI_VID_PLL_CNTL3 and/or HHI_VID_PLL_CNTL4 are
related to this doubling, but I don't know for sure
my assumption is that there's either a fixed pre-multiplier like you
suggested and then a configurable "divide by 2" somewhere or there's
simply a configurable "multiply by 2" somewhere
Either way, I want to fix that at some point but since I don't know
the related bits I want to do that later on (in separate patches once
I have figured it out)


Regards
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
