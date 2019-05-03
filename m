Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEF0131CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIgDCZr78ARGokeJfIVaO7wp/4OhOnFn/yD+DXXv2zg=; b=ZHDca7+eRKo9E1
	5pnnV5gwB/xON4nKtCjJ99JWtQNFpLBn9K/JVzvWbNMQ/B8WVgHvuQkslSpzZndE2OQHTIbNizzLM
	o6iY5axzENTFVkpSxvC9fqXKDIUxU7zfnwcELvkpXGiK/Lqmcz9Zctqr1QmwH9DdC0dCU+yDTsxI4
	8wyYbkP2YcVw3lmKC6BQPVVQGBwYyg7FBNi+/vZHLBY1hiQ1zfsMSpvBjCjJnPU2wJBl0DnkzEdbg
	xIBSr0ysjXn8Fy2EFKKaCv2IXIbH63iHDOI8o5MI2EO9H8VN21H8RdUa0XwbKD7O9BCeK7qwqZ39M
	dPSIaSlb1sjAdF2tblKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMag8-0001JF-Ms; Fri, 03 May 2019 16:04:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMafv-0001CC-J7
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:04:41 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 221332087F;
 Fri,  3 May 2019 16:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556899479;
 bh=JdlBvbpgwTZwWsD4guYUIZYoCxCR4OIhqQOaiWx5q10=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=ayT7lgAQTwFDo4HPf18Lohoa8Jwp7Z4gxW3Rlho4mK60JePpKgeniW0QLNfYsG3nj
 rnEZIaJ2W+pHv8Ra9FH3nDq6TJ/6zVyvEN6rAZeFcRyIFGzDYsMsaNdp0Yk8QHkLGF
 5iUcphZytFuVA+iC7TyaqpJoBRFu2LJy8X3l/HJU=
MIME-Version: 1.0
In-Reply-To: <201905031619.nJ5l01Tg%lkp@intel.com>
References: <201905031619.nJ5l01Tg%lkp@intel.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, kbuild test robot <lkp@intel.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [clk:clk-sifive-fu540 3/3]
 drivers/clk/sifive/fu540-prci.c:534:41-42: WARNING: Use ARRAY_SIZE
Message-ID: <155689947835.200842.14950816155129185642@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 09:04:38 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090439_734524_FFC9C564 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kbuild-all@01.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting kbuild test robot (2019-05-03 01:21:21)
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-sifive-fu540
> head:   85ed1c299cca9beb5df6006361cf18bfa2305836
> commit: 85ed1c299cca9beb5df6006361cf18bfa2305836 [3/3] clk: sifive: add a driver for the SiFive FU540 PRCI IP block
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> 
> coccinelle warnings: (new ones prefixed by >>)
> 
> >> drivers/clk/sifive/fu540-prci.c:534:41-42: WARNING: Use ARRAY_SIZE

I had a review comment about this on the previous version... I'll go fix
it myself.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
