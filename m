Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266144B427
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 10:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evUGce+Ck71mL67ppYs/vw1LtRp1P7kd3oKc1XrFH4c=; b=E7twoupJPExUWs
	9N3LbD9BKmwCB6fmEkM9HwjcdezuBVzfSDsZwVnO2Smxhcnc2FchErJWbWgw7PU1HVLlGa/aOWyjt
	hYY6fQUvJ4erAfV7ZTiFghb9nERlDFgm9SArY5hpLx6z7aysq5iIv/yEL8+teTb1GdxQDz2tDjJoN
	G00rwxrJpaHqqbLNpa8lyihFNwzWlLktOA79KUDeT8DiY6f7oFhZqCtFCoYU5jcwNBHyOMzTPvvyn
	kTYFuJ35s8Xwl50UDtX15NY0a1sXk/DDfAiVI+WxQ1yJVl0qUysRpJ+MrXh8JDF6Vg+n7cdHiOf/9
	6ZXU9YlofFiWm8F6/SqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdW4X-0008It-5T; Wed, 19 Jun 2019 08:36:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdW4K-0008HV-6F
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 08:35:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED6B9CFC;
 Wed, 19 Jun 2019 01:35:45 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 105993F246;
 Wed, 19 Jun 2019 01:35:43 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:35:42 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 will.deacon@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, dietmar.eggemann@arm.com,
 ionela.voinescu@arm.com, mka@chromium.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/3] Make IPA use PM_EM
Message-ID: <20190619083539.mveyly5celgs5pmg@queper01-lin>
References: <20190530092038.12020-1-quentin.perret@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530092038.12020-1-quentin.perret@arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_013548_276679_8D8E8882 
X-CRM114-Status: GOOD (  11.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 30 May 2019 at 10:20:35 (+0100), Quentin Perret wrote:
> Quentin Perret (3):
>   arm64: defconfig: Enable CONFIG_ENERGY_MODEL
>   thermal: cpu_cooling: Make the power-related code depend on IPA
>   thermal: cpu_cooling: Migrate to using the EM framework
> 
>  arch/arm64/configs/defconfig  |   1 +
>  drivers/thermal/Kconfig       |   1 +
>  drivers/thermal/cpu_cooling.c | 428 ++++++++++++++--------------------
>  3 files changed, 178 insertions(+), 252 deletions(-)

Gentle ping on this :-)

Is there any chance for the series to make it in 5.3 ? Or is it too late
already ? In any case do let me know if there is anything I can do about
it.

Many thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
