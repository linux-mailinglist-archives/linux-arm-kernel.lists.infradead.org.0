Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CA7106E93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xwnkfXqcfZT6KE/+ZQSfrpCDJ5Im5kv2ZgpJ36ukOc=; b=Ue2orR6RGqswCi
	b3+HLVM/fT9j29W+vppFD9S6tdqI6GlVuWs2uZ9hJ2pod+4Iz9pofWms/rrGRWsYg3Iiqa1GW2hhg
	6TdiSwlwFTVE77Y1MatGTDYvFzW8E7t0RJ+TAWD83tnDQUtP4nfvyKFhlUuc8C8cqukdI+/n7QJuE
	m4Yl1CFT9HSLuIEW59h5C/iQwembI2trxOigQtPv2EPvJJWf+FBICmQtLE0IOx5sjhcgczI97qN8o
	vnPnATctD80zZHpmNamobC51gjh+VWHn+RkDyQ8IaaRVQOpYTGVDi0GmWW48UXQ28uuiDlo6QGSFk
	M1eDODkY0s5G5u2GyYLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6ph-0003vG-DV; Fri, 22 Nov 2019 11:10:37 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6pD-0003RF-3O
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:10:11 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iY6ou-0005Dm-L0; Fri, 22 Nov 2019 19:09:48 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iY6os-0002jT-ES; Fri, 22 Nov 2019 19:09:46 +0800
Date: Fri, 22 Nov 2019 19:09:46 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 1/2] crypto: atmel-tdes - Set the IV after {en,de}crypt
Message-ID: <20191122110946.jwyfy2q7gabugcjc@gondor.apana.org.au>
References: <20191115134854.30190-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115134854.30190-1-tudor.ambarus@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_031007_300643_AB6801E3 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 01:49:06PM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The req->iv of the skcipher_request is expected to contain the
> last ciphertext block when the {en,de}crypt operation is done.
> In case of in-place decryption, copy the ciphertext in an
> intermediate buffer before decryption.
> 
> This fixes the following tcrypt tests:
> alg: skcipher: atmel-cbc-des encryption test failed (wrong output IV) on test vector 0, cfg="in-place"
> 00000000: fe dc ba 98 76 54 32 10
> alg: skcipher: atmel-cbc-tdes encryption test failed (wrong output IV) on test vector 0, cfg="in-place"
> 00000000: 7d 33 88 93 0f 93 b2 42
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/crypto/atmel-tdes.c | 40 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
