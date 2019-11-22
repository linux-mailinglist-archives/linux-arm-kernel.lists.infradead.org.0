Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8401310686D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es0TgZZI6oGkRlIKFTBMlKDdAxD2uGNPu5DQ2733LMM=; b=UxKDcjWTFwfblh
	VFrnPlGL2cL/5o1ZebINfmPIMYoRrN06QgSMXZqfKr0oy6W0Q+PYZKkcekASNexgH5ti6XtuKKEvE
	fZrcrHUTHx87c7Jhm/TqI+iDf9J0UdGItWnrULITVZuMaFimqb0rzoaqKB93g6SHbTFfJsQkYLnkT
	doGV/kIL4hDtKiWrK/IcVobgP6TG7yjgSXFmZ+wsEm6sP6xXaHsZjPU03ayL9hKLrYkCjtGn6uO7G
	hrQxcSoD5yskfn5qD21H+1BoT+Tk2TWuQ3R/jZUkq4MGc8YJ5HUPGUbz+VckA0+U9SRh3MttA9cA2
	Ug7WWQh1p0I+jL0pHRvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4jZ-0008Ht-Ma; Fri, 22 Nov 2019 08:56:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4jR-0008HB-Cj
 for linux-arm-kernel@bombadil.infradead.org; Fri, 22 Nov 2019 08:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0+DWFt3PQWDxvcKsXXDrRQy6dX7bKKX5MsP93imD4FQ=; b=Ufuk9xxd1ovIx0g//fRba5G6/
 t8mbfjvPY/5GwxCCzUfllAVkV/G1nYfjIKYatt/Qio5Z/zro6+l/hYVAVGOX+VEgB5CTLXYnFwX0Z
 dYZqjluz3A97tp5UExxi+POIKEQwBQIOR+rvMqORDVqsrNcds3QH9eM1ArqRz5iYqxl7sBVjkNEZw
 051+pjJa7mmG/kEYLTOTKk8+JxlRux4io3z28YQGcu3depeFWvDjI/YxVsVCLIPYPMTui5R7rlCQr
 sYHH20cHWYwA180n64iL4Pit3S1HjHGU4Mqv4D8ufyN676aALDUg1JSZJspeKKU8kEKXdGQU69p1v
 TTHKjlyug==;
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4jw-0002X3-QG
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:56:36 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iY4ij-00006J-Er; Fri, 22 Nov 2019 16:55:17 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iY4ie-00050h-Ik; Fri, 22 Nov 2019 16:55:12 +0800
Date: Fri, 22 Nov 2019 16:55:12 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] crypto: picoxcell: add missed tasklet_kill
Message-ID: <20191122085512.m75tjfa3valqfgyv@gondor.apana.org.au>
References: <20191115023116.7070-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115023116.7070-1-hslester96@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_085633_126187_0B2EB674 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: Jamie Iles <jamie@jamieiles.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 10:31:16AM +0800, Chuhong Yuan wrote:
> This driver forgets to kill tasklet when probe fails and remove.
> Add the calls to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Yes this driver does look buggy but I think your patch isn't
enough.

> diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
> index 3cbefb41b099..8d7c6bb2876e 100644
> --- a/drivers/crypto/picoxcell_crypto.c
> +++ b/drivers/crypto/picoxcell_crypto.c
> @@ -1755,6 +1755,7 @@ static int spacc_probe(struct platform_device *pdev)
>  	if (!ret)
>  		return 0;
>  
> +	tasklet_kill(&engine->complete);

The tasklet is schedule by the IRQ handler so you should not kill
it until the IRQ handler has been unregistered.

This driver is also buggy because it registers the IRQ handler
before initialising the tasklet.  You must always be prepared for
spurious IRQs.  IOW, as soon as you register the IRQ handler you
must be prepared for it to be called.

> @@ -1771,6 +1772,7 @@ static int spacc_remove(struct platform_device *pdev)
>  	struct spacc_alg *alg, *next;
>  	struct spacc_engine *engine = platform_get_drvdata(pdev);
>  
> +	tasklet_kill(&engine->complete);

Ditto.

However, the IRQ handler is registered through devm which makes it
hard to kill the tasklet after unregistering it.  We should probably
convert it to a normal request_irq so we can control how it's
unregistered.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
