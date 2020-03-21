Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB9418DD59
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZryEul8wbAjK0G7G5cFdGjD8x8fPQvPtEk0s2GYOnE=; b=DaHR7wh2F9hzN6
	V+yRlgCs3ovOM1eNjEKZPT2lruQpiQIApBG41tJlZKzhWsCf3ZRyEkgwKSX8rAE1ZsexZ3T8Fd8YL
	yV/0U+9zS2StbVJtaMpF+di7lLSVsp1uQsM2W6aVK1HluhbBVRi5eN14l+a6iZCObg0kOx8aMhmno
	Lig/zAWIgQve3/TTxP01z/qH/6U9HmHixS72RcKCw1xObq8iwug1veLAyvzTL/MDPIp4pyfXkmuDq
	Fudkqu1eAiZ2IGAfAli3Pcw3GBtxhKLotsbHhDajtuzNYlR93qVx8c1NvasxRJm0O2crHLoGX2b2t
	WTXkM78r+VpLmA0MimAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFStz-00086a-30; Sat, 21 Mar 2020 01:26:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSsa-00060J-CX
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:24:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9707420752;
 Sat, 21 Mar 2020 01:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753887;
 bh=UmHKXTMUzMpNRl9QVJY/I1GCYTb5dCitp7Hy9LqKIT8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=bTS6UTSiz87KuzlFx2Nbu/rLy91hYrGU4zj4+suGlh8Y+bvM5wK2uPif2+qCrTnqv
 QtKXDKsIx5ydoPIsWRCf82AQpZFcEZTXaWW2oOU7wiFdafM5GkGAP8lt5FB9niqYbn
 BOzCSkORMx7V7ttuuOW7O0Uu/Bt7/ZY8NTG3qtyg=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-6-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-6-lkundrak@v3.sk>
Subject: Re: [PATCH v2 05/17] clk: mmp2: Stop pretending PLL outputs are
 constant
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:24:46 -0700
Message-ID: <158475388687.125146.14592941783278965687@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182448_478826_32CC644C 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-03-09 12:42:42)
> The hardcoded values for PLL1 and PLL2 are wrong. PLL1 is slightly
> off -- it defaults to 797.33 MHz, not 800 MHz. PLL2 is disabled by default,
> but also configurable.
> 
> Tested on a MMP2-based OLPC XO-1.75 laptop, with PLL1=797.33 and various
> values of PLL2 set via set-pll2-520mhz, set-pll2-910mhz and
> set-pll2-988mhz Open Firmware words.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
