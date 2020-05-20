Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96A51DB241
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNaILzBWWxOnADOkXeku4xC06TcHCXrSHtjihZVskH8=; b=mHm9uxo86dtL4b
	ilws/Xn4vvUendfVdGaSzVCA3HnYJNG9CCf0UaiH1iNgKa+Q/HscpUBBBehbSHl2SVOfpJV4+am0q
	OOdkjmEng7G6KfEbuvpcotzrQIzyrF62PCYy2c0vf5uSCaNOPuQTbGdhVmqvopXP0Lp6MeGt9WAZu
	U3wJIGmG80zLmT1aMe0RObKxSsxMudO5Wfc+WokUQAe0KSicgfO7NuU37p9iCezDF394ppx0DMMBo
	NTSEg11x1btod4cf58v8janB+Vx615VwoXetBqGQssjwk3kYLFvkO2sQQ4fpJbR+AuW7J801kD0V4
	UUjPXI5H6vkKacVFzL3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNEh-0000vr-Hi; Wed, 20 May 2020 11:50:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNEM-0000v9-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:49:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CEDD61045;
 Wed, 20 May 2020 04:49:49 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC6C13F52E;
 Wed, 20 May 2020 04:49:48 -0700 (PDT)
Date: Wed, 20 May 2020 12:49:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Move BUG_ON() inside get_arm64_ftr_reg()
Message-ID: <20200520114941.GB18302@gaia>
References: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_044950_867803_8A22418B 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 06:52:54AM +0530, Anshuman Khandual wrote:
> There is no way to proceed when requested register could not be searched in
> arm64_ftr_reg[]. Requesting for a non present register would be an error as
> well. Hence lets just BUG_ON() when the search fails in get_arm64_ftr_reg()
> rather than checking for return value and doing the same in some individual
> callers.
> 
> But there are some callers that dont BUG_ON() upon search failure. It adds
> an argument 'failsafe' that provides required switch between callers based
> on whether they could proceed or not.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

BTW, there should be no empty line between the Cc block and the SoB.

The patch looks fine. Just a note that the patch transforms a current
WARN_ON in a BUG_ON but that's fine by me.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
