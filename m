Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF3C1D4CB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jdm06Ee4LEpuMC6w7bHytsV2EJjPOPXZBnksCdh9RUQ=; b=Vox2gPNqT97MM8
	7s43itVvs4skQfR6Kbm3KP/UGBEvoIBSyU7ckarEyKxEfn7ynhq5E4ZImitPsGuStdVFsrQMp95bf
	49UaAU2Wu6WUNcDsTEt8APqU4ngPve1/C/zuoyuatP3d0YjRGdgCk0DBtaZBwcOhEvktBx6apxoVb
	KiYMkMbxPTVLDIXDlf88nfLhb7UQsFHtQ/UPnbZ+MznJGqY6Y6Bm4gJgoNM0C7vwFYAl2MU8pn5UD
	ICoXjkeKNgIJeZ1r6Tp0T4Y39AZS0rhQKBmpVLSMM3zpgbGYWhYSSpsaq5Km0H1uLbRMWSJg+tUgv
	8vYsx4t2iIyf46E1G/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYfJ-0004Mv-5t; Fri, 15 May 2020 11:38:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYez-0004Ig-Mp
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:37:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B66CD6E;
 Fri, 15 May 2020 04:37:49 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.24.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF53F3F305;
 Fri, 15 May 2020 04:37:46 -0700 (PDT)
Date: Fri, 15 May 2020 12:37:44 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 2/7] firmware: smccc: Update link to latest SMCCC
 specification
Message-ID: <20200515113744.GB67718@C02TD0UTHF1T.local>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506164411.3284-3-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_043749_819596_2ADBEA1A 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 05:44:06PM +0100, Sudeep Holla wrote:
> The current link gets redirected to the revision B published in November
> 2016 though it actually points to the original revision A published in
> June 2013.
> 
> Let us update the link to point to the latest version, so that it
> doesn't get stale anytime soon. Currently it points to v1.2 published in
> March 2020.
> 
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Changing the link is fine, but could we also add a line to make it clear
which version of spec was written against, e.g.

| This code is up-to-date with version DEN 0028 A

... as that was previously implicit in the documentation link, and it
makes clear what the code is aware of and what it is trying to handle.
Iknow we'll have to update it periodically, but I think that's
worthwthile.

With that:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  include/linux/arm-smccc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 59494df0f55b..6c1d1eda3be4 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -10,7 +10,7 @@
>  /*
>   * This file provides common defines for ARM SMC Calling Convention as
>   * specified in
> - * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
> + * https://developer.arm.com/docs/den0028/latest
>   */
>  
>  #define ARM_SMCCC_STD_CALL	        _AC(0,U)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
