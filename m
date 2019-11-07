Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FA3F2719
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 06:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzTfrDdzc1iwKxoE/cIc25JXWAH2WVTZYNmDtOKGdNg=; b=ZWvT9t5alMMU2r
	vkAQDvNtSjho59krjZXH+U6YZAlgVt62zHUGSVKYffYMK+IbKgWM1Q9HldeukGw80qzR6DpXmBsdm
	5gMenGCPJahItyTLKHrmMNUrDWP/KNB82G2l9r9fnDvraJXKqqJjydbx3MtiRrm/ODln3mBlFdEBU
	vTSQrTqqmqJlt3QvfV0ef652Pdy2GXOrEEb8UghjZ2Df2tAkyrgcB98fDPr9Ia7IgPaF6M5pP+CbW
	RjUiRZMLvxkIWSAdJqRq05ps5FqIMblnVMDIe5WVfjNqCYMQZbd4K/j7XZq5JjSO3YHKHCESz/g7a
	oozxpJOFtkP8PZZAPhTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSaII-0003Lc-Ms; Thu, 07 Nov 2019 05:25:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSaI7-0002uJ-Ah
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 05:25:08 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D54F615110082;
 Wed,  6 Nov 2019 21:25:06 -0800 (PST)
Date: Wed, 06 Nov 2019 21:25:06 -0800 (PST)
Message-Id: <20191106.212506.946721274328639751.davem@davemloft.net>
To: weiyongjun1@huawei.com
Subject: Re: [PATCH net-next] net: axienet: Fix error return code in
 axienet_probe()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191106.212441.931590542340055489.davem@davemloft.net>
References: <20191106155449.107672-1-weiyongjun1@huawei.com>
 <20191106.212441.931590542340055489.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 Nov 2019 21:25:07 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_212507_376137_27ABEE34 
X-CRM114-Status: UNSURE (   6.38  )
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

From: David Miller <davem@davemloft.net>
Date: Wed, 06 Nov 2019 21:24:41 -0800 (PST)

> From: Wei Yongjun <weiyongjun1@huawei.com>
> Date: Wed, 6 Nov 2019 15:54:49 +0000
> 
>> In the DMA memory resource get failed case, the error is not
>> set and 0 will be returned. Fix it by reove redundant check
>> since devm_ioremap_resource() will handle it.
>> 
>> Fixes: 28ef9ebdb64c ("net: axienet: make use of axistream-connected attribute optional")
>> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> 
> Fixed with the commit message typo fixed.

I meant "Applied with the commit message typo fixed." :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
