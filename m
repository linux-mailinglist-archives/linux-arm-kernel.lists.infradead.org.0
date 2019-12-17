Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A542121FB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wA1J2Aspmw9KI1MPwQliIYwmhcYy+nrmVVLjbF/ZH8=; b=KB2agQ0LzrwEaR
	yaXjc3LQqGwTbx2tIJC8/ERt0KktCK04DjABil/2wkVvCFSSA+OD063GjxyHT8eQ0jEnD3GfTTeh9
	td6OpyIKKDTilE5E2aUKSAGM7iBzfOFxq63/9vmZ7Rd9IC3GhfJR6qQnpSJKGaMAQXSL5B/zmKYcx
	rN1tl6pf4EQf5gNdkcY0QAk9OXYdn2SbMucTEVsGdA1J3teihzkVLzXpYdUXYcF5s5AE2FHHC5Za2
	FfC9HZzbCIXlWMl55QH1iW8CP6TGwpy0pPa6VP3Sw4BNmxLjjWThksogNAqCJNywIjM+3QgJDofaF
	KUlnH9ogH65kwnbXCKPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0iR-0008Ad-KW; Tue, 17 Dec 2019 00:27:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0iG-00089a-TZ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:27:46 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 164E11557482B;
 Mon, 16 Dec 2019 16:27:38 -0800 (PST)
Date: Mon, 16 Dec 2019 16:27:37 -0800 (PST)
Message-Id: <20191216.162737.869655021908615488.davem@davemloft.net>
To: navid.emamdoost@gmail.com
Subject: Re: [PATCH] net: gemini: Fix memory leak in gmac_setup_txqs
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191215011045.15453-1-navid.emamdoost@gmail.com>
References: <20191215011045.15453-1-navid.emamdoost@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 16 Dec 2019 16:27:38 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_162744_949871_D4066FE8 
X-CRM114-Status: UNSURE (   7.05  )
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
Cc: netdev@vger.kernel.org, ulli.kroll@googlemail.com,
 linux-kernel@vger.kernel.org, mirq-linux@rere.qmqm.pl, emamd001@umn.edu,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Sat, 14 Dec 2019 19:10:44 -0600

> In the implementation of gmac_setup_txqs() the allocated desc_ring is
> leaked if TX queue base is not aligned. Release it via
> dma_free_coherent.
> 
> Fixes: 4d5ae32f5e1e ("net: ethernet: Add a driver for Gemini gigabit ethernet")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Applied and queued up for -stable, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
