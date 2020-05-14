Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC6B1D3E0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VhCxswPJQjENVnsWJGeJyaLMxaqvBKsGPXk1/BDcjA=; b=m6K7i2zb8radDD
	/9fFJFR7jJAqp6uvqLYW0MP3HBJ7CbKRKcIGFWxAfKVrYFvqQT7lx9+fsrxig3AS+5qMJs9w9l3Zm
	KpjitB8NDxGyZMMyiyTwbzpWwacCmDAPBLWJOfD4MHfA5951fjDErpooevFZASIjU4z91+cauichh
	7lQfdKPCaX94/6ACgY2AC9bF6zQBRGms/R2Am+PSG7in/Vhs5SXpfq6hAPslZMpat1tntDg7b2ByC
	ELzUAK9yvzLM2YMh4wWhbY4o6swyJQLmBBMUmcitkePpiSLMMrdiywlBrzVDhEoZf8JRNP9ZiK6fo
	h6sbN9lqwTwaNHNIG8mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJxl-0007iN-MV; Thu, 14 May 2020 19:56:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJxd-0007hs-Gm; Thu, 14 May 2020 19:56:06 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EE51E128D3256;
 Thu, 14 May 2020 12:56:03 -0700 (PDT)
Date: Thu, 14 May 2020 12:56:03 -0700 (PDT)
Message-Id: <20200514.125603.1095750660571738939.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH v3 00/15] mediatek: add support for MediaTek Ethernet MAC
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 May 2020 12:56:04 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125605_555856_3A797F44 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 bgolaszewski@baylibre.com, stephane.leprovost@mediatek.com, arnd@arndb.de,
 corbet@lwn.net, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, pedro.tsai@mediatek.com, fparent@baylibre.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 andrew.perepech@mediatek.com, john@phrozen.org, matthias.bgg@gmail.com,
 kuba@kernel.org, Mark-MC.Lee@mediatek.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 14 May 2020 09:59:27 +0200

> Next we do some cleanup of the mediatek ethernet drivers directory and update
> the devres documentation with existing networking devres helpers.

I don't agree with the new devres stuff.

You have to be very careful with the ordering of when you map/unmap
registers, free up anciliary resources, etc. in relationship to when
the netdev unregister happens.

Please submit this driver without these controversial devres changes,
and then you can submit and discuss those changes separately later.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
