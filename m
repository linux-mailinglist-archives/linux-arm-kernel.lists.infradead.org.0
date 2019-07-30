Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA717AB41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BwACOFcxdnxMk5ftWXSC9R6WigxgrZ18x9i7RpMcquQ=; b=WiE5FFmNCH1a3LOeiLaZ4Lu2u
	l5nW9gHwOQs7CRxphrJCAvoWRnDNnSoVLaHtm3lZZQPbwzbCUP57lsLYHryLjLpbEr6qmVSIS5u7l
	aX8YQaLj+cD+K1RBWYCkl0shWqbIY7Ar3fRIwUej8YkMndOYse3ayKemsNq5yruJfrNnPY+cBr2K1
	iHFtztexZalX9LakyOSJh/5xxaoanUSKqN3M6i2FErZba1wfbccrETRawteGdWcEIL9lxmZxNAaRv
	M+vj3n7N7FzysFScIonrSz0IQ1hrfkazj3ZD0tih7A7EOnPpc25oy9W86xGNPJYCwnY3I665tzhqM
	wKdeNJ3KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTKz-0002f9-RD; Tue, 30 Jul 2019 14:42:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTKo-0002eb-AF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:42:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1F4328;
 Tue, 30 Jul 2019 07:42:37 -0700 (PDT)
Received: from [192.168.0.21] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC28C3F694;
 Tue, 30 Jul 2019 07:42:36 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Fix feature comparison for
 CTR_EL0.{CWG,ERG}
To: will@kernel.org, catalin.marinas@arm.com
References: <20190730144020.3518-1-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <e483de62-b088-ae58-0d8e-e12bff6d0819@arm.com>
Date: Tue, 30 Jul 2019 15:45:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20190730144020.3518-1-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074238_392774_7E6AD97B 
X-CRM114-Status: GOOD (  12.71  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/30/2019 03:40 PM, Will Deacon wrote:
> If CTR_EL0.{CWG,ERG} are 0b0000 then they must be interpreted to have
> their architecturally maximum values, which defeats the use of
> FTR_HIGHER_SAFE when sanitising CPU ID registers on heterogeneous
> machines.
> 
> Introduce FTR_HIGHER_OR_ZERO_SAFE so that these fields effectively
> saturate at zero.
> 
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Fixes: 3c739b571084 ("arm64: Keep track of CPU feature registers")
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
