Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC49162C20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSvnF+fYrekJLRsfTJRXG2P8FYgxSs600RXzrQqn7AM=; b=lPrhKdomy4Yuli
	yObyNxlAvBg1IU07ncUgBo5bByjCnTCVFrnyoGIBiB1zL0chfIFuzW0veDGJXjypkYDn4KZzDfBPn
	qMi6D0SrkRnq7sapHxPNncSM29cKhYo2hgf5Wqjn6ceOL/Mh1Ej2DuHcN4zUEzTQGh/FIlGpth0Y1
	SuPzlWUymhzODqOU5+adWFHoc/66xODBYoNTtBhNcOzo/PYxYeJbluaMG9eUckHmWjmuyy7ZJyoFB
	WBJApDcCTVlSEA15pObdHJV5sRmHUUR3ZLNSzcUn/H6nJ+jsEjvZ8a370a6TM4k3F1d4XZqF/iFmv
	dZ0OpnyuJcu37uHgwArg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcTV-0006Vl-C7; Mon, 08 Jul 2019 22:51:09 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcSq-0006Fp-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 22:50:29 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B154512D8E26B;
 Mon,  8 Jul 2019 15:50:22 -0700 (PDT)
Date: Mon, 08 Jul 2019 15:50:22 -0700 (PDT)
Message-Id: <20190708.155022.248281138752107741.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net-next 0/2] net: mvpp2: Add classification based on
 the ETHER flow
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
References: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 08 Jul 2019 15:50:23 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_155028_697710_C0D6DD66 
X-CRM114-Status: UNSURE (   8.87  )
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
Cc: antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Fri,  5 Jul 2019 14:09:11 +0200

> Hello everyone,
> 
> This series adds support for classification of the ETHER flow in the
> mvpp2 driver.
> 
> The first patch allows detecting when a user specifies a flow_type that
> isn't supported by the driver, while the second adds support for this
> flow_type by adding the mapping between the ETHER_FLOW enum value and
> the relevant classifier flow entries.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
