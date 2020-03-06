Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A817BB8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edDsXk1JpjakKYZ3fbZr2eaaojNRuW87NM7KEaQAxrU=; b=amh2PXLlOd+Mdf
	UGOn5158v3XepKnBy3Y8G2Kw1ojf2jS8fupZMg51xz1Acnix0fHAVSo0WKp56gzrJ2j24Rl3kfAx9
	XxgM6zndlo3XzVTrCwWmmsj6VXJeNCbEbZcwRcSAJLintV2Bw6Cl2wHolyzA03XoCkZkY2CD6LzGI
	1T7tCHKUk/6DqRAfnUEIaP/3qwpZcKc6SdL81/FNbt5xJ0En/RjVFIXfO5K6bZ4Twr77SV2geIwgb
	rW1v8ju8fjwCBPPKblbY73UE5GAhT75pFwSAMAZGOrdIuEwqVkBrdBT1DM5VcLvuz0h3tJw9LUVB4
	XcSKpUeDWBE1figruY4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAB35-0003pS-1F; Fri, 06 Mar 2020 11:21:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAB2y-0003oc-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:21:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9259731B;
 Fri,  6 Mar 2020 03:21:38 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 637213F6C4; Fri,  6 Mar 2020 03:21:36 -0800 (PST)
Date: Fri, 6 Mar 2020 11:21:34 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v6 0/7] arm64: ARMv8.4 Activity Monitors support
Message-ID: <20200306112134.GD2503422@arrakis.emea.arm.com>
References: <20200305090627.31908-1-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305090627.31908-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_032140_709225_EC4292D5 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 maz@kernel.org, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

On Thu, Mar 05, 2020 at 09:06:20AM +0000, Ionela Voinescu wrote:
> v5 -> v6
>  - v5 can be found at [7]
>  - The current series is based on arm64/master [8].

arm64/master is just some random point in the Linus tree, I didn't
realise people are using it. I moved it to v5.6-rc3 as that's the base
for the final arm64 for-next/core.

>  - [1/7] kernel parameter removed as Catalin recommended
>  - [2/7, 4/7] changelog and documentation changed to remove information
>    about the removed kernel parameter
>  - [2/7, 3/7, 6/7] collected reviewed-by and acked-by from James,
>    Marc and Lukasz.

The series looks fine. Once Sudeep reviews/acks the arch topology patch,
I'll queue the patches.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
