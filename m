Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F8A1BA79A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oXYRRrxaPFxTADZ2gpn0zrtw+guL/6u6r/wVOHJtGuo=; b=dv97cfv1ED8QmYRRRC5zT16oS
	wqiszksFilnMQUw/vOTSO0FuAIvz9wFmZi8brW76Q4BqXh1t6ZVlhpLeT6Alg8ZFzXkN0ahOFDJw7
	bpkWssXyhVk6yhwjDbIPZwokGRxbfdar6XXhyl+CYdsBSxP2q9uh/RhiUhCC7R9daav68ltc6odXl
	dV7RKd/RKKj676SW/NktC/9KfvLit7Fw72lkWOpSha0IqmUBBIw7St7Y3AuMqxN2f1nK0MYZCmeQ1
	+j23cdfN4K1LO3mUnYc/Bz087Iyr9+L2nCR3yEZXKqvm6EwkFwZwCRCXOGmBdckrhRrNJWm33E7aW
	eaCBf2QKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5Sl-0008Ft-2F; Mon, 27 Apr 2020 15:14:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5SQ-00086y-DR; Mon, 27 Apr 2020 15:14:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA71A31B;
 Mon, 27 Apr 2020 08:14:02 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9BCC3F68F;
 Mon, 27 Apr 2020 08:14:00 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
To: Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
 <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
 <CAGb2v65fGYguNoksq5Dyx3HTKeYg+U82TiQSL+NO8AUcQJQj5w@mail.gmail.com>
 <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
 <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <94e7671f-2d11-b2f7-e049-b90893c61ab2@arm.com>
Date: Mon, 27 Apr 2020 16:13:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_081406_501276_751417A7 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org, dmurphy@ti.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-27 3:12 pm, Johan Jonker wrote:
> Hi,
> 
>>> So for fixing up the LED node names, we'd probably want the following:
>>>
>>>      diy_led: led-0
>>>      yellow_led: led-1
>>>      work_led: led-2
> 
> Change proposal for led nodes to comply with preexisting dts.
> Does this work?
> 
> diy_led: led_0: led-0
> yellow_led: led_1: led-1
> work_led: led_2: led-2

Yuck, why?

Labels are simply human-readable source annotations for the sake of 
referencing nodes more easily. Meaningful label names - that correlate 
to SoC or board components, schematic names, or physical labels on the 
board/device - make the DT sources easier to read, review, and maintain. 
There are a handful of cases where one node might have multiple labels, 
e.g. if two logical supply nets come from the same regulator on certain 
board variants, but there is zero point in defining redundant labels 
that just meaninglessly echo the DT's own structure.

> blue: led_0: led-0
> 
> A check does not give any warnings.

I should hope not. Labels are there to be consumed by DT compilers (and 
whatever symbolic overlay handlers count as... DT linkers, maybe?) - 
they have no business being within the scope of the bindings that define 
a contract for system software consuming the final DTB.

Robin.

> make -k ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
> 
>>
>> That doesn't look pretty either.
>> Would like to hear the maintainers view on how to handle other cases
>> without 'led' like for example 'blue' for mk808.
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
