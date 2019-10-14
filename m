Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224BDD6BC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 00:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTcTtQmLsqgMQV4lyYDEUAgDYqeD+EjnWpwijqb8CII=; b=bdw1S5mmCFgL+K
	E4asIjImbfD1VZG7yAvd2mOrMPqWDhx5azRF/MTW1LbFvxXO3DdycTAk20Hmt9e3SO8kX4iEgY8vQ
	d3wg9a1Fu1GDB4kkP3DI1ETnSHUA4uJQobJyzxNXmCeWLSAQpUqK+9ojVtfGUX1pkmQEiTxaMo7Wr
	YAFvnTuOF4fi9LFAUn/xieCmeoXFI4Kd5KX8h97Ai+RWkUywRAwRVBIGZqkodhMtdixbGObxefPOK
	dVCyU/4GN8W6u3eXqvcGd2x0e4D7Y/LErNIzi7zfhohg7nRTMWF3FsIy+fxW2NsSoQMhsO6MXSpgU
	b+h0I1cWJirjtK7hUBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK94x-0002t1-Oq; Mon, 14 Oct 2019 22:44:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK94m-0002sF-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 22:44:29 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74E6F21835;
 Mon, 14 Oct 2019 22:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571093064;
 bh=bR1w6UoSnX74UluDNWX1wTa+jYiev1lVKk27mIadYqc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VX64SZlgGVvm8FdahZlm6oDXPO4gIeEsrTnQbPR3Va+ueoUcERwlEsVXpOMlAnrdy
 a9qqXuO57/DkfQ3i24e7ANndxhlSTJQfn+0uTQD2YJnB07dpkZUaj401Z9AWJdNQyN
 CmskUWlecnXShZvGIg08xYVXTDI9siwDaYwyu5dc=
Date: Mon, 14 Oct 2019 15:44:23 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH] mm: memblock: do not enforce current limit for
 memblock_phys* family
Message-Id: <20191014154423.a472315834ce6a730ccbaf3f@linux-foundation.org>
In-Reply-To: <1570915861-17633-1-git-send-email-rppt@kernel.org>
References: <1570915861-17633-1-git-send-email-rppt@kernel.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_154428_319097_866BC7AA 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, etnaviv@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Fabio Estevam <festevam@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Adam Ford <aford173@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 13 Oct 2019 00:31:01 +0300 Mike Rapoport <rppt@kernel.org> wrote:

> Until commit 92d12f9544b7 ("memblock: refactor internal allocation
> functions") the maximal address for memblock allocations was forced to
> memblock.current_limit only for the allocation functions returning virtual
> address. The changes introduced by that commit moved the limit enforcement
> into the allocation core and as a result the allocation functions returning
> physical address also started to limit allocations to
> memblock.current_limit.
> 
> This caused breakage of etnaviv GPU driver:
> 
> ...
>

So I'll add a cc:stable, yes?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
