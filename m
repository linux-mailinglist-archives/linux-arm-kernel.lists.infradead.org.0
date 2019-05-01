Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4964B10E69
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 23:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcFjJ8g9qMUAD8H3KE48K8HgQun28Z75+/fcdyRka0I=; b=HwQ7NKib39tJGq
	txIn/zcrQbgttujlt/lxwp70BfVegzm8MgPXGV6tm4ds+1hoHya+yNoGG2aaaYvj0u1Q4tJil6C5U
	/iu026Eb/4S/Xn+yZsrMahuHIGHAhSJrDTrSEEhHX18drRSe+8V6XJttBykkQbZ6i84+XrD0vw9FL
	RwytyRmuRqRgbAB9zlPzca70wd3mIk/hars8ruU5ncKmGni3sgvNfpbNOx20mXmLek//LTOr3Zunu
	xVwIOeh4MVaWMSa3R8sb/+cyKDVa/RrTkWjhNNa4d9y7RrsN5rtcud0SxAzKZMOt0XBPB98jWaW4c
	F7D2aB9RPSQA/iP8gWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwYM-0001dj-Nw; Wed, 01 May 2019 21:14:10 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwYF-0001dR-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 21:14:04 +0000
Received: from localhost (adsl-173-228-226-134.prtc.net [173.228.226.134])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 01763133E97C0;
 Wed,  1 May 2019 14:13:59 -0700 (PDT)
Date: Wed, 01 May 2019 17:13:54 -0400 (EDT)
Message-Id: <20190501.171354.1527034483459886062.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net-next 0/4] net: mvpp2: cls: Add classification
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
References: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 01 May 2019 14:14:01 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_141403_441823_B318CAE2 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jakub.kicinski@netronome.com, antoine.tenart@bootlin.com,
 netdev@vger.kernel.org, gregory.clement@bootlin.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, nadavh@marvell.com,
 saeedm@mellanox.com, thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com,
 stefanc@marvell.com, mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Tue, 30 Apr 2019 15:14:25 +0200

> This series is a rework of the previously standalone patch adding
> classification support for mvpp2 :
 ...

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
