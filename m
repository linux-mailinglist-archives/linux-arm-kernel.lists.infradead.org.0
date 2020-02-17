Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225CB16094C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:53:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W6TjUdVku9YPGRL7u4wqDwxkWmERwxu2h60/gNGt1o=; b=cIzyl1dG2AdiNP
	stnXkVLaFMPDoYN+55JW7dqX2uMXHdAvoGw00ftkAfIemKt90h5/FrXgbpvf2hNjoKNW3bqbBsoiN
	Gn9t9AcnNfv3DY8exRBQmnRjmHY1tt4IPM5kpCAgHYt+DMjIYK+I1bOM9T1c40F1Ba6jLAdnF6OCi
	hC7VZJxwfUI4orxg/VyIN/wg5vYFEO6/x0Nn+NoNitlLMIFIi4Dv41nd4aot1xL33TA+ObIxf/pUr
	/QXyopi//2TYmB0mXBDqyXM+U3npzWtHLJX3ZcKi90MaKr4DKJOHF93Ho1z39J7R3w59Q9PsSe0Ll
	TJ8W+tgGkjDel2/1drkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XT4-0005Ma-11; Mon, 17 Feb 2020 03:53:10 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XSw-0005Lu-At
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:53:03 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4EC611582D81F;
 Sun, 16 Feb 2020 19:53:01 -0800 (PST)
Date: Sun, 16 Feb 2020 19:53:00 -0800 (PST)
Message-Id: <20200216.195300.260413184133485319.davem@davemloft.net>
To: ilias.apalodimas@linaro.org
Subject: Re: [PATCH net-next] net: page_pool: API cleanup and comments
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200216094056.8078-1-ilias.apalodimas@linaro.org>
References: <20200216094056.8078-1-ilias.apalodimas@linaro.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Feb 2020 19:53:02 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_195302_379165_BDABF757 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mcoquelin.stm32@gmail.com, kuba@kernel.org, alexandre.torgue@st.com,
 daniel@iogearbox.net, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jaswinder.singh@linaro.org,
 joabreu@synopsys.com, thomas.petazzoni@bootlin.com, jonathan.lemon@gmail.com,
 peppe.cavallaro@st.com, bpf@vger.kernel.org, lorenzo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Sun, 16 Feb 2020 11:40:55 +0200

> Functions starting with __ usually indicate those which are exported,
> but should not be called directly. Update some of those declared in the
> API and make it more readable.
> 
> page_pool_unmap_page() and page_pool_release_page() were doing
> exactly the same thing. Keep the page_pool_release_page() variant
> and export it in order to show up on perf logs.
> Finally rename __page_pool_put_page() to page_pool_put_page() since we
> can now directly call it from drivers and rename the existing
> page_pool_put_page() to page_pool_put_full_page() since they do the same
> thing but the latter is trying to sync the full DMA area.
> 
> Also update netsec, mvneta and stmmac drivers which use those functions.
> 
> Suggested-by: Jonathan Lemon <jonathan.lemon@gmail.com>
> Signed-off-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

Applied to net-next, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
