Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE4FD991B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 20:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nsgN3HHDeUrIdBXC9XY0iGXRVjTF4qF9Eno8NtMeM4=; b=FJ8BdZ3hX5IjKO
	oRbuuMrgXtBe8WkXOfkULnAZ4fwhHmtbYLskxLsK/osLIvx8xwN4j/AEPqVDmiLKXZJG2thY3GZG/
	csP9eHy2fQSV5Vojg8osp7ki5y7jJWuV3v3ic9qes2WIfBzNP2TJ2XSpkHWdmlzLi7+juaZO3kjW9
	6s+7JeRsHxXb2JP5faxvUbgzHKqv3AZYdPmuiYS5PqNSYCwHLaZ66V75yQdyumM6Mej6nI73Zd+h+
	1nfrAm+iOI0CzEQvrhdYEl0nhVzbAgFefaArKERpwEv8/zzdAKLrDblsGclg9omsCTC5oBeoQ6YHm
	b/lMkcYbtK1tiYA7NeaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKny9-0006op-Is; Wed, 16 Oct 2019 18:24:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKnxw-0006oS-1l
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 18:24:09 +0000
Received: from localhost (unknown
 [IPv6:2603:3023:50c:85e1:5314:1b70:2a53:887e])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 12B9C142612A7;
 Wed, 16 Oct 2019 11:24:00 -0700 (PDT)
Date: Wed, 16 Oct 2019 14:23:59 -0400 (EDT)
Message-Id: <20191016.142359.416946718751400991.davem@davemloft.net>
To: alexandre.belloni@bootlin.com
Subject: Re: [PATCH 2/2] net: lpc_eth: parse phy nodes from device tree
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191010204530.15150-2-alexandre.belloni@bootlin.com>
References: <20191010204530.15150-1-alexandre.belloni@bootlin.com>
 <20191010204530.15150-2-alexandre.belloni@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 16 Oct 2019 11:24:00 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_112408_094817_114C6D0A 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: netdev@vger.kernel.org, slemieux.tyco@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 vz@mleia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Thu, 10 Oct 2019 22:45:30 +0200

> When connected to a micrel phy, phy_find_first doesn't work properly
> because the first phy found is on address 0, the broadcast address but, the
> first thing the phy driver is doing is disabling this broadcast address.
> The phy is then available only on address 1 but the mdio driver doesn't
> know about it.
> 
> Instead, register the mdio bus using of_mdiobus_register and try to find
> the phy description in device tree before falling back to phy_find_first.
> 
> This ultimately also allows to describe the interrupt the phy is connected
> to.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

I asked you to address Andrew's feedback.

You can't let this sit for days like that.

Therefore, I'm dropping your patches.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
