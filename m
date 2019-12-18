Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64048125794
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=157bNaOts2D1GI+9kF9X9VhJIicuthBz21PIJdAPcqY=; b=d91Fb/lZMjsbAm
	eG9h5ix6OUJVw4H6BXdE1p+kYiFwVZk3rcZVCiL7YrxDnQN5xfBPcxfRg8Le9PTjrwvHhLliJYZTc
	3tEL0Lnln/uMfaEHqmC/PdxTcbuRd0CG6uXkKUi8rJddANNzCDYEkj5t6yFtv2ozeRxkC9ErSrOIE
	wP0/r2Tm/lpPAreTe4lijtm/qLU6w80uyHGhLU1DEaPw2Tzb3TTC+6QlZwrLJ5C0c6ycN+LHf416p
	cw67QB7482JFd88APUiYiT3rbkzzcK4D7MOn34jWHa2bacAQ6s4RiWmTZbchAyiCfOhnsCtJkjPMZ
	P3TmoBZ3HdXcGCqNfutA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihiY9-0006dF-9b; Wed, 18 Dec 2019 23:16:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiY1-0006cX-WD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:16:07 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 780EB153FF934;
 Wed, 18 Dec 2019 15:16:00 -0800 (PST)
Date: Wed, 18 Dec 2019 15:15:59 -0800 (PST)
Message-Id: <20191218.151559.778932260429804628.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next] net: stmmac: tc: Fix TAPRIO division operation
From: David Miller <davem@davemloft.net>
In-Reply-To: <b8ffd4685fac31a39ef5ba91485e685b21ead753.1576709577.git.Jose.Abreu@synopsys.com>
References: <b8ffd4685fac31a39ef5ba91485e685b21ead753.1576709577.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 18 Dec 2019 15:16:00 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_151606_036451_45253048 
X-CRM114-Status: UNSURE (   6.12  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Wed, 18 Dec 2019 23:55:01 +0100

> For ARCHs that don't support 64 bits division we need to use the
> helpers.
> 
> Fixes: b60189e0392f ("net: stmmac: Integrate EST with TAPRIO scheduler API")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
> 
> ---
> Completely untested as my setup is offline due to power-outrage. Carefull
> review needed.

It looks correct to me and should fix the build, so applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
