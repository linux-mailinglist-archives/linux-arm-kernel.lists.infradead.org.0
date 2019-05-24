Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1C929066
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 07:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHg15Kya2YeKhnzO49r9EMEgXCEwU2UnZXJuR7Bg1vg=; b=AqX+NVaS+ygY20
	7nJYfeCO6RiPkDgN5rgDAAjS6Qk696+WGXZmR5b7wj1tCEo8gQdXLBpxbE3mEX9ncsyrd2KhhjiNI
	Yy/+ibdmF8AeAVusL6KPrCJvWKBrF2u0Nt8PxNHsT9UT59h2I3klhHM0cxqhuGtpH/A2CBigODcu1
	aSqI9+zouT3Jr904To/eYBVHsv/EmrCXBSchVubIwt08Df3IuIhppOUbfIvsqLH+d+QobBaLJRFjC
	mthsN+V3yAbMh/zymc6oPkW6Xd6hyuFPEpTd3DSXNGtVodpWjUcLs0DiN5a/5AAlR5BiXyeTqgNn4
	XgxpmizOtBx537fD+ijA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2me-0004l6-48; Fri, 24 May 2019 05:30:24 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2mX-0004kE-BE
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 05:30:18 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1740014E0BCCC;
 Thu, 23 May 2019 22:30:11 -0700 (PDT)
Date: Thu, 23 May 2019 22:30:08 -0700 (PDT)
Message-Id: <20190523.223008.2251094307207174464.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH] net: ll_temac: Fix compile error
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190524052444.2983-1-esben@geanix.com>
References: <20190524094709.3f9830f2@canb.auug.org.au>
 <20190524052444.2983-1-esben@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 May 2019 22:30:11 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_223017_386503_BA78BE82 
X-CRM114-Status: UNSURE (   4.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: sfr@canb.auug.org.au, andrew@lunn.ch, netdev@vger.kernel.org,
 yuehaibing@huawei.com, michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 ynezz@true.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Esben Haabendal <esben@geanix.com>
Date: Fri, 24 May 2019 07:24:42 +0200

> Fixes: 1b3fa5cf859b ("net: ll_temac: Cleanup multicast filter on change")
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
