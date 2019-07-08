Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D4261949
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 04:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66EDrkZK04KHjmr5vk7F8sSA940C5VW5SkCKfMDtO+E=; b=E5Jtq8IB88o7OQ
	MViuVhpNzFXBNx1fR7YW1bFSWcRjwW7orN7CQXlaq11bJras7AMujS3asAqlIUF3ONHzFQLZC4aXF
	Lj8KvE3L1dJtyjZ3ap0Vx/X0aFF/i1frJYVIrzgPrphNWkJhWDjT1BfpEIXDpJeEwna5lw5ZsqpAj
	ZxH22uPXt1snMEV7Kzcot8BEehNMoeklHOh6R4CHb+cFKP6wQJb18E3siitnvIr7gCJlQHzmOX9v4
	yAKnkVXXxx7s/8HnxL04n26sQ/GHNc50oGzg1Mm5L5W6FT4Jd1Sv0XDGPyBjSljFnvml1eJyKn+tP
	LJakXQdxfww9Ysck1ZAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkJIp-0005Mm-QA; Mon, 08 Jul 2019 02:22:51 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkJIZ-0005Lx-W5
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 02:22:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 479C71528C8A7;
 Sun,  7 Jul 2019 19:22:27 -0700 (PDT)
Date: Sun, 07 Jul 2019 19:22:26 -0700 (PDT)
Message-Id: <20190707.192226.2104073790111648368.davem@davemloft.net>
To: joe@perches.com
Subject: Re: [PATCH 5/8] net: ethernet: sun4i-emac: Fix misuse of strlcpy
From: David Miller <davem@davemloft.net>
In-Reply-To: <faf2d0e7c0260d24b6e90c55bb7fec7496e5e76a.1562283944.git.joe@perches.com>
References: <cover.1562283944.git.joe@perches.com>
 <faf2d0e7c0260d24b6e90c55bb7fec7496e5e76a.1562283944.git.joe@perches.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 07 Jul 2019 19:22:27 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_192236_033325_451D77D7 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: maxime.ripard@bootlin.com, netdev@vger.kernel.org, wens@csie.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joe Perches <joe@perches.com>
Date: Thu,  4 Jul 2019 16:57:45 -0700

> Probable cut&paste typo - use the correct field size.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
