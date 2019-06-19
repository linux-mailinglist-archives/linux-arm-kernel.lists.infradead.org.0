Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7034C3ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 01:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhawkES0lE6JN7/cVmVcEiTYjT7IKo12lPdzJ8suSgA=; b=ZUs8ZONFb1Ooq8
	nPitdEraRTYm8QLCnWIn0dGgKza6XUEoY08kM3ZiMTAu0TVcVc2XIe68KPT+CBPmZ00P/y9V4SCee
	f7P4Cg7zlmecmpA3ZWPnuZLIvlNKOUwWzMuAXYykUDhvy4TnAWYnNHQ4WHZva14feI8bOMS3Wbg+I
	mmFfvqo9dQrxHVpMyHTmMUNngkZ943r53B7axCV3+E68p8SYHFSreehvmVeccOJa1yRsytDbco0/6
	KvEA94L5CbeOucm1xTtqdCwz4Cj/7zcAEcsvt6reIg8OulNMrUL00CGEYpQs/nkByDpzVM3082D+I
	jHHaCt0KSfs8PiGVkGVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdjbp-0006W3-V2; Wed, 19 Jun 2019 23:03:18 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdjbd-0006Vb-MK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 23:03:07 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5JN2NFs022741;
 Wed, 19 Jun 2019 18:02:25 -0500
Message-ID: <4c8b9ca5e84db7db67ad552d8fdbaa17d11b6432.camel@kernel.crashing.org>
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 20 Jun 2019 09:02:23 +1000
In-Reply-To: <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_160305_879312_6C48512A 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
 devicetree <devicetree@vger.kernel.org>,
 "ryan_chen@aspeedtech.com" <ryan_chen@aspeedtech.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-19 at 22:32 +0000, Tao Ren wrote:
> Thank you for the quick response, Brendan.
> 
> Aspeed I2C bus frequency is defined by 3 parameters
> (base_clk_divisor, clk_high_width, clk_low_width), and I choose
> base_clk_divisor because it controls all the Aspeed I2C timings (such
> as setup time and hold time). Once base_clk_divisor is decided
> (either by the current logic in i2c-aspeed driver or manually set in
> device tree), clk_high_width and clk_low_width will be calculated by
> i2c-aspeed driver to meet the specified I2C bus speed.
> 
> For example, by setting I2C bus frequency to 100KHz on AST2500
> platform, (base_clock_divisor, clk_high_width, clk_low_width) is set
> to (3, 15, 14) by our driver. But some slave devices (on CMM i2c-8
> and Minipack i2c-0) NACK byte transactions with the default timing
> setting: the issue can be resolved by setting base_clk_divisor to 4,
> and (clk_high_width, clk_low_width) will be set to (7, 7) by our i2c-
> aspeed driver to achieve similar I2C bus speed.
> 
> Not sure if my answer helps to address your concerns, but kindly let
> me know if you have further questions/suggestions.

Did you look at the resulting output on a scope ? I'm curious what
might be wrong.... 

CCing Ryan from Aspeed, he might have some idea.

Could it be that with some specific dividers you have more jitter ?
Still, i2c devices tend to be rather robust vs crappy clocks unless you
are massively out of bounds, which makes me wonder whether something
else might be wrong in your setup.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
