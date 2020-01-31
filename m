Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E81314EDD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7urU14YwyYrt9drD6/H/Hjhx1uGeIQq9X5bLLI0Luvs=; b=hUZrg54iu4b1/e
	CvCFMpvflaaPvkiGqUAFqQbd95fn/UYWRNcjwJEd20YOnT06queteh0l+Y+hM1dAckMsujXeon/Bc
	Kpi5+GDvUzUaA189WXk3CBKbX5WqeS91duFOkw3sJJ6A0DY5dRh31PIFlDXuKwYBJHidhZgHuIe/x
	5be8g5JkZMfIOWSRAZF8QoMguyG7hBOP+BheCw4ECCoCqdvH4ThbVp0w9fo2/NHDgkAqRnNzIbZu/
	pquYRt9M+r+iQ7kyE2hoNj/4Lp+2hSkn3+FIu1QoHuofhJ9lMo3UVulfWAdvyzNhZPiLrbzr/4DcD
	l5PgMdUhvrDT9W+5gxKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWfk-0006Ou-Ra; Fri, 31 Jan 2020 13:49:24 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWfM-0006EV-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:49:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200131134859euoutp023e3c570180c73c85acc82818a9812f92~u-NuadA9q2626126261euoutp02m
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 13:48:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200131134859euoutp023e3c570180c73c85acc82818a9812f92~u-NuadA9q2626126261euoutp02m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1580478539;
 bh=X1z8ZbkxYMru+Umlcw8xfHUCE3r2G8VQLfhn9gEQmh0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=AVVL2uUbsWMdJTqLtMeHWolbVTXG0RD5mzfXJozQ4MUgp+ib+6DaSGVWldv39IZ2i
 EhxY6uiRxP1sbT65lafFwzec+q+YDmv3Gtcz/66OAb/9XZw132vU4dxM8RjhCjoWRg
 JKc8UkJwHoS/negh+Qr/jmVTxFd2uFqr4HFyUj/0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200131134857eucas1p2d036abd7fe1a7e4391b6c252342747ae~u-NtCFQJg3039030390eucas1p2t;
 Fri, 31 Jan 2020 13:48:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 16.DE.60679.940343E5; Fri, 31
 Jan 2020 13:48:57 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200131134857eucas1p2a4191e8a63fd1f716a12788e4aa1743a~u-NsxD1JY1663616636eucas1p2O;
 Fri, 31 Jan 2020 13:48:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200131134857eusmtrp2c5c69fbc2fab49911770856e1fd5bccd~u-NswOmtT0170901709eusmtrp2b;
 Fri, 31 Jan 2020 13:48:57 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-c3-5e343049a35b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FA.4F.07950.940343E5; Fri, 31
 Jan 2020 13:48:57 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200131134856eusmtip109eb4eab5b89a4ad9bc7c9fd16f8a9b2~u-Nr2wZmr3226932269eusmtip1E;
 Fri, 31 Jan 2020 13:48:56 +0000 (GMT)
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <db803418-f263-6660-8e7c-739d137471b2@samsung.com>
Date: Fri, 31 Jan 2020 14:48:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <08aff2de-85d5-36b2-13bb-bad6eb5d37eb@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTYRzl293drtL0bmp+qBTMXgo+M7xZaIHCJEv/MJAgc+VFJTdlVy0l
 8kGaLsonpEszH6lNUZtv8b2V2mgSmcsUEjQsdQjOMiVXu7tK/nfO73fOd34HPgwR6FAnLEGa
 Qsqk4kQhx5rd/XZb5xHq7RftvbrjS+g3l1GiWqNDiW9FXQhRuLiKEFNT7Vzifc4al1AtzqDE
 x/5KDmF8rAFE+dQQi6jJecAlXuo/sIi57CYOkTuo4V6wEbU8bwEilbKAI+qozxQ96VQCkVF1
 JAK9Zn0+lkxMSCNlXoEx1vHD61Ws5KHDdzuLF0AWeMSXAysM4n6wTj7MlQNrTIA3Afh6oG6P
 bAJYNqpGGWIEMHtiGtm3NMh3OMyi0WyZ7wUMMQDYMzvKolV2eDhcGSm0YA4eAIsfKgGN7XE3
 qN/dsjyL4L0IVBTMsukFDw+E4x1VXBqz8eOwqmLHEueAR8GNBfoOWsOHkxVLFr0VHgRN6lLL
 HMEd4ZelahaDj8IeQyVCB0DcwIVf1R3mZMxMgmH3hC1TwQ6ujHdyGewC//bRXlrfCuBu/vc9
 cw+AjaUmDqM6B+d1dGnMnOAG2/q9mPFF2Fa7y2bet4GfDXzmBhtY0v0UYcY8mJ8nYNQnYHtD
 O2c/Vt73CikCQsWBZooDbRQH2ij+574AbCVwJFMpSRxJ+UrJO56UWEKlSuM8byVJVMD8y7Sm
 8c1e0P/n5hjAMSA8xEt29osWoOI0Kl0yBiCGCO15DiE+0QJerDg9g5Ql3ZClJpLUGHDG2EJH
 3unaH9cFeJw4hbxNksmkbH/LwqycssDVjPoWlV6qmlNXV1COIZd04T01M2GZU7bolfJTi2sG
 F/+oZzXrkdqTZaurAxVBUZPHUNm9aT55X+tq1ISvbwf//iVqLWndSNnSLrp7aN7wmvOCO9IC
 qKiMbfay/6eCwaHQrsifw7mm6cvjrjEjntKIvvizYUTznFLx7ow4jhCyqXixjzsio8T/AJcT
 JPVhAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAIsWRmVeSWpSXmKPExsVy+t/xu7qeBiZxBh9OyVpc//Kc1WL+kXOs
 Fk8nbGW26H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWJhUwu7xdLrF5ks
 bjeuYLNo3XuE3YHPY828NYwem1Z1snlsXlLv0bdlFaPH501yAaxRejZF+aUlqQoZ+cUltkrR
 hhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehn7389lKtgnVrFl4gPGBsZuwS5G
 Tg4JAROJZV2/2LoYuTiEBJYySlx4cYSli5EDKCEjcXx9GUSNsMSfa11QNa8ZJaa+384MkhAW
 8JVY8/02mM0mYCUxsX0VI4gtIqApcf3vd1aQBmaBXcwSB95PZYXofsMk0Xr0ETtIFa+AncTx
 zXPBbBYBVYm5M3+BTRIViJA4vGMWI0SNoMTJmU9YQGxOAXuJf4cns4LYzALqEn/mXWKGsMUl
 bj2ZzwRhy0tsfzuHeQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW56bnFRnrFibnFpXnpesn5
 uZsYgbG77djPLTsYu94FH2IU4GBU4uEtkDaJE2JNLCuuzD3EKMHBrCTCK+pqGCfEm5JYWZVa
 lB9fVJqTWnyI0RTouYnMUqLJ+cC0klcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1
 ILUIpo+Jg1OqgVFrjtPm3HT9VQ8q3ExsHSy3lme8qpihODvl56o/jTl/Yk3c7p5fLmlpvG3a
 no4nfYsvq+1rt38arNSzKOWr1useNtegKIWCw7zM0+1r5N61xDy8ancof6P0thcLTFcErw09
 ZFbA/i7EbbvKq39lM2bYc/e/6vJYclBP6PXzCO79uevYDk84NE+JpTgj0VCLuag4EQBaUVrc
 8wIAAA==
X-CMS-MailID: 20200131134857eucas1p2a4191e8a63fd1f716a12788e4aa1743a
X-Msg-Generator: CA
X-RootMTR: 20200127215538eucas1p2b8d4886de6f59f6a62257d3d66307c73
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200127215538eucas1p2b8d4886de6f59f6a62257d3d66307c73
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <CGME20200127215538eucas1p2b8d4886de6f59f6a62257d3d66307c73@eucas1p2.samsung.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <d14546d5-0cd8-c441-c2be-cdeefc8ebb8d@samsung.com>
 <CAJKOXPcZCks1SxwBP-vhpsYzpsrV9MQo91QNU2obgAppxfTiyQ@mail.gmail.com>
 <08aff2de-85d5-36b2-13bb-bad6eb5d37eb@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_054901_052320_EC65CB5B 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 myungjoo.ham@samsung.com, kgene@kernel.org, lukasz.luba@arm.com,
 kyungmin.park@samsung.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/31/20 2:47 PM, Bartlomiej Zolnierkiewicz wrote:
> 
> On 1/31/20 2:31 PM, Krzysztof Kozlowski wrote:
>> On Fri, 31 Jan 2020 at 14:30, Bartlomiej Zolnierkiewicz
>> <b.zolnierkie@samsung.com> wrote:
>>>
>>>
>>> Hi,
>>>
>>> On 1/27/20 10:54 PM, lukasz.luba@arm.com wrote:
>>>> From: Lukasz Luba <lukasz.luba@arm.com>
>>>>
>>>> Enable the Energy Model (EM) brings possibility to use Energy Aware
>>>> Scheduler (EAS). This compiles the EM but does not enable to run EAS in
>>>> default. The EAS only works with SchedUtil - a CPUFreq governor which
>>>> handles direct requests from the scheduler for the frequency change. Thus,
>>>> to make EAS working in default, the SchedUtil governor should be
>>>> configured as default CPUFreq governor. Although, the EAS might be enabled
>>>> in runtime, when the EM is present for CPUs, the SchedUtil is compiled and
>>>> then set as CPUFreq governor, i.e.:
>>>>
>>>> echo schedutil > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
>>>> echo schedutil > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
>>>>
>>>> To check if EAS is ready to work, the read output from the command below
>>>> should show '1':
>>>> cat /proc/sys/kernel/sched_energy_aware
>>>>
>>>> To disable EAS in runtime simply 'echo 0' to the file above.
>>>>
>>>> Some test results, which stress the scheduler on Odroid-XU3:
>>>> hackbench -l 500 -s 4096
>>>> With mainline code and with this patch set.
>>>>
>>>> The tests have been made with and without CONFIG_PROVE_LOCKING (PL)
>>>> (which is set to =y in default exynos_defconfig)
>>>>
>>>>               |               this patch set                  | mainline
>>>>               |-----------------------------------------------|---------------
>>>>               | performance   | SchedUtil     | SchedUtil     | performance
>>>>               | governor      | governor      | governor      | governor
>>>>               |               | w/o EAS       | w/ EAS        |
>>>> ----------------|---------------|---------------|---------------|---------------
>>>> hackbench w/ PL | 12.7s               | 11.7s         | 12.0s         | 13.0s - 12.2s
>>>> hackbench w/o PL| 9.2s                | 8.1s          | 8.2s          | 9.2s - 8.4s
>>>
>>> Would you happen to have measurements of how much power is
>>> saved by running hackbench using "SchedUtil governor w/ EAS"
>>> instead of "SchedUtil governor w/o EAS"?
>>
>> That's a good point and quite important reason behind enabling (or not) EAS...
> 
> IIUC EAS is enabled by default if you use SchedUtil
> governor and Energy Model is available on you platform.
> 
> [ SchedUtil governor is enabled in exynos_defconfig
>   although not enabled by default currently. ]

s/enabled/used/

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
