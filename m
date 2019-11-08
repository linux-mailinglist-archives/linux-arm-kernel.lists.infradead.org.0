Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5881F42F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXEiWA9L1PwRrvHYNjA8Khyd51zlfP3hFYkKNBebHhQ=; b=WiQ3+C5LTzfSGY
	qLiliK4xGZf+gECsLknWnJhJjwGMf/mF1QliVWFLTgL0B5oWbb6iRAP0+uCi5FVNxUfvyxCA3ASlh
	3Jm0qOpH1wyqrtsGhDr4/4mVvOMFOpBJssAcLm3yXLC93xXqpNFawRSERxbPUNSKz4XiJ7IFXlW2+
	d2A7lOHjEe8QuwO5vjhKGDnuC0/kljqEAE+Esp4K/URsTFOjUoTvreI2gAFENdYBuUoa3L/3P57WS
	Zh2Kkiy6rX9q15WvndsWmX9HGdtsVchxJk2M3fupmeYggEkhwov+3Bh9HYh+nYA2FfuCnwIh47btV
	XwEdQzFDT8U7LfVhRX6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0Nb-00033c-Sy; Fri, 08 Nov 2019 09:16:31 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0NT-00032y-5V
 for linux-arm-kernel@lists.infradead.orG; Fri, 08 Nov 2019 09:16:24 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iT0NG-00020V-C1; Fri, 08 Nov 2019 17:16:10 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iT0NE-0002Ll-H0; Fri, 08 Nov 2019 17:16:08 +0800
Date: Fri, 8 Nov 2019 17:16:08 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
Message-ID: <20191108091608.i5fxt2vu2nwrybgn@gondor.apana.org.au>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
 <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
 <20191108022759.GB1140@sol.localdomain>
 <d55c0182-5fb0-2ef9-f056-54b396fb0026@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d55c0182-5fb0-2ef9-f056-54b396fb0026@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_011623_389927_81650E54 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 09:40:57AM +0200, Tero Kristo wrote:
>
> The problem is not detecting a hung task, the problem is determining what
> caused the hang. Personally I don't care if the system dies if a crypto
> accelerator self test has failed, as long as I get reported about the exact
> nature of the failure. The failures are expected to happen only in
> development phase of a crypto driver.
> 
> With the timeout patch in place, I get reported what exact crypto test case
> failed and I can focus my debug efforts on that one.

If that's all you need then how about just making the wait killable?

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
