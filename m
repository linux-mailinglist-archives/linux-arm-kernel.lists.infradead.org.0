Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082708DD26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xO5qvuObFVEQRXBXlzIofoiMnRtEe+cT/MTXeo+KRU=; b=e9UESEqi1mTilg
	9oRrJ/dTLBFW30dJb3AMx0nb+/2FBl2se9NT7mzqYvmiaEiDeNNTRhBGOOT2UERSYquFLIGd5Z01N
	Yt5FezffwcCliCHApmF2+H/YPkvBj88MkBLTzNLfKPn8SlOI0JXlzr0M8OH6cEXn8qFkVkcmTrEPW
	+gpQZf7AXAab8LOdA4NCOEW7EzuDL1bCRNkUwh1ts9kNgiDDeZ4t5v97rBHJ8J2BT4ozxLVoTJKvh
	0K4jMkN84C2+6Z3k+lQnr/FFASrzaVCRjvfnXZqfb0NOAvPf8PlUmyXi6L5Pc/O1Dh6PX0npqCJhW
	N7/6UljjdKOU3S3V2VIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyD2-0002d7-Th; Wed, 14 Aug 2019 18:41:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyCp-0002cg-Kw
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:41:08 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BE372084F;
 Wed, 14 Aug 2019 18:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565808066;
 bh=rhwHtgh2/fDbYktm6AuNEWakyqGXppoxtIRS7xf4wlM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=DbTh5ns5su7SAOgV6S1k6SuCGatax5uiRRfnXs0DQX+RUFVqVGBiG3STZG8Cv20CT
 Rnh+ijJhh+kpujLqWowUCnZF8msKVM0ofvSSU4FN3Y3n05Zav38fpHOsVhC7I1/7fy
 5e+XsoDb0nOAv+nfCvw2zPPjlcN6KvlJLJ4B/3LY=
MIME-Version: 1.0
In-Reply-To: <20190727105330.44cc7f2f@xps13>
References: <20190108161940.4814-1-miquel.raynal@bootlin.com>
 <155502565678.20095.10517989462650657961@swboyd.mtv.corp.google.com>
 <20190521114644.7000a751@xps13> <20190617115703.642d9967@xps13>
 <20190727105330.44cc7f2f@xps13>
Subject: Re: [PATCH v4 0/4] Add device links to clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
User-Agent: alot/0.8.1
Date: Wed, 14 Aug 2019 11:41:05 -0700
Message-Id: <20190814184106.9BE372084F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_114107_709988_3A7C07C3 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Miquel Raynal (2019-07-27 01:53:30)
> 
> I know this series might have side effects despite the consequent
> amount of time spent to write and test it, but I also think the
> clk subsystem would really benefit from such change and handling
> suspend to RAM support would be greatly enhanced. You seemed
> interested at first and now not anymore, could I know why? I got
> inspired by the regulators subsystem. It is not an idea of mine
> that device links should be bring to clocks. Regulators are almost
> as used as clocks so I really understand your fears but why not
> applying this to -next very early during the -rc cycles and see
> what happens? You'll have plenty of time to ask me to fix things
> or even drop it off.
> 

Ok, I'm back on this topic. Let me look at the latest code and see how
it works on a qcom platform I have in hand. If the device links look OK
then it should be good. I also want to make sure we're not holding a
nested pile of locks when we're adding the device links so that we don't
get some weird lockdep problems.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
