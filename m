Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955B127DEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14oLVILHEHqABqDry4FWRCgUQo4R58VfFazu952E9cI=; b=iGRBZsIfUnRDp5
	6TqfNWp0Cc3f1vHO1Wi6bvwDEJ0UBMwt62YtVkdcGuICqG9FalSkACr08/x0odWFdj/FBBddhOFyu
	IIWyTqVo0q/GQeDhqnnDkTtXAM0q4th6h26qqY+NssCqbIkD/bkd0T/apVXFUnN/6ln2jifM3U0WK
	t3S/b+cAjACQNC6gxnqt112EYtUmEbyc40e96IevSH2L7vk1IlCPpmPLdCGdrXoxsopLt+i1cArOQ
	5TaQyXeLvTQActz4qRz8TXSO5Hlr7JBnUQ1Fj5QZp2OD6UintjNv/QDQEmXr4GJRqqeSlQuyOgFCh
	Ad0eW3B/bND7wkfU6NAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTncj-00054D-LO; Thu, 23 May 2019 13:19:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTncc-00053J-UV; Thu, 23 May 2019 13:19:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 358BF263ABB
Subject: Re: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
To: Mark Brown <broonie@kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
References: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
 <20190523131207.GC17245@sirena.org.uk>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <ac2f06ac-2bf5-7af6-06c3-37b865c43738@collabora.com>
Date: Thu, 23 May 2019 15:18:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523131207.GC17245@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061903_115422_BFAF67CB 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Heiko Stuebner <heiko@sntech.de>, tomeu.vizoso@collabora.com,
 linux-pm@vger.kernel.org, guillaume.tucker@collabora.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, matthew.hart@linaro.org,
 khilman@baylibre.com, mgalka@collabora.com, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 23/5/19 15:12, Mark Brown wrote:
> On Wed, May 22, 2019 at 07:23:09PM -0700, kernelci.org bot wrote:
> 
>>   Details:    https://kernelci.org/boot/id/5ce5984c59b514e6a47a364c
>>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>>   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error
> 
> It looks like this issue has persisted for a while without any kind of
> fix happening - given that the bisection has identified this commit as
> causing the regression and confirmed that reverting it fixes shouldn't
> we just revert?  My guess would be that there's some error with the
> pinctrl settings in the DT for the board.
> 

After some discussion Heiko sent a patch that reverts the offending commit one
day ago [1] and it's waiting for maintainer to pick-up the patch.

The reason why we think is best reverting that fix it is explained here [2]

[1] https://lkml.org/lkml/2019/5/22/467
[2] https://lkml.org/lkml/2019/4/30/270

Thanks,
 Enric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
