Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B623D6B8EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8cmgdZHSoT/QcR4qFbhsjk8BYTk7GvJlOKwCAJrghE=; b=LPWOFE7G/VTA5a
	Q1oVq66lORT8IXJnQQ/xMe2+/RTNOoNsM9rAJF0WWSsomKy//4GdhkQXSxOqUCVaTo+MVIVxYlOa1
	S792DjOVPv8+hmCQIPfxV1MDrdEmpSB8s+80IA4zfW4snLGvEUAAsuvNQcT7A3of7rOYZp62fKE0a
	dE/KjFYam1GnbvVSe1z1mdO//JG0PWFcg+umHdRHnK3Tf0j1wQo15lWaKqSrm3pFnFYKfnHIjhaUW
	RRm1jabNKRN6nsKz1FZNEctYYdBYcXIxulgiq2qgHDpO0yuHwjUSS+JF5yPKTY7ZcRytLgs+ax97E
	Zc1aMN8dXESH1T+lolJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfvU-0007Br-VG; Wed, 17 Jul 2019 09:08:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfvF-0007Ay-53
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:08:26 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 700AC21850
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 09:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563354504;
 bh=4vu4Okxb5WZcflRFF6tQdhHwvtvePiCyc0cLWLfo7E0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RALEPS5CHWpeiDfu+HsvmOaOtvbO5k1yXwr0S9XTymblJwDF6sHvV4gEFnM2bVK9j
 yKQMewHedSijshe748912a1/XBQpOFpER3JlkGbAUAI0kxVSMiGP7AzuAWb+5Y5IyL
 Qh+O+M84QxD+z/qPh2CYiANXO29KI04JSGWeFggE=
Received: by mail-lf1-f49.google.com with SMTP id r15so10978596lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 02:08:24 -0700 (PDT)
X-Gm-Message-State: APjAAAUPew0JKEb9p8yGuRHW4mX0Q7uT2ywqWFFV2B3pRKNw15zJOMcj
 RgiHG24UuQij2OSl+bRmOBDwbvowH56XDn70X34=
X-Google-Smtp-Source: APXvYqzPzGPDBYSh581qW48n1T0W9q70m0vdtu/7IVr2GTIxxD6DYirb0vG3PGSnLIb3eXrPmw69lCfnIFHh/iYbG8w=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr16685179lfi.159.1563354502661; 
 Wed, 17 Jul 2019 02:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124452eucas1p294d89255359b2036b19213427f558dbf@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-24-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-24-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 11:08:11 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeTsS_4MGfgT6ZnP8PzeaaP7Du71TxD3cQZXougGgvKXw@mail.gmail.com>
Message-ID: <CAJKOXPeTsS_4MGfgT6ZnP8PzeaaP7Du71TxD3cQZXougGgvKXw@mail.gmail.com>
Subject: Re: [PATCH v1 23/50] ARM: dts: exynos: change lowest OPP in
 bus_disp1_fimd in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_020825_215634_27C7146E 
X-CRM114-Status: GOOD (  11.10  )
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
> The lowest OPP must be aligned to possible value after division of parent
> clock rate. Thus, change it to the value which is true for clock 1200MHz.

I think this is getting slightly too granular. It seems you are
solving the same problem (or very small subset of the same problem) as
in patch 22:
https://patchwork.kernel.org/patch/11043849/

Please combine such changes per IP block, unless you have really
reproducible different issues (e.g. reproducible different performance
problem or OOPS, but not just what clk_summary prints). I imagine that
you align entire subsystem (DISP) buses to real clock frequencies (or
to match real frequencies, or to achieve more granular scaling, or to
get slightly better performance).

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
