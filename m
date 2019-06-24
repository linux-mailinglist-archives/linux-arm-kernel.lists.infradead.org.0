Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1665050A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ba9uuvE/DW/uhBVzPOGUrVEkwKaff1iKD6eBrv1cllo=; b=ugjAQiKImUkllt
	dV5KRuxjPL/8BIEKLKvPK45uLUbNcwLge4wJssVcrhfual9xtgcfdwo2x1iwFjCI+wJchOoAJNfBa
	LCz+zGo8ipKxI37aHZfu0YTlzzs0zh9YyEZ4+5et/rR5s+afBgJ7i1A7bVhiCQf4e1F5cTeGhYUj8
	Sb/9PqPfB5sZmDuE9R69HMHPg6wi6ZTXQQ8hSObgKhy9sYsPZMJLP7V7P1BlI4Y9puFhGBKW+2rdx
	s+K0C0Z6XSlM8jbv5tWkMkpnN8855a2IXoLoTqpTHi0dAbzHAibu465jwow8qsdZDd2g13n+wpcTD
	GNv+gH3p+AbLCDMY/GZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKrD-0004nb-Nd; Mon, 24 Jun 2019 09:01:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKqy-0004mc-SP
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:01:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190624090129euoutp0230a169afaea061e94e2ee19e8126a00b~rFunAY60n2223822238euoutp025
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:01:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190624090129euoutp0230a169afaea061e94e2ee19e8126a00b~rFunAY60n2223822238euoutp025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561366889;
 bh=1tUvwV6TPThs11nN+9aGdmPaQlqKKH5f6BaMh/ss/Bw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=GatHPGCaOPGcbbwA2rAwUNc687v8+IajG30iihPO1/14CUAUEi+4ZUgmGA+9YfkhF
 BDu8RrCJM0a2V9nMqbscQL7WJACCrkRF2/uX8uX/rv7IjfqhqX3En63e9jso7tTH3r
 7LwpsR1VdMVlntpGZB2hXKaZ3G8ikZr+Bexoa7pk=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190624090128eucas1p1da96f3b2a68421f66b6609fb1e8c7906~rFumkFvBM2770927709eucas1p1n;
 Mon, 24 Jun 2019 09:01:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 18.61.04298.861901D5; Mon, 24
 Jun 2019 10:01:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190624090127eucas1p1b71b2427ac9880533b0c20f82537016f~rFulwKJpm1081410814eucas1p14;
 Mon, 24 Jun 2019 09:01:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190624090127eusmtrp120a622067f930c185b497305734827a3~rFuliGWOl1547615476eusmtrp1X;
 Mon, 24 Jun 2019 09:01:27 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-44-5d1091688a05
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 56.DA.04140.761901D5; Mon, 24
 Jun 2019 10:01:27 +0100 (BST)
Received: from [106.120.50.25] (unknown [106.120.50.25]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190624090127eusmtip22e0282769642a7cbeba3cce3f8464e61~rFulH4ITK2745127451eusmtip2P;
 Mon, 24 Jun 2019 09:01:26 +0000 (GMT)
Subject: Re: [PATCH v2 3/4] ARM: dts: exynos: Add regulator suspend
 configuration to Odroid XU3/XU4/HC1 family
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <2f58b63e-adf1-7935-8849-f311dc991b84@samsung.com>
Date: Mon, 24 Jun 2019 11:01:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeXELUjsuW9eyGuRj56067qnL-J2Lt4U42mYiyx=X+F_Q@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCKsWRmVeSWpSXmKPExsWy7djP87oZEwViDf7O5bGYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLFu4y12B3aPnbPusntsWtXJ5rF5Sb3H501yASxRXDYp
 qTmZZalF+nYJXBnvVnoXLBeuePtpF2sD43r+LkZODgkBE4nzz7awdjFycQgJrGCUmPK1gQnC
 +cIosXXGIRaQKiGBz4wSD086wXT8mfaAEaJoOaPEz5MvmSGct4wSnydsYAKpEhYokOg8+pYN
 xBYR0JS4/vc72A5mgaVMEl8PNLCDJNgEDCW63naBFfEK2Em8nXSWEcRmEVCV6G98BDZIVCBG
 4uH8O1A1ghInZz4BO4lTIFBi6c8JYHFmAXmJ7W/nMEPY4hK3nswH+0FCYBW7xJJls5kh7naR
 eLN9JTuELSzx6vgWKFtG4vTkHhaIhmagP8+tZYdwehglLjfNYISospY4fPwi0A8cQCs0Jdbv
 0gcxJQQcJd5cS4Uw+SRuvBWEuIFPYtK26cwQYV6JjjYhiBlqErOOr4PbevDCJeYJjEqzkHw2
 C8k3s5B8Mwth7QJGllWM4qmlxbnpqcWGeanlesWJucWleel6yfm5mxiBaef0v+OfdjB+vZR0
 iFGAg1GJh1dgA3+sEGtiWXFl7iFGCQ5mJRHepYkCsUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 qxkeRAsJpCeWpGanphakFsFkmTg4pRoYbb2k/nFsTTLb3+GcX1cnYZEUuNPbnSHp4d9LTLZ5
 25x+rTrR0rDewfPT3O3JLe+nxH6YoPjW9OkaP7m5pzZLMfY0m/X3+3t2qbCGFd44qP7MXvls
 9/nZpbePPDl5qmfS/ozI3y4sajuqu6ZVbEyuZIj8En3fP3nznEUXX74qzJbrkE2MbYhWYinO
 SDTUYi4qTgQARj0T5jcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsVy+t/xe7rpEwViDX7tFreYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLFu4y12B3aPnbPusntsWtXJ5rF5Sb3H501yASxRejZF
 +aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehnvVnoXLBeu
 ePtpF2sD43r+LkZODgkBE4k/0x4wdjFycQgJLGWUuHvgCRtEQkbi5LQGVghbWOLPtS42iKLX
 jBJzWvvAEsICBRKdR9+CNYgIaEpc//udFaSIWWApk8SFU0tYITq+MElM/72PEaSKTcBQoutt
 F1gHr4CdxNtJZ8HiLAKqEv2Nj5hAbFGBGImuqT9ZIGoEJU7OfAJmcwoESiz9OQGsl1nATGLe
 5ofMELa8xPa3c6BscYlbT+YzTWAUmoWkfRaSlllIWmYhaVnAyLKKUSS1tDg3PbfYSK84Mbe4
 NC9dLzk/dxMjMNa2Hfu5ZQdj17vgQ4wCHIxKPLwCG/hjhVgTy4orcw8xSnAwK4nwLk0UiBXi
 TUmsrEotyo8vKs1JLT7EaAr03ERmKdHkfGAayCuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCe
 WJKanZpakFoE08fEwSnVwBgZ4zl7v8lhqXm9e63kr1sc2HCedcJ/rSC3E2VbTV6lXV8kIv7B
 pH419/GnvLPKup5Fh3/8zMLT6vLr5XKJhon2U3x3PLzo6nvp4OLi7t1xyX6izx69tC76pRvx
 SOPh5g0f/gcY/17w5Osynr8yxYbdJmqq/xc/mmRq1W3oWLI3LZ/z3aP3M2cqsRRnJBpqMRcV
 JwIAMEpbl8sCAAA=
X-CMS-MailID: 20190624090127eucas1p1b71b2427ac9880533b0c20f82537016f
X-Msg-Generator: CA
X-RootMTR: 20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86
References: <20190621155845.7079-1-krzk@kernel.org>
 <20190621155845.7079-3-krzk@kernel.org>
 <CGME20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86@epcas2p3.samsung.com>
 <CANAwSgTFQo8wL5s-djwPXFFOLtTHvRQif6234kFC=23PwMhuEQ@mail.gmail.com>
 <d94a2f99-fb99-c238-7011-9bbb4c0cd90f@samsung.com>
 <CAJKOXPeXELUjsuW9eyGuRj56067qnL-J2Lt4U42mYiyx=X+F_Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_020133_153373_25FD7B81 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 2019-06-24 09:41, Krzysztof Kozlowski wrote:
> On Mon, 24 Jun 2019 at 09:20, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>> On 2019-06-23 18:02, Anand Moon wrote:
>>> Thanks for this patch. Please add my
>>>
>>> Tested-by: Anand Moon <linux.amoon@gmail.com>
>>>
>>> [snip]
>>>
>>> Could you integrate below small changes into this patch.
>>> with these below changes suspend and resume work correctly at my end.
>>>
>>> [1] XU4_suspendresume.patch
>>>
>>> As per S2MPS11B PMIC 1.2.1 Regulator (Features)
>>> Fix the min max value for *Buck7* and *Buck8*
>>>
>>> -- Buck7 (VDD_1.0V_LDO) 1.5 A (1.2 V to 1.5 V, 12.5 mV step, default on 1.35 V)
>>> -- Buck8 (VDD_1.8V_LDO) 2.5 A (1.8 V to 2.1 V, 12.5 mV step, default on 2.0 V)
>> Could you elaborate why such change for Buck7 and Buck8 is needed?
> Anand has here valid point - the constraints in DTS do not match
> hardware manual. This leads to question whether voltage table in
> driver is proper... Another point is the voltage itself. The
> schematics describes them as at specific voltage (1.35 V and 2.0 V)
> but after boot they are 1.2 V and 1.85 V. Maybe this shift comes from
> the problem above.
>
>>> Also add suspend-off for *Buck9*
>>> Buck9 internally controls the power of USB hub.
>>> Adding suspend the this node help proper reset of USB hub on Odroid
>>> XU4 / HC1/ XU3
>>> during suspend and resume. Below it the logs from my testing.
>> Disabling Buck9 in suspend indeed reduces the power consumed by the
>> board during suspend-to-ram from about 80mA to as little as 7-10mA, what
>> matches the results of OdroidXU3. Thanks for the hint!
> Although I did not get what is the difference in the logs (Anand
> pasted two logs but they look the same) but the power consumption is
> reason is good enough. I would be happy to put in the changelog entire
> consumption  difference. I can measure it on XU3-Lite but can you give
> me the XU4 (before and after)?\


HC1:

next-20190620: 120mA (@5V)
this patchset: 72mA (@5V)
this patchset + fixup from Anand: 7-10mA (@5V)

XU4 (SDcard):

next-20190620: 88mA (@5V)
this patchset: 74mA (@5V), sometimes 42mA (@5V)
this patchset + fixup from Anand: 6-9mA (@5V)


XU4 (eMMC):

next-20190620: 100mA (@5V)
this patchset: 72mA (@5V), sometimes 41mA (@5V)
this patchset + fixup from Anand: 6-9mA (@5V)


Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
