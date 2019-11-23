Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC394107EAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 14:53:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MM+IwTvRgPeehjtYPVkwI4+GRGPe4G4VV80voz+/hD8=; b=t6jjaflFsKbPYT
	l3ObeUjoH4sTqYy8u883Y64TJltX6GbPgFHKx0JngOQdnrel9oBxPp62AGURbQzyE8q7+FXfqEKNe
	oouxN4biTdj0hvWIRvm5hDHMb5WAG1zTkfT0rHQZK9SaMJMEBWw2SkID86eyRzaDV9/vzD3j8xEaJ
	MiGV4KrywsL/IYMXPtohdmQ65lvCLrWIV1AKZgVXyKwBZ6qex+e74dXujSs5UeqUMRPKwRik/Lkpy
	/2GGiLGUdjZNNRiMOB2BZb3kgxSlYfXYvs4uw+RRC1i6tbbwSq3CJwixIa9hV8c/NNw9mXrXiOAts
	jNX2Id9vhBZ68cXwW08Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYVqK-0001Vb-0b; Sat, 23 Nov 2019 13:52:56 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYVqB-0001Uf-K6
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 13:52:49 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iYVq5-0003gi-7I; Sat, 23 Nov 2019 21:52:41 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iYVq0-00046X-Kk; Sat, 23 Nov 2019 21:52:36 +0800
Date: Sat, 23 Nov 2019 21:52:36 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v3] crypto: picoxcell: adjust the position of
 tasklet_init and fix missed tasklet_kill
Message-ID: <20191123135236.johugbmuwpecnhsf@gondor.apana.org.au>
References: <20191123134817.30953-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123134817.30953-1-hslester96@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_055247_804705_F710788B 
X-CRM114-Status: GOOD (  12.70  )
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
Cc: Jamie Iles <jamie@jamieiles.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 09:48:17PM +0800, Chuhong Yuan wrote:
> Since tasklet is needed to be initialized before registering IRQ
> handler, adjust the position of tasklet_init to fix the wrong order.
> 
> Besides, to fix the missed tasklet_kill, this patch adds a helper
> function and uses devm_add_action_or_reset to kill the tasklet
> automatically.
> 
> Fixes: ce92136843cb ("crypto: picoxcell - add support for the picoxcell crypto engines")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v3:
>   - Use devm_add_action_or_reset to simplify the patch.
> 
>  drivers/crypto/picoxcell_crypto.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)

Thanks for the patch.  It looks much nicer.

> @@ -1655,6 +1660,14 @@ static int spacc_probe(struct platform_device *pdev)
>  		return -ENXIO;
>  	}
>  
> +	tasklet_init(&engine->complete, spacc_spacc_complete,
> +		     (unsigned long)engine);
> +
> +	ret = devm_add_action_or_reset(&pdev->dev, spacc_tasklet_kill,
> +				       &engine->complete);

Minor nit.  You only need devm_add_action as calling tasklet_kill
at this point should be a no-op.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
