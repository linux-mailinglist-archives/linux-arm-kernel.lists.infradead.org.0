Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3500D1AEC5E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDTEKaRTW+CCPOIbQPfBkv8gmK8QfI5l1kGsp0g3cDI=; b=TgU+IgUhst5OQT
	p8z9zeDlMcYh/e2IC92Mr3G0mDj/tb0o2Zj1vFt1cpP+suEdoyRMeaFRQd90Dtandmq4hBLfYTyx2
	yf/E2RNBvTmXezoh9JDplNvZVY3/FbStRsYiGWE0BjjPUvI2e7XfXVTEAV+QJWtv3D6uF7cV8XCRr
	NMeL8XhwAkaQuApxd0m8FNcFYu5iXegTOu9hVAg+00+t8nWdJwlWVNaLx27flVXS9LQeTh0aZ6ng6
	V3wlKdjV1Xi6FprmAZEayDcO8+uTSLUrvyRdxnJBXrSvBsDABTH4UC11LiZK+aklYmmUvMzJt3qgG
	AeGefw1RmY7PbO64p7NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmNN-0000SS-O6; Sat, 18 Apr 2020 12:15:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmMz-0000QN-5Z; Sat, 18 Apr 2020 12:14:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so5726361wmh.0;
 Sat, 18 Apr 2020 05:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f+xMR+KYzCgzYlW1x4Og/ZLSKx3U5B8Ky3smGBm8ZHA=;
 b=koe5NkvTdWegoN30UZTYBcRaxprT1wTS0WqnTAbfD8B4oBWVkTSEqoj+1yIpB/qPiV
 ondEhRv6v/0G/SyDhcn0t/WmOPmyjDrfge1QkFKA+oRl07dvL613Vq/D8u93n3qt7U42
 FLe6mDe9LYxN36yCaI/+nOkdw02d0TgkgjwyXWf6FxtJk+7Cy7uiOtaObxKrUH6lAst2
 mP3wJ4gn5ZjUWKlP0li8NkjDPDSFgJomwczytkyqePEGoq9lfcTTCtthyxd6cZgwbHQ8
 HDXCuSdNftLEaY8W8+SbZ6FYchlOOLsYXjg8cdsSCSYsiMXf3TuOI66csYo3OddvAUqU
 KkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f+xMR+KYzCgzYlW1x4Og/ZLSKx3U5B8Ky3smGBm8ZHA=;
 b=s+YyZDWncz15bw3xYjt5qMZBEHm9DSNyqgBWtFpOE8xiPDKMsq+2/bCQAhhYdNkIce
 9MPrt1piQ1y4RctY+O2szp/MJpBLs0jQe3Ok43Pzo3xOAlyqFmDEFGfCNO7H7VpZFsPa
 qjlXaOgi37DMfk7/4BkFE6izuXCOXUgVH2xS7TxP3PGs0GvcQV1umtcibD9Uq/Fa2G+S
 VZ0wcwkTRgzF3MYtEQy6Xd9Yi+8wdgWb5zpUrNgieJGAo7nabopVVX+DlQ1/OrSIaHqB
 c4bSXCEcj0aphwSm67ytcP65RYwEsZ7RzMD4iaqT26DGunNzrNvLaYFacn2WZXi0NlLv
 KeBA==
X-Gm-Message-State: AGi0PuYdsT5AZ5qgCavLGGdZIx5+le/7usRASH/mi/YjVNqe4m9vV8KF
 HRY5S9r735f1hcY8J5vFPFs=
X-Google-Smtp-Source: APiQypLstfRt6XI+FJgsZSB8kYksMAzORNwekKGiJB7VWHJq2V546ps+cjXl1idfaq0d3MMRzVBZ9A==
X-Received: by 2002:a1c:3105:: with SMTP id x5mr8366565wmx.51.1587212087665;
 Sat, 18 Apr 2020 05:14:47 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i97sm37891167wri.1.2020.04.18.05.14.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 05:14:47 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
To: Heiko Stuebner <heiko@sntech.de>,
 Justin Swartz <justin.swartz@risingedge.co.za>
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
 <3593382.iQIKm1rSL1@phil> <b77422198df7c285d824086131371284@risingedge.co.za>
 <2533855.f5ZhyS2AsA@phil>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
Date: Sat, 18 Apr 2020 14:14:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2533855.f5ZhyS2AsA@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_051449_236595_767E6F76 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/18/20 12:53 PM, Heiko Stuebner wrote:
> Am Samstag, 18. April 2020, 11:56:03 CEST schrieb Justin Swartz:
>> Hi Johan, Heiko,
>>
>> On 2020-04-18 11:49, Heiko Stuebner wrote:
>>
>>> Am Samstag, 18. April 2020, 11:15:27 CEST schrieb Johan Jonker:
>>>
>>>> Hi Justin, Heiko,
>>>>
>>>> In the discussion about "rockchip,px30-rga" it was mentioned that:
>>>> "no status for soc internal components without any board-specifics".
>>>> The binding is in mainline, but the dts node is missing I think.
>>>> Should this also be changed?
>>>
>>> yep, drop the status disabled from the dtsi and that then results
>>> in not needing the board-level enablement
>>>
>>> (background: rga is a simple mem2mem device without any
>>> board-specific hooks)
>>
>> Shall I submit version 5 of this patch series?
> 
> I guess so ... especially as we expect patch1 to go through the
> media tree and sending a new version might serve as a ping :-)
> and include the Ack by Rob for easy applying

The conversion to rockchip-rga.yaml including rockchip,rk3228-rga is
already reviewed by robh.

> 
> 
> Heiko
> 
> 
>>
>>> Johan
>>>
>>> +&rga {
>>> +    status = "okay";
>>> +};
>>> +
>>>
>>> Add a node to define the presence of RGA, a 2D raster
>>> graphic acceleration unit.
>>>
>>> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
>>> ---
>>> arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>>> 1 file changed, 11 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
>>> b/arch/arm/boot/dts/rk322x.dtsi
>>> index 340ed6ccb..29d50bebc 100644
>>> --- a/arch/arm/boot/dts/rk322x.dtsi
>>> +++ b/arch/arm/boot/dts/rk322x.dtsi
>>> @@ -621,6 +621,17 @@
>>> status = "disabled";
>>> };
>>>
>>> +    rga: rga@20060000 {
>>> +        compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
>>> +        reg = <0x20060000 0x1000>;
>>> +        interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>>> +        clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
>>> +        clock-names = "aclk", "hclk", "sclk";
>>> +        resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru 
>>> SRST_RGA_H>;
>>> +        reset-names = "core", "axi", "ahb";
>>> +        status = "disabled";
>>> remove?
>>>
>>> +    };
>>> +
>>> iep_mmu: iommu@20070800 {
>>> compatible = "rockchip,iommu";
>>> reg = <0x20070800 0x100>;
>>
> 
> 
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
