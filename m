Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CDD1564C7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 15:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEZvC55cGz3SjKfbCeAxiycpjfvm1ATw1KzHjwpXHZo=; b=bkY7DTWdGMe2TL
	wHDzCuglNuf7LSGW6BwCX43O8J0KKKXhLcQ4XX7Gv14I42Z6z+S8Qp5VH7rNTs2osQm5FR9AKwLYG
	X83VvK/yNoi1ToTJUMz+ggl4UQvUmypGHcHOV0mX6z2BxuMnSqGdp50hhDEif5MJtr7eAVmBfgCoM
	BIJCN1dbpnDA34yIUspGZWv8b3FexJrBKUS7x36epGYKpO4BAj9M7tkaUsHceRuUjhvBcBcqernjH
	+MxwiIlx1x3+f72rtp1wbUFxzTvaaOV6wNOEtTcfzhJJ6wp4nRxDhAAEqT4vctQQ46utve8b5eC1i
	PDZZ/qaACK++Zpvxg7Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0R6m-0006eY-EH; Sat, 08 Feb 2020 14:29:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0R6g-0006dj-Ag
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 14:29:15 +0000
Received: from localhost (dhcp-077-249-119-090.chello.nl [77.249.119.90])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 99164133F2061;
 Sat,  8 Feb 2020 06:29:04 -0800 (PST)
Date: Sat, 08 Feb 2020 15:28:38 +0100 (CET)
Message-Id: <20200208.152838.322440086718054291.davem@davemloft.net>
To: tharvey@gateworks.com
Subject: Re: [PATCH] net: thunderx: use proper interface type for RGMII
From: David Miller <davem@davemloft.net>
In-Reply-To: <1581108026-28170-1-git-send-email-tharvey@gateworks.com>
References: <1581108026-28170-1-git-send-email-tharvey@gateworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 08 Feb 2020 06:29:06 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_062914_370026_AEC54357 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 rrichter@marvell.com, sgoutham@marvell.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tim Harvey <tharvey@gateworks.com>
Date: Fri,  7 Feb 2020 12:40:26 -0800

> The configuration of the OCTEONTX XCV_DLL_CTL register via
> xcv_init_hw() is such that the RGMII RX delay is bypassed
> leaving the RGMII TX delay enabled in the MAC:
> 
> 	/* Configure DLL - enable or bypass
> 	 * TX no bypass, RX bypass
> 	 */
> 	cfg = readq_relaxed(xcv->reg_base + XCV_DLL_CTL);
> 	cfg &= ~0xFF03;
> 	cfg |= CLKRX_BYP;
> 	writeq_relaxed(cfg, xcv->reg_base + XCV_DLL_CTL);
> 
> This would coorespond to a interface type of PHY_INTERFACE_MODE_RGMII_RXID
> and not PHY_INTERFACE_MODE_RGMII.
> 
> Fixing this allows RGMII PHY drivers to do the right thing (enable
> RX delay in the PHY) instead of erroneously enabling both delays in the
> PHY.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
