Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7791301C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chibCMxy1np9Crt6SFVc+IWmQIBxX/NWllGH9zPHB0E=; b=HxoKMnrQhPMzui
	opr7KgNcg3e1J9J6vOpPn7oyXQH+PB8M4VhzJ5nVF5N0xKQRMCl7GVD+cNHTP3MMJZsNPVGDp7pNw
	iUSky2oxQ8rdBo+37b1k/ra/xqE7Pbr/Le/xaXb+hEenE97tMt5INvEv28psv7vPEzfMKaswHdyBE
	6vnLZb7iHDhNAsxD571noVZ/mEA7hxYcDc4SEX7aB2PtF7LMRCAXtgAu/GZ5d6OCVO7MVRKyYcHaY
	fAjGmuIaNJ5lhkIBwCmDK8lzNrl+xj2eX01GxDPMGMPBlH/zmT3cmVfHv5Sap6Hv8wMr6yUlTVwaS
	U+3WVw0uGIIrBnfeKBiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZ9a-0008Hi-8D; Fri, 03 May 2019 14:27:10 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZ9J-00089I-V5
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:26:55 +0000
Received: from localhost (adsl-173-228-226-134.prtc.net [173.228.226.134])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B6CF514B666DF;
 Fri,  3 May 2019 07:26:43 -0700 (PDT)
Date: Fri, 03 May 2019 10:26:39 -0400 (EDT)
Message-Id: <20190503.102639.682620225620762896.davem@davemloft.net>
To: nicolas.ferre@microchip.com
Subject: Re: [PATCH] net: macb: remove redundant struct phy_device declaration
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190503103628.17160-1-nicolas.ferre@microchip.com>
References: <20190503103628.17160-1-nicolas.ferre@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 May 2019 07:26:45 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_072654_007567_63EE834B 
X-CRM114-Status: UNSURE (   7.08  )
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
Cc: alexandre.belloni@bootlin.com, netdev@vger.kernel.org,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 harini.katakam@xilinx.com, claudiu.beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>
Date: Fri, 3 May 2019 12:36:28 +0200

> While moving the chunk of code during 739de9a1563a
> ("net: macb: Reorganize macb_mii bringup"), the declaration of
> struct phy_device declaration was kept. It's not useful in this
> function as we alrady have a phydev pointer.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
