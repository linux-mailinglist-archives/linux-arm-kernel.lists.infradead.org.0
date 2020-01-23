Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09741464EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WszZaKjLj7hoFQvfcYSC4Gphxz5yxoOgiXwV3k3Mw6s=; b=r2OMKvRb7a6B5Q
	AH3kgS7Vctegra2XpLQkR/8/eiPV3PqaoEX4esh+g+tu3MnTefUGfzHWxdp7XrkQap/Rmk4oO+i/g
	65hVIRcFNmi4t9aTtns+cdsLel2UvTIrcbZJjafTPkNQ6QSfDK/Bt152Ht7Ddii4SlNuYx2Jg88nk
	gLeqRholVSvfOEcLJg9Fpl1ZQ3/HzhF7TxFEViqQ2KGD6CDyn+9QCxMMWWfAjs66uAhzEj5IQhehd
	bUy5VBy1+kQkjg9Kynszl7CFnyphmog7hdhsBbeZZGcNspixjHBk1wXuT+3U0nv/W0DvWn1QoMGaI
	TQZtu+c6NW2dMeaJ+s8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZ9D-0001Q8-Sd; Thu, 23 Jan 2020 09:51:35 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZ93-0001Jj-4T
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:51:26 +0000
Received: from localhost (unknown [185.13.106.231])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4199B153D1F49;
 Thu, 23 Jan 2020 01:51:08 -0800 (PST)
Date: Thu, 23 Jan 2020 10:49:58 +0100 (CET)
Message-Id: <20200123.104958.2192934942627784465.davem@davemloft.net>
To: hkallweit1@gmail.com
Subject: Re: [PATCH v2 net-next] net: convert suitable drivers to use
 phy_do_ioctl_running
From: David Miller <davem@davemloft.net>
In-Reply-To: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
References: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 Jan 2020 01:51:19 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_015125_196550_35631CEA 
X-CRM114-Status: UNSURE (   5.57  )
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
Cc: andrew@lunn.ch, pantelis.antoniou@gmail.com, f.fainelli@gmail.com,
 michal.simek@xilinx.com, wens@csie.org, bcm-kernel-feedback-list@broadcom.com,
 slemieux.tyco@gmail.com, yisen.zhuang@huawei.com,
 steve.glendinning@shawell.net, mripard@kernel.org, vz@mleia.com,
 opendmb@gmail.com, linux-arm-kernel@lists.infradead.org,
 salil.mehta@huawei.com, timur@kernel.org, sergei.shtylyov@cogentembedded.com,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, woojung.huh@microchip.com,
 UNGLinuxDriver@microchip.com, linux-renesas-soc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiner Kallweit <hkallweit1@gmail.com>
Date: Tue, 21 Jan 2020 22:09:33 +0100

> Convert suitable drivers to use new helper phy_do_ioctl_running.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2: I forgot the netdev mailing list

Applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
