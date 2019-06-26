Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B409F5636F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONIJBj5/KAGdIb1SElNwP2thCDA0WNH91QMJGQSUpSs=; b=tdCPI9YKFKrZ2K
	ktfes//54hWd6LKSK9qjB5x7iVKx2DMKM6u/PutxM1nihbF1xKJqOu9HmuusUfWr7ypPxxFLuI1Zt
	eNlKHuzoy/tZwKEYcblbsfIUG/HlfCHomhBsXdhNptHP2nSzc9PTH3cffvL+zo2OYGS3ZMtRHXBEm
	Tt27wi7irHj04UHMuZlv27xSPn1XeO2n4pfQbBPcWfJZLjoozPHuAN5yWo0hT4i4rPfTqgmWn8Llc
	FXcTyDxBhlArfXlhYARxSNfaJR8f+VAtkGGqMvQK3C/ZV53juSA92BLRlNUfIsft7p1fDjvLV3fPg
	f6SQeAZagIo2pJXn/tHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2T4-0007dn-Of; Wed, 26 Jun 2019 07:35:46 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hg2Sr-0007dW-2T; Wed, 26 Jun 2019 07:35:33 +0000
Date: Wed, 26 Jun 2019 00:35:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-ID: <20190626073533.GA24199@infradead.org>
References: <cover.1558547956.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558547956.git.robin.murphy@arm.com>
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
Cc: Michal Hocko <mhocko@suse.com>, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jason Gunthorpe <jgg@mellanox.com>,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Robin, Andrew:

I have a series for the hmm tree, which touches the section size
bits, and remove device public memory support.

It might be best if we include this series in the hmm tree as well
to avoid conflicts.  Is it ok to include the rebase version of at least
the cleanup part (which looks like it is not required for the actual
arm64 support) in the hmm tree to avoid conflicts?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
