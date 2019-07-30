Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69B179DA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 02:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fh4ET4bWAra9qqzqQJNIYnzC9tZdH4Y1D5hEC7ddhSY=; b=ud5nUlYPt6aSHy
	tBGD0X6KzHyj42/kxmSzrBqgIkURUNsz2hc2gCPvdAKS+tbvg0NxJDcm+xM26fNi5BlXSC/rqQXWB
	qhEHcm/ryUmWvzXyYnoPmYSsMuWWiGF70cb6wH/Vey6LTSxei7owHlKmDegqIPkGynJ78bG1WnGR2
	j0ou2SLk48AzCyDu5vOaeqq9F2bU+K4zZDM9Lzum7nvqxSs2+KrE6YC8W4bqTzB+MCRI/RIBL7Dt6
	T1GEtc/YGDaAgofeNoBdqbDTzaAeDjhCNfNlh+Sa/NwMC+kCuX/O2opUzy30gq+vuZ4tu8dNFs5W8
	WliSnjS27y/UEjBet/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGOa-0003yX-6L; Tue, 30 Jul 2019 00:53:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGOO-0003xZ-01
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 00:53:29 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 880EB2184D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 00:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564448004;
 bh=9P9XTSwZEraMWe+Bk5cn6zbx8jLkRWytZvexBkWykzI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GZn0k3A0oUKjhpHUtqLiXRw3SRuEkDcz1+PO0erXAQO/scDbcDmhX0T170FwAUyY5
 bs43EZSP1C4VOHZp6Ee6MsowaTqa2igTtD6/Gei3ZsJYZLXYW3K0cCfWMeBz+hU1eR
 bJ+/HRQ17C6p7aybDnfpD4HYvSHP4Ueg6SnmGMU4=
Received: by mail-qk1-f171.google.com with SMTP id g18so45396152qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 17:53:24 -0700 (PDT)
X-Gm-Message-State: APjAAAXZwkQunjGu8OIg7jgTe5E172xJuje0zxLhYk/kYlWunpJ8cTFe
 hoBE0PxV8JTTKdYBV3HrU3Oxs3G8U3bVqQaplg==
X-Google-Smtp-Source: APXvYqzg4CpA6qd+PAURQBwuutVBrAhYvydEn0PwGDcygNvMl/0/kHQLTQyV/snoQAZCqvPMbDRKwGTKrK5sagEuO9s=
X-Received: by 2002:a37:6944:: with SMTP id e65mr68832709qkc.119.1564448003532; 
 Mon, 29 Jul 2019 17:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190726053959.2003-1-andrew@aj.id.au>
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 18:53:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
Message-ID: <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
Subject: Re: [RFC-ish PATCH 00/17] Clean up ASPEED devicetree warnings
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_175328_085961_D74BDAE4 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org,
 Xo Wang <xow@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Ken Chen <chen.kenyy@inventec.com>, anoo@us.ibm.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 yang.brianc.w@inventec.com, openipmi-developer@lists.sourceforge.net,
 a.filippov@yadro.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, taoren@fb.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>, wangzqbj@inspur.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 11:40 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> The aim of this series is to minimise/eliminate all the warnings from the
> ASPEED devicetrees. It mostly achieves its goal, as outlined below.
>
> Using `aspeed_g5_defconfig` we started with the follow warning count:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     218
>
> and after the full series is applied we have:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     2
>
> for a 100x reduction.
>
> Getting there though isn't without some potential controversy, which I've saved
> for the last half of the series. The following patches I think are in pretty
> good shape:
>
>   ARM: dts: aspeed-g5: Move EDAC node to APB
>   ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
>   ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
>   ARM: dts: vesnin: Add unit address for memory node
>   ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
>   ARM: dts: swift: Cleanup gpio-keys-polled properties
>   ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
>   ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
>   ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes
>
> With these patches applied we get to:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     144
>
> So they make a dent, but fail to clean up the bulk of the issues. From here
> I've mixed in some binding and driver changes with subsequent updates to the
> devicetrees:
>
>   dt-bindings: pinctrl: aspeed: Add reg property as a hint
>   dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
>   ARM: dts: aspeed: Add reg hints to syscon children
>   dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
>   ipmi: kcs: Finish configuring ASPEED KCS device before enable
>   ipmi: kcs: aspeed: Implement v2 bindings
>   ARM: dts: aspeed-g5: Change KCS nodes to v2 binding
>   ARM: dts: aspeed-g5: Sort LPC child nodes by unit address
>
> By `dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS` the warnings are
> reduced to:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     125
>
> The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
> the remaining warnings (which we can't feasibly remove), but doing so forces
> code changes (which I'd avoided up until this point).
>
> Reflecting broadly on the fixes, I think I've made a mistake way back by using
> syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
> devicetree. This series cleans up what's currently there, but I have half a
> mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
> driver implementation that uses `platform_device_register_full()` or similar to
> deal with the mess.
>
> Rob - I'm looking for your thoughts here and on the series, I've never felt
> entirely comfortable with what I cooked up. Your advice would be appreciated.

The series generally looks fine to me from a quick scan. As far as
dropping 'simple-mfd', having less fine grained description in DT is
generally my preference. It comes down to whether what you have
defined is maintainable. As most of it is just additions, I think what
you have is fine. Maybe keep all this in mind for the next chip
depending how the SCU and LPC change.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
