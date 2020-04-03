Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0B819E151
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 01:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqtqtJ5LnFFOIcT20ec87936J5l79X05DYT/DqaouCg=; b=TQ3Ih73KIY5Tdw
	rqxiesKn79VGkS04/regx7L7qtTvWc4DJQ8mPDaehc3OxRjB7P62GY8xrlG1VlaLoYLFKPoYLVsTf
	U1bLbqMB0gMbCLJ3hcfIE8oSL66LzVI3GmDn09H6Mc8se9s8ORBrIV5JXEQEBIECBNaZRJ8Y3ftFK
	9kttjqDDElh99iq5C+8KM5KG5UwyJg7xKXlIWBwsgqoU1A/+AzLZW//aRKlUSxXLxSurUoH4BgfMc
	J0SjFddSAn1We/G0ReULCFO4HZbWjOK5Bg+fGHTX90MAlYsTHNlJD6D8wHqzFI4ekY4eiGmvkxZiJ
	0gvh3cozs7tTcuvSQuRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVTZ-0006gh-AC; Fri, 03 Apr 2020 23:11:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKVTS-0006fl-IW; Fri, 03 Apr 2020 23:11:43 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B9F4B121938E3;
 Fri,  3 Apr 2020 16:11:40 -0700 (PDT)
Date: Fri, 03 Apr 2020 16:11:39 -0700 (PDT)
Message-Id: <20200403.161139.2115986079787627095.davem@davemloft.net>
To: gch981213@gmail.com
Subject: Re: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in
 port5 setup
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200403112830.505720-1-gch981213@gmail.com>
References: <20200403112830.505720-1-gch981213@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 Apr 2020 16:11:41 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_161142_610578_F064D9AB 
X-CRM114-Status: UNSURE (   8.34  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 opensource@vdorst.com, rmk+kernel@armlinux.org.uk,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri,  3 Apr 2020 19:28:24 +0800

> The 2nd gmac of mediatek soc ethernet may not be connected to a PHY
> and a phy-handle isn't always available.
> Unfortunately, mt7530 dsa driver assumes that the 2nd gmac is always
> connected to switch port 5 and setup mt7530 according to phy address
> of 2nd gmac node, causing null pointer dereferencing when phy-handle
> isn't defined in dts.
> This commit fix this setup code by checking return value of
> of_parse_phandle before using it.
> 
> Fixes: 38f790a80560 ("net: dsa: mt7530: Add support for port 5")
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> Cc: stable@vger.kernel.org

Please do not CC: stable for networking changes, as per:

	Documentation/networking/netdev-FAQ.rstq

Applied and queued up for -stable, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
