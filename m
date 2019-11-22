Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0FC106DDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RedgyH0xJHXqKLBq57wnjVRxthG5Nip0lAvB9DAwapU=; b=NjJ7g2+CsqaW8z
	wTdFvA2PdRITSFjQyVNQf2jz5MDI1PcukqmhnnrPU8TPbH7Z5B7YXmlf1w+U0P1NfSl2b/eeUQJW7
	2K5E2tbd1bPiP801gSqqwmw1rbn59beYyKiPob+KRb5dVS5oVxroDkaRwGXIuoESRW1cgo0AaRj9Q
	1TSblwR0nGJSwsgNh512Ix4leA87UyF2ZuH0PBt5/7ngdYHSvoXpa06MYQX9d9jnKcxR9X1oGVYDz
	WnQQF9lKt4eHv919YTSiZewpTls2RWy4ULS6bEewfsH9Y+gHx+550p4rhpvN8C0aeMbCvoRZTpFNN
	79HbUYAr9bnQLVZkXOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6jK-0007AY-CQ; Fri, 22 Nov 2019 11:04:02 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6j6-00079q-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:03:50 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iY6j3-0004YF-JK; Fri, 22 Nov 2019 19:03:45 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iY6j2-0002em-4R; Fri, 22 Nov 2019 19:03:44 +0800
Date: Fri, 22 Nov 2019 19:03:44 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 1/2] crypto: sun4i-ss: Fix 64-bit size_t warnings on
 sun4i-ss-hash.c
Message-ID: <20191122110344.u6euqg3vecgqyrs4@gondor.apana.org.au>
References: <20191114104907.10645-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114104907.10645-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_030348_789167_ADE8A1F8 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 11:49:06AM +0100, Corentin Labbe wrote:
> If you try to compile this driver on a 64-bit platform then you
> will get warnings because it mixes size_t with unsigned int which
> only works on 32-bit.
> 
> This patch fixes all of the warnings on sun4i-ss-hash.c.
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
