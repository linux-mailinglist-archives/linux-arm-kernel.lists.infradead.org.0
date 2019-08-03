Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6E280382
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 02:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+Z14v8TyaTYfsK6dj25r3nzQmG/68KEDxMvMMV+kAA=; b=t/cAqMhAcUTDp7
	HxPiCWeO7T9IaH/Rgr7YA7UeawcLQ5b51XrGAuhfUN4+8GltNMXdz7eKKi767KZqjL49R/pCD99VJ
	ct5tCEUkZTxKwz5717lFY3KcQV5BJNVf5CZk/F7EPs6SIEKPzPwgRlflyDdTUZG2pPft4LuYQns1K
	OUDfhKZkPddkJqXoa23Ukbcp29fDZfXEJbtm8Z0F3m+osd3qOfqCf9GT6RaGUQteJze0MY6jJZ//Y
	kgUvIFtZsV/utaO8loiUOCbv+SPTaIe75vMNfnI/wBl42+ZnBPK5+0CyF0zQRtbT9YHSVAb1Qd28u
	rdrWJHNrFrMdFKM/Z8Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hthz7-0004uW-Q2; Sat, 03 Aug 2019 00:33:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hthyy-0004tp-Lx
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 00:33:14 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 361A11264FD7C;
 Fri,  2 Aug 2019 17:33:03 -0700 (PDT)
Date: Fri, 02 Aug 2019 17:33:02 -0700 (PDT)
Message-Id: <20190802.173302.1282952894728020522.davem@davemloft.net>
To: andrew@aj.id.au
Subject: Re: [PATCH net-next v2 0/4] net: phy: Add AST2600 MDIO support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731053959.16293-1-andrew@aj.id.au>
References: <20190731053959.16293-1-andrew@aj.id.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 02 Aug 2019 17:33:03 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_173312_722391_3C24B85F 
X-CRM114-Status: UNSURE (   7.74  )
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jeffery <andrew@aj.id.au>
Date: Wed, 31 Jul 2019 15:09:55 +0930

> v2 of the ASPEED MDIO series addresses comments from Rob on the devicetree
> bindings and Andrew on the driver itself.
> 
> v1 of the series can be found here:
> 
> http://patchwork.ozlabs.org/cover/1138140/
> 
> Please review!

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
