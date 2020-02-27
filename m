Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D2B17110A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 07:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEas6ywZucWEmSXgWCd43Pb7N8aEUA0c5P0ouBHSHPY=; b=OL8mEsSelRRFD9
	0rEXc5IlLRZ91BQjS9a5sjLPXvAtofwDETPCWh9hdKJOZjt8gdSaBPyEpbgZxswXxDQeP2ygd3G1B
	xZhlnbro+l5/aa0R7xkwbK+o57Bi5YuvwBSg3zrWVa9KdJfSmqcOyepHRixGyovrWZU7mRMsBrK7e
	scmSV+Hp2U5h9fFeOEojUiVJG7XeJZOc9jWrdPLqyrzVIUsPhKPm/K1Qg9eYrF17zo1pLgRZUFS6n
	lElZ72RmgjgM5d2/NntkJoQ3o5q8erqPzUwTzswp8/u1eDuTEcbVhEpPU86CwHgCrrT05BWc+Ba77
	2+J0wyrIngTMIQ1skzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7CiB-0008M6-FK; Thu, 27 Feb 2020 06:31:55 +0000
Received: from segapp02.wistron.com ([103.200.3.19] helo=segapp03.wistron.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ci2-0008Kv-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 06:31:48 +0000
Received: from EXCHAPP03.whq.wistron (unverified [10.37.38.26]) by
 TWNHUMSW4.wistron.com (Clearswift SMTPRS 5.6.0) with ESMTP id
 <Tdd93781158c0a816721818@TWNHUMSW4.wistron.com>; 
 Thu, 27 Feb 2020 14:31:31 +0800
Received: from EXCHAPP02.whq.wistron (10.37.38.25) by EXCHAPP03.whq.wistron
 (10.37.38.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 27 Feb
 2020 14:31:30 +0800
Received: from EXCHAPP02.whq.wistron ([fe80::ecf3:5097:933e:61e6]) by
 EXCHAPP02.whq.wistron ([fe80::ecf3:5097:933e:61e6%5]) with mapi id
 15.01.1713.004; Thu, 27 Feb 2020 14:31:30 +0800
From: <Ben_Pai@wistron.com>
To: <joel@jms.id.au>
Subject: RE: [PATCH v1] ARM: dts: mihawk: Change the name of mihawk led
Thread-Topic: [PATCH v1] ARM: dts: mihawk: Change the name of mihawk led
Thread-Index: AQHV57IDUDu59Q0XzUS/X7KToe/Y4qgs0SeAgAG53kA=
Date: Thu, 27 Feb 2020 06:31:30 +0000
Message-ID: <3633e9f58ab14118bf4c8df3f25ea0d2@wistron.com>
References: <20200220055255.22809-1-Ben_Pai@wistron.com>
 <CACPK8Xf=t+PY42qxF9jProYGGZZJONb=H1D4xZJc7teFWJ2FrA@mail.gmail.com>
In-Reply-To: <CACPK8Xf=t+PY42qxF9jProYGGZZJONb=H1D4xZJc7teFWJ2FrA@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.38.230]
x-tm-snts-smtp: 07E6559BC863661D5C7F457DA7AC36875EA80F0F8E96A4F5E8765A88B6AB6E272000:8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_223146_721074_84F9BD41 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.200.3.19 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Ben_Pai@wistron.com,
 linux-aspeed@lists.ozlabs.org, Claire_Ku@wistron.com, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, wangat@tw.ibm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mihawk platform no longer supports these two LEDs, so I think these two LEDs should be removed from dts.

Signed-off-by: Ben Pai <Ben_Pai@wistron.com>

-----Original Message-----
From: Joel Stanley <joel@jms.id.au> 
Sent: Wednesday, February 26, 2020 6:56 PM
To: Ben Pai/WHQ/Wistron <Ben_Pai@wistron.com>
Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Andrew Jeffery <andrew@aj.id.au>; devicetree <devicetree@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; linux-aspeed <linux-aspeed@lists.ozlabs.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; wangat@tw.ibm.com; Claire Ku/WHQ/Wistron <Claire_Ku@wistron.com>
Subject: Re: [PATCH v1] ARM: dts: mihawk: Change the name of mihawk led

On Thu, 20 Feb 2020 at 05:53, Ben Pai <Ben_Pai@wistron.com> wrote:
>
> 1.Change the name of power, fault and rear-id.
> 2.Remove the two leds.

The patch looks okay. Why do you remove the other two leds?

Reviewed-by: Joel Stanley <joel@jms.id.au>

>
> Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 17 +++--------------
>  1 file changed, 3 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> index e55cc454b17f..6c11854b9006 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> @@ -120,35 +120,24 @@
>         leds {
>                 compatible = "gpio-leds";
>
> -               fault {
> +               front-fault {
>                         retain-state-shutdown;
>                         default-state = "keep";
>                         gpios = <&gpio ASPEED_GPIO(AA, 0) GPIO_ACTIVE_LOW>;
>                 };
>
> -               power {
> +               power-button {
>                         retain-state-shutdown;
>                         default-state = "keep";
>                         gpios = <&gpio ASPEED_GPIO(AA, 1) GPIO_ACTIVE_LOW>;
>                 };
>
> -               rear-id {
> +               front-id {
>                         retain-state-shutdown;
>                         default-state = "keep";
>                         gpios = <&gpio ASPEED_GPIO(AA, 2) GPIO_ACTIVE_LOW>;
>                 };
>
> -               rear-g {
> -                       retain-state-shutdown;
> -                       default-state = "keep";
> -                       gpios = <&gpio ASPEED_GPIO(AA, 4) GPIO_ACTIVE_LOW>;
> -               };
> -
> -               rear-ok {
> -                       retain-state-shutdown;
> -                       default-state = "keep";
> -                       gpios = <&gpio ASPEED_GPIO(Y, 0) GPIO_ACTIVE_LOW>;
> -               };
>
>                 fan0 {
>                         retain-state-shutdown;
> --
> 2.17.1
>
>
> ----------------------------------------------------------------------
> ----------------------------------------------------------------------
> ------------------- This email contains confidential or legally 
> privileged information and is for the sole use of its intended recipient.
> Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited.
> If you are not the intended recipient, you may reply to the sender and should delete this e-mail immediately.
> ----------------------------------------------------------------------
> ----------------------------------------------------------------------
> -------------------
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
