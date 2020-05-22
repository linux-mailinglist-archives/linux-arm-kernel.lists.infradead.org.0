Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC40D1DEC6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1LlDvBYnWK3FDXzLkDtZ3xpW1NTcMIQHh7gVnnDURU=; b=MCC4TZg4mVgjgr
	5zEFfeLwQT5/xpx70npYZvwlaC2i1Cv0H9wd58ehYAEvtoim4JtNvQp5nT+XjvRR8jzxE3KQybhnl
	/I8lZDfjEiGJUK+CnO7pX/3Y6vxPP2vz3cQQ0Pup3EDYse4E8BlqI8GhbF9fPmQizUze05kRbI7fT
	bN1mrsDI+BME24pk+Pxz//OhjWv7F81A0Y9orEs9WyZn9M9q4SlS/zsjBTMn3lkAKJQprJGWpCtlg
	PGiGuTQmEGKT8s5Z8wEg2xixGSLysp1dmtG1N9zHVSHdUFJRoDjExu+dyVzjg9WarHhQoth5TjdN+
	Av5kcnkw5hk0kdkOxWtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9wD-0000jJ-Je; Fri, 22 May 2020 15:50:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9w1-0008QL-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:50:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D76F55D;
 Fri, 22 May 2020 08:50:09 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB27D3F305;
 Fri, 22 May 2020 08:50:05 -0700 (PDT)
Date: Fri, 22 May 2020 16:50:02 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v2 1/6] arm64: Detect the ARMv8.4 TTL feature
Message-ID: <20200522155002.GF26492@gaia>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-2-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423135656.2712-2-yezhenyu2@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_085009_824262_64EC20BD 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, peterz@infradead.org, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, aneesh.kumar@linux.ibm.com, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org, maz@kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 09:56:51PM +0800, Zhenyu Ye wrote:
> From: Marc Zyngier <maz@kernel.org>
> 
> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
> feature allows TLBs to be issued with a level allowing for quicker
> invalidation.
> 
> The TTL field indicates the level of page table walk
> holding the leaf entry for the address being invalidated.
> 
> Let's detect the feature for now. Further patches will implement
> its actual usage.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
