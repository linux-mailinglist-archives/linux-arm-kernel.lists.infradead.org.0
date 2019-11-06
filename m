Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4A4F1526
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 12:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cs3veIi5KhSkT6oEBPye8W8IPpQQX0QLeu2t812bcgU=; b=BfmWq2hCsqvSjw
	Z3PthsS2MPM8Uqx43oLrXMY0v+gV6Gq7TLafkfuSunQDfDtBvfE81u7GAeZ2//jEu/UG78DWiKiep
	kNbO+Lv5igm/phP7dZYPUFKV5pUQ3UzRGQLQRSYPl3kxVNQNlTSqvJ3YViWmCLVsRKrxOVJMe8g+3
	k1PAJXoZyOYZ8tGAETXZtdTKL+/vUFHFDy4t67TYyTBWAAnpDEC3BOGnoHzElO9WTGvcSJFRbMeCe
	s/XrhMHmo/dpx257XaN9uCXVArpaZULvrvugplrKMplFLXfODYXB+Yjvam2JwWMvVQMVGaOIz506m
	itAky4X31MRa23vqw5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJXF-0005vw-F1; Wed, 06 Nov 2019 11:31:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJX8-0005vf-HO
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:31:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 788137A7;
 Wed,  6 Nov 2019 03:31:29 -0800 (PST)
Received: from arrakis.emea.arm.com (unknown [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E02D93F6C4;
 Wed,  6 Nov 2019 03:31:28 -0800 (PST)
Date: Wed, 6 Nov 2019 11:31:26 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Rich Wiley <rwiley@nvidia.com>
Subject: Re: [PATCH] arm64: kpti: Add NVIDIA's Carmel core to the KPTI
 whitelist
Message-ID: <20191106113125.GH21133@arrakis.emea.arm.com>
References: <1572979510-792-1-git-send-email-rwiley@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572979510-792-1-git-send-email-rwiley@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_033130_619277_872B302A 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: will.deacon@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 10:45:10AM -0800, Rich Wiley wrote:
> NVIDIA Carmel CPUs don't implement ID_AA64PFR0_EL1.CSV3 but
> aren't susceptible to Meltdown, so add Carmel to kpti_safe_list[].
> 
> Signed-off-by: Rich Wiley <rwiley@nvidia.com>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
