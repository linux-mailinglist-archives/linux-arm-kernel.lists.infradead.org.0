Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99496E2BA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ys7fIdSOoyq/vH/jy20SyCt8PMfIr170k4UguxWFToo=; b=X/SYTrBEUabDLX
	g4TQ2Y2TiziwAgTPw5URmjBZYVweqhAisGvuNqd+4uLgBJ7neVNfJVXxFWF0ZSX3nhZ1wdgfAy0fk
	0js5y4RqCSs6V8VTmh5ll23pSuX2qil2813Uh5Cfuq44siBLdh5x7895nn5jBpfiDD03iKxv9hc32
	EyTSJjBkg+sf1TT1g//A8qqmInlsbSVu2wyJlPsftaDGr/pNxcaDC7tsPT9gmRpsOmq1PAwcklbD7
	lSNlYe289MKtwA/vwnsZ+XF7F9vhgzSdBFQCygG5bUwXSPUjsZo/KN16MU1vAblqPKsmG5S2PL2lk
	TKAu9jn/wP/bpF0GvfOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNY2c-0002cl-LL; Thu, 24 Oct 2019 08:00:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNY2K-0002AM-HO
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:00:02 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iNY2D-0006hy-CI; Thu, 24 Oct 2019 09:59:53 +0200
Message-ID: <b5653d484cb84160992355733153da711aef0849.camel@pengutronix.de>
Subject: Re: [PATCH v2 3/5] dt-bindings: reset: rcar-rst: Document r8a77961
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Date: Thu, 24 Oct 2019 09:59:50 +0200
In-Reply-To: <20191023122911.12166-4-geert+renesas@glider.be>
References: <20191023122911.12166-1-geert+renesas@glider.be>
 <20191023122911.12166-4-geert+renesas@glider.be>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_010000_577411_AB68028B 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Wed, 2019-10-23 at 14:29 +0200, Geert Uytterhoeven wrote:
> Add DT binding documentation for the Reset block in the Renesas R-Car
> M3-W+ (R8A77961) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by.
> ---
>  Documentation/devicetree/bindings/reset/renesas,rst.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/reset/renesas,rst.txt b/Documentation/devicetree/bindings/reset/renesas,rst.txt
> index d6d6769a0c42735f..de7f06ccd003da9f 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rst.txt
> +++ b/Documentation/devicetree/bindings/reset/renesas,rst.txt
> @@ -31,6 +31,7 @@ Required properties:
>  		  - "renesas,r8a7794-rst" (R-Car E2)
>  		  - "renesas,r8a7795-rst" (R-Car H3)
>  		  - "renesas,r8a7796-rst" (R-Car M3-W)
> +		  - "renesas,r8a77961-rst" (R-Car M3-W+)
>  		  - "renesas,r8a77965-rst" (R-Car M3-N)
>  		  - "renesas,r8a77970-rst" (R-Car V3M)
>  		  - "renesas,r8a77980-rst" (R-Car V3H)

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
