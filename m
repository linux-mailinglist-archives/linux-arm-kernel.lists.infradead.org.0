Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7534C1B6F48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynEn5h8sR6yZZDPO8m/DO0xgCbpm7MTiSgEVBRKx/a4=; b=KyHAAQN+mQLnuH
	xDR1bytE3dqIVbJiDEj7L4D+EzNl1ZvPpHhZ4Zg65nn9PT06OXVFJGK64TQzGJIDWwq9ZDA6p4R8A
	42iw+d5T8nJ+fz6W33fToczXxnAGEmRQ33SuT8pS/bRKfiZf+s8PjqUU1/lkJlnkOPxlr70q0t0C6
	ikeObF50SIY6e+rFlheae+bmvlZgmUudPHcOCFMQDQTjCx9N3U/78RosJI6iuDumEe3wHyaoFB3CO
	CVr/BTaUKRJgpi1t8D/Peo7fiVyYbJ9BQZosbv00ptppY6UwXUdNWR20xuiFSnuncPcvgt/BRXCt7
	dePXfPop5Uwecw9FM3jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRt32-00082o-JN; Fri, 24 Apr 2020 07:46:56 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRt2p-00080Z-EP
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 07:46:45 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jRt2T-0000bA-J6; Fri, 24 Apr 2020 17:46:22 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 24 Apr 2020 17:46:21 +1000
Date: Fri, 24 Apr 2020 17:46:21 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: crypto: Consistently enable extension
Message-ID: <20200424074621.GA24682@gondor.apana.org.au>
References: <20200414182008.31417-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414182008.31417-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_004643_811969_7737B42E 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "David S . Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 07:20:08PM +0100, Mark Brown wrote:
> Currently most of the crypto files enable the crypto extension using the
> .arch directive but crct10dif-ce-core.S uses .cpu instead. Move that over
> to .arch for consistency.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/crypto/crct10dif-ce-core.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
