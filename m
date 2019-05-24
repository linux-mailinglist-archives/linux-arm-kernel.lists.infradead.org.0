Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E8F2A0D5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 00:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iYhkBVfBLr/T0kp9BxeGkdHzLdknpKBRoIw5CUDXJh8=; b=kzT9o1JVP6N6WaX/dAJJW3KYv
	Bmc8Fg5dYdodwTdL4s+04XYvIPiDTy41jJvhLvBPvfAogNkDu/XDdvk5kWfD4cs18aIGKw3yNdiVk
	3We7UxG4qDzlA4DbEUZPl2tIUqMmDV3dTxSaV3vcaBuMDXXNAFoeWmrnyLRwdmWlVXuR4FVTdRnbU
	fiSalkU8O0NOHNkchRD7A0mXzJ4Z5DTs2pv4nysT4LPD//ycoQpsQlKygZ4d8M1GhPZr4NOGGtkqi
	Z9WNlCyzXc1g7oEJ17udUVUeyaTewqtH2jfo2H3RKMBVERQlDeEGqOzRHWT1O1YR+qIBGaFsWlqL6
	I7kOke5RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIEX-00068H-IT; Fri, 24 May 2019 22:00:13 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIEQ-0005iY-VA
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 22:00:08 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 1542B4E204B; Fri, 24 May 2019 22:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558735205; bh=Ql0cD5JfK/yoXltjS6jKt/CQqtSPm7QpPWra93u8UTM=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=t0f08gxxwNFLW0NebIk/BaI1njSOhzERZPR6qldRKUWUdgWZr/nykIdgrEZ5tXBx7
 H/TK0bpZRHlrxlMR8DjeKiBl7istEYv722fQclR3fBGZkHuHuKDwsu8ZKne6+Oo3e3
 +G3RuN67uhpEN5rb9mt05M8PUKLCAl5kairFbl/4=
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v13 2/4] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Fri, 24 May 2019 15:00:05 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190523191926.GB3803@xo-6d-61-c0.localdomain>
References: <20190520142330.3556-1-angus@akkea.ca>
 <20190520142330.3556-3-angus@akkea.ca>
 <20190523191926.GB3803@xo-6d-61-c0.localdomain>
Message-ID: <1e6c0664949f38452b8f14b901bff513@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_150007_068997_54EEFEF9 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 2019-05-23 12:19, Pavel Machek wrote:
> Hi!
> 
>> - LEDs
>> - gyro
>> - magnetometer
> 
>> +	leds {
>> +		compatible = "gpio-leds";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_gpio_leds>;
>> +
>> +		led1 {
>> +			label = "LED 1";
> 
> So, what kind of LED do you have, and what color is it? label should
> probably be something like
> notify:green.
> 

As we don't have a specific use for these yet does it really matter if 
there is a colour or a number associated with them ?

>> +	charger@6b { /* bq25896 */
>> +		compatible = "ti,bq25890";
>> +		reg = <0x6b>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_charger>;
>> +		interrupt-parent = <&gpio3>;
>> +		interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
>> +		ti,battery-regulation-voltage = <4192000>; /* 4.192V */
>> +		ti,charge-current = <1600000>; /* 1.6 A */
> 
> No space before A, for consistency.
> 
>> +		ti,termination-current = <66000>;  /* 66mA */
>> +		ti,precharge-current = <1300000>; /* 1.3A */
> 
> I thought precharge is usually something low, because you are not yet
> sure of battery health...?
> 

I think I put that in incorrectly. The intention was 130mA.

>> +		ti,minimum-sys-voltage = <2750000>; /* 2.75V */
> 
> Are you sure? Normally systems shut down at 3.2V, 3V or so. Li-ion
> batteries don't
> really like to be discharged _this_ deep.

You are correct. I'll fix it for the next version.

Thanks
Angus

> 
> 										Pavel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
