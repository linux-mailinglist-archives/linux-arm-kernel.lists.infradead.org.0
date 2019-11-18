Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93671FFC9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 01:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7fLR7nzfTHM3kt5b8nabQ1UNCx6tyEXTSY2kO99qEk=; b=KZgKwVD07ZiT7t
	ODM/wvfZn03opBU1ELvSsE8GvA1Kuef8m6tJxzRHDx14LPj5IqBmJm1Xz33871bwmxn3/+WZpq7d9
	V9MZzmzNT7rKpUEZAHwZybCd5ajBMaIvBwcrVJ9C1N/Bpdf+oTWoVXNca0EvnhnjlelRiaaMlFMZY
	6IjGdqaTLFkecQha84wPolIWRNT87Ntz1hOqmNY75Fb/hXd9368kuZPr5InD8uFTYF2GQPsFTDMsC
	Iqrdox9DKpreqaHk/JQO4R9+sWbYutrUXKXdRqdBWdN5eRV73LsWFI2yH0/H2fdtfg6Ae7Iq58PnS
	728u1ocvMkvLZN6Y2HgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVNV-0006f7-0D; Mon, 18 Nov 2019 00:58:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVNJ-0006dV-F1; Mon, 18 Nov 2019 00:58:42 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVNF-0003hD-Gj; Mon, 18 Nov 2019 01:58:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove 408MHz operating point from
 px30
Date: Mon, 18 Nov 2019 01:58:36 +0100
Message-ID: <4318673.vLX1ueDYfg@phil>
In-Reply-To: <20191116095220.31122-1-heiko@sntech.de>
References: <20191116095220.31122-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_165841_650067_9B6BF131 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kever.yang@rock-chips.com, cl@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 16. November 2019, 10:52:20 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> It looks like the px30 is running unstable at this 408MHz operating point.
> This shows in stalled threads and other big numbers of kernel exception.
> 
> At 600MHz and above it instead works stable and as expected. As the 408MHz
> point doesn't even decrease the voltage compared to 600MHz, just drop this
> 408MHz operating point for now.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
