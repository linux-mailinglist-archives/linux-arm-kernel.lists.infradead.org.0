Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA9A6FDFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nt/QIsqqk4K5RPgZkVLaYmBlubAh7m/vW6vBMUiel08=; b=b9CoVvw71YRIkR
	SUlb4Zhap7/f9IG0JVn+cpyqPr0X949p+QZ9CtvgVP9DYVzsV1F4GNZw7wuyXEyI5fnSO7yo4duyo
	TMXUJfpwaeaWlSlL0t1yMn9dRPYB8tmkAAsZ+E8i6MjlAAk5ZKXYosMRIrJKVp55cgmgKt2iTFfC0
	d2e3IU0n0qdG4mA8MpN+TUUThjGkvQxkSIhkM0LcOzuR3GiSUrJGv45gbKnOZJDOOxNFMGh52CobM
	Z08DDcSBzIH7wdceAgJoQr8YV6SsQ/+KBSeGI81PYE2gGnTQLjIhm9gwSs8NK5P36QXbah5RvcIjN
	mXRgujLl8iWTZhiHXr2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVn2-0000Ea-C8; Mon, 22 Jul 2019 10:43:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVmm-0000DX-Jv
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:43:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FDC328;
 Mon, 22 Jul 2019 03:43:15 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B73D33F71A; Mon, 22 Jul 2019 03:43:14 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:43:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/mm: Drop pte_huge()
Message-ID: <20190722104312.GD60625@arrakis.emea.arm.com>
References: <1562045575-8742-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562045575-8742-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_034316_700876_9D2CB6D3 
X-CRM114-Status: UNSURE (   9.08  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <Steve.Capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 11:02:55AM +0530, Anshuman Khandual wrote:
> This helper is required from generic huge_pte_alloc() which is available
> when arch subscribes ARCH_WANT_GENERAL_HUGETLB. arm64 implements it's own
> huge_pte_alloc() and does not depend on the generic definition. Drop this
> helper which is redundant on arm64.

I had this on my list for 5.3 but the arm64 for-next/core was already
frozen. Will can queue this whenever he sees fit.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
