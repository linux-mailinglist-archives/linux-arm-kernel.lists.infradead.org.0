Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28228AC24A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 00:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0IxTl9bIGRZYeB7oL4jFoAqqTZ5uZzyFR/Sh2eDPtM=; b=F3zdsZQfCjGzkG
	NSeSTpUd7bUat7y7R+ZTcOVtI9FwEhz6lm0fwkhgpJgNSZ2eFo9VCuQkufw+LUJrapUgfIuNw6jac
	o21kVoz29rdwLbUrsDoNQmgZ0sApP1X5HEIX4yz9yBIemCVZk/wgyoKaMYH3pKdEtkqTmTaYTTlg6
	E9m8byamPoxEAVrqgec11dmXmcq3zT5H61u4QbH/ubaa6DqU/RtgKmGhZ8WOYAEORUW10kXhaW/ni
	t+XB3t6nzfvx27DR+n5ok7sxNF5EmS+TLDpyU3OFe8kbhk3vLAEcGx3YYVNrSxbhZ4ncfM+8AQlK1
	s+V3tOQr6WoBNTpgPQkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MK7-00022e-Ik; Fri, 06 Sep 2019 22:03:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6MJx-00022K-L3
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 22:03:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C8742081B;
 Fri,  6 Sep 2019 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567807388;
 bh=JYOTkYYE3g9CREcW4Rr1oQgc7T/eq+7DhhZhFapLkq8=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=sP6sCyo5xiItbKXA2QHUtl2blDkXsni7Mgxs4uuomLLMvb2Eib+I1px0DIRy7OMUA
 UzF5N1e9CJMlOgYUX0zcdjUxVoFEs5v/AZNeGj2DTaDvv4xNlGDr4ESI+s57DvxZD6
 JT2HajE5DVqfglx5YrEaoDDuPkkASHqo80KmRetU=
MIME-Version: 1.0
In-Reply-To: <CACPK8Xf3C36KMgDmmRtNFqVFHzZx81ko+=54PA4+d5xPitum3g@mail.gmail.com>
References: <20190816155806.22869-1-joel@jms.id.au>
 <20190816155806.22869-3-joel@jms.id.au>
 <20190816171441.3B8F720665@mail.kernel.org>
 <CACPK8Xf3C36KMgDmmRtNFqVFHzZx81ko+=54PA4+d5xPitum3g@mail.gmail.com>
To: Joel Stanley <joel@jms.id.au>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] clk: Add support for AST2600 SoC
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 15:03:07 -0700
Message-Id: <20190906220308.6C8742081B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_150309_716039_604595EC 
X-CRM114-Status: GOOD (  17.25  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-08-18 19:03:54)
> On Fri, 16 Aug 2019 at 17:14, Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Joel Stanley (2019-08-16 08:58:06)
> > > +static const char * const vclk_parent_names[] = {
> >
> > Can you use the new way of specifying clk parents instead of just using
> > strings?
> 
> How does this work? I had a browse of the APIs in clk-provider.h and
> it appeared the functions all take char *s still.

Sorry I didn't reply earlier. I'm going to write a kernel-doc to
describe how to write a "modern" clk driver which should hopefully help
here.

The gist is that you can fill out a clk_parent_data array or a clk_hw
array and set the .name and .fw_name and .index in the clk_parent_data
array to indicate which clks to get from the DT node's "clocks" and
"clock-names" properties.

> 
> > > +       hw = clk_hw_register_fixed_factor(NULL, "ahb", "hpll", 0, 1, axi_div * ahb_div);

Take this one for example. If 'hpll' is actually a clk_hw pointer in
hand, then you could do something like:

	clk_hw_register_fixed_factor_parent_hw(NULL, "ahb", &hpll, 0, 1, axi_div * ahb_div);

And if it's something like a clock from DT you could do

	struct clk_parent_data pdata = {
		.name = "hpll",
		.fw_name = <clock-names string>,
		.index = <whatever clock index it is>
	};

	clk_hw_register_fixed_factor_parent_data(NULL, "ahb", &pdata, 0, 1, axi_div * ahb_div);

I haven't actually written the clk_hw_register_fixed_factor_*() APIs,
because I'm thinking that it would be better to register the pdata with
some more parameters so that the
clk_hw_register_fixed_factor_parent_data() API becomes more like:

	clk_hw_register_fixed_factor_parent_data(NULL, "ahb", "hpll",
		<clock-names string>, <whatever clock index it is>, 0, 1,
		axi_div * ahb_div);

Because there's only one parent. For the mux clk it will be a pointer to
parent_data because I don't see a way around it.

> >
> > There aren't checks for if these things fail. I guess it doesn't matter
> > and just let it fail hard?
> 
> I think that's sensible here. If the system has run out of memory this
> early on then there's not going to be much that works.
> 
> Thanks for the review. I've fixed all of the style issues you
> mentioned, but would appreciate some guidance on the parent API.
> 

Cool! Thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
