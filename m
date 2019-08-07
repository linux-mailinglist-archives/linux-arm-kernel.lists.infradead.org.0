Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5BD84C38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a22nq2mCEW/EU/FlJUEKvWHDBu6IwMhz9rTGCy+8jFA=; b=ShC3o65wBn6ZID
	0RpmOXjdk/85cbtl/riV1GjpdYJqmEQcn99a3LUQmN7j79fZQ8rA78Q6arUCiGyy8QI/tGij2jOcX
	tEj7SaeYdM+/na+HfWuHvbtTUozpd53PTAVrH43CE7gyQAzav8k2NzWLyvhpWbLNgU3sTRRZE3IAb
	OCRrBDw1gg3BqE8IyxzKrihasGqdDI53b1I2A2xC7Re76a61WDtVuDLZAqEkHsbwsxZJLOGcsjmA4
	46OUDOmpJdemuZHLuP6CAqTXJtoOMdjXR+XV2CuFxYiscdaO7XUZudcp4mWCsURlqI5KdR8VO05h/
	DNeZqzEESFQLBk62TNTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLYn-0003KD-21; Wed, 07 Aug 2019 13:00:57 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvLYZ-0003Jq-N1; Wed, 07 Aug 2019 13:00:43 +0000
Date: Wed, 7 Aug 2019 06:00:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Message-ID: <20190807130043.GA6023@infradead.org>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
 <20190807104104.GA18773@infradead.org>
 <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Li,
 Dennis" <Dennis.Li@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:55:01AM +0000, Koenig, Christian wrote:
> >> Essentially writeq/readq doesn't seems to be available on all
> >> architectures either.
> > writeq/readq are provided whenever the CPU actually supports 64-bit
> > atomic loads and stores.
> 
> Is there a config option which we can make the driver depend on?
> 
> I mean that ARM doesn't support 64bit atomic loads and stores on MMIO is 
> quite a boomer for us.

The model is to cheack if readq/writeq are defined, and if not to
include the one of io-64-nonatomic-hi-lo.h or io-64-nonatomic-lo-hi.h.
The reason for that is that hardware is supposed to be able to deal with
two 32-bit writes, but it depends on the hardware if the lower or upper
half is what commits the write.

The only 32-bit platform that claims support for readq/writeq is sh,
and I have doubts if that actually works as expected.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
