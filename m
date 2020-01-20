Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FC314260C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:45:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEDpwGNq4DFdoVIsw5j2CRSLfKNlwzvXt1bruPHEmdM=; b=ZhOT9/tnlQ49Zq
	fqWuMlAZG2kb/E5Nm3w3vGESNgOgwTaiSJ4AMzsZ1I4gP7/N8zzj+I13p3R2lHUi/mZRDDNRzzYki
	hntkHWsbzKqFE7eywhx+c0x3BkTIX4u6nQ/2bBHtGQ0LwjxTnBYxsUQQOyqdO+At+dgf16vW6DSRk
	5MWeVkaGeIEhhmXBEF3CJ+mydgSm/BC6/2imHAdkcp35ruS6qc193Imy2uvriFC60GRDihoKqSBWh
	VN5d6Cl21oBzL4OZ1YmOgLPy63Ze2zYXqzOx76xT5an/ycF+rz1f/GU9DaXvI5ZONIgGf+FTYBICa
	UC2R7CsN6Kmwlz59vt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSg4-0001Hx-C3; Mon, 20 Jan 2020 08:44:56 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSfo-00018r-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:44:45 +0000
Received: from localhost (82-95-191-104.ip.xs4all.nl [82.95.191.104])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 79133153CB398;
 Mon, 20 Jan 2020 00:44:31 -0800 (PST)
Date: Mon, 20 Jan 2020 09:44:27 +0100 (CET)
Message-Id: <20200120.094427.1467601968385671074.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH] net: stmmac: modified pcs mode support for RGMII
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200115155323.15543-1-zhengdejin5@gmail.com>
References: <20200115155323.15543-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 20 Jan 2020 00:44:33 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_004440_560733_AD54DADE 
X-CRM114-Status: UNSURE (   7.23  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Wed, 15 Jan 2020 23:53:23 +0800

> snps databook noted that physical coding sublayer (PCS) interface
> that can be used when the MAC is configured for the TBI, RTBI, or
> SGMII PHY interface. we have RGMII and SGMII in a SoC and it also
> has the PCS block. it needs stmmac_init_phy and stmmac_mdio_register
> function for initializing phy when it used RGMII interface.
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>

Applied to net-next, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
