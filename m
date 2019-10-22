Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8092E0A17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neDNAEx2McI/HoZQpZBXMb3lGdlmjeDbiP+SXD0RnMw=; b=W8rJNgV++lpcj7
	/t/NkAE5SQKrgZdkYuUxNwYhG1NQjpt6DDR3kppzsre0ZQIA9d4B9tROSmpevt7lbgy4XUosRNdjI
	ZnnO396IPlqQCgQMgTdYSrHzlHG4ZzbZVgwdx5h8iqWZfjNmDIGG0PReGJPS2nWIYWN/HkE8UxODO
	uiZg7mNnuqu4CYdXMpa/XtoBANQKNpFsZkMtXEfglmWx3XrwqJm6cNEFQL1+w67iVZTT4fuO8/uRK
	oqVVlJOOVGfUe74CGxdFQ2OHv0k1qXASafEV3Y30TKatajagNmaf4AHCp27XBHrPWow7OWgNGElKB
	pYRVy1CQseVkG4PBxJ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxeU-0003Nh-94; Tue, 22 Oct 2019 17:08:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxeH-0003NF-02
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:08:46 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C98020684;
 Tue, 22 Oct 2019 17:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571764124;
 bh=9k/noH3YOxy5kuHVRuUQJVYYlKN2wSmHjorVoG4apHk=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=GVmnWuA51db96RXU1g67FY22inH+WWQyhnMHsYqe2BJGSxxy+UVFBT34B5p0Xc5s/
 Ab8w8HHi+TlVZxvHfw/puAOKkHwgojS6g41KOsaXB7A89p7MIRKpCaGtb80rFkk7FN
 wVoyY4pLGLXLL2MQsuCp/7zer5oZeL2kxOSVzDbM=
Date: Tue, 22 Oct 2019 10:08:43 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] xen: mm: include <xen/xen-ops.h> for missing declarations
In-Reply-To: <20191022125006.3746-1-ben.dooks@codethink.co.uk>
Message-ID: <alpine.DEB.2.21.1910221008370.30080@sstabellini-ThinkPad-T480s>
References: <20191022125006.3746-1-ben.dooks@codethink.co.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_100845_058211_6F99528C 
X-CRM114-Status: GOOD (  13.82  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@lists.codethink.co.uk, xen-devel@lists.xenproject.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019, Ben Dooks (Codethink) wrote:
> Include <xen/xen-ops.h> for xen_{create,destroy}_contigous_region
> call declarations. Fixes the following sparse warnings:
> 
> arch/arm/xen/mm.c:119:5: warning: symbol 'xen_create_contiguous_region' was not declared. Should it be static?
> arch/arm/xen/mm.c:131:6: warning: symbol 'xen_destroy_contiguous_region' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
> Cc: Stefano Stabellini <sstabellini@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: xen-devel@lists.xenproject.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/xen/mm.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index 38fa917c8585..6feb6b78b13c 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -15,6 +15,7 @@
>  #include <xen/interface/grant_table.h>
>  #include <xen/interface/memory.h>
>  #include <xen/page.h>
> +#include <xen/xen-ops.h>
>  #include <xen/swiotlb-xen.h>
>  
>  #include <asm/cacheflush.h>
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
