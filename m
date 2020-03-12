Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EA7183082
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMU09o4PlxtjH9xRibVnPLFMmoHe9e45N/MeD0Ekwys=; b=FHGrfburrOl9HF
	nABloDjVDiCWqBzuEe0t+73WlalDXnFEJBIldbaz48oS9eGImvddVBUG+k8FTrHBSCWIIgsmOezWR
	xfixwSlAcTvjVq/6e4IZwhLSOYU1+MF697K0zBAJHNwKv0TFOlbTDcFK2/Ebd3DFy8vGOdrBay4Bi
	2BplH08cBYy+XqRifqUmRDgJe5Dqzw0g7haJw8I6MnADsDB5Ku6OOqpfAmWtMXBbKtzNYM+Loec6F
	MBbXySSmtVthbTbqoFehnx67zDY4iV0vGE0eNgHqnQlh+54fqIrkr+/GnUEqpMS0X9x9v36u4cLDF
	GwVWcviuQ6g8EDWSyunA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCN8L-0003g7-W8; Thu, 12 Mar 2020 12:40:18 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCN83-0003dD-2E
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:40:00 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jCN7p-00023v-0l; Thu, 12 Mar 2020 23:39:46 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 12 Mar 2020 23:39:44 +1100
Date: Thu, 12 Mar 2020 23:39:44 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH v2 0/5] imx-rngc - several small fixes
Message-ID: <20200312123944.GF28885@gondor.apana.org.au>
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200305205824.4371-1-martin@kaiser.cx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305205824.4371-1-martin@kaiser.cx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_053959_443454_CDDA6DA9 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 09:58:19PM +0100, Martin Kaiser wrote:
> This is a set of small fixes for the imx-rngc driver.
> 
> I tried to clarify the approach for masking/unmasking the interrupt from
> the rngc.
> 
> The rngc should be set to auto-seed mode, where it creates a new seed
> when required.
> 
> In the probe function, we should check that the rng type is supported by
> this driver.
> 
> Thanks for reviewing the patches,
> 
>    Martin
> 
> changes in v2:
> - remove the contentious devres patch
> - add PrasannaKumar's tags
> 
> Martin Kaiser (5):
>   hwrng: imx-rngc - fix an error path
>   hwrng: imx-rngc - use automatic seeding
>   hwrng: imx-rngc - (trivial) simplify error prints
>   hwrng: imx-rngc - check the rng type
>   hwrng: imx-rngc - simplify interrupt mask/unmask
> 
>  drivers/char/hw_random/imx-rngc.c | 85 +++++++++++++++++++++++++------
>  1 file changed, 69 insertions(+), 16 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
