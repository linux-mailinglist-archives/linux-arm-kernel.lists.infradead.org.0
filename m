Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2790891AF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 04:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ0+l0Y8aoXohZg2trg48G3xmGwHrvcp+n70sDv0xWI=; b=fjC/6JlMnUt5KC
	MyeEjfTSk/dU5o94UW/k/TskMKuTd8WpVVHbMRI8kh9kxJWDnO0bfSZ5U+Oj8TQxU8Yv2u78ssOxA
	zsCMgcKviChGirChahlDW21lI7f36UzIHbKGal6qVSJBC3RLSE8NV4v5TS7IlN1TITdGCSk8u3SwQ
	4b8TObPfy/KJCeoC9PuycTDg5r6djf06ajxh+E5VqynEZlssacrV8C/uyTj6JiFU5rF1UDaZCEEPT
	1pv4s12+jrEIKJA9ZiRfRVDxTV7ZjYwUFZ/QTEeT+HdG/OBaVKY64Fmn5VzT3FiinPoHi1xmeRFwH
	DpiWs37XEnLFPpUSGhYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzX1y-0001NZ-GK; Mon, 19 Aug 2019 02:04:22 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzX1k-0001Mq-QY
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 02:04:10 +0000
Received: by mail-qt1-x843.google.com with SMTP id b11so301675qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 19:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FdqGTZilsvAWJPaR0r/39oQNhzP+xm4M+Hqj2f46Le4=;
 b=eAkzqdRHxj7xl3kdMzG92M7hwnZCYFCErUC8N9g4vwMUz9x7GxI8gB6LRTI7evg9r7
 GxsfBoyyVf9vAUgqjNSxcW/qJZySMptuMHbrE2T1o6VOrFU0Z0z+5aGIgMSQM9pKFObO
 5dQU4vqa82LdalDmFhWSJIc8Eiw5uU/RjebCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FdqGTZilsvAWJPaR0r/39oQNhzP+xm4M+Hqj2f46Le4=;
 b=FCjdiYoWwZoC47hO+vuN+cfIARchui5apfz67Gou3xmfY10kRoaTsNHdJnvSoXli7P
 GFXQRZkybO6sANfaENLpem9mNMAvmof4z7BaMdFFiNPx9/3eBiF0/ST4UY+tLLNik9g0
 X4nGIt3sBAC1yx6a8tBomHxdEvEZAaVoZm0nThWJZ+zYS4FRmXCpfri+B0Lb5P3Krs4w
 +l5xyReJQDpWT7drElvYsDj7UAlY+/yc6tuWPQVTDU6WVIgwdjxM5w2mKy/AiApUhnhh
 tssF5pS2zZAS8UvgYYebScSnmJsRiq48hmB2GXnJVQ7bOQ78tqLb5iLs59VlkBHJRJFJ
 Q/CQ==
X-Gm-Message-State: APjAAAVmFN/NCKyDqZjKomHxqjA2C9wG9YgSIgMThYtjYnR+rFy6+34g
 p2WwsAsrXNki3ST01GVoC4+l/RdF81AoqX/n0oI=
X-Google-Smtp-Source: APXvYqwaqW1bDbSfWZoN/blgOOuB7rbNcyl7kFtP95yF52dZJtwbw4h7rCAX8fzCnG8TYPmCF1JZE9109RjBT+A7qVI=
X-Received: by 2002:ac8:24b4:: with SMTP id s49mr18690956qts.255.1566180246129; 
 Sun, 18 Aug 2019 19:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190816155806.22869-1-joel@jms.id.au>
 <20190816155806.22869-3-joel@jms.id.au>
 <20190816171441.3B8F720665@mail.kernel.org>
In-Reply-To: <20190816171441.3B8F720665@mail.kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 19 Aug 2019 02:03:54 +0000
Message-ID: <CACPK8Xf3C36KMgDmmRtNFqVFHzZx81ko+=54PA4+d5xPitum3g@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: Add support for AST2600 SoC
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_190409_156178_1F0180A6 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Fri, 16 Aug 2019 at 17:14, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Joel Stanley (2019-08-16 08:58:06)
> > diff --git a/drivers/clk/clk-ast2600.c b/drivers/clk/clk-ast2600.c
> > new file mode 100644
> > index 000000000000..083d5299238c
> > --- /dev/null
> > +++ b/drivers/clk/clk-ast2600.c
> > @@ -0,0 +1,701 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// Copyright IBM Corp
> > +// Copyright ASPEED Technology
> > +
> [...]
> > +#define ASPEED_DPLL_PARAM              0x260
> > +
> > +#define ASPEED_G6_STRAP1               0x500
> > +
> > +/* Globally visible clocks */
> > +static DEFINE_SPINLOCK(aspeed_clk_lock);
>
> I guess we can be guaranteed that the two drivers aren't compiled into
> the same image? Otherwise this will alias with clk-aspeed.c and make
> kallsyms annoying to use.

I will change the name.

>
> > +
> > +/* Keeps track of all clocks */
> > +static struct clk_hw_onecell_data *aspeed_g6_clk_data;
> > +
> > +static void __iomem *scu_g6_base;
> > +
> > +static const struct aspeed_gate_data aspeed_g6_gates[] = {
> > +       /*                                  clk rst  name               parent   flags */
> > +       [ASPEED_CLK_GATE_MCLK]          = {  0, -1, "mclk-gate",        "mpll",  CLK_IS_CRITICAL }, /* SDRAM */
>
> Please document CLK_IS_CRITICAL usage. I guess it's memory so never turn
> it off?

Yes.

I added some comments and removed some uses that I didn't know the
reason for. We can add them back later if required, with the
reasoning.

> > +static const char * const vclk_parent_names[] = {
>
> Can you use the new way of specifying clk parents instead of just using
> strings?

How does this work? I had a browse of the APIs in clk-provider.h and
it appeared the functions all take char *s still.

> > +       hw = clk_hw_register_fixed_factor(NULL, "ahb", "hpll", 0, 1, axi_div * ahb_div);
>
> There aren't checks for if these things fail. I guess it doesn't matter
> and just let it fail hard?

I think that's sensible here. If the system has run out of memory this
early on then there's not going to be much that works.

Thanks for the review. I've fixed all of the style issues you
mentioned, but would appreciate some guidance on the parent API.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
