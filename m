Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274421D54BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4PUBZzl+AVnkQSYuVUf8yN9+Dz3fO42vZpMw+Maqzuw=; b=f8ThS5zDAPPTwT9e/LWkx0wzJ
	6LZYf8Ah6T1zPIeufgJyH0+ou/J4n101qcSeKzmX9k9N1thdy7CVqePuNG4z+qk2QLDIAL/O0SRxe
	dXq26bjlv2LViD5vmocuzrp0L/GSAseL03c/TEZX61ZxuIUIFpLHWXIEsbd3M8WRqY00t/XBkUI2c
	EOX8ct0KnWx0Tk1yppxoJvvRFKFxemGp07CLS+KjttVHuvHRwN21w7Vm35Uc3liHpa7jfEKNOf7RP
	omTRyyUN63Xc13vRSrMY1IJgBc/0cApmQDJnRDh/L5gYBeNljD0AzmJvaQIJhnXuVJX2LjZjMnVoD
	FJCQ7D+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcIX-0002J7-Is; Fri, 15 May 2020 15:30:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcIM-0000yA-KF
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:30:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26C1D2F;
 Fri, 15 May 2020 08:30:40 -0700 (PDT)
Received: from [10.57.27.64] (unknown [10.57.27.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C26B23F71E;
 Fri, 15 May 2020 08:30:37 -0700 (PDT)
Subject: Re: [PATCH 06/14] arm64: dts: sparx5: Add basic cpu support
To: Lars Povlsen <lars.povlsen@microchip.com>,
 Marc Zyngier <maz@misterjones.org>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-7-lars.povlsen@microchip.com>
 <2d230dab95ee96727a42f9c242c93c18@misterjones.org>
 <871rnlp740.fsf@soft-dev15.microsemi.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <18c0d9ef-9a2b-31d0-b317-f051bb26a907@arm.com>
Date: Fri, 15 May 2020 16:30:36 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <871rnlp740.fsf@soft-dev15.microsemi.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_083042_719405_F4B37B03 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, SoC Team <soc@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Olof Johansson <olof@lixom.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-15 16:09, Lars Povlsen wrote:
[...]
>>> +             cpu0: cpu@0 {
>>> +                     compatible = "arm,cortex-a53", "arm,armv8";

Side note: only one compatible string for the real CPU please, running a 
DT bindings check should complain about that.

>>> +                     device_type = "cpu";
>>> +                     reg = <0x0 0x0>;
>>> +                     enable-method = "spin-table";
>>
>> Really? This is 2020, not 2012 any more. Surely a new platform
>> boots using PSCI, and not *this*.
>>
> 
> We don't currently support PSCI. The platform does not have TrustZone,
> hence we don't use ATF.
AIUI, part of the purpose of ATF is to provide a nice standardised 
platform interface regardless of whether you care about Secure software 
or not. It shouldn't take much to knock up a trivial ATF port that just 
uses an internal spin-table for its PSCI backend - in fact I suspect 
that's probably just a copy-paste from the RPi3 port ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
