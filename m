Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2E012E8A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yG2oVnsPt4LvKZBFJbk5wQ05fj9pZasAOAiV9vHa+AU=; b=hOkh+UUAmu5h/cix1NlHEROow
	DoEuzPZvXvU/23b74D1wtX55WDHJT7dFEGiCQ2nE2X3Fk5iow5QhDh//xlL4Fxy9mU3n6atJs2qNA
	0CZySGsWmJOe60AiT4exdr3uqj1FFH7uTT9ohVOstTf5x9OaTU+PGCgm84abupnvNjhKjefeB8mzw
	YobQCgOBZcr64e24hv4LV7+dvQnJtTTfNM5peQHCES9x99nuIqFtyLx0KoWMDebEgQJYfz2BMqsE2
	FMcZ4RUivCHyj452tIEE9Iv7uwn+9BhTfC8vyIz4qynDJJowXAUNKSWoAh9UzY5hrMCO3FK+QqNmK
	m0WG0IQ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3FI-0000kQ-Dy; Thu, 02 Jan 2020 16:22:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3F0-0000gv-UA
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:22:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1FE7328;
 Thu,  2 Jan 2020 08:22:28 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 822323F68F;
 Thu,  2 Jan 2020 08:22:27 -0800 (PST)
Subject: Re: [PATCH v3 1/3] arm64: cpufeature: Extract capped fields
To: Andrew Murray <andrew.murray@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20200102123905.29360-1-andrew.murray@arm.com>
 <20200102123905.29360-2-andrew.murray@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <cbf5e5e0-a31a-3f52-c113-7e069c920bf1@arm.com>
Date: Thu, 2 Jan 2020 16:22:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200102123905.29360-2-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_082231_029089_D39AD80A 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/01/2020 12:39, Andrew Murray wrote:
> When emulating ID registers there is often a need to cap the version
> bits of a feature such that the guest will not use features that do
> not yet exist.
> 
> Let's add a helper that extracts a field and caps the version to a
> given value.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
