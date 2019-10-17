Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0667DB59F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vp0PWI5XqMWT1i/elv+hU0IcNnglFgtyiwtmsHZsq/8=; b=PnpdUfADEtqn7F
	FHd+kS2N5ZWeKvuXidSLKxuRrLiwPC0LxOAo/Y9h/p4PIQUZuM/pBMWXtfWuQSDB4B9jDp0QS8uO5
	//ig+dvRCo4c95PcC/fPoKNVck5F/gNwc5bCetdmzYF6B5lvBNA6Y4ft1z2PcBD6z26Q0coRGg1rM
	wbIuQZBwsN+hhSJ44Ne8qGQ2pNuK+RFjRcQzxKYj2ZLE5PF1gTQTSOlCY/WdQtgDT2y79CPS6WWWR
	ojB9c1r5tSudnptqOsgVdSj1a+XVBx5dc5/AdpyWFh0dZXz6p654soFi+/Vq56SAS1NBu+mX42CUo
	pAodkupyO/D1ooozR5BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAF0-0002XU-F0; Thu, 17 Oct 2019 18:11:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAEr-0002Wd-2f
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 18:11:06 +0000
Received: from localhost (unknown
 [IPv6:2603:3023:50c:85e1:5314:1b70:2a53:887e])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7A5D513FCB177;
 Thu, 17 Oct 2019 11:11:02 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:11:01 -0400 (EDT)
Message-Id: <20191017.141101.365756703972576189.davem@davemloft.net>
To: alexandre.belloni@bootlin.com
Subject: Re: [PATCH v2 2/2] net: lpc_eth: parse phy nodes from device tree
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191017094757.26885-2-alexandre.belloni@bootlin.com>
References: <20191017094757.26885-1-alexandre.belloni@bootlin.com>
 <20191017094757.26885-2-alexandre.belloni@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 17 Oct 2019 11:11:02 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_111105_120655_92C5AD23 
X-CRM114-Status: GOOD (  11.52  )
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 vz@mleia.com, slemieux.tyco@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Thu, 17 Oct 2019 11:47:57 +0200

> When connected to a micrel phy, phy_find_first doesn't work properly
> because the first phy found is on address 0, the broadcast address but, the
> first thing the phy driver is doing is disabling this broadcast address.
> The phy is then available only on address 1 but the mdio driver doesn't
> know about it.
> 
> Instead, register the mdio bus using of_mdiobus_register and try to find
> the phy description in device tree before falling back to phy_find_first.
> 
> This ultimately also allows to describe the interrupt the phy is connected
> to.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

You need to respin this series because this patch doesn't apply to any of
the networking trees.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
