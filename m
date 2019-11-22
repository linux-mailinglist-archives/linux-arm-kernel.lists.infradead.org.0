Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06201105F41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 05:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Q41+x9qHxzXCDz3/N+YcVHOmI8a17XbHdfxT5q0j1A=; b=dH8l+o7cpO6Yj3
	yhDMudhOPHI90aZT74OZvzxEH3E5eA7BmompNgHpAmup4CYMcpysx5xy9rfp4IOhmWW/nSqI4rkJL
	myTFKWDSuVbEmrJzTnaLR3yUin2HLXBssEiSsJMdd6aNsqFXEC9cNVmbJfopla3fSU8P2tDpSpLdp
	auJbuPbLYcUXB478SxbTx0XLPxng6+kLszQXBEYbaecCOKIGt3fJUscTjYHgrqc55Nuc6Z4R4MrhF
	ozanBdJOAq76wYrKXuOLqLR3X1eigyD4TCnPx+gLwsVdDI9VFTjS6rqIKupL/iklR9RM2yCYWo0uA
	zo5nNiTN1kPEdxkJRkbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY0hm-0006Hq-RO; Fri, 22 Nov 2019 04:38:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY0he-0006HZ-No
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 04:37:56 +0000
Received: from localhost (unknown [171.61.94.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 573AB2068D;
 Fri, 22 Nov 2019 04:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574397471;
 bh=SUQ9OFAb62GXoX/MtVCEnH4ZzSHKhWxeJQUcD9rTFj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rz++MFrfWK+An4b+AwBuTYhLWNDxawnfeV1XKGoY1BJL4CBdVW757Al5r599uC2cX
 Mi5eym5FF1c8+yTGXVDulsls3nfj+r5n3ZDH/oMtPD79UJXqhYzemEX1TbpDztsmKO
 Rm2C57tdhmZ5HLT4ZgLTiZcnxlIMKWXcpydxWV78=
Date: Fri, 22 Nov 2019 10:07:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2 0/3] crypto: atmel - Retire
 dma_request_slave_channel_compat()
Message-ID: <20191122043745.GK82508@vkoul-mobl>
References: <20191121101602.21941-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121101602.21941-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_203754_795323_9916D046 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-11-19, 12:15, Peter Ujfalusi wrote:
> Hi,
> 
> Changes since v1:
> - Rebased on next-20191121 to avoid conflict for atmel-aes
> 
> I'm going through the kernel to crack down on dma_request_slave_channel_compat()
> users.
> 
> These drivers no longer needs it as they are only probed via DT and even if they
> would probe in legacy mode, the dma_request_chan() + dma_slave_map must be used
> for supporting non DT boots.

Reviewed-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
