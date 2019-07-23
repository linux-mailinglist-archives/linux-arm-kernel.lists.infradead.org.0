Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DC6717C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YghJtaNP9r5EwjaD5rCpFZTfrn+b6R6PgVlHzYpaGc=; b=L02gCV+ECtw3/w
	vtkce8pGWwckpETNCeS42pbglXpAqd3qnQ6ZnuH1Lmgk2o1yrH3HfpBepofnDaIp/8TXj8VeRdrxD
	HxJKoSRCnq37IWQX2vd3pE6PJlV8jrGKoMjUy1EW4RqeEsLY7gwO+nn2wDrVnzPW2SR9cvbdunRqx
	5eIQFk6D132lyxGniUkTreEyDU59SeBbM5vFGDwT9GteL+Z9Xr3qOA7fmhXrku6XYnRoGBd4htzD4
	ah8WaUhGgfHyBf5D9BDsqfANcUovHDlmEkPnMVwC8Nst/VJlH6TG3xR8CrWaXZPJmswghef+WqGLo
	WuGanTtSNEzA1qMt5Qow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptb0-0004JD-H5; Tue, 23 Jul 2019 12:08:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptam-0004Ib-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:08:29 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5B9D223B9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563883708;
 bh=nvBvzlCDrlw2nSkRwm+jqQZNCkb/0yrq0/hoIvGnykI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aw9YjpykC6CX2ocx7SES+UzwAHiNG+Ib9CZMBVPyP9nlsZbhnpBNtUhZEcT9KVGLH
 NzQklg+qHhvhOmQ5lthnaX0c2YJgxon1P0NX6okYPwtGPgTOSSLylAGYVQpCHkA3vD
 BB6l0JfAHHCHA06bXJiSGX8wxB+5+WuAN8fnslyo=
Received: by mail-lf1-f53.google.com with SMTP id u10so29141689lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 05:08:27 -0700 (PDT)
X-Gm-Message-State: APjAAAUWaLZM7L/j1kMc5ioG56G6PfM64k1Pq4b0GzsQGvP6Jay/6sUn
 JVmy5GEEhxTkvSKEUDGs8k593UUFZ78XvYoSsto=
X-Google-Smtp-Source: APXvYqw13qDeDRLye0Xy8u0GjyA8nlXejZvwnJiEBw7A7WJmtQt6RJeCPKPpMebsqdZgD8QGynWSPGSgTW6n8UtRsn8=
X-Received: by 2002:a19:f007:: with SMTP id p7mr34885531lfc.24.1563883705950; 
 Tue, 23 Jul 2019 05:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-28-l.luba@partner.samsung.com>
 <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
 <15310bd0-0fd4-8d62-82a9-7a9df6a8ced3@partner.samsung.com>
In-Reply-To: <15310bd0-0fd4-8d62-82a9-7a9df6a8ced3@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 23 Jul 2019 14:08:14 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdoun-2ankrcNzC70tXZi40iONxM3yPstdaiGBMPDjyRQ@mail.gmail.com>
Message-ID: <CAJKOXPdoun-2ankrcNzC70tXZi40iONxM3yPstdaiGBMPDjyRQ@mail.gmail.com>
Subject: Re: [PATCH v1 27/50] ARM: dts: exynos: align bus_wcore OPPs in
 Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_050828_563859_BA38706E 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 17 Jul 2019 at 18:58, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Hi Krzysztof,
>
> On 7/17/19 12:15 PM, Krzysztof Kozlowski wrote:
> > On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>
> >> This is the most important bus in the Exynos5x SoC. The whole communication
> >> inside SoC does through that bus (apart from direct requests from CCI to
> >> DRAM controller). It is also modeled as a master bus in devfreq framework.
> >> It is also the only one OPP table throughout other buses which has voltage
> >> values. The devfreq software controls the speed of that bus and other
> >> buses. The other buses follows the rate of the master. There is only one
> >> regulator. The old lowest OPP had pair 925mV, 84MHz which is enough for
> >
> > s/lowest/slowest/
> please see below
> >
> >> this frequency. However, due to the fact that the other buses follows the
> >> WCORE bus by taking the OPP from their table with the same id, e.g. opp02,
> >> the children frequency should be stable with the set voltage.
> >> It could cause random faults very hard to debug.
> >> Thus, the patch removes the lowest OPP to make other buses' lowest OPPs
> >
> > s/lowest/slowest/
> Actually, I have double checked that, because we always used this
> terminology: low OPP, high OPP, lower OPPs, higher OPPs. I can change
> it here for you, but I think this is not something that people are used
> to. Please check EAS pdf documentation or this file:
> https://www.kernel.org/doc/Documentation/scheduler/sched-energy.txt
> i.e. "running at a lower OPP" or "high OPPs", "lowest OPPs".

Hmm, indeed, you're right. Don't change it then.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
