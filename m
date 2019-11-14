Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC92FC772
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=iW5n6HYX99gv0zIAQSXBECU/2ZkDRpxJFIEIYE4Y9jE=; b=AK/nh0pbrX0NNA
	KzrrAw+psTp8y/l3hdTsJU5F2nBH7Ox9gJvUP53vvsKe2oNBl1qWz3IFEy8ChIO/VhR+ESii4O6Gr
	e/LUDJhOtHZUj9ZRccGaYbMzYmmxKVfGfFLfd9puVYiw9Tp48LVNKEAaC5IvKnLepfILsDGI80w1Z
	L2pRRKX30eXTbHc+mpXAAqrzyHXABFgN27DAUApV+lBRu8IN4zyC/05t+fR0d96wtfi0oNIfoJFHs
	5SwMrAM988LCheZL2Y5s/yg+Hj8kjxmXLzt+p3fsaUtkQDjxXvxoZbg1QkvdiqHNKTxdvzvo6xUfo
	BzQd/v7LVCXl7qWPPusQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFBi-0001yy-K0; Thu, 14 Nov 2019 13:29:30 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFBZ-0001x2-8o
 for linux-arm-kernel@lists.infradead.orG; Thu, 14 Nov 2019 13:29:23 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iVFBB-0004nv-90; Thu, 14 Nov 2019 21:28:57 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iVFB2-0005Iu-FT; Thu, 14 Nov 2019 21:28:48 +0800
Date: Thu, 14 Nov 2019 21:28:48 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191114132848.55atqtjshjmi2udl@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113104945.GC25900@willie-the-truck>
X-Newsgroups: apana.lists.os.linux.kernel
Organization: Core
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_052921_453608_40FB1526 
X-CRM114-Status: UNSURE (   7.35  )
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
Cc: axboe@kernel.dk, Richard.Earnshaw@arm.com, rabinv@axis.com,
 catalin.marinas@arm.com, vincent.whitchurch@axis.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon <will@kernel.org> wrote:
>
> which is what can happen due to this erratum. It's generally good practice
> to use READ_ONCE() when reading something which can be updated concurrently
> because:
> 
>        * It ensures that the value is (re-)loaded from memory
> 
>        * It prevents the compiler from performing harmful optimisations,
>          such as merging or tearing (although in this case I suspect
>          these are ok because we're dealing with a single bit)
> 
>        * On Alpha, it gives you a barrier so that dependency ordering
>          can be relied upon from the load

The Alpha barrier matters for pointers, how could it make a
difference for individual bits?

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
