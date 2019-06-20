Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603314C867
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CZeRAE201Emw/SWtO2mO/c8+5LyIluDnxuhd/rIaR8=; b=sc9vZDQxRDKMDj
	Axo3QIfeAGQRttEwZoVD3iHlpvRWKXggbFm8BggqcEd6HccoRvkZ+yhFF3MpkEVo/IoMt4FM5I+4p
	TH3twfL7LtUMVh76/Sx9wfUf7jvPBcseMBdjS7K/C8HnbBxZo1+4c7ER2hAVB6l5v9AVNyw3s0iK2
	N+uCEryuLKlCu7egIRgLqCL14/SWeUDRhk+t1Gv93m01wJkV9+nsKvPJ8a1dWIFW48/GzEnr1jcjX
	f7oHTEG891xv6vlvu6gfXRRfS6tLsBMlszoSEtrU+GFAl8LO5i90I7Vz38s7RQuVzzU1sXXWu4x1Z
	js23AADXK/jCwum8s/gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrWo-0000wi-1a; Thu, 20 Jun 2019 07:30:38 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrWa-0000w1-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:30:26 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id x5K7KDXr014182;
 Thu, 20 Jun 2019 15:20:14 +0800 (GMT-8)
 (envelope-from ryan_chen@aspeedtech.com)
Received: from TWMBX01.aspeed.com (192.168.0.23) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Thu, 20 Jun
 2019 15:29:55 +0800
Received: from TWMBX02.aspeed.com (192.168.0.24) by TWMBX01.aspeed.com
 (192.168.0.23) with Microsoft SMTP Server (TLS) id 15.0.620.29; Thu, 20 Jun
 2019 15:29:55 +0800
Received: from TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7]) by
 TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7%12]) with mapi id
 15.00.0620.020; Thu, 20 Jun 2019 15:29:53 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>
Subject: RE: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Topic: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Index: AQHVJuImmMOIiyHRlUqwfYHYZy+Y4aai9yiAgAASyACAARtXMA==
Date: Thu, 20 Jun 2019 07:29:53 +0000
Message-ID: <c610ecede7494c189a92a9a3f6d0fd16@TWMBX02.aspeed.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
In-Reply-To: <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.0.81]
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x5K7KDXr014182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_003024_619775_6F49449E 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.20.114.71 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Tao,
	Our recommend about clk divider setting is follow the datasheet clock setting table for clock divisor. 

Ryan  
 
	

-----Original Message-----
From: Linux-aspeed [mailto:linux-aspeed-bounces+ryan_chen=aspeedtech.com@lists.ozlabs.org] On Behalf Of Tao Ren
Sent: Thursday, June 20, 2019 6:33 AM
To: Brendan Higgins <brendanhiggins@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>; devicetree <devicetree@vger.kernel.org>; linux-aspeed@lists.ozlabs.org; OpenBMC Maillist <openbmc@lists.ozlabs.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; linux-i2c@vger.kernel.org
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor

On 6/19/19 2:25 PM, Brendan Higgins wrote:
> On Wed, Jun 19, 2019 at 2:00 PM Tao Ren <taoren@fb.com> wrote:
>>
>> Some intermittent I2C transaction failures are observed on Facebook 
>> CMM and Minipack (ast2500) BMC platforms, because slave devices (such 
>> as CPLD, BIC and etc.) NACK the address byte sometimes. The issue can 
>> be resolved by increasing base clock divisor which affects ASPEED I2C 
>> Controller's base clock and other AC timing parameters.
>>
>> This patch allows to customize ASPEED I2C Controller's base clock 
>> divisor in device tree.
> 
> First off, are you sure you actually need this?
> 
> You should be able to achieve an effectively equivalent result by just 
> lowering the `bus-frequency` property specified in the DT. The 
> `bus-frequency` property ultimately determines all the register 
> values, and you should be able to set it to whatever you want by 
> refering to the Aspeed documentation.
> 
> Nevertheless, the code that determines the correct dividers from the 
> frequency is based on the tables in the Aspeed documentation. I don't 
> think the equation makes sense when the base_clk_divisor is fixed; I 
> mean it will probably just set the other divisor to max or min 
> depending on the values chosen. I think if someone really wants to 
> program this parameter manually, they probably want to set the other 
> parameters manually too.
Thank you for the quick response, Brendan.

Aspeed I2C bus frequency is defined by 3 parameters (base_clk_divisor, clk_high_width, clk_low_width), and I choose base_clk_divisor because it controls all the Aspeed I2C timings (such as setup time and hold time). Once base_clk_divisor is decided (either by the current logic in i2c-aspeed driver or manually set in device tree), clk_high_width and clk_low_width will be calculated by i2c-aspeed driver to meet the specified I2C bus speed.

For example, by setting I2C bus frequency to 100KHz on AST2500 platform, (base_clock_divisor, clk_high_width, clk_low_width) is set to (3, 15, 14) by our driver. But some slave devices (on CMM i2c-8 and Minipack i2c-0) NACK byte transactions with the default timing setting: the issue can be resolved by setting base_clk_divisor to 4, and (clk_high_width, clk_low_width) will be set to (7, 7) by our i2c-aspeed driver to achieve similar I2C bus speed.

Not sure if my answer helps to address your concerns, but kindly let me know if you have further questions/suggestions.


Thanks,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
