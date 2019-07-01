Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6968B196F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 05:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYTn1csB+XytAZfew3cv137l1FToQ4EVpGuZc/iqSzY=; b=Ivl+bHfol121ez
	qX2u+EOj0HgU9+xAoFdi1GsoBgpW2Kalq0y01ivG6YbZzMJPShBu4ak0by6anZ9Rl9CIMidovcdm6
	AhnbVuNulhN8ofeI0lU+PxM6MQEE8HYQu0DoffLJ221OojLMMvbtM6cZ77ljcaw7jOKbg58ShzX55
	sTGBRC05om0a/31OjPPnJ24+tR1TyLnIMXIlOplvXYuynGJiBe+WRKAuz/q6VjRCdykZ8GhxuEfuN
	FmohgNSFRxygL9hMuZCkjzt6Fo37kkc3P3GV13Mnk8JdO2Bjwwh4oX2eY9Lhk5dd5++HhAXn4RGJg
	h9a5i7ouZmGytBuUE75Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOvr8-00041C-TB; Fri, 10 May 2019 03:05:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOvr1-00040h-V8
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 03:05:49 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 372002182B;
 Fri, 10 May 2019 03:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557457547;
 bh=mkQ3abg+2JtJLueEBsJfOfdiHSoy46DAguszRpEAgAg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kgyjEjafqRceisaxV6npqASBMVD/V60tt4LtTqspH3YkOtoKSCXufoBbf/h4MA3ja
 Rhz81s8okglcQipl3VeLT0vvrpLHtxaPXrTxvtoX6PxmtodoOHiIgvP2uEoh/jkL/O
 FcdQ/4QfQRj0x/59Phig4C8BfdaV96xp1cfwz2m0=
Date: Fri, 10 May 2019 11:05:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
Message-ID: <20190510030525.GC15856@dragon>
References: <20190422183056.16375-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190422183056.16375-1-leoyang.li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_200548_021278_D3DB4E73 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Vinod Koul <vkoul@kernel.org>, Grant Likely <grant.likely@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 01:30:56PM -0500, Li Yang wrote:
> Enables the FSL EDMA driver by default.  This also works around an issue
> that imx-i2c driver keeps deferring the probe because of the DMA is not
> ready.  And currently the DMA engine framework can not correctly tell
> if the DMA channels will truly become available later (it will never be
> available if the DMA driver is not enabled).
> 
> This will cause indefinite messages like below:
> [    3.335829] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> [    3.344455] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000 uOhm)
> [    3.350917] lm90 0-004c: 0-004c supply vcc not found, using dummy regulator
> [    3.362089] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> [    3.370741] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000 uOhm)
> [    3.377205] lm90 0-004c: 0-004c supply vcc not found, using dummy regulator
> [    3.388455] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> ..... 
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
