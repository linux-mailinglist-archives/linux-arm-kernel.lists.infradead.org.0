Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38B17C8FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3r6b3mTnPOESxDl//izhDohfH4sJOPuD8x3OpwzAySM=; b=sWFnx5/jWT69es
	XSH+hpQlWRqW0JyYnGrihRa76Vsli0JQmkPeaxVQUYz4D4h1424VV6i5lzIR0wfqzZHgU5NHC+yc3
	4bGwMyUVJ6sOa/2sOkXvt52ouCdqX58un+VUmboAzk/nuLJ/cOTYbnatkTIs0qcrTn+BR8s43FHdD
	lOjJLnDx0AIWD9SPjnndbqmGZY8xnTczph9sPiGAQm4UMX149Ynr/EkDml4rlhXN1/JXgz6PEE9He
	2ozcpnXEFcbP3R4TzH4x5i0eDJFs2JodAeTgIaMC4KbAHIgWvgnkAjBPfMn5nqm+CYI76PTgvphO9
	kS8l0oz1CXzDCQUmkk+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrfy-0006TK-9n; Wed, 31 Jul 2019 16:42:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrfp-0006Sp-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:41:59 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4264A14470BAF;
 Wed, 31 Jul 2019 09:41:53 -0700 (PDT)
Date: Wed, 31 Jul 2019 09:41:50 -0700 (PDT)
Message-Id: <20190731.094150.851749535529247096.davem@davemloft.net>
To: natechancellor@gmail.com
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13
 errors, 1174 warnings (next-20190731)
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731163509.GA90028@archlinux-threadripper>
References: <20190731.084824.2244928058443049.davem@davemloft.net>
 <20190731160043.GA15520@kroah.com>
 <20190731163509.GA90028@archlinux-threadripper>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 31 Jul 2019 09:41:53 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094157_939079_F1279B4B 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Wed, 31 Jul 2019 09:35:09 -0700

> In file included from ../drivers/net/phy/mdio-octeon.c:14:
> ../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of function 'writeq'; did you mean 'writeb'? [-Werror=implicit-function-declaration]
>   111 | #define oct_mdio_writeq(val, addr) writeq(val, (void *)addr)

One of the hi-lo, lo-hi writeq/readq headers has to be included.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
