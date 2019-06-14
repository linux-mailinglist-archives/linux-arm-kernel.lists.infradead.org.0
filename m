Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC61D45A0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v6oiG04gaIKXKVEBewpzmIi82wZQsP5Px8Mri6W60tY=; b=EKD7oZHQEoveT5PUceOlZmX9A
	gctF743SM4gy/AycuK6+40GfoFtMqLnWMLETKm1HCk9BUYUcvaXi1Vl8Q6PzazMg68Mwp9bJiKlG1
	0LnUu3BNWJ4oylXxQNZgXWAYQnK/qZsLSVP300LDme7oLHy+nisHIJM7VTLcHnvVS0P9PInRzgRq6
	CrVnZVzx5yUI5xHpp/77VQuWzQ7Fx44nkvMKnS8ga2FXwz4+K2OJGWYro34h6Aq43ILzYv/c9fthQ
	3YGXJnpL6iFxvE4hjmlaBSsbXipUDNUuaEikEltJYnCiMiH1nUpZJlgREm9dwAfTpzTP2t6tsKCoU
	29srM14Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjAM-0001D0-8p; Fri, 14 Jun 2019 10:10:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbj9J-0007sz-N4; Fri, 14 Jun 2019 10:09:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F06ED2B;
 Fri, 14 Jun 2019 03:09:30 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E6443F246;
 Fri, 14 Jun 2019 03:11:12 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
To: Heiko Stuebner <heiko@sntech.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3ee47d34-bf71-9e53-9387-7407865d3110@arm.com>
Date: Fri, 14 Jun 2019 11:09:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5188064.YWmxIpmbGp@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_030933_864275_C526CFF1 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, dianders@chromium.org, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/06/2019 10:35, Heiko Stuebner wrote:
> Hi Daniel,
> 
> Am Dienstag, 4. Juni 2019, 18:57:57 CEST schrieb Daniel Lezcano:
>> Currently the common thermal zones definitions for the rk3399 assumes
>> multiple thermal zones are supported by the governors. This is not the
>> case and each thermal zone has its own governor instance acting
>> individually without collaboration with other governors.
>>
>> As the cooling device for the CPU and the GPU thermal zones is the
>> same, each governors take different decisions for the same cooling
>> device leading to conflicting instructions and an erratic behavior.
>>
>> As the cooling-maps is about to become an optional property, let's
>> remove the cpu cooling device map from the GPU thermal zone.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 ---------
>>   1 file changed, 9 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 196ac9b78076..e1357e0f60f7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -821,15 +821,6 @@
>>   					type = "critical";
>>   				};
>>   			};
>> -
>> -			cooling-maps {
>> -				map0 {
>> -					trip = <&gpu_alert0>;
>> -					cooling-device =
>> -						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>> -						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>> -				};
>> -			};
>>   		};
>>   	};
> 
> my knowledge of the thermal framework is not that big, but what about the
> rk3399-devices which further detail the cooling-maps like rk3399-gru-kevin
> and the rk3399-nanopc-t4 with its fan-handling in the cooling-maps?

FWIW, my knowledge of thermal is probably even less :)

For NanoPC-T4 I think I more or less just took Odroid-XU3/4 as the best 
pwm-fan example and adapted that into the existing RK3399 zones in the 
manner which seemed most logical to my interpretation - if what was 
there wasn't right to begin with, then I may well have done that wrong too.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
