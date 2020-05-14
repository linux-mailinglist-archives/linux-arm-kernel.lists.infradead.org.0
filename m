Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBAC1D3E36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc9PDlEHiB0UCLCO3IIBZvpSZ9ZkTuxhM2hu1pS0UlM=; b=VRvJSSRbl/R5jM
	uP5rFjyJmrmv/XmtTf4wP7NvXvvCLBJ52Qaq238czHzScBtgPJpW0gK5kSC7ocGCjDWeP932QIM55
	icqxPstdL1VKD02nSGMFHMSw7HJQI7g2OO91Q1xN7oQt4IOu/ATdaGriCSLLb4Dkxs3nk/ujgYwQw
	b9AR2pSngfu6UIFwBJ3y7Gi/Ad+kYDb5tDhXZ9l2AkC7fqrZeyvqD6XpsGa1eeXzQHJGogmqYyR+M
	tkZX7R3b69NNLtf7np6Ggosc/wGcPRp4pfR1cLcRRDjLyZWlg5tu8BmbcDKEHDAXoQJTvhF2HVqXF
	oKl9mWt6O+GMols4ILUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJzP-0000eC-Dq; Thu, 14 May 2020 19:57:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJz8-0000aw-Mi
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:57:39 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AF2E2065C;
 Thu, 14 May 2020 19:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589486258;
 bh=9+FiLG+m7K/fE15NsdWiSNgCFSpJx0DMvea4x9+tPi8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=BU0ljWvw3RMT5CbVNzna4kyqjgpYlluRGx7a0FcdyXSOVT44Q46SOhKPFOEUwM/9n
 vIjvqBCA0mCr95rlEHkMs3LiQDtWzIQqwm1PevuwDrRJ90Zvr5vKZuoFDTGuIc6caB
 9mHYwNG5fI+q0TcFROZujx703aSf+XCu9xMmt5ts=
MIME-Version: 1.0
In-Reply-To: <20200409064416.83340-9-sboyd@kernel.org>
References: <20200409064416.83340-1-sboyd@kernel.org>
 <20200409064416.83340-9-sboyd@kernel.org>
Subject: Re: [PATCH v2 08/10] ARM: mmp: Remove legacy clk code
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Date: Thu, 14 May 2020 12:57:37 -0700
Message-ID: <158948625761.215346.15511536578781632283@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125738_766464_317765F9 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stephen Boyd (2020-04-08 23:44:14)
> Remove all the legacy clk code that supports a non-common clk framework
> implementation of 'struct clk' in mach-mmp. This code doesn't look to be
> compiled anymore given that the MMP is fully supported in the
> multi-platform config via ARCH_MULTIPLATFORM as of commit 377524dc4d77
> ("ARM: mmp: move into ARCH_MULTIPLATFORM"). The ARCH_MULTIPLATFORM
> config selects COMMON_CLK and therefore the Makefile rule can never
> actually compile the code in these files.
> 
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: <linux-arm-kernel@lists.infradead.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> ---

Applied to clk-next + a fix for problem reported in -next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
