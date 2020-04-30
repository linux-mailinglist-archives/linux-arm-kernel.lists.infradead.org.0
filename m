Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600B91BF5F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heixyVhTyxujM3V6DLL6tLGJvwhWiAbUlm2cvxhf/7M=; b=VVfuedly8buMLv
	kUkMcM6aWxZVKfx73Pxh/79Yl/TmBa6MQaohj3VbuZgb13UhRurzHWUztpxCWp6u3GY832yqem78N
	kMvp5ZgWUTU3kkrabf+ENXeOmFlnAACo03bOay5+w4IzxPG8G8HWoLgJgPPfwf1abyUOWcIRGkNei
	cvtvbpzFvBVsRnpSyVc8nbheIdTrARf9CZ/SqALcA8IBg2d1SPqtY0f4oeCOZOJ/eh+X+EG2p+bj3
	9EYxBp6o2nIJXaYuti6y5w9wieZ4A0YdJWySFFHbCYhDvepUviZLA6AADHQNQhCe2sEzQC8t2kfoM
	zCY3QaYd60tkyqWIwMpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6rd-0003iC-9z; Thu, 30 Apr 2020 10:56:21 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6rT-0003hc-Al
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:56:12 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 03UAtojD025184
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 30 Apr 2020 05:55:54 -0500
Message-ID: <232b9fac588beb4d024ab496b118c51af2b0ecba.camel@kernel.crashing.org>
Subject: Re: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Wolfram Sang <wsa@the-dreams.de>, Ryan Chen <ryan_chen@aspeedtech.com>
Date: Thu, 30 Apr 2020 20:55:48 +1000
In-Reply-To: <20200429090355.GA2891@kunai>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
 <20200429075357.GA1957@kunai>
 <56add9c6e6b5410986325a1360466e4b@TWMBX02.aspeed.com>
 <20200429090355.GA2891@kunai>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_035611_546747_62CD3803 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-04-29 at 11:03 +0200, Wolfram Sang wrote:
> > And is there maybe a Fixes: tag for it?
> > [Ryan Chen] Yes it is a fix patch.
> 
> I meant this (from submitting-patches.rst):

It fixes the original implementation of the driver basically. It's just
a classic posted-write fix. The write to clear the pending interrupt is
asynchronous, so you can get spurrious ones if you return from the
handler before it has percolated to the HW.

I assume it's just more visible on the 2600 because of the cores are
significantly faster but the IO bus is still as dumb.

Ryan: You could always add a Fixed-by: tag that specifies the commit
that added the initial driver...

Cheers,
Ben.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
