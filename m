Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBE51894D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkqYSeMl7APdyadFi8Ah/kojian4LI/y3kRUXD8TKrk=; b=GfLvgv1NE6CQZu
	GojiiEw8MTFYTM0UHt22R8F7kGUqc3ydLW7OxunC7jAdD70+Gfpmvv4AqNh2GiqWU8laQaxB8znMR
	baEoHCqe+FF9jAZ9UkYgCtkzPUvrePFhuAN/fVLV0XhBAvwLpJ4Gv2/AOXVVxdr4V6MRHOLVXtMjY
	v18mrUaNs58+dA+2eabrcaETFClGQDRVJxwuBAnhni7NxHbt3mMy4gm2lcNNqAD61v6hKz5Fh0L0r
	yXetdNF53FBtw0HYoJqi+eJxM9mwDtIaXPZ5H80nGZOQV+LwfQOXcOyMPCkr9d8ihkGv2JTJ3N8Qu
	u0Rz4Y1S0ybcllJw0bwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQDB-0003lM-KU; Wed, 18 Mar 2020 04:21:45 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQD3-0003kt-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:21:38 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EB00314735D00;
 Tue, 17 Mar 2020 21:21:27 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:21:27 -0700 (PDT)
Message-Id: <20200317.212127.2045455292795972153.davem@davemloft.net>
To: rayagonda.kokatanur@broadcom.com
Subject: Re: [PATCH v1 1/1] net: phy: mdio-mux-bcm-iproc: check
 clk_prepare_enable() return value
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200317045435.29975-1-rayagonda.kokatanur@broadcom.com>
References: <20200317045435.29975-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Mar 2020 21:21:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_212137_294575_719328E8 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, sbranden@broadcom.com,
 rjui@broadcom.com, arun.parameswaran@broadcom.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Tue, 17 Mar 2020 10:24:35 +0530

> Check clk_prepare_enable() return value.
> 
> Fixes: 2c7230446bc9 ("net: phy: Add pm support to Broadcom iProc mdio mux driver")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
