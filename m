Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587D113600F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 19:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08do82c9RTuEm30UfIK1fyqJWu/7KFzjGrgLkUIc3j4=; b=BmuI0QH6ZCoZlB
	jmYxNrefcXMM7jf5wVg2knssCpi8ZeFzZDp8Y3JTVlAcuYjd6YVnIjMezIRIG+fjlUNx08YC/G5vF
	neGFXuV0L4zIvcOxxxEKgRtwVIRq3W0gB9pka2kZxmujVEFwPJXmyNj8KA3EWoBxQ/ieeUUoCd251
	1M2RYbV2VZ0bTaV4Mk27p+w1nJGXyGYZHQbADZ9RoLsHsbUYu9h3ZDw8XA0Gr+9vBISau+Iiglatw
	pk9yUCYhpuqZcYbS5RNGqIvfmZ0gDkz9ysX+DwY+NPFjHQCOR6yBJ/jCvQWW4v5df3yaspJ00nGY1
	x1M6zrLq5mUoTvYf+7uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcOt-0006zZ-TK; Thu, 09 Jan 2020 18:19:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcOl-0006xx-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 18:19:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59B2B206ED;
 Thu,  9 Jan 2020 18:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578593950;
 bh=N5ayqb9hJI/an6dqyr0YYn3Ng/ODIBWl27ADDvsd2M8=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=LBHmaoC2zH/CzzWb9JWpt3BWiP9bRmNAqVVCrvo5nPvRajrPLr/UA9JorxddhYYG4
 V3SmrfP/HCTrfV9X2nvi3H35hMQnwpKU5K/M4/ZZURtquBsM+ItMYrXnxRIXasQx6d
 7qLATly7XljbfSva+mo51us2JMAhJdo8d5gYnbz4=
MIME-Version: 1.0
In-Reply-To: <20200108110218.GT3040@piout.net>
References: <20191229202907.335931-1-alexandre.belloni@bootlin.com>
 <20200106030905.8643221582@mail.kernel.org> <20200108110218.GT3040@piout.net>
Subject: Re: [PATCH] clk: at91: add sama5d3 pmc driver
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 09 Jan 2020 10:19:09 -0800
Message-Id: <20200109181910.59B2B206ED@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_101911_624625_88F2A19B 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2020-01-08 03:02:18)
> On 05/01/2020 19:09:04-0800, Stephen Boyd wrote:
> > > +       return;
> > > +
> > > +err_free:
> > > +       pmc_data_free(sama5d3_pmc);
> > > +}
> > > +CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
> > 
> > Any reason this can't be a platform driver?
> > 
> 
> As for the other PMC driver, we need a few of the peripheral clocks very
> early which means that we would have to register most of the clock tree
> registered early leaving only a few clocks to be registered by a
> platform driver.
> 

What peripheral clks? Can you add a comment to the code?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
