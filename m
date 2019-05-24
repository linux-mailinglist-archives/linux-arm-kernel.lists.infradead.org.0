Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D480429FA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4xX0JI2uOpAhaGWlFpx9fsUh3ls80+oThCAxZWIL8k=; b=cfc4zbBrQzHb1T
	ONS7lu6tjEZHR64f/7aP1EMMV8DNOI2ES+uvSrqglKrDhnXn+d2sf/I51DnGDFXHZIvnQUKR3B17E
	Qym+Q9OjMK2N69zVEbKn93917BHZGEHE+4ePKc2wYEodYKLKzlWtOrriUeKli0Rip07HVGwyvaOmJ
	+aAQCcou083ESbThbP47ZtEURYK2eyYdkdyabhwU/p1ojaNH+7EN0A6mwKslhRhuH2icFk64HpBff
	qDBQmJwdPAmjDT+zSsnX2C03JX8BVGG0kQ4HG2dqe3OkP5F9q8J5nZyv2UBwcYMHx0ruqOyMjCfa+
	wpWXHtSjOq8JaAAImfsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGce-0002d2-Pc; Fri, 24 May 2019 20:17:00 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGcY-0002cF-DC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:16:55 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6363514DE103B;
 Fri, 24 May 2019 13:16:51 -0700 (PDT)
Date: Fri, 24 May 2019 13:16:50 -0700 (PDT)
Message-Id: <20190524.131650.1001639096871571503.davem@davemloft.net>
To: yangbo.lu@nxp.com
Subject: Re: [PATCH net-next v2, 0/4] ENETC: support hardware timestamping
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190523023451.2933-1-yangbo.lu@nxp.com>
References: <20190523023451.2933-1-yangbo.lu@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 24 May 2019 13:16:51 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_131654_450021_07B43F93 
X-CRM114-Status: UNSURE (   9.11  )
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 richardcochran@gmail.com, alexandru.marginean@nxp.com,
 linux-kernel@vger.kernel.org, claudiu.manoil@nxp.com, robh+dt@kernel.org,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Y.b. Lu" <yangbo.lu@nxp.com>
Date: Thu, 23 May 2019 02:33:24 +0000

> This patch-set is to support hardware timestamping for ENETC
> and also to add ENETC 1588 timer device tree node for ls1028a.
> 
> Because the ENETC RX BD ring dynamic allocation has not been
> supported and it is too expensive to use extended RX BDs
> if timestamping is not used, a Kconfig option is used to
> enable extended RX BDs in order to support hardware
> timestamping. This option will be removed once RX BD
> ring dynamic allocation is implemented.

Series applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
