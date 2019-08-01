Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D617E0E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 19:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3J0m1rWUGbYsAGzHEGFIizVobX6B2LB6Lh6dyNAf9Y=; b=fUTET7jVjn/wD5
	bnV52KOowsO9j3XgQrMOg/HGhx/6DUHvV9n5HDbA0tlZq1/TNzky3TaeVbTA+wVqhu+Uh2uJyzYx5
	/doLFHG5/cFGe34wVvb9n1hIWHwdl6hkksPzP2zVZOWDEyMyxMIiJskiWisdnagMy8BBGIPaGHppI
	WxcasNRTNtx3pBCh2RAYlvPjDRe6lSZgVDRMZM4gPwNCN+mzZPepp+FCTPNKbzaPlNVl+ShjZ3q6X
	EEv4dEB7LMHFSsKCUKgzsNJWpQUefWiVKG82r03smVnKhd4im0vuTshE7DC7u3UnACcAFqQQOpdJC
	9Be1y4YraJZXBAiV6pVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEgc-0002hm-Po; Thu, 01 Aug 2019 17:16:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEgV-0002ew-SF; Thu, 01 Aug 2019 17:16:13 +0000
Received: from localhost (c-24-22-75-21.hsd1.or.comcast.net [24.22.75.21])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B6C27153F5146;
 Thu,  1 Aug 2019 10:16:05 -0700 (PDT)
Date: Thu, 01 Aug 2019 13:16:05 -0400 (EDT)
Message-Id: <20190801.131605.1450796300087632478.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH net-next] net: mediatek: use
 devm_platform_ioremap_resource() to simplify code
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190801123308.20924-1-yuehaibing@huawei.com>
References: <20190801123308.20924-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 01 Aug 2019 10:16:06 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_101611_916579_B24E733D 
X-CRM114-Status: UNSURE (   6.21  )
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
Cc: nbd@openwrt.org, nelson.chang@mediatek.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>
Date: Thu, 1 Aug 2019 20:33:08 +0800

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
