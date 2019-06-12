Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513E24205B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c10lFa3Toz/Mq1ATjd62nLREnTpf8aOOJ96iFrMbJnQ=; b=G1cxJrGP3qzXzG
	wS0k7jUaU3LMk8aZzwt9bwgVSMqwnvgh6VF3YF4kd/e9mk+pwB5Y3XCXOlyX95BCJ9+p/bq9rWF5M
	ongds7ZpfbC5VX5BBEwJS91Szwdfri/YYlqbM3Fy/9tXBThdNExsEj21lGNionoYvRMgy4Ef06b7z
	+Lt0NTdHPRU180CFKCT4HJk5M1OvGQmD2AQSZoS9N8gkCUBQY6jXIZihQ5uTpgOkhTR9ZjoREgKJz
	dXQ3m2hEq7kNvpEtgRbBjA6TFN6NWPsGLd8OMv+Isepuzzfe00GRqK1mJMDb4FM9pR8OClOLsiUga
	jFvClzd1EaHiK62U5pOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazKl-0000nb-KO; Wed, 12 Jun 2019 09:14:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hazKV-0000mJ-Bx
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:14:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1069728;
 Wed, 12 Jun 2019 02:14:01 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 272A13F246;
 Wed, 12 Jun 2019 02:13:59 -0700 (PDT)
Date: Wed, 12 Jun 2019 10:13:54 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 will.deacon@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, dietmar.eggemann@arm.com,
 ionela.voinescu@arm.com, mka@chromium.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/3] Make IPA use PM_EM
Message-ID: <20190612091351.jet5sew5dnirsapz@queper01-lin>
References: <20190530092038.12020-1-quentin.perret@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530092038.12020-1-quentin.perret@arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021403_453156_ABC4EFF5 
X-CRM114-Status: UNSURE (   8.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thursday 30 May 2019 at 10:20:35 (+0100), Quentin Perret wrote:
> Changes in v5:
> **************
>  - Changed patch 02 to guard IPA-specific code in cpu_cooling.c with
>    appropriate ifdefery (Daniel)
>  - Rebased on 5.2-rc2

Is there anything else I can do on this series ? Should I send a v6 with
Viresh's and Daniel's Acked-by ?

Many thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
