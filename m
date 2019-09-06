Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66A1ABEC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RfLrLk8bD9W3P/40UPZYUaTSeC7szxwwCans0gGT00=; b=VHaswH2B+9MJrF
	JZsb1MhAvqi15XuZxR4YXNGCRipAgXmVpff8ZJxGxO9jEWrAYX0edLkqPTWCxeIR0Fbpl5cnjruLy
	AedYo7iq1b0o4UngeFJS9xUYoDlv9Za1Zy6uCesvswW13MS9HsP8+nA6zRrov0mSeWcMFuBCqEhm1
	1ZL4/3aFoYCiS7DdrPx5wppPnOiQ0C4hlfAxBtv9Kk9oCp1dyJ/iLTzrXv758KrA2Qfoq1p7f6Trr
	uCceHU3HZWqTxKDd9YxB9PRPEMxJTuYlXygO9pMY0cPkhGhjWLmmr8tml26Z0Ugwl4Bh/PNGI6l8r
	/a8UMdC3lS9brgvA11lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6I4L-0003HL-1i; Fri, 06 Sep 2019 17:30:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6I4C-0003H1-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:30:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE16520838;
 Fri,  6 Sep 2019 17:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567791035;
 bh=i1CVD4eeoDs3jI2oDy7B58p/ldJyg1fEXzVadkF+/ho=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=YrGEIBTNgkBjx5GuhaHqy+wgb//ReGDHpTZUKwCygfqSMFfFJBuv43BH/lnRMCMHQ
 DAJyo4qze6+djqt5qS5MwloqpXLLNNL1Evy2Kz7zgKalMT+sqGnoiXkIVoEwfB6Pnq
 CMfLoNPj3oLg+kd4lLrsS1V3Fa4JiziCQaK2PYq8=
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1908081809160.2995@hadrien>
References: <alpine.DEB.2.21.1908081809160.2995@hadrien>
To: Jonas Gorski <jonas.gorski@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: fix devm_platform_ioremap_resource.cocci warnings
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:30:34 -0700
Message-Id: <20190906173035.BE16520838@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_103036_361266_824B1907 
X-CRM114-Status: UNSURE (   7.13  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Philippe Mathieu-Daud?? <f4bug@amsat.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, kbuild-all@01.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Julia Lawall (2019-08-08 09:10:53)
> From: kbuild test robot <lkp@intel.com>
> 
> drivers/clk/bcm/clk-bcm63xx-gate.c:174:1-9: WARNING: Use devm_platform_ioremap_resource for hw -> regs
> 
>  Use devm_platform_ioremap_resource helper which wraps
>  platform_get_resource() and devm_ioremap_resource() together.
> 
> Generated by: scripts/coccinelle/api/devm_platform_ioremap_resource.cocci
> 
> Fixes: 1c099779c1e2 ("clk: add BCM63XX gated clock controller driver")
> CC: Jonas Gorski <jonas.gorski@gmail.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
