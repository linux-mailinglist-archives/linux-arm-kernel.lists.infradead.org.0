Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF32D27D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o85VocxLDJJo16dFJmOClqXOfC9+fb85plwQyXpOgfI=; b=N3GNpF3yLBVlRaGzntOL6541F
	06kpD7McD/9WNxQ03GwEsKv91S1jD/+QmS/J3na/3eKq+NnCBGDqeTf8ENqcl8TcirAxMB6bLqiil
	kZlYBzb7mamFSZe3lCsXByt7moT+uL29oqC/WX9/Ct1Xv3q4m/fI+HYNk3jtfIlZpqhW/q7ka41OW
	ioUOd8hX92QkFjmLkZevw+lsfxcwHFT7WEbrvl/p6cHHEagiwOL+ahJXoAo7oLMq2Wx6q91JZIoBx
	1UhsIlc6LqlNhhcdTcECcJqK4eCaSYCUxYL2QDxTq1V2IXOG7CtlTV98+al9vz15JlFmsqJBxrBjv
	yICNygUtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWMc-0001Ey-NP; Thu, 10 Oct 2019 11:12:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWMW-0001Ef-1f
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:12:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68D2E28;
 Thu, 10 Oct 2019 04:12:03 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B48D33F68E;
 Thu, 10 Oct 2019 04:12:02 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Fix truncating a feature value
To: stable@vger.kernel.org
References: <20191010110856.4376-1-suzuki.poulose@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ca77dec7-b29b-5a3b-0c01-047a06d1854d@arm.com>
Date: Thu, 10 Oct 2019 12:12:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191010110856.4376-1-suzuki.poulose@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_041204_127079_7B7AF99C 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All,

On 10/10/2019 12:08, Suzuki K Poulose wrote:
> A signed feature value is truncated to turn to an unsigned value
> causing bad state in the system wide infrastructure. This affects
> the discovery of FP/ASIMD support on arm64. Fix this by making sure
> we cast it properly.
> 
> Fixes: 4f0a606bce5ec ("arm64: cpufeature: Track unsigned fields")
> Cc: stable@vger.kernel.org # v4.4

Please note that this patch is only applicable for stable 4.4 tree.
I should have removed the Fixes tag.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
