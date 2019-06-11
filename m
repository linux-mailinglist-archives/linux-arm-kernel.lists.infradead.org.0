Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44B33C373
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7ekCLUCd5Z30sLFEL3C+zl1gTn/KM2NohOE9i/82QI=; b=fEKoMlt9Zpg5Wf
	buEw/Y847dzAL5Tj1GyHsufZ5TSMi8ROKskH5s+jcWhIhakSOH4VqfH7R5eTrsFHAmSKruG1oiZ3Q
	v6kfCb6IfI987yJRtRVREqD6X9SlC5rTMDXnyZTQnnbxBBz+R9WaUxSMLZM4CVp6aJBNPcgOyv7st
	/9rcL3iO8fFPo2tx0wo1/kTqZrx+B356w/amG36ZfChq5cZVDJAveOa96ohdd5QAcVhoKTN6e5TA1
	H5C8cQtqzfRfYBxUU/XGLUbW7rSgO/xn8vv0xpc9Wm/cMPgvDyVKR8qRM50xIX25u0ighXuYWTsYS
	s410EQjMIMBR92+oHD6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZQt-0007l2-Vs; Tue, 11 Jun 2019 05:34:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZQf-0007kh-3p
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 05:34:42 +0000
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D321208E3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 05:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560231280;
 bh=xeIfb6Sa8fR5KV0lFC7utDBMZgDzjP9QTSwAJEd5VM8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mD8CoED0taYtnsyHoi8+sE6VqobrS/wTnxOvcfGtd8Z4CadjNhE3/P1zZcyAXUa7d
 KQ4xvmmc+vCHnMlfXzwxbPovJve68U+aybhiZO/IGwW2La/UVdQFWXa/uDRHpvGDbc
 z7ZVTwmXgl1oNDt75OU3DyGVIvlh6+eF7eBDK4bQ=
Received: by mail-wr1-f53.google.com with SMTP id v14so11413411wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 22:34:40 -0700 (PDT)
X-Gm-Message-State: APjAAAUBwqnHPZLVmX8x+aZ26KMEph+T/nDCg4EJ3vV+iH+jdxAiUXXN
 tLtGoareFaZXMhT+z1iDqySRWNJHozBM39H21ws=
X-Google-Smtp-Source: APXvYqwv/LNlXWtcpF7Lorp2/yNYqYQ6FH2ipCH0ThQ3EW8WsmPijvPvzW5pI5PspawGCO4bJWuXFG5nwsKrLw2n/DE=
X-Received: by 2002:adf:f946:: with SMTP id q6mr27730732wrr.109.1560231278797; 
 Mon, 10 Jun 2019 22:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190520080421.12575-1-wens@kernel.org>
 <20190520090327.iejd3q7c3iwomzlz@flea>
 <CAGb2v64VnzXv1-fDDM1bBFWEH7NZp=s5Uw3qRP05WiDvbyqVJA@mail.gmail.com>
 <20190607184621.D5C3F212F5@mail.kernel.org>
In-Reply-To: <20190607184621.D5C3F212F5@mail.kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 11 Jun 2019 13:34:27 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Y8u=EGfrgs5Km8tiT7QYiJpf8LTJH1QnVrDmPPRng8A@mail.gmail.com>
Message-ID: <CAGb2v65Y8u=EGfrgs5Km8tiT7QYiJpf8LTJH1QnVrDmPPRng8A@mail.gmail.com>
Subject: Re: [PATCH 00/25] clk: sunxi-ng: clk parent rewrite part 1
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_223441_198350_22A84CC4 
X-CRM114-Status: GOOD (  28.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sat, Jun 8, 2019 at 2:46 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Chen-Yu Tsai (2019-06-03 09:38:22)
> > Hi Stephen,
> >
> > On Mon, May 20, 2019 at 5:03 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, May 20, 2019 at 04:03:56PM +0800, Chen-Yu Tsai wrote:
> > > > From: Chen-Yu Tsai <wens@csie.org>
> > > >
> > > > Hi everyone,
> > > >
> > > > This is series is the first part of a large series (I haven't done the
> > > > rest) of patches to rewrite the clk parent relationship handling within
> > > > the sunxi-ng clk driver. This is based on Stephen's recent work allowing
> > > > clk drivers to specify clk parents using struct clk_hw * or parsing DT
> > > > phandles in the clk node.
> > > >
> > > > This series can be split into a few major parts:
> > > >
> > > > 1) The first patch is a small fix for clk debugfs representation. This
> > > >    was done before commit 1a079560b145 ("clk: Cache core in
> > > >    clk_fetch_parent_index() without names") was posted, so it might or
> > > >    might not be needed. Found this when checking my work using
> > > >    clk_possible_parents.
> > > >
> > > > 2) A bunch of CLK_HW_INIT_* helper macros are added. These cover the
> > > >    situations I encountered, or assume I will encounter, such as single
> > > >    internal (struct clk_hw *) parent, single DT (struct clk_parent_data
> > > >    .fw_name), multiple internal parents, and multiple mixed (internal +
> > > >    DT) parents. A special variant for just an internal single parent is
> > > >    added, CLK_HW_INIT_HWS, which lets the driver share the singular
> > > >    list, instead of having the compiler create a compound literal every
> > > >    time. It might even make sense to only keep this variant.
> > > >
> > > > 3) A bunch of CLK_FIXED_FACTOR_* helper macros are added. The rationale
> > > >    is the same as the single parent CLK_HW_INIT_* helpers.
> > > >
> > > > 4) Bulk conversion of CLK_FIXED_FACTOR to use local parent references,
> > > >    either struct clk_hw * or DT .fw_name types, whichever the hardware
> > > >    requires.
> > > >
> > > > 5) The beginning of SUNXI_CCU_GATE conversion to local parent
> > > >    references. This part is not done. They are included as justification
> > > >    and examples for the shared list of clk parents case.
> > >
> > > That series is pretty neat. As far as sunxi is concerned, you can add my
> > > Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > >
> > > > I realize this is going to be many patches every time I convert a clock
> > > > type. Going forward would the people involved prefer I send out
> > > > individual patches like this series, or squash them all together?
> > >
> > > For bisection, I guess it would be good to keep the approach you've
> > > had in this series. If this is really too much, I guess we can always
> > > change oru mind later on.
> >
> > Any thoughts on this series and how to proceed?
> >
>
> I have a few minor nitpicks but otherwise the series looks good to me.
> I'm perfectly happy to see the individual patches unless you want to
> squash them into one big patch. I can review the conversions either way.

OK. Based on your and Maxime's response, I'll send them individually.

> Did you need me to apply any patches here? Or can I assume you'll resend
> with a pull request so it can be merged into clk-next?

I can send them as part of our normal pull request. Or did you want this
as a separate topic?

I'll still send out a v2 to cover your review comments.

> BTW, did you have to update any DT bindings or documentation? I didn't
> see anything, so I'm a little surprised that all that stuff was already
> in place.

The bindings had the clocks / clock-names all defined, and the DT all had
the properties, because we had already gone through one rewrite. It's just
the driver didn't follow them properly, because the parents were cross
node / driver, and we had these statically initialized parent name arrays.

I had started work on having the driver rewrite the parents lists based on
fetching clock names via DT, but it was far from elegant. Then this came
up. :)


Regards
ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
