Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0552F39496
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPmMMDfRXk9oxa3YGBCPPbjlhGiou+46x2DX/zqDR8s=; b=corIfSDHVXcMEw
	QMCAdnOspJYLXdxQNs6CNdnOrLVKetqtvrVamxm1cidGixtt2Va/vZxnA/s9n1L1TcArW2ujxXizE
	4g2cZ/PpuC/Nx3Rf0t5XUre/VQL1ccZBKSVvuKaUW7Tt0nGzl46z7y3Fv76hpJWQh5rL8f4Au35dy
	o3q3nK61LkyJvhHy/RyMSiO2H5tw9vt+z+rjbBwl1e89JXq67hikmxus3jUdSU1lwmhklq2X0YNCq
	Amu+aiGHV4/VtCk3wi8PzIDYJ/gM9Ct6YEbYdN2UmBziO1QDhk89kZwwPLMYeTEW7R+EKtc5fM+G+
	yN3wOOEICFJLLAQwUXlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJsl-0003je-U2; Fri, 07 Jun 2019 18:46:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJsd-0003iT-4N
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 18:46:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5C3F212F5;
 Fri,  7 Jun 2019 18:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559933181;
 bh=J0nw1E2EN/TtoXc1Q4Yuy9LdBjugC1jeuRsyc4v7azA=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=Z47c1q/I05xsmjxvEUBEAn9G+zpsYmIOQeKwpy7p4Btrw2EpCxb0q8fJGbpPHUUmU
 aNTuF4bwgnnRPh1KEcMQ9msRSOofsnngKvr2604IcjxKCESd1FvjyA7KT3jARjeqSQ
 95Z/vIJbonxZgUyzNQ2EOd3GFUTSDOBC/uqGjPY0=
MIME-Version: 1.0
In-Reply-To: <CAGb2v64VnzXv1-fDDM1bBFWEH7NZp=s5Uw3qRP05WiDvbyqVJA@mail.gmail.com>
References: <20190520080421.12575-1-wens@kernel.org>
 <20190520090327.iejd3q7c3iwomzlz@flea>
 <CAGb2v64VnzXv1-fDDM1bBFWEH7NZp=s5Uw3qRP05WiDvbyqVJA@mail.gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 00/25] clk: sunxi-ng: clk parent rewrite part 1
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 11:46:21 -0700
Message-Id: <20190607184621.D5C3F212F5@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_114623_207346_DC529AF9 
X-CRM114-Status: GOOD (  23.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chen-Yu Tsai (2019-06-03 09:38:22)
> Hi Stephen,
> 
> On Mon, May 20, 2019 at 5:03 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, May 20, 2019 at 04:03:56PM +0800, Chen-Yu Tsai wrote:
> > > From: Chen-Yu Tsai <wens@csie.org>
> > >
> > > Hi everyone,
> > >
> > > This is series is the first part of a large series (I haven't done the
> > > rest) of patches to rewrite the clk parent relationship handling within
> > > the sunxi-ng clk driver. This is based on Stephen's recent work allowing
> > > clk drivers to specify clk parents using struct clk_hw * or parsing DT
> > > phandles in the clk node.
> > >
> > > This series can be split into a few major parts:
> > >
> > > 1) The first patch is a small fix for clk debugfs representation. This
> > >    was done before commit 1a079560b145 ("clk: Cache core in
> > >    clk_fetch_parent_index() without names") was posted, so it might or
> > >    might not be needed. Found this when checking my work using
> > >    clk_possible_parents.
> > >
> > > 2) A bunch of CLK_HW_INIT_* helper macros are added. These cover the
> > >    situations I encountered, or assume I will encounter, such as single
> > >    internal (struct clk_hw *) parent, single DT (struct clk_parent_data
> > >    .fw_name), multiple internal parents, and multiple mixed (internal +
> > >    DT) parents. A special variant for just an internal single parent is
> > >    added, CLK_HW_INIT_HWS, which lets the driver share the singular
> > >    list, instead of having the compiler create a compound literal every
> > >    time. It might even make sense to only keep this variant.
> > >
> > > 3) A bunch of CLK_FIXED_FACTOR_* helper macros are added. The rationale
> > >    is the same as the single parent CLK_HW_INIT_* helpers.
> > >
> > > 4) Bulk conversion of CLK_FIXED_FACTOR to use local parent references,
> > >    either struct clk_hw * or DT .fw_name types, whichever the hardware
> > >    requires.
> > >
> > > 5) The beginning of SUNXI_CCU_GATE conversion to local parent
> > >    references. This part is not done. They are included as justification
> > >    and examples for the shared list of clk parents case.
> >
> > That series is pretty neat. As far as sunxi is concerned, you can add my
> > Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > > I realize this is going to be many patches every time I convert a clock
> > > type. Going forward would the people involved prefer I send out
> > > individual patches like this series, or squash them all together?
> >
> > For bisection, I guess it would be good to keep the approach you've
> > had in this series. If this is really too much, I guess we can always
> > change oru mind later on.
> 
> Any thoughts on this series and how to proceed?
> 

I have a few minor nitpicks but otherwise the series looks good to me.
I'm perfectly happy to see the individual patches unless you want to
squash them into one big patch. I can review the conversions either way.

Did you need me to apply any patches here? Or can I assume you'll resend
with a pull request so it can be merged into clk-next?

BTW, did you have to update any DT bindings or documentation? I didn't
see anything, so I'm a little surprised that all that stuff was already
in place.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
