Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C6C127624
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:05:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRONi2oKSDxJt9N9UHpJD/IxgXwtGTzSMUXqOUInF/Y=; b=uG8NKvcLEEQrM3
	ENA/5LAPC9XgCPNdGQST6WitUpi5Ua4OBnOq1FMOcRXx8C3iZXehGJ/lLkDwCaVd91/+1KJcSeOgO
	cTo5OSoy3P2vsDrSC51LFYilU/HhLqm1soYR0jlww4YOGL6BjPaa0Ob1d7uICGunOdYoG+odRuKpB
	7HnASE5VehZI1K8OmJyCYdxoDyOQimNkusQT2xskwZSNyEKrKKzimE1guQjRHIhbMnN3rTLxIZGlv
	j3Dfenbikt3lXfxcYy3v76jvbnYI/nepqkIk42/sf4QdnsXs3JmaSzBfPEkEonr7iukJmT9adWnfk
	wZrMZ02HtSPHPwxOoI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCLy-0005yo-0i; Fri, 20 Dec 2019 07:05:38 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCLm-0005xp-2G
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:05:27 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iiCLg-0008Qq-1S; Fri, 20 Dec 2019 15:05:20 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iiCLd-0007pI-LO; Fri, 20 Dec 2019 15:05:17 +0800
Date: Fri, 20 Dec 2019 15:05:17 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v4 resend] crypto: picoxcell: adjust the position of
 tasklet_init and fix missed tasklet_kill
Message-ID: <20191220070517.xmo26ffufq7wjebb@gondor.apana.org.au>
References: <20191209162144.14877-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209162144.14877-1-hslester96@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_230526_253832_F967DC23 
X-CRM114-Status: UNSURE (   9.66  )
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
Cc: Jamie Iles <jamie@jamieiles.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:21:44AM +0800, Chuhong Yuan wrote:
> Since tasklet is needed to be initialized before registering IRQ
> handler, adjust the position of tasklet_init to fix the wrong order.
> 
> Besides, to fix the missed tasklet_kill, this patch adds a helper
> function and uses devm_add_action to kill the tasklet automatically.
> 
> Fixes: ce92136843cb ("crypto: picoxcell - add support for the picoxcell crypto engines")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v4:
>   - Use devm_add_action instead of devm_add_action_or_reset.
> 
>  drivers/crypto/picoxcell_crypto.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
