Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8C742E6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 20:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+fDUg6EJT6gOHXKqx9Garb453sbQhbq8KR7P9e5d60=; b=PUFVyruU/5y5bp
	xEAjyF0aBw5mTMcHgN/b1460njZd7ZDAcICggnZXdgdgVadL/f5jTAcvCGv5iS1VwSnWPvlmbW9lE
	bdRj5OZgM/LVZIRhtEm2Ur87wzCVAFf2yICQhHDFhBqNwBxBGcUXsrIv+J5derC+gBGLT1z89aJLG
	LwaCqjWnimnrjqCI8ZsY7nJFSkLxMvM744ylnU4L3rjqiSMK9azKFzxWN8vFTiiK/mlKmx82AyKNW
	N8YhpX9CiPQKTTsOSgwoZQv4jYIwN0tbTt8bpXlzvMocivD5PIUu89/MdZe94I+6NVxdSPwltp7PF
	rLAkrwbr+lzFz9VdT++g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7nO-0004jA-QR; Wed, 12 Jun 2019 18:16:26 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7nD-0004i7-K3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 18:16:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A056915283828;
 Wed, 12 Jun 2019 11:16:11 -0700 (PDT)
Date: Wed, 12 Jun 2019 11:16:11 -0700 (PDT)
Message-Id: <20190612.111611.1041149504005677875.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [RESEND PATCH net-next] net: ethernet: ti: cpts: fix build
 failure for powerpc
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190611111632.9444-1-grygorii.strashko@ti.com>
References: <20190611111632.9444-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 12 Jun 2019 11:16:11 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_111615_664942_3FB532D4 
X-CRM114-Status: UNSURE (   6.81  )
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
Cc: sfr@canb.auug.org.au, netdev@vger.kernel.org, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Tue, 11 Jun 2019 14:16:32 +0300

> Add dependency to TI CPTS from Common CLK framework COMMON_CLK to fix
> allyesconfig build for Powerpc:
> 
> drivers/net/ethernet/ti/cpts.c: In function 'cpts_of_mux_clk_setup':
> drivers/net/ethernet/ti/cpts.c:567:2: error: implicit declaration of function 'of_clk_parent_fill'; did you mean 'of_clk_get_parent_name'? [-Werror=implicit-function-declaration]
>   of_clk_parent_fill(refclk_np, parent_names, num_parents);
>   ^~~~~~~~~~~~~~~~~~
>   of_clk_get_parent_name
> 
> Fixes: a3047a81ba13 ("net: ethernet: ti: cpts: add support for ext rftclk selection")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> ---
>  Resending due to missed netdev@vger.kernel.org list in prev post.

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
