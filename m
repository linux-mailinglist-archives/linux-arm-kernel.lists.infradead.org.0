Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03401180A07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 22:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OYvoic9dC11NZsj9VY3UFaXO1KmXZNlzM9u/ezGxcY=; b=H+h0wjvzDRyofr
	FPDp8pVXxexzIy26egAT0QhCDMPIa+Fp6ic2y9e8DOplYdz8NzI5AMFcRn/4BpnpQZ/1By+orHOfG
	dTEmEc9U9ZEnM3uIx/z2KYokhBJUf+VI9K3k0q2duHRCBHZY5OvKRoerojAtRepTr5qbVcc3VIifQ
	6dUykemwg0cq9gPrcDyPvjWJbXyr3cN6AgBwsxlMNJf1vQXsFVStpgIeCBYlP9EVHdOeYKVkJ7ZM8
	1XFOboszeyh38eUUDDbo4yNQNTDZUKJifetQy1M6KHBlZHT/tT+z1Mm0qeocquugSNR6paB1wQRWj
	XyUorL9NjnHATEON6MKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBm9L-000203-Vv; Tue, 10 Mar 2020 21:10:51 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBm9C-0001zT-UU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 21:10:44 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48cSRf45ZMz1qsjg;
 Tue, 10 Mar 2020 22:10:38 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48cSRf2ffVz1qyDb;
 Tue, 10 Mar 2020 22:10:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7Ygpp5JsczNY; Tue, 10 Mar 2020 22:10:37 +0100 (CET)
X-Auth-Info: QSZ5Zfc7Oai4oW1s2QOL+tgYCSKN0uYje12uiKBbs4k=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 10 Mar 2020 22:10:37 +0100 (CET)
Subject: Re: [PATCH] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit support
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200309200807.34335-1-marex@denx.de>
 <6c8d69ff4f6e4c7f8a1642d97ddc7dec@dh-electronics.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <3aaa5319-f815-5e69-ea44-632bd7a6a389@denx.de>
Date: Tue, 10 Mar 2020 22:10:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <6c8d69ff4f6e4c7f8a1642d97ddc7dec@dh-electronics.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_141043_133693_502A3AA3 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/10/20 10:08 AM, Christoph Niedermaier wrote:
> Hi Marek,

Hi,

> From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org] On Behalf Of Marek Vasut
> Sent: Monday, March 9, 2020 9:08 PM
> 
>> +	display_bl: display-bl {
>> +		compatible = "pwm-backlight";
>> +		pwms = <&pwm1 0 50000 PWM_POLARITY_INVERTED>;
>> +		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
>> +		default-brightness-level = <8>;
>> +		enable-gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
>> +		status = "okay";
>> +	};
> ...
>> +&pwm1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_pwm1>;
>> +	status = "okay";
>> +};
> 
> To get PWM_POLARITY_INVERTED, shouldn't we add the following line to pwm1:
> #pwm-cells = <3>;

It seems some boards do set it, some do not, although that might also be
a bug in the DT of those other board files or I'm reading it wrong.
Let's see what the maintainers have to say.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
