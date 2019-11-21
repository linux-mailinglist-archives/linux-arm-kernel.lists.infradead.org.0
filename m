Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4EC10480C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 02:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlEaPfU76wHagqlLBvayrtw0dNRglNBsd/TpVTXzLTE=; b=RVOVSmMcif9CEZ
	zllfOPguPoQsFPVhr/Iyez/e+kNfMrzhwAiiTE2LR18i3vKaYXOUiJJCL2WIMy+NU2tXVYuenSpx8
	Y92UClEbWUubKE2zrY06Zf4/L6PsjjJAOwbDg9s3Rt5KvTijYrwl6zE2SP8ywT550/TBSBkPFcb+M
	V65KE0goILvXNS4CYF9GGtGOeO3XNhl56dT5vQA3IVH2y10A5y6kWFVGpTLwF25YFFUIcYUKxkEhx
	hGTk1IGackDTLwGB4n/1VAh3QzW3ciWXvInlJG1LfGjq4W53e8JW1mJcnVBPtQWpPoV38jP79fuQS
	SPTv6PfFn6N/5JG3ieqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXbER-0007ap-Bq; Thu, 21 Nov 2019 01:26:03 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXbEI-0007Zl-Fa
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 01:25:56 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iXbE5-0005zr-FJ; Thu, 21 Nov 2019 09:25:41 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iXbDx-0002KX-Bf; Thu, 21 Nov 2019 09:25:33 +0800
Date: Thu, 21 Nov 2019 09:25:33 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191121012533.3h6akm4oczswj7zr@gondor.apana.org.au>
References: <20191113104945.GC25900@willie-the-truck>
 <20191114132848.55atqtjshjmi2udl@gondor.apana.org.au>
 <20191120191839.GF4799@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120191839.GF4799@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_172554_663842_4B2AF366 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: axboe@kernel.dk, Richard.Earnshaw@arm.com, rabinv@axis.com,
 catalin.marinas@arm.com, vincent.whitchurch@axis.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 07:18:40PM +0000, Will Deacon wrote:
>
> > The Alpha barrier matters for pointers, how could it make a
> > difference for individual bits?
> 
> I guess you could use the result of test_bit to index into an array or
> something?

Can Alpha Assembly even do this without using a branch?

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
