Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F3A9FB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4NSRhdP3S7N8ZJV/KFuHOF8q+087I3N9qQUoUu+4SA=; b=niK+Mjyp9hsNQA
	C7ldkjGOZew+aJEIxKZZD2NQgxoHGsfbAmXF2zp2NIdeJ+D+t1Coo8rO9eT7lW4mp0F0ATxWitkPU
	N13kMKGpCPDNMhFOBnRtgAKtqCtbIF0Yo3BtHZ1u42sRsrqBbsg8+eHBZ5xeHaLy+rp4GEwu9t3kA
	+QBnNGRGY3e1Vl2LpXLdWr07A7ekeyuKsd1Unk1xDo33SeoicHqluRoWO/CVFJULTskm2GI7cfPZG
	oOaq/Dgw2jGx6IFSQB5F3tQRPwZ8zjgjFis5eoq/Pk2LYihLBVgMiYcpXVAJMk1WTYsJJ5ZNkiYae
	lYOTLXldPKjFUqxKis8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5p49-0003dc-Bn; Thu, 05 Sep 2019 10:32:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5p3z-0003cx-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:32:28 +0000
Received: from localhost (unknown [89.248.140.11])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2DD8315387C3C;
 Thu,  5 Sep 2019 03:32:24 -0700 (PDT)
Date: Thu, 05 Sep 2019 12:32:23 +0200 (CEST)
Message-Id: <20190905.123223.203771469306547780.davem@davemloft.net>
To: harini.katakam@xilinx.com
Subject: Re: [PATCH v2 0/2] Fix GMII2RGMII private field
From: David Miller <davem@davemloft.net>
In-Reply-To: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
References: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 05 Sep 2019 03:32:27 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_033227_288168_8DE262CC 
X-CRM114-Status: UNSURE (   5.47  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 radhey.shyam.pandey@xilinx.com, michal.simek@xilinx.com,
 harinikatakamlinux@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Harini Katakam <harini.katakam@xilinx.com>
Date: Wed,  4 Sep 2019 19:30:19 +0530

> Fix the usage of external phy's priv field by gmii2rgmii driver.
> 
> Based on net-next.

Series applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
