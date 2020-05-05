Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C801C6144
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 21:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omvnD72nZDvZyzKL/fs4X+M9zvquE86HlV1TjJX2FbU=; b=YV/PSgYkci+beg
	pGG+nVHwPPk+vzRAvGytGVBcNrQu8eAny0JvQycYAUFTYx6FGvDcWB85CBVFzRhtnZ6ZUNSv4QoE5
	jlgy8bHvLd3JipbQ93/vF7rosut1tbH9hKCQrqR8VK/h/r5GaO9yRj8xgtvSyUR/SDgcZuQklGKrf
	liIcMZ3dNRNGPywsJpvcB4rYCX1ULumtxUZGfZVuIhzv6KlGwjKE7TGu6bnxeC+3+aco6E4AD0HTK
	x353Rz8rLgsr4v+tDOJBFGyBVe3faCHfzBA+MW6uVS0ETXvqsIAOlswpfoZ0ueUiFYnb4MaWwf8oR
	bMQaNNmGn/FDXFtTDtuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3We-0002FT-A1; Tue, 05 May 2020 19:46:44 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3WY-0002Dx-91
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 19:46:39 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6D52812805913;
 Tue,  5 May 2020 12:46:30 -0700 (PDT)
Date: Tue, 05 May 2020 12:46:29 -0700 (PDT)
Message-Id: <20200505.124629.433779298195905366.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH net-next] net: stmmac: Remove unused inline function
 stmmac_rx_threshold_count
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200505084256.52048-1-yuehaibing@huawei.com>
References: <20200505084256.52048-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 05 May 2020 12:46:30 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_124638_318783_CC410FDF 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 5 May 2020 16:42:56 +0800

> There's no caller in-tree since
> commit 2af6106ae949 ("net: stmmac: Introducing support for Page Pool")
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
