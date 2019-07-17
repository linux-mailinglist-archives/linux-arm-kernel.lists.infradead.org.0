Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6EB6B899
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/02qXlQTESqukq/TUnlITXdFQYJ7mndnNetwRHJpR4=; b=JtVX7b7dswBDZE
	71FF/Qg+xqdLX8E5WC1oKEnt4eZsceErVCULIucpUYsy/pynC46RF25G8Sqm8nr6HXfbSv+gt94pm
	TWfdxl+duNsc6zw2fQY2qSjHXUk4hJGm3rwwNNZCE2weG75rp/Y7x6lJPgmBdgcZI11qRvFSceMLf
	vhgkzGqw6aDC3Cs3FjoVD4lG7Ah87XDQom3uLUjSMilgXr4ZMZV6DTjf7oi1LhE4SlrBYtljGx9u5
	4xfv6fFcp66zHvguULVQKk2166DJGeEvDU32xUmUHYqObX90ECmvBmwu6tbmvHRx5dFFk1mFFQjnk
	1Tarr+QwtbQQkXzlexXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfeI-0002Ay-2O; Wed, 17 Jul 2019 08:50:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfbr-0005Dn-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:48:24 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF39F2184B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563353303;
 bh=/NRR6ZVfH/r+x8OphvuI+fLrW6gXRTqze46/dbMGmOI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tA5kUXM3g/1ITmUwtPKsFJorXYYsWdZPHAI65v2pUAzTk0G5/mXlmAZqiLe87cBVD
 /sQ70iUvSiRZ/W+QQu6S+F5ksO6lCrzb3eKHLMB1FQ+oSm56MGSh+k147/dEnsqsPE
 gmGQ6cLFuCsF+OJfdHUaTux6Z4yf/vaDW0bFDT8s=
Received: by mail-lj1-f175.google.com with SMTP id r9so22783480ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:48:22 -0700 (PDT)
X-Gm-Message-State: APjAAAW0VfPDspxCGMMC3DS9o2Pm0Ic/bAUHkEqGKG8VNYRCZ866KZBD
 02fpJZlOSGYPZMKKoWZlk5sUoPPK7bQ5gJoYnOc=
X-Google-Smtp-Source: APXvYqwGbnK8q2TQAV3pBRB1WO6v0CtEUty37EkyvFjQViT6TKr312fFJIuwughcF6XBbdD2YqagKHof7D4Ib2xJ1sQ=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr20046257ljg.80.1563353301198; 
 Wed, 17 Jul 2019 01:48:21 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-22-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-22-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 10:48:10 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd0kzwZ9_eCK9r04Qj0Rf5SSSnMmwDj11cZozmu0gqsgw@mail.gmail.com>
Message-ID: <CAJKOXPd0kzwZ9_eCK9r04Qj0Rf5SSSnMmwDj11cZozmu0gqsgw@mail.gmail.com>
Subject: Re: [PATCH v1 21/50] ARM: dts: exynos: add OPP into FSYS APB bus in
 Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_014823_779546_29E33D94 
X-CRM114-Status: GOOD (  11.59  )
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

On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Add an OPP for FSYS APB which reflects the real possible frequency.
> The bus will have a new parent clock which speed has 600MHz, thus
> a new possible frequency provided by the clock divider is 150MHz.
> According to the documentation max possible frequency for this bus is
> 200MHz.

Commit msg is good but title could be improved. Focus in the title
what problem/issue you are solving - add intermediate step in scaling
of FSYS APB?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
