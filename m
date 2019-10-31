Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0FFEB802
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 20:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2K8nYkTLBJjWD11Udx0ByrS2Q+kN/V0Mu3ruCG5t3A=; b=G95Qq7hglL3ugU
	O2xt8C61c3OzZYAtRJgDVToGqH6CJ63k/QfPvR8k4cbwPoBqYJvn6qLoi/05Z/8GGLM1FCSGJwyzz
	XJaIdTrqBosTSQpeH1n8mv7xLTP85k1sl8iVeNsyf2exF1MYcXoNNbz+2N6o2PueD0VhVMiIP4WWR
	hUm/GSXHdJoYtI9T7sL+t4wXqavnHt2M9RdKrwZdDSMogMTBMUNiaHwalrwCRcameKABEa15HoNig
	UReV5u+/UBwCMIHqQIIK74QBROSTprxGBppG/XdH7QLn3YARVWoL8tZZk4aC1nIZv5NYj5BB7oAWV
	PbbczGULdt1tL/opzi4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQGEW-0003up-Ub; Thu, 31 Oct 2019 19:35:48 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQGEN-0003tt-Ha
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 19:35:42 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 768008365D;
 Fri,  1 Nov 2019 08:35:33 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572550533;
 bh=E93uVfw+8Sv9aFniBPMkATe9ycroU/eB0+p7RpM6SlA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=F7Q+3WazE4DEFImOB2xZ4pivLcl6lyZDOa051lMUsnuJjiDOnLZqYdJB2InfY74Kw
 d+WMefMFl20rEyIL5JZCP4Yh0RAYAxQhOpIJbMWV2edqp7fkjiw3txEIuO+u4Ei7qm
 spAmx5eRqXnoC/3/rjAW14AWozrfUOrc7pvnKKsFrtQqsMJYpeIo3B0XtUufTB82gD
 4SLwNZHjmU761wfyV+eg1CabIjsNy/Bd5Kc2hWe7gINE5L79DE67K6zQSdR5tfroEs
 hf8tJOMxgOkhtWsI+qTFbkvqbZTAzqxtja04Wvn5cFtblGoMNJPNiNDL5MnA1+o8Rs
 6nFEovFHVG7Jw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dbb37820000>; Fri, 01 Nov 2019 08:35:32 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Fri, 1 Nov 2019 08:35:31 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Fri, 1 Nov 2019 08:35:31 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "tomeu.vizoso@collabora.com" <tomeu.vizoso@collabora.com>,
 "mgalka@collabora.com" <mgalka@collabora.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "matthew.hart@linaro.org"
 <matthew.hart@linaro.org>, "broonie@kernel.org" <broonie@kernel.org>,
 "bot@kernelci.org" <bot@kernelci.org>, "khilman@baylibre.com"
 <khilman@baylibre.com>, "guillaume.tucker@collabora.com"
 <guillaume.tucker@collabora.com>
Subject: Re: linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on
 rk3399-puma-haikou
Thread-Topic: linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on
 rk3399-puma-haikou
Thread-Index: AQHVkBrPgYhki3sbH0mOvdKD5EMjb6d0SpEA
Date: Thu, 31 Oct 2019 19:35:30 +0000
Message-ID: <9d1a6cba9687f94b2d36a82f42f5d4be2b16e7a6.camel@alliedtelesis.co.nz>
References: <5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com>
In-Reply-To: <5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:f9a5:3a1:c94b:a6f5]
Content-ID: <007B585A5A5044459D519245F35A99C3@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_123540_146513_62F2A917 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-31 at 11:41 -0700, kernelci.org bot wrote:
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> *                                                               *
> * If you do send a fix, please include this trailer:            *
> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> *                                                               *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> 
> linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on rk3399-puma-haikou
> 
> Summary:
>   Start:      6a41b6c5fc20 gpio: Add xgs-iproc driver
>   Details:    https://kernelci.org/boot/id/5dbb12bf59b514404f60ee79
>   Plain log:  https://storage.kernelci.org//linusw/devel/v5.4-rc1-31-g6a41b6c5fc20/arm64/defconfig/gcc-8/lab-theobroma-systems/boot-rk3399-puma-haikou.txt
>   HTML log:   https://storage.kernelci.org//linusw/devel/v5.4-rc1-31-g6a41b6c5fc20/arm64/defconfig/gcc-8/lab-theobroma-systems/boot-rk3399-puma-haikou.html
>   Result:     6a41b6c5fc20 gpio: Add xgs-iproc driver
> 
> Checks:
>   revert:     PASS
>   verify:     PASS
> 
> Parameters:
>   Tree:       linusw
>   URL:        https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/
>   Branch:     devel
>   Target:     rk3399-puma-haikou
>   CPU arch:   arm64
>   Lab:        lab-theobroma-systems
>   Compiler:   gcc-8
>   Config:     defconfig
>   Test suite: boot
> 
> Breaking commit found:
> 
> -------------------------------------------------------------------------------
> commit 6a41b6c5fc20abced88fa0eed42ae5e5cb70b280
> Author: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Date:   Fri Oct 25 09:27:03 2019 +1300
> 
>     gpio: Add xgs-iproc driver
>     
>     This driver supports the Chip Common A GPIO controller present on a
>     number of Broadcom switch ASICs with integrated SoCs. The controller is
>     similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
>     different enough that a separate driver is required.
>     
>     This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
>     support (pinctrl-iproc-gpio covers CCB).
>     
>     Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>     Link: https://lore.kernel.org/r/20191024202703.8017-3-chris.packham@alliedtelesis.co.nz
>     Acked-by: Scott Branden <scott.branden@broadcom.com>
>     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Hmm,

I don't see how this commit would have caused the oops. The new driver
shouldn't (and doesn't appear to be) run on any platform as nothing
declares .compatible = "brcm,iproc-gpio-cca" (yet).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
