Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DDE12F0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCiAYp3kW9BokJKl5eblOTREKlb0QhPv/sFUDQiIoeY=; b=TZpqYBNEptkvK8
	vWVIewrpcMJb52ZMKFIUqMmKebZx50bIB6d7m5+an+fsl2D1Ia/OfLvLAoxv52FJJsWzYGYHRKuvm
	XrlnOXHdbdDjKHHG0EZFTD+aoYLo0vpE+d5btJt3WTZ5R58IJT6rzfSj8S90fESW4vaQww0KA/ASy
	7sYsa8sUf6V0AYqmanPBtxeKsXSetJzj65cwO+fSDdeB1VBwsupNnGDALYMtG4YAssBn5LmCUNnki
	RDwyHDwCL2eUVaIPrJ7HT1NgZLAKL0JU59XfIJvXP1jsk4JWt/dRCz4OZ4JArhdp2LIvzsWnhmTv8
	vNia7zSBKBkik1xbUrsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYCp-0006Fz-0a; Fri, 03 May 2019 13:26:27 +0000
Received: from [5.180.42.13] (helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYCh-0006D4-6o
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:26:20 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hMRNr-0005mF-Ha; Fri, 03 May 2019 14:09:23 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hMRNn-0003DW-W8; Fri, 03 May 2019 14:09:20 +0800
Date: Fri, 3 May 2019 14:09:19 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Lionel Debieve <lionel.debieve@st.com>
Subject: Re: [PATCH 1/3] crypto: stm32/cryp - add weak key check for DES
Message-ID: <20190503060919.xkh4c4dupbz6tok6@gondor.apana.org.au>
References: <1556112893-13116-1-git-send-email-lionel.debieve@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556112893-13116-1-git-send-email-lionel.debieve@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_062619_478271_E94FA26A 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 03:34:51PM +0200, Lionel Debieve wrote:
> Add weak key test for des functions calling the generic
> des_ekey.
> 
> Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
> ---
>  drivers/crypto/stm32/Kconfig      |  1 +
>  drivers/crypto/stm32/stm32-cryp.c | 13 +++++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
