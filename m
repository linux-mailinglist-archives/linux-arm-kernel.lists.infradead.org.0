Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAA9FF566
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 21:15:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIk3Zyd1hvoF8aCHOM4K+ZnyGBxGur9QVoNDSYOmwiY=; b=jEcLziMtYtcTA1
	IY8bGskR8lZOThFr31amAfcILZMWDvnxLhk9ajHPzS5GwPK3CQI6KUBTaJ4K2Fohz2y/4v82US1Rx
	f/7kFC4pjyztx5RvVh+E4LSVPTs1NgXcGk/5UThF2TzklZAcgySF/Iq1uloWX0jMbh1nW2yOw5giX
	D7TDiMEBB3DppKqu2MRHgnkx2IxBLSE9fTWoBaTr/COENrK+4jUhx05fgr1278ETsEwz2eCF7hmqX
	m+AbGb1nxi2DhCz48uzDGRJH5wHt9q4p5o9vSP7cSGztHLwP87FiJR7k4JXw4FohWgsD9Gease5Ui
	zN3rnGykNRNSgIChb91A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4TF-0000ge-9u; Sat, 16 Nov 2019 20:15:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4T5-0000bA-Uy
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 20:14:53 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 32F1A15172082;
 Sat, 16 Nov 2019 12:14:42 -0800 (PST)
Date: Sat, 16 Nov 2019 12:14:41 -0800 (PST)
Message-Id: <20191116.121441.135806969019475172.davem@davemloft.net>
To: nishadkamdar@gmail.com
Subject: Re: [PATCH] net: stmmac: Use the correct style for SPDX License
 Identifier
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191116094055.GA4863@nishad>
References: <20191116094055.GA4863@nishad>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 16 Nov 2019 12:14:42 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_121452_001653_CCFCAD21 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 u.kleine-koenig@pengutronix.de, joe@perches.com, peppe.cavallaro@st.com,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nishad Kamdar <nishadkamdar@gmail.com>
Date: Sat, 16 Nov 2019 15:10:59 +0530

> This patch corrects the SPDX License Identifier style in
> header files related to STMicroelectronics based Multi-Gigabit
> Ethernet driver. For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used).
> 
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
