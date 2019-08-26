Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43709CD97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=38hKFikWdjBNmmEjJRE6elZ3CbejAH/e7+pGAfZctU4=; b=MqEvS8srSloyTewJl49R9F0PW
	OES4bSlZRBcPJKoIkf0eVmDJ4CDhVA2oegdqkstpdqJvQEj/OnECHbdL7KTXLv2sX4l5v6AaSQu0b
	42leiN7fi7oTkcC0yg1UQFp+p0EuYPDS0P6Vp9L1rqjfQvJLqdhjl3fV3/GKUdFDN20l1yB+NxFAJ
	gZtGJkYCQt1oEqmIuaUtl0tikjnMljV+qr0AVyOQY+hEi2rdaUrukL2FdIt/06QQCIJr9t5eFLDbc
	8vmGhJJKFHSeMoMgsVc+2gFQBEBpT1d8VRpD/Buz0rY6SVU7GOVI7vkP+chJdFEeFrA2NYuCBOn0n
	dOXTG+A6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CZM-0004dc-OB; Mon, 26 Aug 2019 10:49:52 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CZE-0004cS-Rn
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:49:47 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1i2CZC-0001Hc-8T; Mon, 26 Aug 2019 12:49:42 +0200
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 2/2] ARM: exynos: Enable support for ARM architected
 timers
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 26 Aug 2019 11:49:42 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20190826103142.3477-4-m.szyprowski@samsung.com>
References: <20190826103142.3477-1-m.szyprowski@samsung.com>
 <CGME20190826103203eucas1p2d67b0ef44758eb06252b340f7751701a@eucas1p2.samsung.com>
 <20190826103142.3477-4-m.szyprowski@samsung.com>
Message-ID: <d286053b6f4b4783d0638dc2dbd5858e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: m.szyprowski@samsung.com, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cw00.choi@samsung.com,
 b.zolnierkie@samsung.com, krzk@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_034945_041684_73B4C9D9 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-26 11:31, Marek Szyprowski wrote:
> ARM architected timer can be used together with Exynos MultiCore 
> Timer
> driver, so enable support for it. Support for ARM architected timers 
> is
> essential for enabling proper KVM support.

How can you say that this is to "enable KVM support", while in the 
previous
patch, you set "arm,cpu-registers-not-fw-configured" which implies that 
you're
booting in secure mode with the timer's CP15 registers left to 
undefined values?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
