Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4512BFEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFLJTcwPSXfXOKo7Y1We25IpAp1h5eObfzpszNLHRm0=; b=n+OZs8JoQXuQEQ
	aIv6jwkrx2AKBuX8kGT1JQ7ZutTNWBjN/l6NqYmGdejTzCq50/q6KB9ERzTPeorireBKPFhDqYGdR
	MfsLVX3Va0gI5kmrL7kcBg9SLw432zCNFgAq+aVNHYmwqegMNlvlC30+yMUjQpMpGqXHdzZV6HChj
	RAq1k3s5XPEaKtS0e1PeStjSwR0bow6gPEPUBxE3KINBNQf7EuuKyXJEZhvfvLcK65Bg74TWWstIp
	hTksDXAjgmUVmxmBQhZVSBa+K9jKnbdOJqNnhEB8N+0sidDKrdonKKlgZVCNmpe8gpdjIHgJWSSth
	/JCYm7AbsvtwjhGmrGKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWIm-0004c6-U8; Tue, 28 May 2019 07:13:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWIe-0004b8-CW; Tue, 28 May 2019 07:13:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 318052804FE
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
Date: Tue, 28 May 2019 08:13:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_001332_553685_2C5CFFA6 
X-CRM114-Status: GOOD (  10.03  )
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
Cc: tomeu.vizoso@collabora.com, linux-pm@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, matthew.hart@linaro.org, mgalka@collabora.com,
 enric.balletbo@collabora.com, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 28/05/2019 00:38, kernelci.org bot wrote:
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> 
> linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on rk3288-veyron-jaq
> 
> Summary:
>   Start:      73a790c68d7e Merge branch 'devel' into for-next
>   Details:    https://kernelci.org/boot/id/5cebf03d59b514dd627a3629
>   Plain log:  https://storage.kernelci.org//linusw/for-next/v5.2-rc1-8-g73a790c68d7e/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>   HTML log:   https://storage.kernelci.org//linusw/for-next/v5.2-rc1-8-g73a790c68d7e/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error
> 
> Checks:
>   revert:     PASS
>   verify:     PASS
> 
> Parameters:
>   Tree:       linusw
>   URL:        https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/
>   Branch:     for-next
>   Target:     rk3288-veyron-jaq
>   CPU arch:   arm
>   Lab:        lab-collabora
>   Compiler:   gcc-8
>   Config:     multi_v7_defconfig
>   Test suite: boot
> 
> Breaking commit found:
> 
> -------------------------------------------------------------------------------
> commit 28694e009e512451ead5519dd801f9869acb1f60
> Author: Elaine Zhang <zhangqing@rock-chips.com>
> Date:   Tue Apr 30 18:09:44 2019 +0800
> 
>     thermal: rockchip: fix up the tsadc pinctrl setting error

This commit has now been reverted in mainline.  Would it be OK
for you to rebase your for-next branch on v5.2-rc2 or cherry-pick
the revert to avoid recurring bisections?

Ideally this should have been fixed or reverted in mainline
before v5.2-rc1 was released, or even earlier when this was first
found in -next on 13th May.  Unfortunately it was overlooked and
then spread to other branches like yours.

Thanks,
Guillaume

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
