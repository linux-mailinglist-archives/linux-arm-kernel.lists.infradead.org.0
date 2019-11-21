Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4B5105787
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqL3q3QPuf2IapNq6GbZlNrtEX81XEGH9iUINXAk1uA=; b=QL4FFjmZUzr9Ng
	uS9Du/TFTy0qFerK5qcVeT/toYRTxYfSgqvmIT8xauZ8s7NUwT+EeRNjgIk04dVUgpji2VjjHWfzH
	bg5dFF2KuaoTJwpwPGcy6ky00nlSzxw0VTYDZQI+uwiaEu1zTMz+HzCdfBX30/Qhdqs2OpY+G3PLo
	YOYCm3U9TU3BxH6VjZsjR5CrUcFvbCaS+0Dy0aTdTSPvBFLFmQLTUJti0e5TtxQ3GNwLgOuK/1tbB
	DftC4+lqpN7OKyrf5ekwr4vBkt5Ct56ktLWCgVOa5fFdcQQpt/Xz3x/8pmQTbjRkul69UhpcO5Xo8
	fRZqB5uOAnNjxj5KfjHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpiL-0007zh-6w; Thu, 21 Nov 2019 16:53:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpi8-0007yf-Q7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:53:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 695D020658;
 Thu, 21 Nov 2019 16:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574355220;
 bh=tiskj4Iiwo7XYj1HnnEFdsnbTEE7Qj1OSyBblDXYNfw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uiahZSH1KQvGQb3DvX1nOft6/wv/LG9SKgsWRLCztddQDHBNFmUOSrhgWZ2MVmqJ4
 4V9ZwLUQVCxRsNkL5zAVejSbzlgqPwl9huYwFteE6EhHaAZLRCPLFm7xY6U6YnfWuh
 H6VjqkPO2QiQI8Od5TRKFtGNx5DqeoQUDJB+jU34=
Date: Thu, 21 Nov 2019 16:53:35 +0000
From: Will Deacon <will@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191121165334.GB4905@willie-the-truck>
References: <20191113104945.GC25900@willie-the-truck>
 <20191114132848.55atqtjshjmi2udl@gondor.apana.org.au>
 <20191120191839.GF4799@willie-the-truck>
 <20191121012533.3h6akm4oczswj7zr@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121012533.3h6akm4oczswj7zr@gondor.apana.org.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_085340_865294_B18497F4 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu, Nov 21, 2019 at 09:25:33AM +0800, Herbert Xu wrote:
> On Wed, Nov 20, 2019 at 07:18:40PM +0000, Will Deacon wrote:
> >
> > > The Alpha barrier matters for pointers, how could it make a
> > > difference for individual bits?
> > 
> > I guess you could use the result of test_bit to index into an array or
> > something?
> 
> Can Alpha Assembly even do this without using a branch?

Don't see why not: you can add the base address to the scaled result
of test_bit and use that as the address register into a load instruction.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
