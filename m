Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC45F3BE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 00:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsXE+rU22a/i+wHNDASs795SigJFvNOA1d1m3Fzyoic=; b=eNfH16bGCaZeAy
	p0udV1/9G9Id+WM4mI9FxcQgQ0Tm9wabGFQfthDORaQ7vGJjCASDzL4uV7jj7glqwI9eufM0bQcZX
	xmB0I2Lm/OyM3b+FRE9JBbrtG2Y7qVlUpiNXAiIzubX4U84KIi4rJgRmv9dv2LgGRsWX+whtwupCv
	xaxO0aEqRPJbFr4jXiDp4JWyZWGpqWX20Vqn6UafXdigG6UuUm1K+bL5usFEbTWhROoFfuW2JC3/z
	gASRFiVqwrGg6X02AIbzXBplsQFFbt4DMDYp/jZuXhD84OSCmEAhUZDk4dEAOiiYEO+8Ed/Uta9eQ
	0ez7c4DS3cZdVSKNocdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqlZ-0001zh-9k; Thu, 07 Nov 2019 23:00:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqlS-0001z1-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 23:00:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75ED72178F;
 Thu,  7 Nov 2019 23:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573167629;
 bh=iatOuGVaEBWa1WK3FQpf+kZSEyjOgjCvm+7pE6XkBpk=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=1hXIx7ueKCiIl4/GZvb4LCtwk8iz7ngEhRfQVBOl9SE0cO9c9DTTq0EFqJtapuQOy
 x8mRVVS2KkW6Q4mKiNNJLW6CwNyJdykzvXflx8hrVjKLNJ1ifhEpuRn+1YKSYmpRi+
 ZUWc0UrSbrFnHVDbdSxmUXmiwfLu/K4shvzyLyaM=
MIME-Version: 1.0
In-Reply-To: <CACPK8XcGgGsoLNpCccKPb-5bojQS4c5BePewwocc-z29On7Rjg@mail.gmail.com>
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-2-andrew@aj.id.au>
 <CACPK8XcGgGsoLNpCccKPb-5bojQS4c5BePewwocc-z29On7Rjg@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Joel Stanley <joel@jms.id.au>, Michael Turquette <mturquette@baylibre.com>,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
User-Agent: alot/0.8.1
Date: Thu, 07 Nov 2019 15:00:28 -0800
Message-Id: <20191107230029.75ED72178F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_150030_075244_07A22A97 
X-CRM114-Status: GOOD (  12.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-10-31 21:50:42)
> Hi clock maintainers,
> 
> On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The AST2600 has an explicit gate for the RMII RCLK for each of the four
> > MACs.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> 
> I needed this patch and the aspeed-clock.h one for the aspeed dts
> tree, so I've put them in a branch called "aspeed-clk-for-v5.5" and
> merged that into the aspeed tree. Could you merge that into the clock
> tree when you get to merging these ones?
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git/log/?h=aspeed-clk-for-v5.5
> 

Can you send a pull request please?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
