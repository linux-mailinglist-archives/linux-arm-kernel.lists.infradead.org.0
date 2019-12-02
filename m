Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F41F10EA3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKFLv+LPXBwWMCh1NlndkKdnwK4uMUv9Mfil+H08a74=; b=VdVNEoK2eEeQGD
	idvsqpeIUOr4eZV++dH2moLjSMXaBrrw/i/JC01WjJHrdYZErSqKbTQAsFO+g5L1rMcFbt/C9oJiQ
	muTM4lL/dPbPgfbO7nbSC4F67xTrxy79S4jp/uucN1meslPFDjE04xQs93gDF+fwNMXMKWABFIJzu
	D3a5wqQR+/FaH2ZRnUUlOZ6OVNmu1sHyV575AJ+XL4XW9lEDcQx3dB1pcqubrWuIzR4hzTQrkks7B
	DpHddJuugxsWX+xBI6mgvmOn/tc0hIOhu4bACjxxyK2EhQnREjhCBxzJ14DTfQInJlOrx1ljZnru9
	Eeclpk9+vFmHXpBYVZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblDB-0000hA-By; Mon, 02 Dec 2019 12:53:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblD5-0000go-Fz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:53:52 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iblCv-0005Dy-AR; Mon, 02 Dec 2019 13:53:41 +0100
Message-ID: <2498da189d5e21ae70fb6884df6fc16ecfee2087.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] reset: simple: Add AST2600 compatibility string
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Joel Stanley <joel@jms.id.au>, Lee Jones <lee.jones@linaro.org>, Rob
 Herring <robh+dt@kernel.org>
Date: Mon, 02 Dec 2019 13:53:37 +0100
In-Reply-To: <20191129000827.650566-3-joel@jms.id.au>
References: <20191129000827.650566-1-joel@jms.id.au>
 <20191129000827.650566-3-joel@jms.id.au>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_045351_533653_5C6A65A8 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 Brad Bishop <bradleyb@fuzziesquirrel.com>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-29 at 10:38 +1030, Joel Stanley wrote:
> From: Brad Bishop <bradleyb@fuzziesquirrel.com>
> 
> The AST2600 SoC contains the same LPC register set as the AST2500.

If the LPC register set is exactly the same, shouldn't AST2600 reuse the
AST2500 compatible, i.e.:
	compatible = "aspeed,ast2600-lpc-reset", "aspeed,ast2500-lpc-reset";
?

> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> Signed-off-by: Brad Bishop <bradleyb@fuzziesquirrel.com>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/reset/reset-simple.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
> index 067e7e7b34f1..795c9063fe7b 100644
> --- a/drivers/reset/reset-simple.c
> +++ b/drivers/reset/reset-simple.c
> @@ -125,6 +125,7 @@ static const struct of_device_id reset_simple_dt_ids[] = {
>  		.data = &reset_simple_active_low },
>  	{ .compatible = "aspeed,ast2400-lpc-reset" },
>  	{ .compatible = "aspeed,ast2500-lpc-reset" },
> +	{ .compatible = "aspeed,ast2600-lpc-reset" },
>  	{ .compatible = "bitmain,bm1880-reset",
>  		.data = &reset_simple_active_low },
>  	{ .compatible = "snps,dw-high-reset" },

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
