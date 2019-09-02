Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FEFA5C64
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 20:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSHiT7RXOpUqUGi990AQfMpSwvP0SgBjM3wAwOX/g7k=; b=Z78JO+2C1B6f5U
	WsXptIs0HDaZNZXCWii5xdnPdAzbBGmZQr69n1Aq0ij9Pda+eg3kUfVeqMZHf+PLeaqu8s7pdLwW+
	D07+MBQaWGIe1TQcWSi7iE2NxwtWyjMFA5uPfbCq15h24wXe4/bsc06VPcbZmBG8L5305iqcLewiv
	LSa7WqEzGC/JCspKGOAF/r+pJudLmHX/X1QZGF7HAfqidWuOBWZ3SM6WfhWOVR8MG4TgbpulCRATq
	ymO9i84E2OeX+easJa2AOzK9M8MM5g9PRCS+4ewHvKuvAhkahgnUX7KSxU6adRlyFmg91Y49+qxOz
	+xZ/TeKdMchGkZm7L2Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4rNf-0008Ev-38; Mon, 02 Sep 2019 18:48:47 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4rNX-0008EF-7I
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 18:48:41 +0000
Received: from localhost (unknown [63.64.162.234])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 83D9C15401AF2;
 Mon,  2 Sep 2019 11:48:37 -0700 (PDT)
Date: Mon, 02 Sep 2019 11:48:36 -0700 (PDT)
Message-Id: <20190902.114836.1043194833851564994.davem@davemloft.net>
To: yzhai003@ucr.edu
Subject: Re: [PATCH] net: stmmac: dwmac-sun8i: Variable "val" in function
 sun8i_dwmac_set_syscon() could be uninitialized
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190831020049.6516-1-yzhai003@ucr.edu>
References: <20190831020049.6516-1-yzhai003@ucr.edu>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 02 Sep 2019 11:48:38 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_114839_270681_A33E5C31 
X-CRM114-Status: UNSURE (   6.36  )
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
Cc: csong@cs.ucr.edu, alexandre.torgue@st.com, netdev@vger.kernel.org,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yizhuo <yzhai003@ucr.edu>
Date: Fri, 30 Aug 2019 19:00:48 -0700

> In function sun8i_dwmac_set_syscon(), local variable "val" could
> be uninitialized if function regmap_field_read() returns -EINVAL.
> However, it will be used directly in the if statement, which
> is potentially unsafe.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
