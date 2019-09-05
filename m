Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249FEAAB91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 20:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvtf+cYVMwTrM3wgPWCVvqxU7ve1JXffEDhe7gy067o=; b=VPJ4+K7fyTdTrm
	i76O2vHFnETfUiMUI7JQHyOYv1VMrw/ENXvTDpwcqGYZd/Dcx564U9i3zkj+606wZPQZu4W6V5c4x
	6EJ3qduNjPGl8969fXfW6ItkT6IItqq7Xfq32efqbmlSSsFOizxvOpGaP3CdlkrVBstaSMh6YWB7X
	JgI5LhB1T/MvrBgC8xlGgQGqwpoTEfrBOlG68hnQTkzSvy1Hr72qcMURO7NTp/MgrFuBWKw1g3xt5
	2HfZKZm+NyEZkFOI2KMJALteHSDBHDKUH4f/ZDWCvd51AxL5hRotqmdnqI2eGlbNIchJlupyz1qlA
	6fYwI+W5IKeuy9Ew5rYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5wvU-00063o-4X; Thu, 05 Sep 2019 18:56:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5wvN-00063I-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 18:56:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9203A206BA;
 Thu,  5 Sep 2019 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567709765;
 bh=KMCg4BnWWE/5WYxMle5+q+OVPUFJUnN8yGfxlfY02Sk=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=IlowzJdJmOcAs6mWH/op88mTjNUcbnSETmgyVsDNE23bZIDo3c3f32+znlVqH4Coh
 J0Vt+e99G49iLLZd/KtYgeCxi9PvYc/w1uZoihrpH2el+xvTa8Yf64ixBms+zDIRxj
 Y0kO1Kz/BL6qPLZDx3y8LQhtWaPdcOxMVnMXb8hk=
MIME-Version: 1.0
In-Reply-To: <20190821122436.k3s7srhraphfnvgp@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-3-samuel@sholland.org>
 <20190820071142.2bgfsnt75xfeyusp@flea>
 <3b67534a-eb1b-c1e8-b5e8-e0a74ae85792@sholland.org>
 <20190821122436.k3s7srhraphfnvgp@flea>
Subject: Re: [PATCH v4 02/10] clk: sunxi-ng: Mark AR100 clocks as critical
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Samuel Holland <samuel@sholland.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 05 Sep 2019 11:56:03 -0700
Message-Id: <20190905185605.9203A206BA@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_115605_105077_AB9D3CF7 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2019-08-21 05:24:36)
> On Tue, Aug 20, 2019 at 08:02:55AM -0500, Samuel Holland wrote:
> > On 8/20/19 2:11 AM, Maxime Ripard wrote:
> > > So I'm not really sure that we should do it statically this way, and
> > > that we should do it at all.
> >
> > Do you have a better way to model "firmware uses this clock behind the scenes,
> > so Linux please don't touch it"? It's unfortunate that we have Linux and
> > firmware fighting over the R_CCU, but since we didn't have firmware (e.g. SCPI
> > clocks) in the beginning, it's where we are today.
> >
> > The AR100 clock doesn't actually have a gate, and it generally has dependencies
> > like R_INTC in use. So as I mentioned in the commit message, the clock will
> > normally be on anyway. The goal was to model the fact that there are users of
> > this clock that Linux doesn't/can't know about.
> 
> Like I said, if that's an option, I'd prefer to have protected-clocks
> work for everyone / for sunxi.
> 

Yes. Use protected-clocks to indicate what shouldn't be touched by the
kernel. It's not super easy to make it "generic" right now, but I
suppose we can work the flag into the core framework more so that we
still register the clks but otherwise make the 'clk_get()' operation
fail on them somehow and the disable unused operation skip them. I just
took the easy way out for qcom for the time being and didn't register
them from the driver.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
