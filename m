Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B423A6440F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KnK7dDZcI0B2TmpRcTR7kl11eojdg0eB27lvy/oLQA=; b=EpTl18RGRG4QmD
	SDXy6a4l6eaLnfGZVACPMdV8bE0pybowg8JXEtxqWNN38OFhB9pPf6cngW7h0wMka0zys9LVFqvJl
	4amGa+4pivnVPFOrcyizhKx5AQsfdvq7JtvCh28a3Tsl/L/dv7aYIWZpSzqLbTv0lHfqbGAd5KTn3
	G5yoWswqGBzmJu6SH9RypCKn3X9uD9EhFBsRDkzPL53OwNwzOgaLuc4NNr+be5+LdLR+DShs/ldiX
	pQKpKxXJZzImrqAMaN805TtizOzLj+ov7w3ovBdyGuFMN/n3qnkf9RDzQv2F+0iJFboBTs6FFXuQo
	s+efCn5ayW0EcDGu9B9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8Us-0007Sx-DV; Wed, 10 Jul 2019 09:02:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8Ud-0007SD-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 09:02:28 +0000
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 796AF20861
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 09:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562749346;
 bh=grJo9qA0dVCvVT51OK6PLtYRTvoyCGPyB+MacpINhxM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VY/CJTr0YtoB7QyD/0SL+E4YfwX770XgrKkTWfc5FB/PhxVYHVdUYQ31Q5dXtwoGC
 g9FIGr5uPL4kSxt4grGkGSry9UUUsW4hWOyjl30yu6u1TsXdAug9GICmHEACvlEtJO
 6XHenRQPf22/7kwmHJJ2CFrHG0WFvQ+mqSfuFhEM=
Received: by mail-lj1-f174.google.com with SMTP id h10so1310256ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 02:02:26 -0700 (PDT)
X-Gm-Message-State: APjAAAUlLUX+SBXwWzip6p2R91Q0WdxtT3FcPH7AjAAWJySv4e1aXoUK
 d4HelVePnxnZLtZ+kSFTJUAzri6LZNGalZ6060Y=
X-Google-Smtp-Source: APXvYqzMx4eMmr2iBEqLzt/lJp+fw4LN2JFxzaOjxmxUajPpp5qPQbRZZ2FHahr78e8oGOQvAGBAnOPvhsKRPbwqrBw=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr13258968ljc.210.1562749344748; 
 Wed, 10 Jul 2019 02:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190708141200eucas1p12bf901a2589efe92b133b357d2cbc57e@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <20190708141140.24379-4-k.konieczny@partner.samsung.com>
In-Reply-To: <20190708141140.24379-4-k.konieczny@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 10 Jul 2019 11:02:13 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd+KKG4kT6OeE4EZkwdhe3i_XoorJm4B+f7OUi09VOUyg@mail.gmail.com>
Message-ID: <CAJKOXPd+KKG4kT6OeE4EZkwdhe3i_XoorJm4B+f7OUi09VOUyg@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: exynos: add initial data for coupled
 regulators for Exynos5422/5800
To: k.konieczny@partner.samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_020227_133488_C66A31B0 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
>
> From: Marek Szyprowski <m.szyprowski@samsung.com>
>
> Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
> bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
> be in 300mV range.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi             | 34 +++++++++----------
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi |  4 +++
>  arch/arm/boot/dts/exynos5800-peach-pi.dts     |  4 +++
>  arch/arm/boot/dts/exynos5800.dtsi             | 32 ++++++++---------
>  4 files changed, 41 insertions(+), 33 deletions(-)

Looks good, I assume bisectability is not affected, because of
dependency on the driver changes I will take it for next next release
(v5.5). Assuming that driver change goes into v5.4.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
