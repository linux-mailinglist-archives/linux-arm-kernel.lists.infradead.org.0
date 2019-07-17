Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2972E6B9B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09QyOL4Vg+PrqpSi001iPpr2E3snWFmBMif1QOsleN0=; b=XqpaGFtGtbUnuu
	TJcKAS38NOkE6+Vl+G8Cu/+4eu6GOtGbR+SkIA962U5W49TrJyd01NR35CLKTAjP5+OxfbwXBEiLk
	aO2bqS7CXLXgHZQjzabi5yj2nXpuUxgtERhLGHkh4fnRZp9uK+iQRBBvwp+bBuZzUTPxdbUnj3G5p
	tL6pOXxZw5jy0IK3Ksl0obSJ01Zdn5WMPPBFjW9P16CUUNZqiXRz39Sp8kN579py5QALJLIIuuDXP
	SqPeBwWR5KFGOp3auGpCZsWo99/rLJcovplJCnGDdvTfnF3Y6H2C8jAaEcekXzNgI3dws8G4An1yF
	v6rg1DkLUMt5IXnjexSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngoD-0005E2-Cx; Wed, 17 Jul 2019 10:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngnq-0005DF-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:04:51 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 209BB2182B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563357890;
 bh=cxrHAxpbFgJEYGfTBwEGfvIpkQdM8v6E7N7v7YKfsyo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ce0Djo5SGxrZvFuUFJCysw5byh7FkXoy/2aP1lYiuGvzZlM3HfFHuO+EnGWglmaTM
 TyRksP1eePtU/ApVj16anmAtz6ktbuSQIUP/6H6yGnSCLYPq4Plw+1ZtRu41mCmGmT
 TmBD/RuS/K79iuEnAsGLsyc+xslh5oFzU6sQsLpQ=
Received: by mail-lj1-f175.google.com with SMTP id h10so23030858ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:04:50 -0700 (PDT)
X-Gm-Message-State: APjAAAWcwJhvEGglB/OOtjaEr0wBWjc98RnPoyX8Af7ZQI9qK51smJ2q
 /1z1MsxpI4p94/M2yXRYwlIY48DW6I0RDeXoVsY=
X-Google-Smtp-Source: APXvYqyUF6RwWmtpq2St1SUUGe05KtJonxRDAPvTHfsETJ19YFTa2yjFxeqxPAGfIR3HLu1rlVn3N4W4P43GH7prZcw=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr20711008lje.143.1563357888437; 
 Wed, 17 Jul 2019 03:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124454eucas1p1cd37552b222539b02629cb52e646ae29@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-26-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-26-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:04:36 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcfqp2mUXW70=puti7mf0S5LoXF4hFQt5-9tvCgLzjknQ@mail.gmail.com>
Message-ID: <CAJKOXPcfqp2mUXW70=puti7mf0S5LoXF4hFQt5-9tvCgLzjknQ@mail.gmail.com>
Subject: Re: [PATCH v1 25/50] ARM: dts: exynos: add 300MHz to bus_disp1_fimd
 in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_030450_768931_97D5FBEF 
X-CRM114-Status: GOOD (  10.47  )
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
> According to the documentation max frequency for ACLK300_DISP1 is 300MHz.
> Add an OPP which makes it possible to use the full performance when needed.

Squash it with #23.

BR,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
