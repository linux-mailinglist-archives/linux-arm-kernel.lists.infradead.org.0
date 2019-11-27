Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B837810AAE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 08:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mfEGcz8gWVq5Z4h8bPZJ3XcT93TjAl00Nb2k50Au9Po=; b=ZDxV7yzVzehfKHsEsgWTLmfZc
	qPefxt7BA/BdHDN+g3kojW4tq4Q9xFN+AcgGFP8fMjJjw/lfI1DrvbKe1cEch9ozdazyD0bxN+WsE
	OYex+WBnEsaBIe9/hc0R1TIAcKpztX1YBq6UYSJtmSy+sVwvyojxmmlRspZtqpdsshFHReUHSJdDc
	oQeZsQ/YowPxv5yrsw7WAwee2ohgIsKdx09+6+xI8JdWVu5foMUO5ArNb4HkqXbTAEWSnOnCLOesU
	Kc0Q6+Rt0fechB8Qh+Ou8PFO171Q3XdHi4CNamOSSPDlRFJl7hsQZE438grZxk9PyLAqQKtqmVv1O
	X/p46sQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZrQY-0001eq-ER; Wed, 27 Nov 2019 07:07:54 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZrQR-0001e5-0s
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 07:07:48 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 26 Nov 2019 23:07:44 -0800
Subject: Re: [PATCH 1/1] arm64: dts: allwinner: a64: olinuxino: Add VCC-PG
 supply
To: Maxime Ripard <mripard@kernel.org>
References: <20191126110508.15264-1-stefan@olimex.com>
 <20191126162721.qi7scp3vadxn7k2i@gilmour.lan>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <0c1d7377-7064-f509-ffc5-bd1e8f2fbaa8@olimex.com>
Date: Wed, 27 Nov 2019 09:07:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126162721.qi7scp3vadxn7k2i@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_230747_060815_475C4BA1 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stefan Mavrodiev <stefan@olimex.com>,
 linux-sunxi@googlegroups.com, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/26/19 6:27 PM, Maxime Ripard wrote:
> Hi Stefan,
>
> On Tue, Nov 26, 2019 at 01:05:08PM +0200, Stefan Mavrodiev wrote:
>> On A64-OLinuXino boards, PG9 is used for USB1 enable/disable. The
>> port is supplied by DLDO4, which is disabled by default. The patch
>> adds the regulator as vcc-pg, which is later used by the pinctrl.
>>
>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>> ---
>>   arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>> index 01a9a52edae4..c9d8c9c4ef20 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>> @@ -163,6 +163,10 @@
>>   	status = "okay";
>>   };
>>
>> +&pio {
>> +	vcc-pg-supply=<&reg_dldo4>;
> The equal sign should have spaces around it.
>
> Also, can you please list all the bank supplies while you're at it?
Sure. Should the supplies defined as regulators names be added also to 
the pio node?
For example reg_aldo1 is named "vcc-pe".

Also, since the commit message will be different for better 
representation of the changes, should I send the next
patch as v2 or as a new one?

Best regards,
Stefan
>
> Thanks!
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
