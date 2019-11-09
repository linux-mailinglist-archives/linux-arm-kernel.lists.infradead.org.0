Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEB9F5D5C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 06:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fPLzixxMnNYeD7GWdRzCtiko/JHBZJCB8YUL9b3Jt8=; b=Np3PKxeT6pzZYR
	6bzTcYpSU6/+bhUl9MjkqTUmGoPcGEbEfqLxYErluK3hEUm+TMJWCuMkFEZWX4UiEqmikvVRQaD7/
	BcTzVZWEo36b42DxV5FaMQAbTzxQ28Jmi4mmS3WztgNoZX2dPtTCOnSHET1hCHgzTt2MSwBH1tm8A
	8+MIi6AmySjKKRqIxu2pgzkuxHc457cZhmWZooCn/y4FfxUUq6rgHASngKC91H5vgXuVlGKolq1iP
	uLyl7jD7fWvOkD6aEyyEDY7KQlPG3ji5ZrOoHnsteqgIoKY+7xCPptrwtuV2BH0IvE4qsUfHBh5sZ
	0jxFM2TaVW3RgdDgiEWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTIsT-00039W-6J; Sat, 09 Nov 2019 05:01:37 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTIsI-00037k-Ah
 for linux-arm-kernel@lists.infradead.orG; Sat, 09 Nov 2019 05:01:28 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iTIs5-0006nb-Un; Sat, 09 Nov 2019 13:01:14 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iTIs0-00083U-GN; Sat, 09 Nov 2019 13:01:08 +0800
Date: Sat, 9 Nov 2019 13:01:08 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tero Kristo <t-kristo@ti.com>, Gilad Ben-Yossef <gilad@benyossef.com>,
 David Miller <davem@davemloft.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-omap@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
Message-ID: <20191109050108.mcykgg2izb7htrek@gondor.apana.org.au>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
 <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
 <20191108022759.GB1140@sol.localdomain>
 <d55c0182-5fb0-2ef9-f056-54b396fb0026@ti.com>
 <20191108091608.i5fxt2vu2nwrybgn@gondor.apana.org.au>
 <2ab94492-21e4-fbe0-41eb-e12b02511d7c@ti.com>
 <20191109022749.GB9739@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109022749.GB9739@sol.localdomain>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_210126_537921_97C923AF 
X-CRM114-Status: UNSURE (   9.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 06:27:49PM -0800, Eric Biggers wrote:
> 
> I don't see how making crypto_wait_req killable would be any better than adding
> a timeout, since in both cases the crypto operation would still be proceeding in
> the background while things are being freed.

Right, you would need to modify the caller to actually distinguish
between the killed case vs. actual completion.

> Would it help if the crypto self-tests printed a pr_debug() message when
> starting each test vector?  These wouldn't be shown by default, but it would be
> possible to enable them using dynamic-debug or by adding '#define DEBUG' to the
> top of the source file.

This should be simpler to implement.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
