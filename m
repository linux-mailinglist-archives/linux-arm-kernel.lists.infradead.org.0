Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F8FAC27A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 00:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAPJ9aSlus5KZOSVNEQJQ/qkqPG6KNEPxG/4x8pfO0s=; b=rbyaHwSEUi5KW/
	7mtAxpMJj/Qfh8s1dC3yVZdWd+rqlEnaEWi2ymmFIajJK78e0TIjLl50lT0bdgc5un8meI4gfIUou
	e94aPxPaR5+kAYXAhVL5OezuaUv4c3bh0PhWGWSBhOeqftpr0Pde/Zl0UpYcMiQuFYEW1hNa3LDJH
	xS4sNNORJOhkpXG9vyRGwX88chc4qCGZ2p4G7NURS9jXoIEirQmLrLGhdxgDZt6H0YksfoSxGdHlh
	DH+gAQP25pan+LcuaqJIlFH50it41on6R9NNf5Oykvv4/8YGbHy1t6G1TnOHF8LqdvIwyiCCj5EdV
	QtRQGbPHR/Cnbkrk6r4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MeU-0008Qr-Py; Fri, 06 Sep 2019 22:24:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Mdy-0008MZ-GK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 22:23:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04419214E0;
 Fri,  6 Sep 2019 22:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567808629;
 bh=7fWT4pSEpV668ptngcAoGmXNSeOFGFx6ayqh1U9b/uc=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=PcVCeOpwb38RDWS/yuj5NA6PzqfUXRkDLDdWnyHqWvGf+ibd3zRGHXkz+W5PI+Mi/
 uQsMpsP4fmSBvZDsCFX2sxrmLFU0QaBs7hGaJzuUfm9PQIP57QxduygJsaYI5UMf8Q
 yltad5HTkUhYeC0w5OhY+BKUvA026HZlDJ5p5wmc=
MIME-Version: 1.0
In-Reply-To: <20190825141848.17346-3-joel@jms.id.au>
References: <20190825141848.17346-1-joel@jms.id.au>
 <20190825141848.17346-3-joel@jms.id.au>
To: Joel Stanley <joel@jms.id.au>, Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 2/2] clk: Add support for AST2600 SoC
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 15:23:48 -0700
Message-Id: <20190906222349.04419214E0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_152350_999515_65124608 
X-CRM114-Status: UNSURE (   7.72  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-08-25 07:18:48)
> The ast2600 is a new BMC SoC from ASPEED. It contains many more clocks
> than the previous iterations, so support is broken out into it's own
> driver.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
