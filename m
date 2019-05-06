Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8ED145AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxrNw9TLrCtBcKUKQlxExmJVsvjFnQk0PPCysMqrTKk=; b=AkGzkqAnKK9cA1
	BEVPpiifXPcIjk0Q5/v1XwBMf16NkwpCHXweD3kCAfts04GT8/zC0y1nK1gbsLMqfkpXkLQywo8v5
	WvYagS8ba1ObArdm9bLa7V3pt6tTmuf1AziKR94d3fYOIR+LKa7ZqPSA5nAC7jciCN7oS+Q5DPzOH
	FhI2Dl097AgBR06EJhcOhtkbxMzRrwpZbV4Tu+2KAr41QBPsfxW6+agIzmnx1/NYU7LMAG/seGhg5
	nswXHm1XGtnLD7r4cVMgTvDtVkyr20NaNw/T/SMV7BvkUbz7KESV83DnofbvGYzIc0kAwr+qrjqHA
	VInPRo26mexQn/IaJ2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYYe-0004oa-KX; Mon, 06 May 2019 08:01:08 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYYX-0004mo-7Z
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:01:03 +0000
X-Originating-IP: 90.88.149.145
Received: from bootlin.com (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 19B771C0019;
 Mon,  6 May 2019 08:00:27 +0000 (UTC)
Date: Mon, 6 May 2019 10:00:26 +0200
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Subject: Re: [PATCH net-next 0/4] net: mvpp2: cls: Add classification
Message-ID: <20190506100026.7d0094fc@bootlin.com>
In-Reply-To: <20190504025353.74acbb6d@cakuba.netronome.com>
References: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
 <20190504025353.74acbb6d@cakuba.netronome.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_010101_486666_CF91BB33 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 Saeed Mahameed <saeedm@mellanox.com>, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Jakub,

On Sat, 4 May 2019 02:53:53 -0400
Jakub Kicinski <jakub.kicinski@netronome.com> wrote:

>On Tue, 30 Apr 2019 15:14:25 +0200, Maxime Chevallier wrote:
>> Compared to the first submissions, the NETIF_F_NTUPLE flag was also
>> removed, following Saeed's comment.  
>
>You should probably add it back, even though the stack only uses
>NETIF_F_NTUPLE for aRFS the ethtool APIs historically depend on the
>drivers doing a lot of the validation.

OK my bad, reading your previous comments again, I should indeed have
left it.

I'll re-add the flag, do you think this should go through -net or wait
until net-next reopens ?

Thanks,

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
