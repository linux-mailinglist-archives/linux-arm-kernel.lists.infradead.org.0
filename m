Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A241BDC19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYpw4JCaA6fkD+ESp2e76d9EQMiTAEMzs+8CJsiqewg=; b=l4FETki76jAHV1
	7BItuOdtLjlzZUJiT0uO8q3PdABJs0o3NKFjmXSzCGQVcdf/Fe1UZThU3eXWYdf1jg+QChbdKVeXo
	naHGgvovDxOoiieWz0vjg4994omRK7WvTkz+IKkpCS8F/ys7lP7UFupDUJ0wnzwO8mlDujT1LluJt
	deK1mmATLfRu+eVLQuA0RQQOhvptlQlomLcIWfqmNNcXLiNEvafYGX9u+KIn3vsjNVh/YfliMWHHQ
	MsaMNowWGQ8HwouBaU6FX9+mi7rAieudazLWrI4G0F6X1IGbcIkJU1dxL1WWiQceZdPNnAeTSTGWp
	yXzkc7ibpxHOpWnZMEmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlnx-0003H8-FV; Wed, 29 Apr 2020 12:27:09 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlnn-0003GG-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:27:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id m2so1476145lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 05:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8AVYfRNBk5SfjUGcIYpm9D16vfFbFb3Os+d6TzVS3+g=;
 b=QlO97oXJ1h1yKASmnWSSsvDLiT7uvlzXfDlywwMx1gWh3EmukLK9KQwV4zsUURYYg8
 o35A7ZGE0xcisSwY8SRFG4fsPdun64m7qVWuEzjQcBMfoT1rkc7Pdml/hv2bAWN53QWN
 FkF9LgIH/u+BwnaqYkCUdXkOK2rbBoe7RtdkF6G+muzIfOXo2PWYT7OhfXst3pa9lXQF
 zzddeSWxfLLH6PJzfjW5LSj5r1wmNEUEitIF4IPvPSjIFRhP3teESWjCncaV4bdZSuk5
 7C5h6nHZNYJqK6TNOUqxJfxB1vo0PJaaEQgwea+cYvBxRJ4+TfWj2U5wPXTSVExvulCY
 WDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8AVYfRNBk5SfjUGcIYpm9D16vfFbFb3Os+d6TzVS3+g=;
 b=hVng8bxUJy9i4s9UhNNZX25yvZk+YRKUcZY2s7jarQ9T8D6cwvj0p8gQv+d0qxsOwn
 n0cvzQDH7DnThlAI4UJRot2uYs7V+fSxb/MeNnceDGifRBE8Yh3rc8UH9jnTRETgNvkR
 oD1JFheP8oTADtqn/isxbOOEnSU3dT+9oRVo65JiqDOz8gkM5RaMzFbqYwfjG+xA3CX9
 guTwe3M9QonLN4CG8dSUgrw+9+pb2W/+jeYeklHv23EWIGcXkwWphrpdx0/RIcW2K1Lk
 EDpIbo2oetHrlMsuii6+LegYJebrmOIq02kWiyS+QjhEMQFBTVckOO/I8FBiL5fmUqbE
 qduQ==
X-Gm-Message-State: AGi0PuY1cdcvcGDuKKq093MGtZ9Bd+1KafyW7bwQUpsWBVkHSoOOV7hG
 CEe/BwjXnyFQf+fKiphiyeoE654uCz/xqTD1dSdjvg==
X-Google-Smtp-Source: APiQypK0XFTJiAXFLcUsDWl48m8EemW//x3P2XglJ5+pVhuWux3Dz03+qiqrpeKEd3ynEv8VSjR2WJhKjLnFK7JGiGM=
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr22982327lfp.77.1588163212051; 
 Wed, 29 Apr 2020 05:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
In-Reply-To: <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Apr 2020 14:26:38 +0200
Message-ID: <CACRpkdaE7BRnZbBbx2Lk3CoG6uSiCV1dJWMgF9wU0UyHe2QP0Q@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_052659_644983_81072623 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Saravana Kannan <saravanak@google.com>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 8:06 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
> [Me]
> > There are a bit of other differences that have piled up,
> > should we take a quick look at dd.c so there is not something
> > else we're missing? I see some PM code for example.
>
> Well, late initcall based approach is what earlier version of my patch did:

I see, thanks for the context.

> For me it is fine to get back to late initcall based solution, though.

The idea here is to do both/and initcall and timer deferred probe,
not either/or.

And the dd.c core also does both/and.

And then it does some more things, so I was thinking we may be
missing out on some of them?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
