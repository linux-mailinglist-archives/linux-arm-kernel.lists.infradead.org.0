Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D291710C268
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 03:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tk4+P3K81W87jS38VpnkmhrISVZREA08GCjNiB/sEAI=; b=plqLP0xTv1M3fB
	9JJg0Stju0RvfEvu2Dzc7GpSxxI6hWlpCC6CUhz3mQRiWv7UY9rl68O/d8fecjsaX//aMiQHMAxwS
	sGHNUL66gDCx8zIb95/6cQaPUlIIHW/7LbC8iNnAvWFgxJTK7PCFR4LFzBxlKz1dE+li/Tufz3y/g
	dEUAtlqQWrObczkRkhqoqEWMUQp3QriBwA6ufcl5bahzO1yY4dw6MC8RWSTFs2GvPe10eAkR33G41
	CAQREJUiaCBgDPS4bNw3Fin76RCOWbO8Td5mobR+kIpUb2QZASmyj3mqywRnY/xyEvu8yx6rAUiSe
	jGQhFCG4F9Fdytn15zUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9cU-0004L2-E0; Thu, 28 Nov 2019 02:33:26 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9cK-0004Ke-TA
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 02:33:19 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ia9cC-0002xV-Vu; Thu, 28 Nov 2019 10:33:09 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ia9c8-0002j8-DD; Thu, 28 Nov 2019 10:33:04 +0800
Date: Thu, 28 Nov 2019 10:33:04 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 1/2] crypto: atmel-tdes - Set the IV after {en,de}crypt
Message-ID: <20191128023304.m2uttrl7n55gydxj@gondor.apana.org.au>
References: <20191115134854.30190-1-tudor.ambarus@microchip.com>
 <642709fe-8cee-4c08-9a4a-05aa47d43c08@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <642709fe-8cee-4c08-9a4a-05aa47d43c08@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_183317_082671_AF8D70CA 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 04:56:37PM +0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 11/15/19 3:49 PM, Tudor Ambarus - M18064 wrote:
> >  static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
> >  {
> >  	struct skcipher_request *req = dd->req;
> > @@ -580,6 +605,8 @@ static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
> >  
> >  	dd->flags &= ~TDES_FLAGS_BUSY;
> >  
> > +	atmel_tdes_set_iv_as_last_ciphertext_block(dd);
> 
> ECB mode does not use an IV, I should probably exclude the update of IV for the
> ECB mode. v2 will follow.

Please send an incremental patch as this one has already been
applied.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
