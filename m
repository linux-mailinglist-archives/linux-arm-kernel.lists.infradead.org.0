Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526D34F32F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 04:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nn0Zai4yu7ALOYIOJ+2t4IATcPciTM0/qYsCav25cCc=; b=ULOcOGptmtQw+F
	ZGLdQSWTH+kUawxU38KL1vk6YhMSyaPWoC8p2TPQvYiFt+sYq9Nob74RJaexmHhgYkKbOjEJxzx/B
	8liDqnEU7FK2WtfOXt67OCNsQhiZBTprUMkZIHBj3YakKmKX56I7lpzFve6gNMOfQt48nwL/b+87a
	Nw8e4irTwcBD/c8iBsknCGUFVvKocgQ6JfAtu7XhQgvp1//gld9eepi4wUXnmQblURO+f6IX8RFXh
	YampvLd3mXzVu0QS5j127gLMetooXo0/d6dM6bS0ZIojA3J09X7soAT5M+R7Z/WH2CQCVMXZ1lQZL
	VhCGkin77uCy7Rc7GhgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heVYg-0008O9-5t; Sat, 22 Jun 2019 02:15:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heVYP-0008Nj-Vz
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 02:14:59 +0000
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D09922089E
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 02:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561169696;
 bh=Gw3/H1gb74X47RvwF/uGMRSSiLRpYocUROtj7YIJTQg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VehpLnHup/AkdWVOKWpqRHTZ5wzoPU2KUaZaLoB8UYKQZyV0VUgPdaYXsO87OR8AC
 7loe/VSVGCebHeTXoMtnOklXOgH1A3Ol0n1uu3C1qyFHmomObt85qGctZ4Y5UitpX0
 nwdD7io4jS5WHomi60BwUN/6pwcvjTMEOxmnaCmI=
Received: by mail-wr1-f53.google.com with SMTP id r16so8202772wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 19:14:55 -0700 (PDT)
X-Gm-Message-State: APjAAAXucUoP1GlcZPWamw762ZH8BkOxPFmVBVBPYj4PUVi6f618qpyp
 BO6kNSgU45CSS8H/ec4FchO0sHDnfxu2vDH+H2Y=
X-Google-Smtp-Source: APXvYqwvTIqSCbtB4S32cImo7307egfKoTitBiG9J1m3Ljc//NNauJ9wSYq+YM5mYMOCX+q+HStxsMAjvW2mvaBRzYA=
X-Received: by 2002:adf:f946:: with SMTP id q6mr12293105wrr.109.1561169694434; 
 Fri, 21 Jun 2019 19:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190619082307.GA27382@wens.csie.org>
In-Reply-To: <20190619082307.GA27382@wens.csie.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 22 Jun 2019 10:14:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v660Wc12DnQ-OPQ67M4KT=Up+eA3aeAuCD71HDyJ5iy8gg@mail.gmail.com>
Message-ID: <CAGb2v660Wc12DnQ-OPQ67M4KT=Up+eA3aeAuCD71HDyJ5iy8gg@mail.gmail.com>
Subject: Re: [GIT PULL] clk: sunxi-ng: clk parent rewrite part 1
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_191458_068033_182EB03F 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 4:29 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-ng-parent-rewrite-part-1
>
> for you to fetch changes up to 594d7e8fbe906ad3162ad84ae74acfbdcf8fa3a5:
>
>   clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE (2019-06-18 19:53:33 +0800)
>
> ----------------------------------------------------------------
> Allwinner sunxi-ng clk driver parent relation rewrite part 1
>
> The first part of ongoing work to convert the sunxi-ng clk driver from
> using global clock name strings to describe clk parenting, to having
> direct struct clk_hw pointers, or local names based on clock-names from
> the device tree binding.
>
> This is based on Stephen Boyd's recent work allowing clk drivers to
> specify clk parents using struct clk_hw * or parsing DT phandles in the
> clk node.
>
> This series can be split into a few major parts:
>
> 1) The first patch is a small fix for clk debugfs representation.
>
> 2) A bunch of CLK_HW_INIT_* helper macros are added. These cover the
>    situations I encountered, or assume I will encounter, such as single
>    internal (struct clk_hw *) parent, single DT (struct clk_parent_data
>    .fw_name), multiple internal parents, and multiple mixed (internal +
>    DT) parents. A special variant for just an internal single parent is
>    added, CLK_HW_INIT_HWS, which lets the driver share the singular
>    list, instead of having the compiler create a compound literal every
>    time. It might even make sense to only keep this variant.
>
> 3) A bunch of CLK_FIXED_FACTOR_* helper macros are added. The rationale
>    is the same as the single parent CLK_HW_INIT_* helpers.
>
> 4) Bulk conversion of CLK_FIXED_FACTOR to use local parent references,
>    either struct clk_hw * or DT .fw_name types, whichever the hardware
>    requires.
>
> 5) The beginning of SUNXI_CCU_GATE conversion to local parent
>    references. This part is not done. They are included as justification
>    and examples for the shared list of clk parents case.
>
> ----------------------------------------------------------------
> Chen-Yu Tsai (25):
>       clk: Fix debugfs clk_possible_parents for clks without parent string names
>       clk: Add CLK_HW_INIT_* macros using .parent_hws
>       clk: Add CLK_HW_INIT_FW_NAME macro using .fw_name in .parent_data
>       clk: Add CLK_HW_INIT_PARENT_DATA macro using .parent_data
>       clk: fixed-factor: Add CLK_FIXED_FACTOR_HW which takes clk_hw pointer as parent
>       clk: fixed-factor: Add CLK_FIXED_FACTOR_HWS which takes list of struct clk_hw *
>       clk: fixed-factor: Add CLK_FIXED_FACTOR_FW_NAME for DT clock-names parent
>       clk: sunxi-ng: switch to of_clk_hw_register() for registering clks
>       clk: sunxi-ng: sun8i-r: Use local parent references for CLK_HW_INIT_*
>       clk: sunxi-ng: a10: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: sun5i: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: a31: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: a23: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: a33: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: h3: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: r40: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: v3s: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: sun8i-r: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: f1c100s: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: a64: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: h6: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: h6-r: Use local parent references for CLK_FIXED_FACTOR
>       clk: sunxi-ng: gate: Add macros for referencing local clock parents
>       clk: sunxi-ng: a80-usb: Use local parent references for SUNXI_CCU_GATE
>       clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE
>
>  drivers/clk/clk.c                        |  44 ++++++++++++-
>  drivers/clk/sunxi-ng/ccu-sun4i-a10.c     |  39 +++++++-----
>  drivers/clk/sunxi-ng/ccu-sun50i-a64.c    |  41 +++++++-----
>  drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c   |   2 +-
>  drivers/clk/sunxi-ng/ccu-sun50i-h6.c     |  69 ++++++++++++--------
>  drivers/clk/sunxi-ng/ccu-sun5i.c         |  34 ++++++----
>  drivers/clk/sunxi-ng/ccu-sun6i-a31.c     |  39 +++++++-----
>  drivers/clk/sunxi-ng/ccu-sun8i-a23.c     |  34 ++++++----
>  drivers/clk/sunxi-ng/ccu-sun8i-a33.c     |  34 ++++++----
>  drivers/clk/sunxi-ng/ccu-sun8i-h3.c      |  29 ++++++---
>  drivers/clk/sunxi-ng/ccu-sun8i-r.c       | 104 +++++++++++++++----------------
>  drivers/clk/sunxi-ng/ccu-sun8i-r40.c     |  46 +++++++++-----
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c     |  29 ++++++---
>  drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c |  32 ++++++----
>  drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c |  29 ++++++---

This has some build errors in it. I'll respin.
Sorry for the noise.

ChenYu

>  drivers/clk/sunxi-ng/ccu_common.c        |   2 +-
>  drivers/clk/sunxi-ng/ccu_gate.h          |  53 ++++++++++++++++
>  include/linux/clk-provider.h             |  89 ++++++++++++++++++++++++++
>  18 files changed, 526 insertions(+), 223 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
