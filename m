Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4C81151BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 15:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16quiEKQJXBpPijJgs5F8BRVjpb3yBqyQXV5mgILC0M=; b=RZa4NO29bfYEtE
	G/+rJ3xOYTf3Q6Kks903PS3kjjNjQu8Q9KmXymYs63a/seI4xhOOaILT6lkYHr4R36RZ7OyCoJqiZ
	Sf8neqzYKSh3Ogn7KJuFUSGjuFY/NpdgsbmLOe+1H6Bhxiq4WDuaN8U5FboWhTIf5BLXm2GvvdZ9W
	sxaK7YPYQ2tZgKVwbq5Z95MpatGhkkrsbcNCgd6P8dTsinmhpZTO7EbfRQ4MW23+ogs8L2EVfLZUk
	cNDb64xmlWhk71og+5IW+z/lC5FC8dkR6x8jOM2hj7XVrc7EE95VeyV7BiG3avytFeOmjxpLDLwl5
	Fhv7E6o7ddwhyr3E3Mlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idEB2-0003Gk-Sk; Fri, 06 Dec 2019 14:01:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idE7v-000809-MY
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 13:58:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BBEE1FB;
 Fri,  6 Dec 2019 05:58:35 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6686B3F718; Fri,  6 Dec 2019 05:58:34 -0800 (PST)
Date: Fri, 6 Dec 2019 13:58:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Heyi Guo <guoheyi@huawei.com>
Subject: Re: [PATCH] arm64/kernel/entry: refine comment of stack overflow check
Message-ID: <20191206135832.GG32767@arrakis.emea.arm.com>
References: <20191202113702.34158-1-guoheyi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202113702.34158-1-guoheyi@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_055835_840398_34581500 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, wanghaibin.wang@huawei.com,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 07:37:02PM +0800, Heyi Guo wrote:
> Stack overflow checking can be done by testing
> sp & (1 << THREAD_SHIFT)
> only for the stacks are aligned to (2 << THREAD_SHIFT) with size of
> (1 << THREAD_SIZE), and this is the case when CONFIG_VMAP_STACK is
> set.
> 
> Fix the code comment to avoid confusion.
> 
> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>

Queued with Mark's suggested update.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
