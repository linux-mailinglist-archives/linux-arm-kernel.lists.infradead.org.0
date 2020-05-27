Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E914F1E43AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTLL0d5DiboEUKA2Gr6dFMQPOGJ7rUbZ/YvaRauY6ic=; b=UYEJrzFGeERX1K
	ahsajyBCJLLJCiS8Tbs+BVZxB24kNFkemJnRT1r3NXSpVENEy6nAm5f1d3/fx54GfUcBmHHWr5mMB
	JO9ndMop6pFiW05Av2Oxc4DelfOulrK7BXqvbwqZB1Pu5d/kObJAhItsiSEbim6iUJNmueosAhtIE
	h03z5eT4ULNgJzTKrNWR+XM/0PvwKxoP7I2RI7/iPn4F0G7h0t2V+WzOxiMENizUGr3CcRIU+voAf
	a0vpdaOdRKHxUNighExm2ywfD5drQoV1xCHVv2wxFtWJmMA6FTjplg1KJls4eV83ptMDEyK001av8
	eSbpCppzhzRyndL6bQow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdw8v-0005Aj-NL; Wed, 27 May 2020 13:30:49 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdw8j-00059z-PQ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:30:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200527133033euoutp02d48d9bbc27fd48a8f7bf0335ad4536a4~S5cCTcdqT0264102641euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 13:30:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200527133033euoutp02d48d9bbc27fd48a8f7bf0335ad4536a4~S5cCTcdqT0264102641euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590586233;
 bh=CYlzgtqHvZcBnMBlxSq2yhphICoXSVRCbRiaI8m1Ov4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=SrJVXHJL031kvUKOX0SK/rQYDDslUl+zbUlIUW2emHm7kRiDW05EY/Q69ekfZo0uh
 yTaTIk2lZeedFilrXBeh8UeHszdFFae4TDhu01QsNemedxo8dXxDsQjIysR2XKKeMK
 76Xp6inYb6HItdo9LN0l+N/hOS5nqN9heT0Funo0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200527133033eucas1p2dd415e6f83435068e2b4754a44340876~S5cB_m0ba0416504165eucas1p2X;
 Wed, 27 May 2020 13:30:33 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7B.A5.60679.97B6ECE5; Wed, 27
 May 2020 14:30:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200527133032eucas1p263f0403633f2c53cce0b5a7164d44bcb~S5cBjURAz2115421154eucas1p2F;
 Wed, 27 May 2020 13:30:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200527133032eusmtrp14e8451d2a52b4f967f27cbd029f1ec07~S5cBiD6jD1539415394eusmtrp1O;
 Wed, 27 May 2020 13:30:32 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-b0-5ece6b79c13c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 48.E0.07950.87B6ECE5; Wed, 27
 May 2020 14:30:32 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200527133031eusmtip1a5bf7c1448ee307dd1eeb757bb7201d7~S5cAWbKgJ3098830988eusmtip1a;
 Wed, 27 May 2020 13:30:31 +0000 (GMT)
Subject: Re: [RFC v3 1/2] thermal: core: Let thermal zone device's mode be
 stored in its struct
To: Daniel Lezcano <daniel.lezcano@linaro.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
Date: Wed, 27 May 2020 15:30:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f39c5ca6-5efa-889c-21f5-632dfd24715e@linaro.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0wTaRTNNzOdDmjNWFSur6hVjKuRh4/ki6/4zqAxPn4Z47LbXWbRSNG0
 gqI/fGGFShGpvJqKUtECbhALaamySsoG14BtgdWIgrFaTVWKSjUICsgwGPl37r3n3HPPl48h
 5XX0FGZv0kFenaRMVNChlK2h170wdZ8rLtp8isVl/w1QuMfVS+BrL59ROKdgkMRFwenY5E6j
 sK44GnsfbsXaYAGFvXXrcNuJ2wQ2+VNwlStTgstzHRR2eAM0ttw5h7D15SMJ1vWVkTio/xfh
 hsuTsMezG1+v9ZO4qbFFgn3eLBr3260U9leH439ON5O4yppLrp7G1XSUIK66rI3gSrujOIex
 Q8pVlc7nrtS+IThreQbNtT+qpbkul2uoX3KM+9jpk3Kv8+sJLvtDgOZudtUQ3Ln+aO5La6dk
 W9iu0BXxfOLeFF4dter30D0WbR1xoGPe4cGvDdRx1DtTh0IYYJdAnqUA6VAoI2dLEbj1PZRY
 fELQWvFAKhZBBJd8FaQOMcOSPluK2LcgaH93Y0QeQPDiYgYp7A1jlZBvr6MFPIGNhBPvtYRA
 ItmvUrit7xke0OwyOH+mHAlYxq6CCzmGYTHFRkCnNl0i4InsTuh+Xi8ROePhfqGPEnDIEN/3
 2iEVMMmGwxPfJULEM8AeMJGCGbBnQ6D58zcknr0eXlXOE0OHwdt71VIRT4NGQyYl8isQ9Kf7
 R8R2BBbDAC2ylkO7q48WFpHsL3DjVpTYXgMnbWZC3D8OHgfGizeMgxxb/shrySBdKxfZc6Hy
 WiX9w1bnKCOzkcI4KplxVBrjqDTGn76XEVWOwvlkjSqB1yxK4g9FapQqTXJSQuSf+1VWNPSv
 GwfufapBt7794UQsgxRjZembXHFyiTJFk6pyImBIxQTZ2geNcXJZvDL1CK/e/5s6OZHXONFU
 hlKEyxab3/wqZxOUB/l9PH+AV/+YEkzIlONowZf4Sdb6mr8IfbS9kDoqtzkNd7vSNm+bavJ8
 Ln574frp4ti4waxS1d8QsftpyYYWbbB5ovl5wbOmou0l6vs3syd77+QvdRd1B9vdTdkb9WM9
 aXMSY/MWZIyJWWJ++gJ3O/3yFV1PFktcsszOq562jphZp6pad5hWGiJmZ22x/9+ioDR7lDHz
 SbVG+R184Gcn0wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHfc85O05pcpyab2JlozKEjtvMfDWzm9JJhAy/SJa27OQst8nO
 tBREpVq1rNTy0hA1skzDomk6y8y0rLCWFUk3s+ESI10XK+/WlgV++/F//r8HHnj4uPAZz4uf
 rNSwaqUsRUQ6E10zD3pXHtxvihefvyFFNQ9nCDRqGsfQpf73BCos/Y2j8pGFqOzpYQLpzouR
 +eVWpB0pJZC5bRN6nXsLQ2WD6ajelMdDtUXNBGo2D5OouvU0QIb+Hh7STdTgaOTkPYA6K+ej
 7u4d6ErLII4edz3nIYv5FImmmwwEGmzwRLePPMNRvaEIX+/NGHurANNQ8xpjLn/3Z5r1vY5M
 /WU/5kLLJ4wx1B4nmXc9LSRjNZlseVU2823I4sgMlHRgTP7XYZK5bjVizOlpMTP2YogX7bad
 DlWr0jSsj1zFadaK4iRISkuCES1dFUxLAoJ2hkgDRf5hoXvYlOR0Vu0ftouWV2vbsNTeFQd/
 T3YSOWDcRwf4fEitghON6TrgzBdSFwG82qMlZ3Nv+OCaLXeyoRuc6tGRs53PABaXNPLsAzdK
 Bkua2kg7u1M0zP2ixewlnJp2hHX6438HQuoKBj8+3mdnkgqBBUdrgZ0FVBg8W3gGtzNBLYND
 2mN/l3pQsbDDqP/XcYWPzlkIOzvZ+paBZkc745QvnCp/js+yJ3xjqcBmeTFsGi7D84FQP0fX
 z1H0cxT9HKUSELXAnU3jFEkKTkpzMgWXpkyiE1UKA7C9U2PneIMR6Kwx7YDiA9E8gZgxxQt5
 snQuQ9EOIB8XuQs2PumKFwr2yDIyWbUqQZ2WwnLtINB2XAHu5ZGosj2nUpMgCZQEoWBJUEBQ
 wGok8hQco+7uEFJJMg27n2VTWfV/D+M7eeUA+Y8trfcLQyLpYpepmYq6ykzXsZUd0eKSVpfq
 mERiOubEgqxwLe6w7tVu46FteT4RwGXM9EaztNAl9cBG5a7JJbFO4xFvve6E90VF/Yy8KY8O
 i88xDnrofqnvLkpozLZWmT9wF/20WurwhTVZcX1CB8no3oRLG3RTvsu/Hohx3+wqIji5TOKH
 qznZH/T4alxkAwAA
X-CMS-MailID: 20200527133032eucas1p263f0403633f2c53cce0b5a7164d44bcb
X-Msg-Generator: CA
X-RootMTR: 20200523212502eucas1p27c01e46512cd6b38c2bb605fad01026f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200523212502eucas1p27c01e46512cd6b38c2bb605fad01026f
References: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
 <20200417162020.19980-1-andrzej.p@collabora.com>
 <20200417162020.19980-2-andrzej.p@collabora.com>
 <CGME20200523212502eucas1p27c01e46512cd6b38c2bb605fad01026f@eucas1p2.samsung.com>
 <f39c5ca6-5efa-889c-21f5-632dfd24715e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063038_028716_43F9DB3A 
X-CRM114-Status: GOOD (  34.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, platform-driver-x86@vger.kernel.org,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Daniel,

On 5/23/20 11:24 PM, Daniel Lezcano wrote:
> Hi Andrzej,
> 
> On 17/04/2020 18:20, Andrzej Pietrasiewicz wrote:
>> Thermal zone devices' mode is stored in individual drivers. This patch
>> changes it so that mode is stored in struct thermal_zone_device instead.
>>
>> As a result all driver-specific variables storing the mode are not needed
>> and are removed. Consequently, the get_mode() implementations have nothing
>> to operate on and need to be removed, too.
>>
>> Some thermal framework specific functions are introduced:
>>
>> thermal_zone_device_get_mode()
>> thermal_zone_device_set_mode()
>> thermal_zone_device_enable()
>> thermal_zone_device_disable()
>>
>> thermal_zone_device_get_mode() and its "set" counterpart take tzd's lock
>> and the "set" calls driver's set_mode() if provided, so the latter must
>> not take this lock again. At the end of the "set"
>> thermal_zone_device_update() is called so drivers don't need to repeat this
>> invocation in their specific set_mode() implementations.
>>
>> The scope of the above 4 functions is purposedly limited to the thermal
>> framework and drivers are not supposed to call them. This encapsulation
>> does not fully work at the moment for some drivers, though:
>>
>> - platform/x86/acerhdf.c
>> - drivers/thermal/imx_thermal.c
>> - drivers/thermal/intel/intel_quark_dts_thermal.c
>> - drivers/thermal/of-thermal.c
>>
>> and they manipulate struct thermal_zone_device's members directly.
>>
>> struct thermal_zone_params gains a new member called initial_mode, which
>> is used to set tzd's mode at registration time.
>>
>> The sysfs "mode" attribute is always exposed from now on, because all
>> thermal zone devices now have their get_mode() implemented at the generic
>> level and it is always available. Exposing "mode" doesn't hurt the drivers
>> which don't provide their own set_mode(), because writing to "mode" will
>> result in -EPERM, as expected.
> 
> The result is great, that is a nice cleanup of the thermal framework.
> 
> After review it appears there are still problems IMO, especially with
> the suspend / resume path. The patch is big, it is a bit complex to
> comment. I suggest to re-org the changes as following:

There are still issues with the related existing thermal code but this
patch seems to be a step in the right direction.

For the latest version posted ("v3" one, your mail was replied to the
older "RFC v3" one):

https://lore.kernel.org/linux-pm/20200423165705.13585-2-andrzej.p@collabora.com/

I couldn't find the problems with the patch itself (no new issues
being introduced, all changes seem to be improvements over the current
situation).

Also the patch is not small but it also not that big and it mostly
removes the code:

17 files changed, 105 insertions(+), 244 deletions(-)

I worry that since the original code is intertwined in the interesting
ways the cost of work on splitting the patch on smaller changes may be
higher than its benefits.

>  - patch 1 : Add the four functions:
> 
>  * thermal_zone_device_set_mode()
>  * thermal_zone_device_enable()
>  * thermal_zone_device_disable()
>  * thermal_zone_device_is_enabled()
> 
> *but* do not export thermal_zone_device_set_mode(), it must stay private
> to the thermal framework ATM.
> 
>  - patch 2 : Add the mode THERMAL_DEVICE_SUSPENDED
> 
> In the thermal_pm_notify() in the:
> 
>  - PM_SUSPEND_PREPARE case, set the mode to THERMAL_DEVICE_SUSPENDED if
> the mode is THERMAL_DEVICE_ENABLED
> 
>  - PM_POST_SUSPEND case, set the mode to THERMAL_DEVICE_ENABLED, if the
> mode is THERMAL_DEVICE_SUSPENDED
> 
>  - patch 3 : Change the monitor function
> 
> Change monitor_thermal_zone() function to set the polling to zero if the
> mode is THERMAL_DEVICE_DISABLED
> 
>  - patch 4 : Do the changes to remove get_mode() ops
> 
> Make sure there is no access to tz->mode from the drivers anymore but
> use of the functions of patch 1. IMO, this is the tricky part because a
> part of the drivers are not calling the update after setting the mode
> while the function thermal_zone_device_enable()/disable() call update
> via the thermal_zone_device_set_mode(), so we must be sure to not break
> anything.
> 
>  - patch 5 : Do the changes to remove set_mode() ops users
> 
> As the patch 3 sets the polling to zero, the routine in the driver
> setting the polling to zero is no longer needed (eg. in the mellanox
> driver). I expect int300 to be the last user of this ops, hopefully we
> can find a way to get rid of the specific call done inside and then
> remove the ops.
> 
> The initial_mode approach looks hackish, I suggest to make the default
> the thermal zone disabled after creating and then explicitly enable it.
> Note that is what do a lot of drivers already.
> 
> Hopefully, these changes are git-bisect safe.
> 
> Does it make sense ?

Besides the requirement to split the patch it seems that the above
list contains a lot of problematic areas with the existing thermal
code yet to be addressed..

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
