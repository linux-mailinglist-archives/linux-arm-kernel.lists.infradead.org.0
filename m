Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E6055773
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHKeI4gyWAZq6GpW0JzElmCPibHc9R6WevIYJJ+tASM=; b=kiXWQi1QRZH+ck
	QAueKYOZNDD9FY7oQo0hM0iMcXOWMk4VYh3lvBYNVBmspRvFs/Gzoxytyeve/FNNjCuu69HBSJfWF
	pVJnsgziUwC/3qepqbL6AgUj23Gpyv9oXq5rn8z2VQKnDVNfPBbJNGvawn2tWZrBYGtmslLczMP+h
	TDC1ptwlqiJ4ebx0TCEFFMBUbyggW0jM08wT1YcP8bcfnY4yiR6vgVLruBrWkx18IKThXLNjrwKoh
	/Vpr4qYWEl47qy8EaHtkvozn8KbZEAr5pFkyx9wJGhqQjKcq+0SX3cvZTljWJvFAlhRym1n0CLvsO
	YKRDzOaKBEpv7+/6yIlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfqbd-0002ar-Pj; Tue, 25 Jun 2019 18:55:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfqbK-0002aJ-Df
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 18:55:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACAF52085A;
 Tue, 25 Jun 2019 18:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561488929;
 bh=CU/pi1jDqoAxTEEO83+4ZsORpoB/lyIbsA7mD6/R9HY=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=vcR9gmJZJ9TmQdBp8TcKLhGKYvrdW1PlBKzqzOSCiwznX260bcm2xeLhLjpjalFuk
 xIaSshROHzPyZCwur+DKJZ6juJUGyYx9W6LpDJGP5JB7u6t0ZYIS/mNnSdc8oNM+rr
 fQiOUa2dbEWCZem77UsrtRicO7pQh2JeTvZrIVms=
MIME-Version: 1.0
In-Reply-To: <2ba035cc-2381-ce36-3b7d-f5027ef9ef40@ti.com>
References: <1deb7a85-0859-54f1-950a-33de3a08f9fd@ti.com>
 <20190625011711.3D2D520663@mail.kernel.org>
 <2ba035cc-2381-ce36-3b7d-f5027ef9ef40@ti.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 linux-clk <linux-clk@vger.kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [GIT PULL] clk: keystone: changes for 5.3 v2
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 11:55:28 -0700
Message-Id: <20190625185529.ACAF52085A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_115530_485699_BA1CA694 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Tero Kristo (2019-06-25 03:33:50)
> On 25/06/2019 04:17, Stephen Boyd wrote:
> > Quoting Tero Kristo (2019-06-12 04:56:15)
> >> Hi Stephen, Mike, Santosh,
> >>
> >> Here's a 2nd take of the pull request for the clock changes for keystone
> >> SoC for 5.3. The only change compared to the v1 is to add the required
> >> drivers/firmware change in. This avoids the nasty dependency between the
> >> pull requests between the clock driver and firmware driver.
> >>
> >> -Tero
> > 
> > Thanks. Pulled into clk-next. I guess we should increase the size of the
> > number of parents that can exist to be more than a u8? We're close to
> > getting there with the new way of specifying clk parents, so maybe we
> > should expand it to an unsigned int, but then we may need to optimize
> > finding parents when searching through all the parents of a clk.
> 
> For now, this is not an issue with TI SoC:s at least, I think we only 
> have like 64 parents at max for muxes.

Ok. It doesn't sound like a priority then.

> 
> > Also, there isn't any quantification of how much better it is to scan DT
> > for all the clks that are used and only register those ones. It would be
> > nice to understand how much better it is to do that sort of scan vs.
> > just populating all clks at boot time.
> 
> I haven't done measurements lately, but it provides pretty drastic 
> improvement. On am65x for example, it cuts the scan time from bit more 
> than 1 second to couple of hundred milliseconds. I don't have 
> measurements for the new j721e SoC, but I would believe the improvement 
> is even more with that one.

Cool. Thanks for the numbers.

> 
> > It may be useful to make the code
> > generic because NXP folks also want to populate clks from DT so maybe we
> > should provide this from the core framework somehow to ask providers to
> > register a particular clk or not. I haven't thought about it at all, but
> > it may come up that we totally rewrite this code in the future to be
> > shared outside of the TI clk driver.
> 
> It might also be worth thinking whether some sort of lazy clock probe 
> would be possible... now we register everything at one go, but would it 
> be possible to only register / reparent clocks once they are actually 
> requested by some driver?

Sure. Ideally the optimization isn't vendor driver specific.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
