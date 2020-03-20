Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EDD18C61A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4hDuDKOfVM/MLc99pX3TA3jU7nUwwp+oQ9KhYntuug=; b=FfraOcLuzgGyu7
	ys3fbaEn0pPT/VRvkeNp5xJBQRyGgjxNxm4nbs0hXrE4UXfyjJRkvQpfDa2+6xqkVrIPeo/vUgkY8
	H3ZDvNXZBSR6e7a6yvcWHp+fDS4WWvmdvnWJd1wvrjCfSvFgjYQUFtc2TBdodl+64mLi6YFT75QzC
	SwTQxyJ2y1aKyVyTlZSq+NoxWfZZMvjghPO8ZhyEtYUGYv0Ji8vIaOzY5SSn4ZbgCVOqDXWBFrlXC
	2UsZ5B1gCO9e4Z0mF7tL+VrdzIrjsh+p99U6ZVfBywN04Nmv2/ktoLx1cUxTwp1S+5PvVxMyNO6E2
	s+eqjBp+mH3HOXU7CE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8gk-0002L1-7J; Fri, 20 Mar 2020 03:51:14 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8gc-0002K3-GV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:51:08 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jF8gC-0001VP-Eg; Fri, 20 Mar 2020 14:50:41 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 20 Mar 2020 14:50:40 +1100
Date: Fri, 20 Mar 2020 14:50:40 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Jianhui Zhao <zhaojh329@gmail.com>
Subject: Re: [PATCH v2] crypto: atmel-i2c - Fix wakeup fail
Message-ID: <20200320035040.GC27372@gondor.apana.org.au>
References: <20200310122551.27831-1-zhaojh329@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310122551.27831-1-zhaojh329@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_205106_892548_2B1A175C 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 08:25:51PM +0800, Jianhui Zhao wrote:
> The wake token cannot be sent without ignoring the nack for the
> device address
> 
> Signed-off-by: Jianhui Zhao <zhaojh329@gmail.com>
> ---
>  drivers/crypto/atmel-i2c.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
