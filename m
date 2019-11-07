Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD81F26E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 06:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JvYlPN0FziqMJi/8hWxAOXZ7JiBkV6LLAZSL8kttC0=; b=uKakCt1XBdA7zz
	MP2KMwKCgF14MkHWMASMtfKrdUXfH0oE8MryUgnNflBvF14jBi/P4m1EAhQLEX3AMyhYSJwAaEFaa
	9RBpDKC23+uZStzWAdohXk8+3vbLfp/gOdMHEJaTR/e9z7pL5VhX6ZyD68tb++1Y7WUMra34j80wd
	SpocwLjr1zYN5V0vkMG0OCFcXdPHJkMb+zE/xrVcDweDuFlblRKm8y4n69MYOPrUzmxra4wNxlT3Q
	qDb9r/uaz5axnqZ2LH2lg5a4s0VMEIvax4/qGStvhvsWoh/2xzNo41v2OjkRWwbtY0A22dorWC13i
	VGO3DKnwqfkRwDg2yY+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSaHo-0001uD-4j; Thu, 07 Nov 2019 05:24:48 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSaHh-0001tm-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 05:24:43 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 69FE215110077;
 Wed,  6 Nov 2019 21:24:41 -0800 (PST)
Date: Wed, 06 Nov 2019 21:24:41 -0800 (PST)
Message-Id: <20191106.212441.931590542340055489.davem@davemloft.net>
To: weiyongjun1@huawei.com
Subject: Re: [PATCH net-next] net: axienet: Fix error return code in
 axienet_probe()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191106155449.107672-1-weiyongjun1@huawei.com>
References: <20191106155449.107672-1-weiyongjun1@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 Nov 2019 21:24:41 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_212441_901091_70FDCB8B 
X-CRM114-Status: UNSURE (   5.85  )
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
Cc: netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 kernel-janitors@vger.kernel.org, michal.simek@xilinx.com,
 linux@armlinux.org.uk, hancock@sedsystems.ca,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>
Date: Wed, 6 Nov 2019 15:54:49 +0000

> In the DMA memory resource get failed case, the error is not
> set and 0 will be returned. Fix it by reove redundant check
> since devm_ioremap_resource() will handle it.
> 
> Fixes: 28ef9ebdb64c ("net: axienet: make use of axistream-connected attribute optional")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Fixed with the commit message typo fixed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
