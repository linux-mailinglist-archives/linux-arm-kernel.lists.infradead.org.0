Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B660013B57F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 23:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vD4I2XSlwm/8M/2Dm4DzAZ80SmLx7kv5Z4vSB3iujMw=; b=hsAbNty/bGkJnQ
	zTYTLBU+uGoC4Lp6FwF9BCOQkuAx29Jz7HFYaxjNK8q1JsqLW1V+52KuGVS72fmQSfwhI7TIdnqEc
	DPBIm1rOY/prQIPISkRtUpumYhnqbH90cSxJM5svnOeS6ngCiB9yuTBjAmGwii91QGUuliFCYJY53
	uQ/mO5w8QdOj7oeVPufEbP/o0UHKtz8AvAmDeL4VNztWo4YkIuDg2aAEMSY1FRadeW7LYBd7/ye8S
	6FIkyE9BhVPLNsbfrhkJNx4KBNOqFItZBY1rxL7PJ0J/1PGifGXdf8rPeP1R8XC3diTX9adsmSfnj
	ItmguwVWtDeEhFdjOHmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irV1r-0005Hh-SH; Tue, 14 Jan 2020 22:51:19 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irV1k-0005GC-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 22:51:13 +0000
Received: from 79.184.255.90.ipv4.supernova.orange.pl (79.184.255.90) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id c1cb78ac0f69600f; Tue, 14 Jan 2020 23:51:04 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] cpuidle: arm: Enable compile testing for some of drivers
Date: Tue, 14 Jan 2020 23:51:03 +0100
Message-ID: <4692219.51FEeoGIeG@kreacher>
In-Reply-To: <92592736-fa55-8fe8-c893-e9e7129fe910@linaro.org>
References: <20191229180912.17100-1-krzk@kernel.org>
 <a4fa3f89-e792-aeee-b9ea-9af244ace04a@linaro.org>
 <92592736-fa55-8fe8-c893-e9e7129fe910@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_145112_668343_920504E0 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, January 13, 2020 1:24:00 PM CET Daniel Lezcano wrote:
> On 13/01/2020 12:58, Daniel Lezcano wrote:
> > On 13/01/2020 12:51, Rafael J. Wysocki wrote:
> >> On Sunday, December 29, 2019 7:09:12 PM CET Krzysztof Kozlowski wrote:
> >>> Some of cpuidle drivers for ARMv7 can be compile tested on this
> >>> architecture because they do not depend on mach-specific bits.  Enable
> >>> compile testing for big.LITTLE, Kirkwood, Zynq, AT91, Exynos and mvebu
> >>> cpuidle drivers.
> >>>
> >>> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >>> ---
> 
> [ ... ]
> 
> >> Daniel, any concerns regarding this one?
> > 
> > Yes, I have a doubt about this patch. I'll double check before commenting.
> 
> Actually it is fine.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

OK, patch applied.

Thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
