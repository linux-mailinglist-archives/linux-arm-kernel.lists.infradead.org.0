Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9407B11BA4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a3u0fglcHY1DK5cHA+sWYxol2k9yEopIMCq03wNNrlQ=; b=Gvk1C7dVjPEC9raTcstn5rsYX
	lj4Gyca768/QXvdxBhqcYrCrR601RnOtk4HngQRZAUmh9j+PhfvbPOjsuU8g4tDFRAv8s8sGbVvU4
	Y34Ij5hlJhL6jbG9dmHTAK39aVGN/FrTV3eiEnx9ihr2d8iXYx6AWA/oH3UJwh4U1uV80NKRRqsqb
	Ac4wC2Y9QY0P2fYQnkMcgdAC0YA280edktlFS6jTR6I9BxT40fX8GEPkcvQCyTWGRxHCcRXxL4vGs
	xBPqnYz6L8WrwVYAk0lXviSKM0U8ohIncvX8G3/UU7OI1S33nVIWiwFfhPjI+iBgSqkppcR4mb863
	BEIT4ep+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5nO-0004Sd-2Y; Wed, 11 Dec 2019 17:29:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5nE-0004SK-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:28:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00E4730E;
 Wed, 11 Dec 2019 09:28:56 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 19A543F52E;
 Wed, 11 Dec 2019 09:28:54 -0800 (PST)
Subject: Re: [PATCH v2 3/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
To: Andrew Murray <andrew.murray@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191210120146.2942-1-andrew.murray@arm.com>
 <20191210120146.2942-4-andrew.murray@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <314c8b5e-5f12-63f9-0937-602450db70b2@arm.com>
Date: Wed, 11 Dec 2019 17:28:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191210120146.2942-4-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092856_804042_E927EE2B 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 12:01, Andrew Murray wrote:
> At present ARMv8 event counters are limited to 32-bits, though by
> using the CHAIN event it's possible to combine adjacent counters to
> achieve 64-bits. The perf config1:0 bit can be set to use such a
> configuration.
> 
> With the introduction of ARMv8.5-PMU support, all event counters can
> now be used as 64-bit counters.
> 
> Let's enable 64-bit event counters where support exists. Unless the
> user sets config1:0 we will adjust the counter value such that it
> overflows upon 32-bit overflow. This follows the same behaviour as
> the cycle counter which has always been (and remains) 64-bits.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
