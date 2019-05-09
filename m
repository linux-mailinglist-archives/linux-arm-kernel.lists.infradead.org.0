Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3B8184C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 07:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lObbQ9S5iKLEkrCkL7H8aSn5m4pywEYifv+0bj5kfeM=; b=ElyWWU3+pxoC61
	XYJEGte+qsHRCmiNnVSwnmyg4q1VhTl5DwjIizk5Dy/DNKWay9mrsDjXg/7VOELlv70ZBSEhho2b9
	W19b02/zAqPoUJgkoG1+eAYbjgb3AqpubHmd9BYqqYo3MVg1r18u+q4+kARDTxXs41NRQCERuqk6w
	98jpkZWCdhs6n4fykfcGjpcnyKYytF07n8LIE1a2p88RjnGJz8UuSbPMQBCPiDcAn/LiSOWyjqIMD
	cHDloEBSI9l6tfu6b27WmWryKeXXVAcLRvfF2TMjgJ2pr+hkXn/5itHqWdqdYial+oMasdS2QRqLM
	Nf9aWN3AHRXvEbMUvg8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hObOe-0006au-S3; Thu, 09 May 2019 05:15:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hObOU-0006ak-An
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 May 2019 05:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/42cwvZ83L36schii218iPAMEFpvzAi7FRkDYOWYekw=; b=n31kdk8PnlVFeQahbZ7iuQS/D6
 S6DgIDC52pdQG6/h1rkmI2OY2ObL5kgUqKxBmgF2boXdLQFUvjXezM2U0og1pfmK17jy2NE7OL89H
 jQavlXkI2P1m7tCHn9pXroXRpXYf5UVhZ6NntlkORcr5eQ7+L5W5mH9BgZoKH1aR+Oa5jk6cZ5w1t
 JHBMssJ8h2BiSKAxIyt9WE32q49LasdqANfl+VNjfh2IEm7Z7ZJtFz6uv8rFBjTEW8kZUs5qeWM5M
 gMgzjWoUStYGWHww9HhKaObVGtvieKsgcRdd6gZHP8UoEJuaXAYotH/BX2JILvuImepdDErl6Bn3A
 1tgTT4Mg==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hObOR-0001Fs-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 05:14:56 +0000
Received: from bootlin.com (lfbn-tou-1-417-253.w86-206.abo.wanadoo.fr
 [86.206.242.253])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 2CD8F200003;
 Thu,  9 May 2019 05:14:09 +0000 (UTC)
Date: Thu, 9 May 2019 07:14:08 +0200
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Subject: Re: [PATCH net] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
Message-ID: <20190509071408.23eae42a@bootlin.com>
In-Reply-To: <20190507102803.09fcb56c@cakuba.hsd1.ca.comcast.net>
References: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
 <20190507102803.09fcb56c@cakuba.hsd1.ca.comcast.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_061455_109647_0B8D60DE 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Jakub, David,

On Tue, 7 May 2019 10:28:03 -0700
Jakub Kicinski <jakub.kicinski@netronome.com> wrote:

>> -	if (mvpp22_rss_is_supported())
>> +	if (mvpp22_rss_is_supported()) {
>>  		dev->hw_features |= NETIF_F_RXHASH;
>> +		dev->features |= NETIF_F_NTUPLE;  
>
>Hm, why not in hw_features?

Because as of today, there's nothing implemented to disable
classification offload in the driver, so the feature can't be toggled.

Is this an issue ? Sorry if I'm doing this wrong, but I didn't see any
indication that this feature has to be host-writeable.

I can make so that it's toggle-able, but it's not as straightforward as
we would think, since the classifier is also used for RSS (so, we can't
just disable the classifier as a whole, we would have to invalidate
each registered flow).

Thanks,

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
