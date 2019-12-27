Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882E012B3FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 11:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOBt6L5f46QIpSc1gjktp+IJiaaTQYjpY/Fh/mcuFVs=; b=QytlhNK2sp18m3
	C5XIZAgr5JqRJU1QBoR2PQTQLFhUwz93W2Hjl03xkV6BHWE0hBWmS8dJoXb6ii2oyFOgGAJp36ESf
	cZ/CzRTmGqKn1BAGbwFgY36o0PfzzLgqQK43BfryguUzih0vBWEcWKPvXMafJATgcxDHapu1Y8V11
	w8YJjaRPd253VX2RhULuGZvJ6vUPOzrKqHXC3KN0jhGlpxg1QcCnzxU6WTRkZSy6mcEJAUKJ1qhiT
	LvXDcZeo5BXMoX+pyEwRvCNbYlunlsuEQWmByZNcRvVhxHCNb/Ze5+AJSSAkKLJCQ8mhwGjZ9o6In
	hSUtoARUWVW7+1B5dy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikn0p-00043U-GG; Fri, 27 Dec 2019 10:38:31 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikn0a-000421-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 10:38:20 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ikn0I-0007NS-4x; Fri, 27 Dec 2019 18:37:58 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ikn0E-0005mS-GD; Fri, 27 Dec 2019 18:37:54 +0800
Date: Fri, 27 Dec 2019 18:37:54 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] crypto: sun4i-ss: make unexported sun4i_ss_pm_ops static
Message-ID: <20191227103754.khyipr5avcuhd4or@gondor.apana.org.au>
References: <20191217113024.2109457-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217113024.2109457-1-ben.dooks@codethink.co.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_023816_736743_F9CAE457 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, YueHaibing <yuehaibing@huawei.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 11:30:24AM +0000, Ben Dooks (Codethink) wrote:
> The sun4i_ss_pm_ops is not referenced outside the driver
> except via a pointer, so make it static to avoid the following
> warning:
> 
> drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c:276:25: warning: symbol 'sun4i_ss_pm_ops' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
> ---
> Cc: Corentin Labbe <clabbe.montjoie@gmail.com>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Allison Randal <allison@lohutok.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: YueHaibing <yuehaibing@huawei.com>
> Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Cc: linux-crypto@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c | 2 +-
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
