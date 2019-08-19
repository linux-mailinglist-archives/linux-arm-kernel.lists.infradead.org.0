Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBB592551
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OwefX4ZZQG23FATTVbzahtVh5B6v1jEeXc4JLk4y5o=; b=Aww5GedcYKJq0G
	nPvJKk7cNWc2ipqbM/h1AbVGz6H537JLZYYl0SwnXbadYAOJk9ZJW71gKBxY15am+9CjFM5h5OW/S
	y/ePa5DAHS8UW5t2b+PAIkUcXXyvNpLv3ERGpkN2gRC95GOZvTRkDYO7ZuEqpA1brxCYdNfQ6A4iO
	p3OukMUo8F/4fv21Lgp2ntZa+Wm/LmjrVlW2cW9JN/rvk7rrloszAa6FMoZzgr0jKAyghg1xZovqG
	mdw6pKnX5i6u4EZPHbisRZLMLuMHrCWzTAGyrFlQ1KwMXyXJfP6Pwv7agk85Zs79AqaGNJpJa08iE
	GBi37jPAHd9kh1sEmMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhtf-0004y6-Ff; Mon, 19 Aug 2019 13:40:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhtB-0003Zr-V6
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:40:11 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190819133958euoutp01d28e9f38dbb4165c5ba79e5a40f189f4~8VpwImCrp3067630676euoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:39:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190819133958euoutp01d28e9f38dbb4165c5ba79e5a40f189f4~8VpwImCrp3067630676euoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566221998;
 bh=Q0d/QLjgBeIMmaaBqKjPm2ypK9ev0gXQo0A01RCJlic=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lL0dpYU/aE5pev9HZdMHlv+DepiafS5qH8ATPtYoNRT98AJGCS1XaH5Mh6I7NUi7w
 nQzs+vuTz3gXHcgp22PyGJums4ts2E2iDC2WOttZ3q7IUHx9LzaeSUq/39xOfmO/Wl
 GfgQ7kfhkmQq4CkzndEKH1rfdkT6JoWMG7tNWYqc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190819133958eucas1p1c3fcdfaf326d631ee2a191e86b5df388~8VpvuxS671424714247eucas1p1u;
 Mon, 19 Aug 2019 13:39:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 98.62.04469.DA6AA5D5; Mon, 19
 Aug 2019 14:39:57 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190819133957eucas1p148b4efda4c2c63ceb71046d49dc66596~8Vpuqu2m60836908369eucas1p1_;
 Mon, 19 Aug 2019 13:39:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190819133956eusmtrp25e8a06e3d65f630ed17eb40ec96ee339~8Vpubznsu1896718967eusmtrp27;
 Mon, 19 Aug 2019 13:39:56 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-d0-5d5aa6ad60bb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 71.71.04117.CA6AA5D5; Mon, 19
 Aug 2019 14:39:56 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190819133956eusmtip17ec91733a55bbf60a5897690bc35640f~8VptxGSbS2624526245eusmtip18;
 Mon, 19 Aug 2019 13:39:55 +0000 (GMT)
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
Date: Mon, 19 Aug 2019 15:39:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfSzUcRzu+3tnTl9H+UyNumktk5ettV8rFvnj1qbV1sY01cVvKG/dOVFt
 pJgUmSbcLHLm5TbESRLaOC4TepGijEIbdv3hnE0qOT+W/57n+TzP9/N5ti9HSo20CxcTnyQo
 4xWxMsaWauldHjxYVxUW7tOq9eEbixtovswwSPMPpuZJfmjoKcs3TY3Q/Ie2UoY35xoQXzzU
 SfB1hnGWr3i2yPKZHQaWb7TIef1kL3NcIm/S3WXkX0faGbm+Mk2e16xDcnOT62k6zPZYpBAb
 kywovf0v2kbrl7NQYhZOadYX0Olo0i4H2XCAD4GltZTIQbacFNcgqCwfpUSyiGAsu3GDmBF0
 a830ZmS4SrMRqV5zVegYkZgQtCxVsVaXIw6E9hXL2oDjnLAHzI4KVpnEHwlos6xjBvtCbk8e
 smIJ9ofX5kbCiim8D/4YC9eX7cChsDDZTYseB+grmaas2AYfgZ76OUp80xkyFmtpEbvBc1Mp
 ab0H8HcWJoaNG1cHwfLjMSRiR5gzNrMi3g2rL8oIMXAbwf2XX1iR5COYMJZvJI5Ct/EdbW1D
 4gPQ0OYtygGQN2wgrDJge/hschCPsIeCliJSlCWQnSUV3e6woisiROwC96ZXqXwk02ypptlS
 R7Oljub/3nJE6ZCzoFbFRQkq33jhmpdKEadSx0d5RSTENaG179X/17jQiizvL3UhzCGZnUT+
 KCxcSiuSValxXQg4UuYkSSldkySRitTrgjLhglIdK6i60C6OkjlLbmybPCfFUYok4YogJArK
 zSnB2bikozvdpLrmTbW03zLO1Cq8SQ+3xMtXl363GXZqGF269smpOt89kYuHM6cDM0O9MzxD
 zof4uQeeyBzR7r81FnBmO9ZEWToTS9i3AybTlORHn2c9igg2LLie/YnSLDqnk/PBD/UD836y
 WceONK7um2bvzSri00zQQNmrmV+FteoZLKNU0QpfD1KpUvwDf9oF3loDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBIsWRmVeSWpSXmKPExsVy+t/xu7prlkXFGnzuVbfYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLTZ+9bDY
 /OAYmwOvx6ZVnWwed67tYfPYvKTeo2/LKkaPz5vkAlij9GyK8ktLUhUy8otLbJWiDS2M9Awt
 LfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DI2/2xjLGgTqNiyeRJrA+MDni5GTg4JAROJ
 K8tmMXUxcnEICSxllFj6to+9i5EDKCElMb9FCaJGWOLPtS42EFtI4DWjxI7mXBBbWMBJYs/v
 r2wg5SICWhIvb6aCjGEWuMoksXjPJRaIma+YJU7cn8QE0sAmYCjRe7SPEcTmFbCTOPF5I1ic
 RUBV4u/xqawgtqhAhMThHbOgagQlTs58wgJicwpYShxd9wrMZhZQl/gz7xIzhC0u0fRlJSuE
 LS+x/e0c5gmMQrOQtM9C0jILScssJC0LGFlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbq
 tmM/t+xg7HoXfIhRgINRiYfXY1pUrBBrYllxZe4hRgkOZiUR3oo5QCHelMTKqtSi/Pii0pzU
 4kOMpkDPTWSWEk3OB6aRvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwc
 nFINjJNPyc+fbhZ6WlD8xp/phY0zet3Oq/6ae+Vy463OgCvd2/7IL/+t9HYyY+yW1G85e6Me
 vVZLyVP4t8lHfe29vdvKj6/RlrggZrDtp2JB1Mo/GlfVn5668WvLrRPBjb1Rc35OPZ1SJi92
 +grPTPlNk02Pffn6eNGutRm955bIaz2LC5l48N6GVXIvlFiKMxINtZiLihMByBlrN+sCAAA=
X-CMS-MailID: 20190819133957eucas1p148b4efda4c2c63ceb71046d49dc66596
X-Msg-Generator: CA
X-RootMTR: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
 <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_064002_264475_67EC2EAA 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/19/19 13:25, Viresh Kumar wrote:
> On 19-08-19, 13:16, Sylwester Nawrocki wrote:
>> On 8/19/19 11:09, Viresh Kumar wrote:
>>> Will something like this help ?
>>>
>>> https://lore.kernel.org/lkml/1442623929-4507-3-git-send-email-sboyd@codeaurora.org/
>>>
>>> This never got merged but the idea was AVS only.
>>
>> It's quite interesting work, it seems to be for a more advanced use case 
>> where OPP voltage is being adjusted at runtime.
>>
>> We could use it instead of removing an OPP and then adding with updated 
>> voltage. On Exynos there is there is just a need to update OPPs once at boot 
>> time, so it is more "static". However the requirements could presumably 
>> change in future.
> 
> The API is about changing the values after they are parsed once from DT. You can
> change it once or multiple times depending on the use case.
> 
>> If that's your preference I could switch to that notifier approach.
> 
> You shouldn't be required to use the notifier. Just add the OPP table and update
> the values right after that. So no one would be using the values at that time.

OK, now I see dev_pm_opp_adjust_voltage() actually changes OPP's voltage 
and the notifier is optional.

> Will this patchset solve the problems for you and make your DT light weight ?

Unfortunately not, the patch set as I see it is another way of updating 
an OPP after it was parsed from DT.  OPP remove/add could work equally 
well in our use case.
 
The problem is that we have the information on how to translate the 
common OPP voltage to a voltage specific to given silicon encoded jointly 
in the ASV tables and the CHIPID registers (efuse/OTP memory). 
Additionally, algorithm of selecting ASV data (OPP voltage) based on 
the "key" data from registers is not generic, it is usually different 
per each SoC type.

I tried to identify some patterns in those tables in order to simplify 
possible DT binding, but that was not really successful. I ended up just 
keeping whole tables.

--
Regards, 
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
