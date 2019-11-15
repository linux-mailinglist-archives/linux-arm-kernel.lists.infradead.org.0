Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69DDFD5B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 07:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/v0Cw1CIxBo/NLQ6wYipRWFzlo3jxegk/3bF8qf+t8=; b=IWPTixRUmwOubH
	L1/ENvNG3zMYz8IdXFJoevwikH9ZcuJ4iBu2ztL0JFP/vJDO8sayQyf186thVUqw4CCGhYB9IVB7M
	2jQ8hCw9AmFvl7jC+E56bkQcDvtNHWy8brSzhEfZsthhZC58CyzKFrsZqqeOv57fnwDgfY0k1RkAy
	Dk5C6HNCHhz7vrPQXLCA4A174dfQq+3ntnpUIVdKgCwfj8koH7gLfcLdp1ygGS7rTREhzwRuSEhI6
	RukAoW8q+C7XGp11fE95re5xFMfpGqf9GATiR55wDfQADSc9uQewq6LXVDGcPkS6hGbIecqWZX8jX
	o0FGtjbK7P/ooVPwGjLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVUjz-00073w-Us; Fri, 15 Nov 2019 06:05:55 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVUjt-000735-20
 for linux-arm-kernel@lists.infradead.orG; Fri, 15 Nov 2019 06:05:50 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iVUjr-0004fW-D5; Fri, 15 Nov 2019 14:05:47 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iVUjj-000650-GH; Fri, 15 Nov 2019 14:05:39 +0800
Date: Fri, 15 Nov 2019 14:05:39 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: rng: atmel-trng: add new compatible
Message-ID: <20191115060539.u6wamay56otcqcnm@gondor.apana.org.au>
References: <20191104115457.2681-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104115457.2681-1-codrin.ciubotariu@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_220549_242140_147E79F2 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, arnd@arndb.de, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, mpm@selenic.com,
 Rob Herring <robh@kernel.org>, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 01:54:56PM +0200, Codrin Ciubotariu wrote:
> Add compatible for new IP found on sam9x60 SoC.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> 
> Changes in v2:
>  - added 'Acked-by' from Rob;
> 
>  Documentation/devicetree/bindings/rng/atmel-trng.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
