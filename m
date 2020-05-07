Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054F1C8C14
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQB3FfI9/EhTxXQposqK4gCjJI81I1jkp133pTKkbxE=; b=R66bUUYg2zw6MK
	SeWI0viG2ln2NKmKCTgCT9N8aL5OoRpJUliKyUOVJjIpUZlPofDhbS/UpwabjwXjUDKG0ytYqccrr
	PAP/vX89ITKbkdxyT5+8a7VZ5XAoWM0IpPT/YuhrbEWz736AjhB7HzHXrKwDlWAt28KIq/+hBDe8C
	d9uDAp1WAsZ5fKXdVZ2E+6Fh8URa8c2QeoAC2UcDzB5wk1PXnUVwUR0Fjox5uGRfPjmEhd3jV15m2
	gQZsbxNEXh+OY06W0agIG+SLP0qhvN5A/cjeTP9Flu1yhmb/D99KORFOFA7QKH7QeC7FWL6ywxXT8
	9cgF1yjMiCiLeM1LgmRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgWb-0000pW-F4; Thu, 07 May 2020 13:25:17 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgWL-0000DW-IC
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:25:03 +0000
Received: from mail-qv1-f51.google.com ([209.85.219.51]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MOAmt-1jmRBj0xtR-00OZfx for <linux-arm-kernel@lists.infradead.org>; Thu,
 07 May 2020 15:24:58 +0200
Received: by mail-qv1-f51.google.com with SMTP id di6so2574681qvb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 06:24:57 -0700 (PDT)
X-Gm-Message-State: AGi0PuaLn46UqdZxiRw8DJSZLZgb4UfcEiX5opEq6+8WdapZkZL/kjo0
 2EfKk5NIPZqoqSuC32ky2mWsQjgrEXJ5gFu29oY=
X-Google-Smtp-Source: APiQypLIAviOYBCYxRnII0AvfushamRE+8Q+7+nbZJVXRnY9HSekpz3+fnWiynyno8isRVxgoJHmyQo0K7lErlQsonk=
X-Received: by 2002:a0c:ea43:: with SMTP id u3mr12360811qvp.211.1588857896673; 
 Thu, 07 May 2020 06:24:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200507112955.23520-1-geert+renesas@glider.be>
In-Reply-To: <20200507112955.23520-1-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 7 May 2020 15:24:39 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2TcOrWOhLKdovo0qTTx1PB4+iWVyFyzQOen7ZRwNZhJA@mail.gmail.com>
Message-ID: <CAK8P3a2TcOrWOhLKdovo0qTTx1PB4+iWVyFyzQOen7ZRwNZhJA@mail.gmail.com>
Subject: Re: [PATCH 0/4] qoriq: Add platform dependencies
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-Provags-ID: V03:K1:C1uFOW8cvNALGQg33aoxr6BX1FKuL1IIYz+uIteSkppMkx4WwEP
 BBGLn/3UMeN/dAudeFG4NsoffERTsIPr8WrvamUGS7mUZB3Uhphu7EhcRQR1KviAhHCwgrr
 PFM5Yrm+qnQZVe+Yh4vLl9N37+LWRtJGM6DDgPz7JMRZ6BkO3HLI2ZSoo/xzj5tUaxr9fkQ
 7KfMk9Q9zvSMOx62pPcAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ND9WOH/x+uw=:tnq9zF+LEhjbjrMMY1gl1t
 juQA7T1bpBkZ5/0t3uyzBuHm9wHQCnllL/s6xstoF462OI6XXmP2BwwjZVCGerY23PqWcN5mL
 9136rHORdeJjpy2GHj4RuzE3wsCS3yWrFHjXTJzUXRRYXokMTYtk1zh9xafCLD4ktRmxX3mEv
 i134N9pXLG5nW9PuUIE4SB1I/wr9keM7i0h2kNX4+V+cdcXqv1ewUwotkviENIpxA/wma/UDb
 dsONFhxgGY9bIkVNew86LHln14326L61LvTbk6WfS7kw5Y8cHA1qUSCJaxz/+bBsXWckX7syq
 9optz2nuRpoHFicWN9GsURL++ox7mOxJyXoSDhRilxzK7eMhzyUKYue1gctitRv01Yab+TNhM
 1A7alUYMrk/aXJJgESOZ1+Cfjwkdm6sAhRD+bURDvN2PJU2tgry3a+BVy8QGp4oeHMZspVrFb
 8wVaTNIKSSRW+gN4sUjoii861TAS2mdKsnEV0rM7+l0RLz556x9InGqyI4kxeVcWpXOSzg2RW
 S45gMGpjIp7funAMcdOhY1Sr41gYi13tuLj3lrGgDd+au+ihb5rtykP5kyQKYokS8Bh2Ph/Mu
 sBnr1Hmi1pZe+WDKlmcNwWlyWJLEAn4cayqZr2se7qOZ6YmTvoGswChPFnWXqHtU450utHSRf
 rv9x0n+rJO4+hAsHHyeZC3S/+hcVW2ssKSi1ygHWumB0kEG3cDkDzDzobWc+5m6qPIOn16By7
 a2mfq+lF6iNlUYvzuy8KI6P3xi4vLJgUsFWnkCHw3b4SV9ah+4o/MHbdzSGBN2aw8A4mI5/3s
 m9+DxyEoXu6hpT43UZOwI+TuYMbT7x7ykISsIVlZT9Loq0+p48=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_062501_913567_18917474 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@kernel.dk>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, IDE-ML <linux-ide@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 1:30 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
>         Hi all,
>
> Several QorIQ blocks are only present on Freescale or NXP SoCs.
> This series adds platform dependencies to the corresponding config
> ymbols, to avoid asking the user about them when configuring a kernel
> without support for these SoCs.
>
> Most patches in this series are independent, but the third patch may
> cause some Kconfig warnings when applied before the second patch, and
> enabling the QorIQ CPU frequency scaling driver in a non-Layerscape
> kernel.
>
> Thanks for your comments!

These all look good to me, thank you for the improvements!

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
