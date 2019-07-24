Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B245272BBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 11:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yf2xx8ox9GOlnU7WPdOSZjRiKellg7N0OUWftPlxM2w=; b=fBa14JVP8kIgET
	wwBgE5ReMAlidQ1KwZiSFB6cGHemYtPApRDr3piUBwb1kek94djQZ5VKISXyJL7uQv9e8DXnOA+6P
	QwGNtheem7fwJ6c9tddcB0oSrG8g8kuAiGXEUF2t5J3+VPYwFnfsn8HfF28nnXfVXqT2dSOnVtDD9
	+FBrA8AFNuSM7VYRRnBZHVlIR4GNzCP0jVmJHYKG2Vv77wk8yOyM0BHsbHd3Z9IWR0oBM/iKQKxut
	e/BHkFoaGes3jCkP1hpgSZzO8uM/CgkmqEwS6Rg9bHPY5Kx1+9Kdf5ARrcrJFTKTnGLEIK8RlFkpR
	2TWmY7lAFSLthKCLSvGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDwT-0006Wv-FE; Wed, 24 Jul 2019 09:52:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDwB-0006WD-VA; Wed, 24 Jul 2019 09:51:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04529337;
 Wed, 24 Jul 2019 02:51:52 -0700 (PDT)
Received: from [10.1.27.173] (unknown [10.1.27.173])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7DB653F71F;
 Wed, 24 Jul 2019 02:51:48 -0700 (PDT)
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Marc Zyngier <marc.zyngier@arm.com>, Stefan Wahren <wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <20190723191326.3afdff83@why>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <34b2b928-c078-8898-842b-908a90593932@arm.com>
Date: Wed, 24 Jul 2019 10:51:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190723191326.3afdff83@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_025156_260068_12D90E05 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Mark Brown <broonie@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/23/19 7:13 PM, Marc Zyngier wrote:
>> +	arm-pmu {
>> +		/*
>> +		 * N.B. the A72 PMU support only exists in arch/arm64, hence
>> +		 * the fallback to the A53 version.
>> +		 */
>> +		compatible = "arm,cortex-a72-pmu", "arm,cortex-a53-pmu";
> You're thus guaranteed to count the wrong events... And you could at
> least have "arm,armv8-pmuv3".
> 

Isn't "arm,armv8-pmuv3" still "only exists in arch/arm64" (along with "arm,cortex-a53-pmu")?

P.S.
Yes, I remember you posted some related patches in a past yet they never hit mainline :(

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
