Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736D31ADC76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 13:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fenPTdJHciU7/r6L6SRpV1QhdMx2Ju8RbKTTxOvje+c=; b=eNNO/lEGVmCxxSqLIvqjtSXag
	Q5RFPQk6P1qzrrc7OCPmCQqhdENhxUXN2M7zKZHJPa4iAZU8anBnb8w5QIc7ce0lD5cPLpcKOyVwN
	14udda/PrSnDiN8gIfb15JRimgkpdIArr+xlpOOZyPqk48Z/6pkBxTjn2WVhFtSrLjb3aMACmeG0W
	ocUYIyt5Zn/S0DIbJk/ZyOItcH25S8a8M96g8GCDEZZgP2k/8A4v9cs3XlReVf8tJIVVU8qQOmVY2
	NWuKMgClVYJQpCLQPbWuY/kRrWMJDeMYVEAx7PxpgMRU3C91LbyaU08Ms/Oc7pJrCrvW7bXu4WxtE
	OeoYj4/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPWt-00064v-Uw; Fri, 17 Apr 2020 11:51:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPWm-000649-25; Fri, 17 Apr 2020 11:51:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6E1530E;
 Fri, 17 Apr 2020 04:51:18 -0700 (PDT)
Received: from [10.57.59.184] (unknown [10.57.59.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 984933F6C4;
 Fri, 17 Apr 2020 04:51:17 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: dts: rockchip: add core devicetree for rk3318
To: Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>
References: <20200417105739.3718-1-jbx6244@gmail.com> <2141402.AJMLQ3pQEO@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6d5a1d27-8d32-eca2-007c-aa0bed81af46@arm.com>
Date: Fri, 17 Apr 2020 12:51:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2141402.AJMLQ3pQEO@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_045124_146519_6947B3B9 
X-CRM114-Status: GOOD (  19.98  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-17 12:05 pm, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 17. April 2020, 12:57:39 CEST schrieb Johan Jonker:
>> The rk3318 is basically a rk3328 with improved gpu,
>> so add a dtsi based on that.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> Please don't add dangling dtsi files.
> I'd expect at least a board dts to actually use that and
> also the updated gpu node.
> 
>  From a cursory glance it looks like it gets upgraded from
> 450-MP2 to 450MP3 or so, so that would at least mean
> another set of interrupts.

I'm not sure anything's "improved" - as far as the internet can tell 
it's a special low-cost variant of RK3328 for low-end TV box vendors 
that Rockchip don't want to talk about. The DTB for my H96 Max 3318 
shows no appreciable difference from the BSP DT for RK3328, although I 
wouldn't be surprised if some of the unused stuff like the external GMAC 
was actually missing or broken. The board itself is the exact same one 
used in a lot of other cheap RK3328 boxes (and I mean literally, it's 
silkscreened "RK3328_8D4_V1.2").

Thanks to one unexpectedly honest Aliexpress listing I stumbled across, 
the "penta-core GPU" apparently translates from TV-box-marketing-speak 
to mean Mali-450 MP2 (1GP + 2PP) plus the RGA plus the VOP ;)

Robin.

> 
> Heiko
> 
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3318.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3318.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3318.dtsi b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
>> new file mode 100644
>> index 000000000..a32f771bc
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
>> @@ -0,0 +1,3 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +#include "rk3328.dtsi"
>>
> 
> 
> 
> 
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
