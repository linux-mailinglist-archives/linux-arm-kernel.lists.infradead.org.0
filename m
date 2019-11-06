Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357F6F0D85
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2F7Jx196bdVzy3KI67k2Tf6qhb6iZZ35gyPT5OlyvY=; b=ucPYA1gt4blqaw
	MCZ5WOqr//rHG0I249xifAMEp/JqXzNYhsl5sOufAbSxmp2lWffbZlBuWE+7S02OvIuRmchDH4Mas
	0O08pOO2T/XCFg2nK5MOomcDsbJT6Izu7QQ5cle6TzVKO+0jzateemeGqZ871tH+fsrUanu4OfjrE
	NvC4hxpTAlneVfCJJEjd8doRdsAyKI1aEpjrIA2QgoXUKSNbjQtsI5r/2av7Wl/2iytI2Emw3+Z5x
	1zWZemXyAiWxKnCtV+T9PAl5nFRCu9t2b/B2klx7HaG7DEjEK7jPE7uDPToThtoMJ9INxI0cLdmve
	uV4EC8tSIFvL3a8flPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCY2-0001xK-Jl; Wed, 06 Nov 2019 04:03:58 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCXv-0001w4-Cq
 for linux-arm-kernel@lists.infradead.orG; Wed, 06 Nov 2019 04:03:53 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iSCXn-00064F-Uy; Wed, 06 Nov 2019 12:03:44 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iSCXj-0004XI-Rf; Wed, 06 Nov 2019 12:03:39 +0800
Date: Wed, 6 Nov 2019 12:03:39 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 28/29] crypto: remove deprecated and unused ablkcipher
 support
Message-ID: <20191106040339.mclk3vyjv3wawmhx@gondor.apana.org.au>
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-29-ardb@kernel.org>
 <20191105175206.GD757@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105175206.GD757@sol.localdomain>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_200351_575926_FAFB9EE5 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 09:52:06AM -0800, Eric Biggers wrote:
>
> Now that these helpers are trivial, they could be removed and we could just
> dereference the struct skcipher_alg directly.

We probably should just keep them to avoid churn.  New code can
certainly start using them directly.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
