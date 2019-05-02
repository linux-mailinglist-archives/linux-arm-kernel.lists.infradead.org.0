Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135FC115C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxSx3WIbX8G+l7NlAqhFOvQbOQpsPSuTjDNfoGtuVUE=; b=kvFCSBud1QHWZ1
	REYkSgAb3H9Hi7YiL3F9HFc0zrSRZ8YJdsCxls+FK/gZsbm+znrKfy93SvTFXJE9fht+dPaLtq9KH
	H11C77rxYx1APGO9PhnyoSn0gh7o/nr1mEqL8UqQZEDfK6TJEeHmuUav+DWqvbvvoGsbct0BIpbHu
	q6zX4MQjj22kxwk+qGvjgReMHgB/HhJWOUVoI85XYFsW+MpgPcUByZGZVfb/q79VoswdK/c1v6cBA
	wRzkNKRjimH7cb3U8r8jEgYrBWGnsYFZHorwxm6h/o7Iui3XJi4CAiy4WIpS9vXeg31/6BhRQjrKv
	2kNtAZWW75dmsgxsuorQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7SN-0001sc-0z; Thu, 02 May 2019 08:52:43 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7SE-0001rb-Vx
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:52:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190502085229euoutp01d97248da469a053f1b9db5681a94c9ba~a0aoaLrOC3239232392euoutp01C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 May 2019 08:52:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190502085229euoutp01d97248da469a053f1b9db5681a94c9ba~a0aoaLrOC3239232392euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556787149;
 bh=lFZDW3E3ayqcJSAalyBTTOe/fZ1BCr54JCSlHjCWdj8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=cmLhzJ4nIY1NVn7d7DgWw1Bp1vRlR6JPV+wzLxa+Tsq6l2RxQGRGR0ATy/dPxuppS
 Im+fk+ekc9BnyXmAxdb8HuQP98Ax4iPrMMSUH8ecsIb90+Ln9XnhvLRL6eVXws3225
 i7wIdCdb79wh76LXjJhwM+JAKu0bDwQQWXnsW7SE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190502085228eucas1p17468f14bc390916f1c1740504c3a0133~a0ansGywv0593305933eucas1p1x;
 Thu,  2 May 2019 08:52:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B6.A8.04377.CCFAACC5; Thu,  2
 May 2019 09:52:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190502085228eucas1p24db71e2f68116f7bc60c52b091a50c2d~a0am8PadQ0692006920eucas1p2z;
 Thu,  2 May 2019 08:52:28 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190502085228eusmtrp13cc070693199d3965826a6946fff9477~a0am7m8mq1339313393eusmtrp1c;
 Thu,  2 May 2019 08:52:28 +0000 (GMT)
X-AuditID: cbfec7f4-5632c9c000001119-d8-5ccaafcca87e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 53.FB.04140.CCFAACC5; Thu,  2
 May 2019 09:52:28 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190502085227eusmtip1095ecfd096b008e43aa9a021fe37961a~a0amFN1cm2188121881eusmtip1O;
 Thu,  2 May 2019 08:52:27 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Rob Herring <robh@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <1fd44623-4a59-f014-1ae9-a7cc605ad30f@partner.samsung.com>
Date: Thu, 2 May 2019 10:52:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430223629.GA22317@bogus>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRTA+3Z3d6/L6ed6eFBRmhW2yPWCbiRiJbH+ECT8I8qwVRet3LLd
 rDRJMzPzTY9pU1taodhM003XKBEzzUdbI6wweypEqRHOpNHT7Rr53++c73e+c87HRxPSl2QA
 fVBzjNVqVMkykVjY2u2yrRpo7ItfXWOQM3fLG0nmxdRHkjF02UimZGSMYOz2Jop5kj1OMc0j
 z0nmmbVSxDiLuhBTbm8XMA1drynm1guHgHl1pk7E/LlvoZiH4+dJZvrxBxSFlcZrRqS8p39N
 KZvrL4iULTczlcWmeqR0NgfHinaJIw6wyQePs1pF5F5xUn/7JyKlJPTk7VGDKAt1BOUjmga8
 HnL+pOQjMS3FdQiaTDUkH0wheFY7SeUjr5nAicBgBDe7C1wVdoKXahHYOh6IeGkCgdMhd/MC
 HAd33jz3FC/ES+BHrs5zK4HLCLCfGyPcrUU4HCz1R92OBG+D74ZCjy/ES2HyvdVz5yK8E952
 N5G84we9V0eFbvbCK6HY6BS4mcD+MDRqmOUQaJuo9AwH2EXBPX0Z4qeOBp2theR5AXzuMVE8
 B0H/pUIhzxxkFVXP+hkwUlI162yChz0O0j0zgVdAo1XBpzdDS90vxL+iD7yc8ONH8IGLrWUE
 n5ZAXq6Ut8PAVPhUwPNiqDXqqFIk089ZTD9nGf2cZfT/+15Hwnrkz6Zy6kSWW6thT4RzKjWX
 qkkM339E3Yxm/lv/754pC7L+3NeJMI1k3pLvV3rjpaTqOJem7kRAE7KFkqH7MynJAVVaOqs9
 kqBNTWa5ThRIC2X+klPz3u2W4kTVMfYwy6aw2n+nAtorIAttfENlFlgi+2ibf9qjHdKSm98c
 GeKBG1UdOkvU/O0VXwTmq2ZFY2xv2+WwqNPWTdF7DkX8Hl4+gNcVDE8sCUmPDT66tXy8uiB0
 usEYJwjcELItbLgyp8p8K3RyTLElIWDlq6/BZ7xdn8yDMQXyyge+g5d9jct0ipjs6tK8BtPZ
 0niZkEtSrZETWk71F0K7RK1rAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xu7pn1p+KMbj3i8Vi44z1rBbXvzxn
 tZh/5ByrRf/j18wW589vYLc42/SG3WLT42usFpd3zWGz+Nx7hNFixvl9TBZrj9xlt1h6/SKT
 xe3GFWwW//fsYLc4/Kad1eLbiUeMDgIea+atYfTYOesuu8emVZ1sHpuX1Hv0bVnF6PF5k1wA
 W5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexul9
 L5kL+pUrVj+Zz9bAeECmi5GTQ0LAROLn7PPMXYxcHEICSxklbpzewgiREJOYtG87O4QtLPHn
 WhcbRNFrRol1976BJYQFQoDsa2C2iICixO+2aawgRcwC05kljlz5BNXRwCRx98cBoCoODjYB
 PYkdqwpBGngF3CR+zO8Ba2YRUJH49HAXG4gtKhAhceb9ChaIGkGJkzOfgNmcAtoSfWs+M4HY
 zAJmEvM2P2SGsMUlbj2ZDxWXl9j+dg7zBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJLi3PTc4uN
 9IoTc4tL89L1kvNzNzECI3vbsZ9bdjB2vQs+xCjAwajEw/tj6skYIdbEsuLK3EOMEhzMSiK8
 t/YAhXhTEiurUovy44tKc1KLDzGaAj03kVlKNDkfmHTySuINTQ3NLSwNzY3Njc0slMR5OwQO
 xggJpCeWpGanphakFsH0MXFwSjUwyl2dWru5fA/D4rObqqzZL5zdO6u99ktKXVhE+eKmE2U6
 q+L3VG5LeXdt/4zpnQHfTAue+nV5cSXcfMyi+fvp3HXzXCvtPfKu/umf2rG1Zp+d/ZFsRV6h
 f7u2nitcpx4iJfvx02F+hS+m+jkHcmrunen7Fv8+6sHn3K1+nq+sN52ZstAjW/hTphJLcUai
 oRZzUXEiAKs5k48CAwAA
X-CMS-MailID: 20190502085228eucas1p24db71e2f68116f7bc60c52b091a50c2d
X-Msg-Generator: CA
X-RootMTR: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
 <20190430223629.GA22317@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015235_221222_5EC43B3A 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 5/1/19 12:36 AM, Rob Herring wrote:
> On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
>> Extend the documenation by events description with new 'event-data-type'
>> field. Add example how the event might be defined in DT.
> 
> Why do we need event types in DT? We don't do this for other h/w such as
> ARM PMU.
In ARM PMU all the events are hard-coded into the driver code i.e. in v7
arch/arm/kernel/perf_event_v7.c
and are seen from perf. They are different type and for different
purpose. The Ecynos PPMU events are not seen in perf, they are
for internal monitoring and must not be reset by other actors like perf.
They are used by the 'bus drivers' to made some heuristics and tune the
internal settings, like frequency.

Chanwoo has written PPMU driver which relies on DT definition.
The DT events are used by other DT devices by phandle.
In Exynos 5x SoCs we have many 'bus devices' which use events to
monitor their usage and react accordingly.
---------------8<------------------------
[    4.140923] exynos-bus: new bus device registered: soc:bus_wcore ( 
84000 KHz ~ 400000 KHz)
[    4.149179] exynos-bus: new bus device registered: soc:bus_noc ( 
67000 KHz ~ 100000 KHz)
[    4.156825] exynos-bus: new bus device registered: soc:bus_fsys_apb 
(100000 KHz ~ 200000 KHz)
[    4.165071] exynos-bus: new bus device registered: soc:bus_fsys 
(100000 KHz ~ 200000 KHz)
[    4.173577] exynos-bus: new bus device registered: soc:bus_fsys2 ( 
75000 KHz ~ 150000 KHz)
[    4.182141] exynos-bus: new bus device registered: soc:bus_mfc ( 
96000 KHz ~ 333000 KHz)
[    4.190099] exynos-bus: new bus device registered: soc:bus_gen ( 
89000 KHz ~ 267000 KHz)
[    4.197953] exynos-bus: new bus device registered: soc:bus_peri ( 
67000 KHz ~  67000 KHz)
[    4.206523] exynos-bus: new bus device registered: soc:bus_g2d ( 
84000 KHz ~ 333000 KHz)
[    4.214516] exynos-bus: new bus device registered: soc:bus_g2d_acp ( 
67000 KHz ~ 267000 KHz)
[    4.222850] exynos-bus: new bus device registered: soc:bus_jpeg ( 
75000 KHz ~ 300000 KHz)
[    4.231052] exynos-bus: new bus device registered: soc:bus_jpeg_apb ( 
84000 KHz ~ 167000 KHz)
[    4.239202] exynos-bus: new bus device registered: soc:bus_disp1_fimd 
(120000 KHz ~ 200000 KHz)
[    4.248033] exynos-bus: new bus device registered: soc:bus_disp1 
(120000 KHz ~ 300000 KHz)
[    4.256304] exynos-bus: new bus device registered: 
soc:bus_gscl_scaler (150000 KHz ~ 300000 KHz)
[    4.265397] exynos-bus: new bus device registered: soc:bus_mscl ( 
84000 KHz ~ 400000 KHz)
-------------------------->8----------------------------------------
The PPMU driver made some assumption, though. It always monitors only
'read+write data bytes' as an event data type.
Thus, it is not possible to monitor other stuff and maybe improve the
heuristics.

This simple modification allows to define different data type, which is
acquired by the counter, still being compatible with all the Exynos
drivers in the existing implementation.

Regards,
Lukasz

> 
>>
>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>> ---
>>   .../devicetree/bindings/devfreq/event/exynos-ppmu.txt  | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt b/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt
>> index 3e36c1d..47feb5f 100644
>> --- a/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt
>> +++ b/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt
>> @@ -145,3 +145,21 @@ Example3 : PPMUv2 nodes in exynos5433.dtsi are listed below.
>>   			reg = <0x104d0000 0x2000>;
>>   			status = "disabled";
>>   		};
>> +
>> +The 'event' type specified in the PPMU node defines 'event-name'
>> +which also contains 'id' number and optionally 'event-data-type'.
>> +
>> +Example:
>> +
>> +		events {
>> +			ppmu_leftbus_0: ppmu-event0-leftbus {
>> +				event-name = "ppmu-event0-leftbus";
>> +				event-data-type = <PPMU_RO_DATA_CNT>;
>> +			};
>> +		};
>> +
>> +The 'event-data-type' defines the type of data which shell be counted
>> +by the counter. You can check include/dt-bindings/pmu/exynos_ppmu.h for
>> +all possible type, i.e. count read requests, count write data in bytes,
>> +etc. This field is optional and when it is missing, the driver code will
>> +use default data type.
>> -- 
>> 2.7.4
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
