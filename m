Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B510F5A81
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HBIIfz1xM9dz/CxAMzTjUCMSUenfHyksm82h/NMuzY=; b=MGB6OWfoGbnHdA
	PPb0x9e8mkLKQtlHFKXrCVzk0JDqwZU+FuuhogG1MJspcGFCx3LCh6yw4+ZAlIQ1VQMBxGc7pXdMf
	ovfOafao+m/41lCBUf8+gFFSulAPRdSesvHczxaMoReFWRAzxsGgz38JcIXi1od2IpdYOH26Wp5PY
	F8pirNxpdehh9/6PPdGJwLNRurySBEg1TBExaBZcp2gT5KZXREXtFRbfTs5OjWy1Ran/DOWNL/9Ve
	RhXZ2NTVv9F2BU1W4NyaE3qgUvSslpErZ6qP/vbW2c81sst/H6nBlZGmcMGDJcMXoTRub+5Gufk1m
	D46NJ7xrdTsCvNPVRRyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCKo-0001vh-NM; Fri, 08 Nov 2019 22:02:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCKh-0001ui-7R
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 22:02:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B840D2084D;
 Fri,  8 Nov 2019 22:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573250538;
 bh=AOcwOYB4y7f1KXEfzIUOTC47dH5v1NkhDpSKJ5pum4Y=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=umsBXMgLcTKyZakRvsCvvy00ZURRr4cahpLM2ojyKkjZ/zvPb63DSeCypvC/jX0mn
 ZwWFOSTSu0jQkXO1YGD+hqQ9q3/P/eop2CNHOS4PynHh+W17YLmC4/TUU1Dlin7eWb
 LkotQylp8z4uiRdUKrBi77kcRrDL9JsjIlu3qjiU=
MIME-Version: 1.0
In-Reply-To: <87tv7qm0ck.fsf@belgarion.home>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-35-arnd@arndb.de>
 <20191028092327.939C82184C@mail.kernel.org> <87tv7qm0ck.fsf@belgarion.home>
From: Stephen Boyd <sboyd@kernel.org>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [PATCH 35/46] cpufreq: pxa3: move clk register access to clk
 driver
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 14:02:18 -0800
Message-Id: <20191108220218.B840D2084D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_140219_291897_EF6544C3 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Robert Jarzmik (2019-10-30 13:42:35)
> Stephen Boyd <sboyd@kernel.org> writes:
> 
> > Quoting Arnd Bergmann (2019-10-18 08:41:50)
> >> +void pxa3xx_clk_update_accr(u32 disable, u32 enable, u32 xclkcfg, u32 mask)
> >> +{
> >> +       u32 accr = ACCR;
> >> +
> >> +       accr &= ~disable;
> >> +       accr |= enable;
> >> +
> >> +       ACCR = accr;
> >> +       if (xclkcfg)
> >> +               __asm__("mcr p14, 0, %0, c6, c0, 0\n" : : "r"(xclkcfg));
> >
> > It's just a coprocessor instruction though? I don't see what this has to
> > do with clks that we model in the kernel? Why can't it just be put in
> > the cpufreq driver that calls it?
> I think you forget the "ACCR = accr", which is an MMIO register write. ACCR
> stands for "Application Subsystem Clock Configuration Register", so I think Arnd
> is right to put it in here.
> 
> As for the broader question you ask, about the cpufreq driver, the reason is
> unfortunately "historic" : pxa3xx cpufreq driver doesn't use the clock framework
> to set the bus clocks, but does it by directly accessing the registers : old
> platform, old ways, etc ...
> 

But there aren't any locks or anything, so presumably the cpufreq driver
can poke into the register directly and not worry? It may be a "Clock
Configuration Register" but if the clk framework isn't dealing with this
register I don't quite understand the desire to put it into the clk
driver besides it looks like something that goes near this subsystem.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
