Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF0E2763C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 08:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thkqSM5F+2eZzkmUJt5A/CNp3IS3YzcQONwmB5HP3BA=; b=R6ulZffDPzz8Mz
	zcPeL+C/6oubDaEQboQ7QM065rVyl2YICBAczrHp4kyM8Ab1sZVpsYWd5XYxFlpdXmxXvgN5JJB1P
	dJqKSAvYtV7D6rVooVwkkfwAMqMNSyJzDfMEKNegB1xU4+LWYFNe5tu/V6f/wGjBQs9CrWcKPOrQ8
	IcCJ8fkWlQdcnAt8d+e5sP/ckZCcT1jB/fZHRJGh3CYGvItrxVTQyudlO6ig3XoNnFpBKoD228dwp
	HCfn0yuQDP1Md6PcdXYcgX3F8oRod22/jbn+4PTuDQATbEeegamTtcHZYf7LK0H9mRbLE4FoaFc6D
	D3zk0C5Yoj6jskEPy1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThZX-00083J-Hf; Thu, 23 May 2019 06:51:27 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThZQ-00082X-AE
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 06:51:22 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hThZN-0001ms-5x; Thu, 23 May 2019 14:51:17 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hThZK-0006Am-MR; Thu, 23 May 2019 14:51:14 +0800
Date: Thu, 23 May 2019 14:51:14 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] arm/sha512 - Make sha512_arm_final static
Message-ID: <20190523065114.emyels3obi4fufbd@gondor.apana.org.au>
References: <20190512090540.36472-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512090540.36472-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_235120_498107_58C7A7B9 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux@armlinux.org.uk, davem@davemloft.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 05:05:40PM +0800, YueHaibing wrote:
> Fix sparse warning:
> 
> arch/arm/crypto/sha512-glue.c:40:5: warning:
>  symbol 'sha512_arm_final' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  arch/arm/crypto/sha512-glue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
