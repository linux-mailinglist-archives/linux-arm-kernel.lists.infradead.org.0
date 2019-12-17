Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E21512271A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FEqWfxwU/3DhKuI/Tv6dC3tT/TY5xhzlgxPPf34vkmI=; b=NMM/z5MCY+uBFDjmSElCighyk
	HQ0rDplxTJh3c7+ml15JDOOvyVlOKNj+L7Gq/QDKeyhSMXLLVXg14KPH+7pYPvruteEEBiWq3Qkcv
	03laTpbiu7ZmivP3wBKzAiqWGtzCoSSA7Q4w+QCORiRTt5R6yeM4/xP26sIbc0UQs1YDARhw5Q/RO
	iNhHjt5qL88flI5A9j2+F489LBGCKLiduYhvYt7r2G6zb/Pcdn0hJn7C0n9LiUXywTQ3pdg9pk9Ii
	mbgRGWx3T9epHe2BWEohZwwWX0jEfBnne6dwyUvLk523/ZiqFLzpghmsX1ZpvALeACOmbcj3SRsZh
	4VmcV8gbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8bt-0004ne-MZ; Tue, 17 Dec 2019 08:53:41 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8bd-0004kz-SI
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 08:53:27 +0000
Received: from fsav403.sakura.ne.jp (fsav403.sakura.ne.jp [133.242.250.102])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xBH8rDNq089476;
 Tue, 17 Dec 2019 17:53:13 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav403.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav403.sakura.ne.jp);
 Tue, 17 Dec 2019 17:53:13 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav403.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xBH8rDMm089472
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Tue, 17 Dec 2019 17:53:13 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v3] arm64: dts: rockchip: split rk3399-rockpro64 for v2
 and v2.1 boards
To: Heiko Stuebner <heiko@sntech.de>
References: <20191202055929.26540-1-katsuhiro@katsuster.net>
 <6656576.A7zHEAv81k@phil>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <c7a6427d-9a11-a83e-82dd-d799fc0f72ce@katsuster.net>
Date: Tue, 17 Dec 2019 17:53:13 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <6656576.A7zHEAv81k@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_005326_144046_B02D10B3 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Heiko,

On 2019/12/16 19:04, Heiko Stuebner wrote:
> Hi Katsuhiro,
> 
> Am Montag, 2. Dezember 2019, 06:59:29 CET schrieb Katsuhiro Suzuki:
>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>> v2.1 boards.
>>
>> Both v2 and v2.1 boards can use almost same settings but we find a
>> difference in I2C address of audio CODEC ES8136.
>>
>> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>
>> ---
>>
>> Changes in v3:
>>    - Add compatible strings for v2.0 and v2.1 boards
>>
>> Changes in v2:
>>    - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>>      rk3399-rockpro64-v2.1.dts
>> ---
>>   .../devicetree/bindings/arm/rockchip.yaml     |   2 +
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3399-rockpro64-v2.dts |  30 +
>>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 759 +----------------
>>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 763 ++++++++++++++++++
>>   5 files changed, 800 insertions(+), 755 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index d9847b306b83..8d8658613c57 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -409,6 +409,8 @@ properties:
>>   
>>         - description: Pine64 RockPro64
>>           items:
>> +          - const: pine64,rockpro64-v2.1
>> +          - const: pine64,rockpro64-v2.0
>>             - const: pine64,rockpro64
>>             - const: rockchip,rk3399
>>   
> 
> applied for 5.6 with a changed binding. If you need a
> "one-of-many" element it should use an enum ... see the rk3399-firefly
> and other boards for example. So I've adapted the patch accordingly:
> 

Thank you for pointing and fix.
I will do as that for next time.


> @@ -409,6 +409,9 @@ properties:
>   
>         - description: Pine64 RockPro64
>           items:
> +          - enum:
> +              - pine64,rockpro64-v2.1
> +              - pine64,rockpro64-v2.0
>             - const: pine64,rockpro64
>             - const: rockchip,rk3399
>   
> 
> Heiko
> 
> 
> 

Best Regards,
Katsuhiro Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
