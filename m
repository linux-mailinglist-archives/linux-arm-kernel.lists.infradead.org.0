Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ED26BA2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPljtQXIZPfhtpRn5qA+QR7T9aIYEbm0hGUPes2fdro=; b=jsNYhVZ6hcAVTv
	GuaiWnvikxdDaejlmS3WxHrzMXxaQAAmrrA0Ifb+tZYVT68r5Kb2WCrVsoOzJe++PIqfj2n2lD3bl
	vQKQMLYPQvDoKv1PwfORaChnpWwaAxMQidB5cKLASfaQVF6PaJEyuMUMZva2wzhbeMbhhqcJkSwy2
	RsRU6sJfMfhxWQ6zr9y9nyKYgHUuZf64uRc2hscyt2EYCek6j08eAXk+ydmPaorIml3ypEiWnmgkh
	GVmgjhVCNpEeeCMnmjy5lkogoKDH7nSxeslLCIfFhsRlvC5ea4jfjP1u4yfSJg12C+pgdMn6kPe4s
	wLOv/hNIsoj+XFMba6JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhCS-0001MN-L2; Wed, 17 Jul 2019 10:30:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhC6-0001GL-CD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:29:55 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717102952euoutp010eee7fe6b3dc828d19ef8df0438f48c8~yKxWrBW8G0418804188euoutp01-
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:29:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190717102952euoutp010eee7fe6b3dc828d19ef8df0438f48c8~yKxWrBW8G0418804188euoutp01-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563359392;
 bh=SDA5tD2P1J2Q7wZZ1hx8dTqvs0jbLs+PVjNuEh4MrGM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Wo7Jq2JwCQZ3uZWrtCYpODfh1aA7R6YAYg7NmDNrvzlnkNEOvtFQWR2YF7NDUdeBj
 hiPNiIM2kB8FFmTC99bpkDfYJ0pnPV2jTrtZon8SlZk5xTaakutm+2JeVxmP9fbGlu
 2chXhxCYOH2o7wJs6G/FKFFzvofraUXJ3kzyuC+I=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190717102951eucas1p27d1f7239d6de753c8d62e83913fb3381~yKxVZO7n82944829448eucas1p2P;
 Wed, 17 Jul 2019 10:29:51 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E1.EB.04298.E98FE2D5; Wed, 17
 Jul 2019 11:29:51 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190717102950eucas1p17facbc79d951c4305f60df8ac6d567a2~yKxUmmoej2723227232eucas1p1i;
 Wed, 17 Jul 2019 10:29:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190717102950eusmtrp2ab26d6fd408c395bc65ce131d4b75e62~yKxUYVHOR2136421364eusmtrp2B;
 Wed, 17 Jul 2019 10:29:50 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-a7-5d2ef89e2b48
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B1.73.04140.E98FE2D5; Wed, 17
 Jul 2019 11:29:50 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190717102949eusmtip2b83dba6b3f3830bea72db3b9ad1feb3a~yKxTqqxIs1285512855eusmtip2_;
 Wed, 17 Jul 2019 10:29:49 +0000 (GMT)
Subject: Re: [PATCH v1 27/50] ARM: dts: exynos: align bus_wcore OPPs in
 Exynos5420
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <701cbb66-17cb-9f32-1da4-4129a787fc7f@partner.samsung.com>
Date: Wed, 17 Jul 2019 12:29:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCKsWRmVeSWpSXmKPExsWy7djPc7rzf+jFGszfz2hxa905VouNM9az
 Wlz/8pzVYv4RILf/8Wtmi/PnN7BbnG16w26x6fE1VouPPfdYLS7vmsNmMeP8PiaLtUfuslss
 vX6RyeLiKVeL240r2Cxa9x5htzj8pp3V4t+1jSwOQh5r5q1h9Hh/o5XdY9OqTjaPzUvqPfq2
 rGL0+LxJLoAtissmJTUnsyy1SN8ugSvj0u4TzAWfZSp+H/7F2MB4U6iLkZNDQsBE4tuTH0xd
 jFwcQgIrGCVuXtjPCuF8YZT49rmBBcL5zChx6WE/I0zL4wcwLcuBEjvnMEM4bxklHu54yApS
 JSwQIjHjTAsTiC0ioClx/e93sLnMAldZJH7c/w40l4ODTUBPYseqQpAaXgE3iZcte9lAbBYB
 VYkJG/aygNiiAhESl7fsYoSoEZQ4OfMJWJxTIFBi/f1FYPOZBcQlbj2ZD2XLS2x/C3GQhEAv
 h8Ss3itQZ7tIvP64mQnCFpZ4dXwLO4QtI/F/53yoeLFEQ+9CqPoaicf9c6FqrCUOH7/ICnIz
 M9Az63fpQ4QdJdav+M4EEpYQ4JO48VYQ4gQ+iUnbpjNDhHklOtqgQa0hsaXnAtQiMYnla6ax
 T2BUmoXksVlInpmF5JlZCHsXMLKsYhRPLS3OTU8tNsxLLdcrTswtLs1L10vOz93ECEx7p/8d
 /7SD8eulpEOMAhyMSjy8Hod1Y4VYE8uKK3MPMUpwMCuJ8Np+1Y4V4k1JrKxKLcqPLyrNSS0+
 xCjNwaIkzlvN8CBaSCA9sSQ1OzW1ILUIJsvEwSnVwOj2pXnFb9GUG/w8PlIlf14dak32/xux
 Y7LPtNpdticmFXsf4j4psizmkUDp8xiu5xUW0xun7tq3N05sqdBfnkCZm5P3Pq55t+/jBDMp
 /8ynE24cCBBj31Z/M+GLpM7r42U59xUDjC2nszNxpOs0bju+UeO+0roDK7bzTVGKzZ45W+36
 T+XV//YosRRnJBpqMRcVJwIAgm8tJXcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsVy+t/xe7rzfujFGmzYzGtxa905VouNM9az
 Wlz/8pzVYv4RILf/8Wtmi/PnN7BbnG16w26x6fE1VouPPfdYLS7vmsNmMeP8PiaLtUfuslss
 vX6RyeLiKVeL240r2Cxa9x5htzj8pp3V4t+1jSwOQh5r5q1h9Hh/o5XdY9OqTjaPzUvqPfq2
 rGL0+LxJLoAtSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1
 SN8uQS/j0u4TzAWfZSp+H/7F2MB4U6iLkZNDQsBE4vGDH0wgtpDAUkaJdTvjIeJiEpP2bWeH
 sIUl/lzrYuti5AKqec0osfXMPEaQhLBAiMSMMy1gzSICmhLX/35nBSliFrjKIjHl1UZ2iI5+
 JonTGw4ydzFycLAJ6EnsWFUI0sAr4CbxsmUvG4jNIqAqMWHDXhYQW1QgQqKvbTYbRI2gxMmZ
 T8DinAKBEuvvLwJbxixgJjFv80NmCFtc4taT+VBxeYntb+cwT2AUmoWkfRaSlllIWmYhaVnA
 yLKKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMNK3Hfu5ZQdj17vgQ4wCHIxKPLweh3VjhVgT
 y4orcw8xSnAwK4nw2n7VjhXiTUmsrEotyo8vKs1JLT7EaAr03ERmKdHkfGASyiuJNzQ1NLew
 NDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwLjtwJkDrMUaRpK8m6qi+Owidp0w
 sn2gfOnrK42Z5T2/WO/vnuz/+33VV3PfNBZ2lXu13oWZjTeFjaZHGZ2u4S2Paly/tS7/17FD
 h0XvXMqLuaRwQ+6qu13OI/avm3a41XJ03ljf5F25b/oN07Mn+f+mT1oVYMXI+jp/yld922kl
 xxmSJ+RtfarEUpyRaKjFXFScCAD/KiDwCgMAAA==
X-CMS-MailID: 20190717102950eucas1p17facbc79d951c4305f60df8ac6d567a2
X-Msg-Generator: CA
X-RootMTR: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
References: <CGME20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-28-l.luba@partner.samsung.com>
 <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032954_556058_AF9AEDAD 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 7/17/19 12:15 PM, Krzysztof Kozlowski wrote:
> On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> This is the most important bus in the Exynos5x SoC. The whole communication
>> inside SoC does through that bus (apart from direct requests from CCI to
>> DRAM controller). It is also modeled as a master bus in devfreq framework.
>> It is also the only one OPP table throughout other buses which has voltage
>> values. The devfreq software controls the speed of that bus and other
>> buses. The other buses follows the rate of the master. There is only one
>> regulator. The old lowest OPP had pair 925mV, 84MHz which is enough for
> 
> s/lowest/slowest/
OK
> 
>> this frequency. However, due to the fact that the other buses follows the
>> WCORE bus by taking the OPP from their table with the same id, e.g. opp02,
>> the children frequency should be stable with the set voltage.
>> It could cause random faults very hard to debug.
>> Thus, the patch removes the lowest OPP to make other buses' lowest OPPs
> 
> s/lowest/slowest/
OK
> 
>> working. The new lowest OPP has voltage high enough for buses working up
>> to 333MHz. It also changes the frequencies of the OPPs to align them to
>> PLL value such that it is possible to set them using only a divider without
>> reprogramming OPP.
> 
> Reprogramming OPP? What is it?
Mistake, should be PLL. Thanks for that.
> 
>> Reprogramming the PLL was not set, so the real frequency
> 
> I understood from the previous that reprogramming the OPP (PLL?) was
> happening... Please rephrase entire sentence.
Yes, I will rewrite it when I will combine these patches into one.

Regards,
Lukasz
> 
> BR,
> Krzysztof
> 
>> values were not the one from the OPP table, which could confuse the
>> governor algorithms which relay on OPP speed values making the system to
>> behave weird.
>>
>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>> ---
>>   arch/arm/boot/dts/exynos5420.dtsi | 12 ++++--------
>>   1 file changed, 4 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
>> index f8c36ff0d4c3..a355c76af5a5 100644
>> --- a/arch/arm/boot/dts/exynos5420.dtsi
>> +++ b/arch/arm/boot/dts/exynos5420.dtsi
>> @@ -1107,22 +1107,18 @@
>>                          compatible = "operating-points-v2";
>>
>>                          opp00 {
>> -                               opp-hz = /bits/ 64 <84000000>;
>> -                               opp-microvolt = <925000>;
>> +                               opp-hz = /bits/ 64 <150000000>;
>> +                               opp-microvolt = <950000>;
>>                          };
>>                          opp01 {
>> -                               opp-hz = /bits/ 64 <111000000>;
>> +                               opp-hz = /bits/ 64 <200000000>;
>>                                  opp-microvolt = <950000>;
>>                          };
>>                          opp02 {
>> -                               opp-hz = /bits/ 64 <222000000>;
>> +                               opp-hz = /bits/ 64 <300000000>;
>>                                  opp-microvolt = <950000>;
>>                          };
>>                          opp03 {
>> -                               opp-hz = /bits/ 64 <333000000>;
>> -                               opp-microvolt = <950000>;
>> -                       };
>> -                       opp04 {
>>                                  opp-hz = /bits/ 64 <400000000>;
>>                                  opp-microvolt = <987500>;
>>                          };
>> --
>> 2.17.1
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
