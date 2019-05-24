Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3766C29983
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAAKgMo+RBWnxpNdyeMBdEUpo2xVnmwnnSfvgQnKWr0=; b=uEPY+sldZ6OS/4
	VMn/ZUBytmlhxJocBUlYyaGhMsP+ODOoK+MP0jTwZlpRL9MdbpYuQAFSRZnTzTgbAHH2RWVUrOM+H
	qdLWS0w8OC5cNF1hvCxRQkD4glA4NXyn1bA+7b7DR4e5aWOWv5KQOZR8tD/PjmS3LzkdP3FgPMSMp
	5dqVJ+yuW97GqevrqS2TvFoiJy297sH0TJQNmM/9CsaTWvtT6dZ2COrM87NGCR2wwSO11As/fkAEF
	ae6Sr2RPCk1gQM7mdDMpPEQi+FWVDLUxgHuGPAsla0Q8W1SH0+qg793xPNbHGL4KtuuW+H8erTsMl
	8GT4ZlOcExlwk6+miggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAh3-00046Y-Ss; Fri, 24 May 2019 13:57:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAgv-000451-5K; Fri, 24 May 2019 13:57:02 +0000
Received: from [IPv6:2a00:5f00:102:0:6dae:eb08:2e0f:5281] (unknown
 [IPv6:2a00:5f00:102:0:6dae:eb08:2e0f:5281])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 34688283DBD;
 Fri, 24 May 2019 14:56:58 +0100 (BST)
Subject: Re: mainline/master boot bisection: v5.2-rc1-172-g4dde821e4296 on
 meson-g12a-x96-max
To: Kevin Hilman <khilman@baylibre.com>
References: <5ce78689.1c69fb81.58097.eacf@mx.google.com>
 <7hmujc0xnp.fsf@baylibre.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <f01b812e-ee18-528b-1859-620dd8f0fb53@collabora.com>
Date: Fri, 24 May 2019 14:56:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7hmujc0xnp.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_065701_332717_C181B7A9 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 tomeu.vizoso@collabora.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 broonie@kernel.org, matthew.hart@linaro.org, mgalka@collabora.com,
 enric.balletbo@collabora.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/05/2019 14:50, Kevin Hilman wrote:
> "kernelci.org bot" <bot@kernelci.org> writes:
> 
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>> * This automated bisection report was sent to you on the basis  *
>> * that you may be involved with the breaking commit it has      *
>> * found.  No manual investigation has been done to verify it,   *
>> * and the root cause of the problem may be somewhere else.      *
>> * Hope this helps!                                              *
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>
>> mainline/master boot bisection: v5.2-rc1-172-g4dde821e4296 on meson-g12a-x96-max
>>
>> Summary:
>>   Start:      4dde821e4296 Merge tag 'xfs-5.2-fixes-1' of git://git.kernel.org/pub/scm/fs/xfs/xfs-linux
>>   Details:    https://kernelci.org/boot/id/5ce72c6259b514ed817a3640
>>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-172-g4dde821e4296/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
>>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-172-g4dde821e4296/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
>>   Result:     11a7bea17c9e arm64: dts: meson: g12a: add pinctrl support controllers
> 
> False alarm.
> 
> This one is failing in one lab but passing in another:
> https://kernelci.org/boot/all/job/mainline/branch/master/kernel/v5.2-rc1-172-g4dde821e4296/
> 
> I'll look into what's the difference between labs.

Thanks for clarifying this.  I guess we should fix the logic
which detects regressions to discard cases where there is a
conflict between results in different labs.

Guillaume

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
