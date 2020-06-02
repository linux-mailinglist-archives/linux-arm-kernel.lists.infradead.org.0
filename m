Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0129C1EB8CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YCNO0a1GG33VOHQtZ5lmXVkKQXtSOwR9SF7wQqZYHms=; b=K3CcGtuLDfzM3E4nKIGn7EoZLP
	VsH3sp1QFiZlDco22cFfZiOGp8qIdEjHvFbJhin6ImPQhQQNGimeIEBVrgzBMoMw28SEj6JrFuKHs
	wGe/FkP0NmSDyXxitoFExwPnr16IkPTwLa/rXVbjKsZxkdotXNtm6myxhZnQm95eP11c0eDpwCaYS
	gGX7oeiY+u4kfqkfgTxzMqqFFeOjDtFLXEJnN5WIx/5NIxtRLkssfhi0bQgaK028PFEUEme/Ea6S7
	Gmio7xhDk5pWxQuKQN8H2J1d1uBpCg7Ah1aM9AjDooISeMz7doVOVkrH8aT+3ildF19GqVVnj8gaN
	g8syZn3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3Xv-0003oW-Hl; Tue, 02 Jun 2020 09:49:23 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3Xl-0003nZ-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591091353; x=1622627353;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=XYWvcTMnu5gYjXeMs5ChljnhBkkNboMpnYYArlKHA2Y=;
 b=hmU8VbGnEYkQbF2Zs1wDA1SfyFR2klxwok2QZKB7SAi3lomGO9TII38J
 T7XZQSwOrzLU5ij42c/eedRrG/cXOrsBvPd2N/3kaECRwNsrBqg4GPQ/H
 hRQVee+nU0NHO32ovcGuYDhSijCyAKHl5VYOALg23qv+I4n1s7DG6vLZ1
 c/k1Gpkl1UNwuoajMAX9XeECIOaPJcT9RgL//wYvY9xjnkplJCeIvu3rs
 wo7RtZ+m22K5X4Ys44ZMVmHZT35F6bDhd97ugJ5bwL0e1U353KJEGKZ2M
 QuYFws+5oJSTtRWR3paILI6ylGHwW9UK7egpsQ9iysdP/JRyPRyBA2T5u w==;
IronPort-SDR: vkMrKR4DTnFoAhQgn4Xj1OqpqZBjuz9tFOz8GKffkGjDmng3TRtTay4RgFkq7ULrjECwGmLp2m
 MdaD91OpomcTxZoazsPtP8rBvk1J/QPwvHPriOj4gjHo6X3yW+V7odKuskYGG/vk5coh3y+k4v
 5vkWGsKDTL2niv/nkykeYnFTG4jIV0YXk4WAsd2uVrVbQ89uuxfPhB3A8oxGLQzsiG5teIAGDZ
 GxjzyHPPXkMhugow9mwMqubhKeLm9tfEeYLqLs8YPwhZ3VbI/aLrVZOqNwif5U3PoYtoSP0QBS
 LIk=
X-IronPort-AV: E=Sophos;i="5.73,463,1583218800"; d="scan'208";a="78594449"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jun 2020 02:49:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 2 Jun 2020 02:49:12 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 2 Jun 2020 02:49:09 -0700
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
 <20200513130842.24847-4-lars.povlsen@microchip.com>
 <20200528022502.GA3234572@bogus>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 3/5] dt-bindings: reset: ocelot: Add documentation for
 'microchip, reset-switch-core' property
In-Reply-To: <20200528022502.GA3234572@bogus>
Date: Tue, 2 Jun 2020 11:49:08 +0200
Message-ID: <87wo4piyqz.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_024913_134498_0DC96FF6 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Rob Herring writes:

> On Wed, May 13, 2020 at 03:08:40PM +0200, Lars Povlsen wrote:
>> This documents the 'microchip,reset-switch-core' property in the
>> ocelot-reset driver.
>>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  .../devicetree/bindings/power/reset/ocelot-reset.txt        | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
>> index 4d530d8154848..20fff03753ad2 100644
>> --- a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
>> +++ b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
>> @@ -9,9 +9,15 @@ microchip Sparx5 armv8 SoC's.
>>  Required Properties:
>>   - compatible: "mscc,ocelot-chip-reset" or "microchip,sparx5-chip-reset"
>>
>> +Optional properties:
>> +- microchip,reset-switch-core : Perform a switch core reset at the
>> +  time of driver load. This is may be used to initialize the switch
>> +  core to a known state (before other drivers are loaded).
>
> How do you know when other drivers are loaded? This could be a module
> perhaps. Doesn't seem like something that belongs in DT.
>

The reset driver is loaded at postcore_initcall() time, which ensures it
is loaded before other drivers using the switch core. I noticed other
drivers do the same to do low-level system reset and initialization at
early boot time.

> Can this behavior be implied with "microchip,sparx5-chip-reset"?

Since we need to cater for both modus operandi, I would need two driver
compatible strings per platform, which scales worse than a single
property.

The "microchip,reset-switch-core" is a device configuration property
which tells the system (driver) how the hw should be handled. Since you
do not *always* want to reset the switch core (f.ex. when implementing
systems with warm reboot), I think it makes perfect sense - but I may be
biased off course :-)

Thank you for (all) of your comments, by the way!

---Lars

>
> Rob

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
