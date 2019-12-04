Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E12112A6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqE1uj14IpJNmrG/A5JP9ZjLuLuXyxxvSYyRrCXayrk=; b=Kh84PG9Fq7Fe0V
	7A4wt+jfmK0HDOsG6E1vez2cZ6O748+vKXsEKw27jFBdeI3LRhsY8VrJKC2XfE7grJhij0lchsUmL
	W9CsAhLek0SxniPf5n4sPO8rqvKaeQT2eMEhZvha/f6FBGRiHC7fbFvbs3GfDiPLx6n+V35nFMM6H
	vEIYbPTri6P7wRZJye5TGLFhU0LO58AzBRrMhVAqZ6nqQ6OwUGd4Nx+QN/eHeaD5IaSgFldsS//Zr
	yFwjLVm50TF54x3B0kBHETbeZ6/bpWgvPWL0y9G13Fnr4hMQ+AM/5azCF74jGs9u0GpWS1waFFDbv
	xRuDiOTIjkfLisUxdVZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT5p-0003gb-GN; Wed, 04 Dec 2019 11:45:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT5h-0003ft-Ao
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:45:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED3B831B;
 Wed,  4 Dec 2019 03:45:08 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2F4053F68E; Wed,  4 Dec 2019 03:45:08 -0800 (PST)
Date: Wed, 4 Dec 2019 11:45:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: mm: Fix column alignment for UXN in
 kernel_page_tables
Message-ID: <20191204114505.GG13081@arrakis.emea.arm.com>
References: <20191121135132.22480-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121135132.22480-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034509_424758_9D7BB026 
X-CRM114-Status: GOOD (  10.24  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 01:51:32PM +0000, Mark Brown wrote:
> UXN is the only individual PTE bit other than the PTE_ATTRINDX_MASK ones
> which doesn't have both a set and a clear value provided, meaning that the
> columns in the table won't all be aligned. The PTE_ATTRINDX_MASK values
> are all both mutually exclusive and longer so are listed last to make a
> single final column for those values. Ensure everything is aligned by
> providing a clear value for UXN.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Queued for 5.5-rc1. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
