Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612C76BA55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gNW6Uff78OTxqkWHKuX1eDNoFOZs6VUx1moKrrqa2Q=; b=A5ETJsVf3Tf/F5
	795OSAvK2Z+CtvaRFWLe7IF4xWBt2NSLfrhZP/Med4P8Qd1GOcDIrB3Y5b7YuHX/kqehAa6+krOAY
	7wlh0jGwgBiJ9F0mPkkCF3Dhpppxo3QijHOnIQXXsAS9qgcl6NbUH0JwJQtFgvZcDDN7qxvQaC9Ai
	Yw7n0az601fVh+yKQpcnF+NBKdE34jLNxIs4Pn9j6IRXh3S94msCDsp3B+BPMLgXe7/78tjYzB9bh
	AoqNjIYjFkVqPSJUSnah9u2ypeE51HU1YG0QH9mrlICwn3XESRD5oqf8cX9NWycQwPZg40A5nH4bf
	Um+SWLcZEkJYV+n8gPBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhHQ-0006rs-6Y; Wed, 17 Jul 2019 10:35:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhHG-0006hA-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:35:16 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4414621849
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563359714;
 bh=PAR8mlSeTH/LoKAbJRleg47rsHfD34Q7KbIi612oSMQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VCIOZcy1CV4tWdHH/3BIs9dheZFe8vV0t5YOXrH1sJJnkorvF2MJyjwUEDCL65VE2
 DhIPh1nOMFsig8WauNI8BijQwjQCuc1he9TylXqL1HTJ5xME0oSZTsg7kMUJqivfXr
 ChUGuW616fQwnqzU3MRjdhmALaE36CbMDa03uJYg=
Received: by mail-lj1-f180.google.com with SMTP id h10so23118226ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:35:14 -0700 (PDT)
X-Gm-Message-State: APjAAAVfIphrYWjFz6WrQsvklcGJeDSubtzvMZZiFZyFm360FWGur5jF
 EocYGjZfvC6sZPYjTibqgDJCQ7vQsnvLpw8Kafs=
X-Google-Smtp-Source: APXvYqy8D0RzdrNvLB/ZkY5weYlQZqHp4mf5RPOqEq2VDNgO6QJkju5xmxTPy8R/KFmcpxCPgjfx7det/rdOuHGMZ1M=
X-Received: by 2002:a2e:50e:: with SMTP id 14mr20723271ljf.5.1563359712606;
 Wed, 17 Jul 2019 03:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124501eucas1p17382ca9cead8bfe1dc938e6fb583b7c5@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-34-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-34-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:35:01 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdGnyEayFBuNPgrdB-9oqdvxkRCLm93kDBVfHnmnAgc9g@mail.gmail.com>
Message-ID: <CAJKOXPdGnyEayFBuNPgrdB-9oqdvxkRCLm93kDBVfHnmnAgc9g@mail.gmail.com>
Subject: Re: [PATCH v1 33/50] ARM: dts: exynos: set parent clocks to UARTs in
 Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_033515_525819_CDD9EB2D 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jul 2019 at 14:45, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Change the parents of UART clocks to the CPLL which has 666MHz.
> The UARTs' dividers use /10 rate so they would have 66.6MHz.

Write also the state before to show what is being fixed (I assume
previous frequency was not best choice).

BR,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
