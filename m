Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34C760DC3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 00:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPW5W70Eo3+6p6eeUTk6oZW/En/U1OuL6+2lnwW80Dk=; b=aDhZ5BOTNhggu/
	ZfWdODkzONKTJDzrDF0sKC+8ntsv2Pf4vLl4aAzkyP3+F/4gJ36lSy9ragC8OXKwOrOTlmTZgli8b
	NSjZQl+uTgODvgVUBmsev7m/3a7XLpeCC8EN5T87q4XF/SU2bYD+XmNItw+Fet5xcp4H9DXTYuMc2
	3KERyNhFdzPH+ZJPsiFjqcXjc4VlQLlhzw713GTOHm21HT3PTP8wgrhyJm6U6hHdtJGqwqE3Gl9Ia
	N0ZfuHZhcV5uYmBEFX5ptDVKeuxDHgbqsP51ezOaTGownVfU78tyIZP8SxeOSDkF8n6EcuobjKJ1B
	SN4yxUJ/zcs+z0d0b2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjWf6-0000tw-8l; Fri, 05 Jul 2019 22:26:36 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjWem-0000ta-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 22:26:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 53487150420B2;
 Fri,  5 Jul 2019 15:26:10 -0700 (PDT)
Date: Fri, 05 Jul 2019 15:26:09 -0700 (PDT)
Message-Id: <20190705.152609.559945402112829129.davem@davemloft.net>
To: hariprasad.kelam@gmail.com
Subject: Re: [PATCH] net: ethernet: allwinner: Remove unneeded memset
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190704025906.GA20005@hari-Inspiron-1545>
References: <20190704025906.GA20005@hari-Inspiron-1545>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 05 Jul 2019 15:26:10 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_152616_837295_2EA156BF 
X-CRM114-Status: UNSURE (   5.05  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, maxime.ripard@bootlin.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 ynezz@true.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Date: Thu, 4 Jul 2019 08:29:06 +0530

> Remove unneeded memset as alloc_etherdev is using kvzalloc which uses
> __GFP_ZERO flag
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
