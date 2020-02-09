Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0F0156A21
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 13:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9x8x+Rr/P7q1g+t5MY1XO/Ea/7MruGoEgeiAGGkckk=; b=j2NMpGxALZNH1/
	9ArbPi6QqYj4+Ev67dnsO7ITK+/RV4iyVx6f8Fvxah+SwdcxcnOhtmKhIwXP2LjUusRzBAUj1BPKj
	k0l/l/YYLb7J/90KnA8/KQzCR+dhGx7DPKakvmD5AKfHO/hhKobo9cFR1yAzE26p2QJcEahxTdNvN
	m7THagH19WJ4D4RZDOf7o/Au2QN/1kJ3QotrSqEILN7oZaSn2N6GMmtLAiu7sngwgMG5cXv1IodHY
	Mk8FhGAd1vemBBu1+6tR7Jw1mg1KM6beR3A6ETq/psnowL/eSJfoyXK6zymuQp2c+qXoQ9OuOCmYe
	yQlxAtJy0UkGhJkNO1Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0lw6-0001qa-7A; Sun, 09 Feb 2020 12:43:42 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0lw0-0001pM-0H
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 12:43:37 +0000
Received: by mail-qk1-x744.google.com with SMTP id a2so3362771qko.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 04:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/HDQIjj7/RoJLWTQe7Qn8xLRJWwhFZyZPFpixKZQtWc=;
 b=BslnAMPTFediwpaZFlp2heXASRgX8v8aUXs4aofs/vN0jqnkG+BxIvOnq4/ykzx/Eg
 OdYffEnc4QvF6RVCf74NmtRvLiqEzhYLuHxnSt160Yttiji8URM9DSLodTvmsws37OyT
 MzdF80b/1Gayu2vTVYQisVu6xLheXWBHCKEf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/HDQIjj7/RoJLWTQe7Qn8xLRJWwhFZyZPFpixKZQtWc=;
 b=ee+2OpzngcvqqcgU7kvNC3mD4vdqxtYyPs1Ax5dWbGgCTISg27u9axudNfW0pN9YrW
 UV1n4KmkmvVvRDvSSbt2gWxaAo9ip3kDJ60R2bJpI6p/9auPUJydR2YrFOOaGz8/wdl+
 ih6uhIThaIJ3mk7wkhFjV2W1wuWgzVvDlS0shJxAdfVn1uxRT7VWjsJX+3ndczfoL2Ae
 u5LJpqTgHziB2llFjt8PdT+q1KH86lqV0ZuelpGA/ilzyLwb+WGZvrgpgptpQYLKzBqD
 pYftgLE/+en/8lw8D0aMJ2kibKi7QzTsehSqZ8lmlWT93kIgZcgMgA1sxoHLQPsaJ428
 yLlg==
X-Gm-Message-State: APjAAAUOxr6lfTh0aedDc5vnx5PWHKzoOH8YPlpdonOim3zzeBOsB74p
 VMjXF9kK1gIMaGo3uKd031IvCYucqSHgbTb2xnMMJQ==
X-Google-Smtp-Source: APXvYqxdIXhbGu82ZxdIZ0YX8kCfAxINMhvxHUzLab5jgw1p7s+PzJ92K93PdTlaojIxuAyxA6VD+5BjPwjbjN0wh1U=
X-Received: by 2002:a05:620a:1656:: with SMTP id
 c22mr6969362qko.144.1581252213254; 
 Sun, 09 Feb 2020 04:43:33 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org> <20200207135251.GA2952@kevin>
In-Reply-To: <20200207135251.GA2952@kevin>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sun, 9 Feb 2020 20:43:35 +0800
Message-ID: <CANMq1KBKmOzaF_JcCMz_zWvDdO=ipnr3sv-PvpUZinheKSX8FA@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_044336_072466_D09A327D 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 9:52 PM Alyssa Rosenzweig
<alyssa.rosenzweig@collabora.com> wrote:
>
> > +     for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> > +             if (!pfdev->pm_domain_devs[i])
> > +                     break;

(next time, please provide a tiny bit more context when quoting, I had
to look up to see where this comes from)
So this comes from panfrost_pm_domain_fini.

> I'm not totally familiar with this code, but should this be a break or
> just a continue?

Check how the domains are initialized in panfrost_pm_domain_init, they
are guaranteed to be "packed" at the beginning of the array, so there
can't be any holes, so break is safe.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
