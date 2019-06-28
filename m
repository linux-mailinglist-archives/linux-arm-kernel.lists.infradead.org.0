Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B235A534
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 21:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRTcKx5uFwtGfm7M1LyEq1M9p9aHIpOpMZiekvWQv8A=; b=ItKXFRLtdxVHdo
	C9absBl+BQhpRtXEM/eI/ibX+3qPVmtQVcyEXcgzFfvnR1O/RkG1oz0yhHMRmJJuB6kREUy2Jh+22
	++FoGqFl8XBe17NCzxOowzxN/9ICo+yf44wLZtvvBPhAWy0XkMPaz1qrh7JnGYQFgfr89o03cangn
	5NsdzNHFCZIgV/nL1OFCWWEoLoaY2+LnuQHmZ319e4uAWPfoUDiAAI0sZPz31Cqp8bRSjy7pTa4cZ
	c7wcASglIPeqTH77BFY9nnOTLeJn1lWwoex7VK3hT0n/wAIKa2qQGR5eZ+xSAzZQHK0rADCMtS154
	gu5XICJhgz5SOi3GqcaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwfI-00024I-DK; Fri, 28 Jun 2019 19:36:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwf8-00023U-2n
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 19:36:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC814208CB;
 Fri, 28 Jun 2019 19:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561750556;
 bh=+f+wmqDt7OEzXd5WamzVHMgvUtZ43luLwvAdtczdRY8=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=iL0s/4YikWl3EPOokIoNf34p44svd7uNFw7JGPiX49tbjgIyR+hhfFRDMJD79BseK
 IjOkipIq8Ufc42HhIIhhkJJEa2xB33lie/9hOGBvjYIMjm+9o7X+6UpOsHrdwWf+Xo
 PFlh/nhPESvbgA5Opxw9Chj+brSaFXlWd4dx1w30=
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWVoYPZFZPmfTWMU3pZc633uqkn70MyApcPhgUSgmCW-A@mail.gmail.com>
References: <0c12208398cadb7450b6b7745e99c55770c0ccf8.1561709827.git.leonard.crestez@nxp.com>
 <CAMuHMdWVoYPZFZPmfTWMU3pZc633uqkn70MyApcPhgUSgmCW-A@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Leonard Crestez <leonard.crestez@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2] clk: Add clk_min/max_rate entries in debugfs
User-Agent: alot/0.8.1
Date: Fri, 28 Jun 2019 12:35:55 -0700
Message-Id: <20190628193556.BC814208CB@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_123558_139055_789E285B 
X-CRM114-Status: GOOD (  10.82  )
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Geert Uytterhoeven (2019-06-28 04:58:27)
> On Fri, Jun 28, 2019 at 10:19 AM Leonard Crestez
> 
> > --- a/drivers/clk/clk.c
> > +++ b/drivers/clk/clk.c
> > @@ -591,10 +591,12 @@ static void clk_core_get_boundaries(struct clk_core *core,
> >                                     unsigned long *min_rate,
> >                                     unsigned long *max_rate)
> >  {
> >         struct clk *clk_user;
> >
> > +       lockdep_assert_held(&prepare_lock);
> > +
> 
> I guess the clock maintainers want to see the addition of this check
> spun off into a separate patch....

Yes. I'm not sure we should have the assertion in there. I seem to
recall that we thought it might not always be necessary to have the
lock, but maybe that was wrong.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
