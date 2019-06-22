Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F44F64E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 16:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EvUmDpbFDD4STc/zrKMUEQuKGYX6p+BV+Xii/xXZebc=; b=EyNv4NqaAM83pgtNeniRK2bFq
	QGDAIS4NvUmk2aE5UJlVy2RbgsNmAcAioN3ksot8bqkQ9k07uFb5rj9oIrm8jdmazDWZzo1P90nJd
	9pRfB0vt4d5xZFvV1j+9n9FPOi0C4for5TdUV1CCu4d+o0mX0PlQ+XaN3llEy+gDsgJFrDCqMwtb1
	qRSYdL18WUksXfmcHCmTVAMAMNubDXfmYwVtiKgmzdHuKzPciic1WNuIeo7NasEQzVXQZ3qC0Jh33
	4Jxk2yGEbz71PONiY+ZCpn6T4e1izyq0a4njYMnJ+rHMtWjixjy7r7xkTCVbLeEni76CfO4WjyCf0
	WlhMxEEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hehLU-0000Bi-Na; Sat, 22 Jun 2019 14:50:24 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hehLK-0000BK-He; Sat, 22 Jun 2019 14:50:16 +0000
Received: from fsav302.sakura.ne.jp (fsav302.sakura.ne.jp [153.120.85.133])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x5MEoBSI050936;
 Sat, 22 Jun 2019 23:50:11 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav302.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav302.sakura.ne.jp);
 Sat, 22 Jun 2019 23:50:10 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav302.sakura.ne.jp)
Received: from [192.168.1.2] (118.153.231.153.ap.dti.ne.jp [153.231.153.118])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x5MEoAQH050929
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Sat, 22 Jun 2019 23:50:10 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] ARM: dts: rockchip: add ethernet phy node for tinker board
To: Heiko Stuebner <heiko@sntech.de>
References: <20190621180017.29646-1-katsuhiro@katsuster.net>
 <1871177.hjLhdHVgcu@phil>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <ccf5ad2c-bd56-2d77-4728-d7906045e302@katsuster.net>
Date: Sat, 22 Jun 2019 23:50:10 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1871177.hjLhdHVgcu@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_075014_807161_AB36DFE4 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Current linux-next on my environment, 'ifconfig eth0 up' does not
work correctly with following message...

-----
root@linaro-alip:~# ifconfig eth0 up
[  105.028916] rk_gmac-dwmac ff290000.ethernet eth0: stmmac_open: Cannot 
attach to PHY (error: -19)
SIOCSIFFLAGS: No such device
-----

I checked drivers/net/ethernet/stmicro/stmmac/stmmac_main.c and found
stmmac_init_phy() is going to fail if ethernet device node does not
have following property:
   - phy-handle
   - phy
   - phy-device

I salvaged old version of linux-next kernel (5.2.0-rc1-20190523),
network device of my Tinker Board worked correctly if use it.

I have not bisect commit of root cause yet... Is it better to bisect
and find problem instead of sending this patch?

Best Regards,
---
Katsuhiro Suzuki


On 2019/06/22 17:33, Heiko Stuebner wrote:
> Hi,
> 
> Am Freitag, 21. Juni 2019, 20:00:17 CEST schrieb Katsuhiro Suzuki:
>> This patch adds missing mdio and ethernet PHY nodes for rk3328 ASUS
>> tinker board.
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> just for my understanding, which problem does this solve?
> Normally the gmac can establish connections just fine on
> the rk3288 by probing the phy in the automatic way.
> 
> And I also don't see any additional properties like phy
> interrupt line below.
> 
> 
> Thanks
> Heiko
> 
>> ---
>>   arch/arm/boot/dts/rk3288-tinker.dtsi | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
>> index 293576869546..3190817e8d5d 100644
>> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
>> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
>> @@ -117,6 +117,7 @@
>>   	assigned-clocks = <&cru SCLK_MAC>;
>>   	assigned-clock-parents = <&ext_gmac>;
>>   	clock_in_out = "input";
>> +	phy-handle = <&phy0>;
>>   	phy-mode = "rgmii";
>>   	phy-supply = <&vcc33_lan>;
>>   	pinctrl-names = "default";
>> @@ -127,6 +128,17 @@
>>   	tx_delay = <0x30>;
>>   	rx_delay = <0x10>;
>>   	status = "ok";
>> +
>> +	mdio0 {
>> +		compatible = "snps,dwmac-mdio";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		phy0: ethernet-phy@0 {
>> +			compatible = "ethernet-phy-ieee802.3-c22";
>> +			reg = <0>;
>> +		};
>> +	};
>>   };
>>   
>>   &gpu {
>>
> 
> 
> 
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
