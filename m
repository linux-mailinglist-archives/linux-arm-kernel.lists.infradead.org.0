Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1FF56692
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkOR6/5As+JUb6ZjlqYpyiZYobTP9RlLgjVAQzgi3lo=; b=DfhwFiqK3w1zGM
	bMl6FaYpy2rGFtGLmhktn0e9sqSJGXAcWI1bhRNoPQH92AInY6GgoyyBAUlbX8nPlIRhCbvmm0lsn
	9EsWngxqa5eCRv0ZRA/A8x1BezSDBbxgo/KJWWNWgO5FihR5VE6ixcgyrJdHJdpFCOVl/txthnLpc
	PTqX9SC/z/Ner2zfDCLB2wBTa2mKfNXrbVRzNzyhgrYn6DushaVeEvhWQwH2xdyZ0KstJXKjotNC0
	j6c8h2FsTbT7qv7km+vfeFvIa2DS0rWwan507pP72qQLCyTjKSIYrj4m2B6rZyGarChSQm0hDccSt
	WeSVBFmkrPg1JYyutsSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg53f-0003U3-MD; Wed, 26 Jun 2019 10:21:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg53V-0003TL-9l
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:21:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 891B8C0A;
 Wed, 26 Jun 2019 03:21:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B8AA33F718; Wed, 26 Jun 2019 03:21:31 -0700 (PDT)
Date: Wed, 26 Jun 2019 11:21:29 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/mm: Drop [PTE|PMD]_TYPE_FAULT
Message-ID: <20190626102129.GB1161@arrakis.emea.arm.com>
References: <1561538170-26594-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561538170-26594-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_032133_385917_29C96FAE 
X-CRM114-Status: UNSURE (   8.18  )
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
Cc: Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 02:06:10PM +0530, Anshuman Khandual wrote:
> This was added part of the original commit which added MMU definitions.
> 
> commit 4f04d8f00545 ("arm64: MMU definitions").
> 
> These symbols never got used as confirmed from a git log search.
> 
> git log -p arch/arm64/ | grep PTE_TYPE_FAULT
> git log -p arch/arm64/ | grep PMD_TYPE_FAULT
> 
> These probably meant to identify non present entries which can now be
> achieved with PMD_SECT_VALID or PTE_VALID bits. Hence just drop these
> unused symbols which are not required anymore.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Thanks. Queued for 5.3.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
