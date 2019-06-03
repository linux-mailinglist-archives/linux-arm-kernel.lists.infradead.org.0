Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B431A3351D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAJiosjA0RnU1cSl7CzKAP3C1iA5YHOpvQYEnI1m2QA=; b=VD1/oB9wBkz+To
	KYTNhKZdx6qA0ir6K1ciqavsVSvov5FnJ6pxfzdlM06Zfv+REPC3TpS0NtecDilKd9zZjeNMsC//t
	lubzX+Efc5xysoKqYLKGSIWDCpHkLhrXJRV4GfnZSh7gXL2OKUcE7yS33+2Q+BNdyuz2GvIJOneAx
	doL3+vqBufq2IaXoJXcKcHdOvf9qpSRsLbW49ySI75Qstzq8tUPzk673BnNSMGcqqk3pc9novjVkZ
	ujqgOBuA+kezjMsQ8a9DU81q9rp034bzWraoRk32b7I3llBVEgAiTeyEqGpoaanSIt1iHFAgYmfYZ
	mddnwyh8jiZHOzoJzb1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpyv-0000tf-JZ; Mon, 03 Jun 2019 16:38:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpyo-0000sz-Mn
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:38:40 +0000
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C581027310
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  3 Jun 2019 16:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559579918;
 bh=do4LaCsAOPTd/xXZSnOPF8r9lTDiUPMdRTL2m5faea4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=N70PghegSq3Sp1SpJr7jbTVhVknam2TQYZJLQdRm/w1+/4RPG1PxDgq1Ptja8yWvF
 O1Ek+RuJtu16YFsjFU//VyeEJQuMr6cbSPNwAg+o7/wAr9/lKPeAlxbfho7HgfcxhT
 Jsr+Sz0rNPsWOBm0Bz3ZtMK9Rr9pNLnl1Sp5D3RQ=
Received: by mail-wm1-f44.google.com with SMTP id s3so4588538wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:38:37 -0700 (PDT)
X-Gm-Message-State: APjAAAX3VntVHFCv/8NB+c5s9Sh07VnISIjBq1g/hC3tZ+wQfL5PMWVc
 4pCaIWx0GF1AGLJAcGkFowNWNXGlb7w9vYDoh1w=
X-Google-Smtp-Source: APXvYqy25ZyORC+P1JYMxi3NB1dbh9LoPrE65NBWSWqDalu0KCqhu02yb8Ru6YZLqwSu8cBe8X729wUELaCmuy0rqT8=
X-Received: by 2002:a1c:c545:: with SMTP id v66mr3207828wmf.51.1559579916334; 
 Mon, 03 Jun 2019 09:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190520080421.12575-1-wens@kernel.org>
 <20190520090327.iejd3q7c3iwomzlz@flea>
In-Reply-To: <20190520090327.iejd3q7c3iwomzlz@flea>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Jun 2019 00:38:22 +0800
X-Gmail-Original-Message-ID: <CAGb2v64VnzXv1-fDDM1bBFWEH7NZp=s5Uw3qRP05WiDvbyqVJA@mail.gmail.com>
Message-ID: <CAGb2v64VnzXv1-fDDM1bBFWEH7NZp=s5Uw3qRP05WiDvbyqVJA@mail.gmail.com>
Subject: Re: [PATCH 00/25] clk: sunxi-ng: clk parent rewrite part 1
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_093838_772477_075EC110 
X-CRM114-Status: GOOD (  22.44  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi Stephen,

On Mon, May 20, 2019 at 5:03 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, May 20, 2019 at 04:03:56PM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > Hi everyone,
> >
> > This is series is the first part of a large series (I haven't done the
> > rest) of patches to rewrite the clk parent relationship handling within
> > the sunxi-ng clk driver. This is based on Stephen's recent work allowing
> > clk drivers to specify clk parents using struct clk_hw * or parsing DT
> > phandles in the clk node.
> >
> > This series can be split into a few major parts:
> >
> > 1) The first patch is a small fix for clk debugfs representation. This
> >    was done before commit 1a079560b145 ("clk: Cache core in
> >    clk_fetch_parent_index() without names") was posted, so it might or
> >    might not be needed. Found this when checking my work using
> >    clk_possible_parents.
> >
> > 2) A bunch of CLK_HW_INIT_* helper macros are added. These cover the
> >    situations I encountered, or assume I will encounter, such as single
> >    internal (struct clk_hw *) parent, single DT (struct clk_parent_data
> >    .fw_name), multiple internal parents, and multiple mixed (internal +
> >    DT) parents. A special variant for just an internal single parent is
> >    added, CLK_HW_INIT_HWS, which lets the driver share the singular
> >    list, instead of having the compiler create a compound literal every
> >    time. It might even make sense to only keep this variant.
> >
> > 3) A bunch of CLK_FIXED_FACTOR_* helper macros are added. The rationale
> >    is the same as the single parent CLK_HW_INIT_* helpers.
> >
> > 4) Bulk conversion of CLK_FIXED_FACTOR to use local parent references,
> >    either struct clk_hw * or DT .fw_name types, whichever the hardware
> >    requires.
> >
> > 5) The beginning of SUNXI_CCU_GATE conversion to local parent
> >    references. This part is not done. They are included as justification
> >    and examples for the shared list of clk parents case.
>
> That series is pretty neat. As far as sunxi is concerned, you can add my
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> > I realize this is going to be many patches every time I convert a clock
> > type. Going forward would the people involved prefer I send out
> > individual patches like this series, or squash them all together?
>
> For bisection, I guess it would be good to keep the approach you've
> had in this series. If this is really too much, I guess we can always
> change oru mind later on.

Any thoughts on this series and how to proceed?

Thanks
ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
