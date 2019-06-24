Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A82502F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6v6lVv98PTIGQEX3v/rCpEUqVnlkinUo6plYSLNKG0=; b=Ris2u4oySNIGqu
	feCMIcYOale3rI+yTI8MHpZCpELfl/WeLkHKVMWsF8Kyd0zeKAUmhukW9t/AuagWmFhuxT/9o7N0e
	p0/hKk5mzEZxTUbD7l3435TH3PCt+n9iO5m6oXE/xEKTns7sgITyS4LS5dT2hsL7aKf6gMViF9VWN
	sr2wMtwNo8eTtEq1+3HHmBGY3BhQx5yOuyJ0m1yWr2YCYRr9LOA4xZyzl6RQFnelJ4WYftSt8RtJg
	BhIU+xlPjR/hSPKS1NLmJWxpJ7DPM0KHZIubgG0zZJdVNtrC8XF1Oij9+RGKzxFgxx7O2MrPeTjuh
	RU3GxfBx1ErUYZ65epzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJHu-0005bV-7O; Mon, 24 Jun 2019 07:21:14 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJHR-0005aK-1m
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:20:47 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190624072041euoutp017dcf47d0c27f430469205c0bb5cb69b0~rEWm_kUgc0728307283euoutp01F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:20:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190624072041euoutp017dcf47d0c27f430469205c0bb5cb69b0~rEWm_kUgc0728307283euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561360841;
 bh=AkkGYU4UEYgfsh3s+7fzHB6aVXnYZdkOfuooy+x870g=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=WkgAnjsW05sUl8X6Dlqlm58Q2AcbroHkjtjUeWf/nTaafa1+3WNjnyPWBt+6Hp27Y
 vAtgxL4uz+cujhJXZwoFIIwRylPCvpk/gDbM1oSAThGEBJDbjfiw62NCBHcdXK1k+p
 XVRgnXYj1nwF3q+OyCB4vO62LUnO8Zh7Y1U0CEzI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190624072041eucas1p2aea54a574b3873ce169927d1c4fa95d5~rEWmo1As_3236132361eucas1p2d;
 Mon, 24 Jun 2019 07:20:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 89.6C.04325.8C9701D5; Mon, 24
 Jun 2019 08:20:41 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190624072040eucas1p2d484086328b7c097693c2b45f18076db~rEWl7OxCh3225832258eucas1p2c;
 Mon, 24 Jun 2019 07:20:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190624072040eusmtrp2509024819a46be13d0f5a21e69749747~rEWltEwkM1889218892eusmtrp2t;
 Mon, 24 Jun 2019 07:20:40 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-88-5d1079c83e4a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 24.39.04140.8C9701D5; Mon, 24
 Jun 2019 08:20:40 +0100 (BST)
Received: from [106.120.50.25] (unknown [106.120.50.25]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190624072039eusmtip14a1638925c7d4e53713e27369151dee7~rEWlW37Px0343903439eusmtip1S;
 Mon, 24 Jun 2019 07:20:39 +0000 (GMT)
Subject: Re: [PATCH v2 3/4] ARM: dts: exynos: Add regulator suspend
 configuration to Odroid XU3/XU4/HC1 family
To: Anand Moon <linux.amoon@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <d94a2f99-fb99-c238-7011-9bbb4c0cd90f@samsung.com>
Date: Mon, 24 Jun 2019 09:20:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANAwSgTFQo8wL5s-djwPXFFOLtTHvRQif6234kFC=23PwMhuEQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMKsWRmVeSWpSXmKPExsWy7djP87onKwViDdZ+ZbSYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLFu4y12B3aPnbPusntsWtXJ5rF5Sb3H501yASxRXDYp
 qTmZZalF+nYJXBkfLhxjKVjOWTHh8QH2BsYV7F2MnBwSAiYSm/f/YOli5OIQEljBKNG9/QCU
 84VR4uuMe0wQzmdGiabjS4AcDrCWPTtdIOLLGSX6ev+yQThvGSWuXFrFBDJXWKBAovPoWzYQ
 W0TAX6Jn4z5WkCJmgZuMEt+3rmUESbAJGEp0ve0CK+IVsJP4ceo1O8gGFgFViffr+UDCogIx
 Eg/n34EqEZQ4OfMJC4jNKRAoceHvPrAfmAXkJba/ncMMYYtL3HoyH+xqCYFl7BIrJ25jh7ja
 ReL7NjGIn4UlXh3fAvW/jMT/nTD1zYwSD8+tZYdwehglLjfNYISospY4fPwiK8ggZgFNifW7
 9CFmOkq8uZYKYfJJ3HgrCHECn8SkbdOZIcK8Eh1tQhAz1CRmHV8Ht/XghUvMExiVZiF5bBaS
 Z2YheWYWwtoFjCyrGMVTS4tz01OLjfNSy/WKE3OLS/PS9ZLzczcxApPO6X/Hv+5g3Pcn6RCj
 AAejEg+vwAb+WCHWxLLiytxDjBIczEoivEsTBWKFeFMSK6tSi/Lji0pzUosPMUpzsCiJ81Yz
 PIgWEkhPLEnNTk0tSC2CyTJxcEo1MAauSX783k1KQVzbX+n423dPXdfvLozyV0y4KXlgHcPO
 tZcX+b1W77t24aP//v69JwR4Jrsp9p7U38mZ+nWudnuv3q1nwX5+z1l1vyw0ufHnEGvr36/3
 inWW/lV8tWxCUjeHeBTz6l0X4364uMotir60ce67OYcj1AVNjlkknrxUIOjcza3jq6XEUpyR
 aKjFXFScCAA6JuHXNgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xu7onKgViDY4cFrCYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLFu4y12B3aPnbPusntsWtXJ5rF5Sb3H501yASxRejZF
 +aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehkfLhxjKVjO
 WTHh8QH2BsYV7F2MHBwSAiYSe3a6dDFycQgJLGWUaD8KEucEistInJzWwAphC0v8udbFBmIL
 CbxmlPg6pQjEFhYokOg8+hYsLiLgK/G/4RYziM0scJNRouuODcTQH4wS87YsYwRJsAkYSnS9
 hRjEK2An8ePUa7AjWARUJd6v5wMJiwrESHRN/ckCUSIocXLmEzCbUyBQ4sLffewQ880k5m1+
 CLVLXmL72zlQtrjErSfzmSYwCs1C0j4LScssJC2zkLQsYGRZxSiSWlqcm55bbKRXnJhbXJqX
 rpecn7uJERhl24793LKDsetd8CFGAQ5GJR5egQ38sUKsiWXFlbmHGCU4mJVEeJcmCsQK8aYk
 VlalFuXHF5XmpBYfYjQF+m0is5Rocj4wAeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJ
 zU5NLUgtgulj4uCUamA8taH+p2rW/JWexWdda3281B6+mL3SWW630gXT3R42uaZt0/OeliQ8
 mCex0H7FhodFnRXySvetV5/zPrbfQnVH84QEngWvSvK1NkQZ7jI+r2PlNs/Yq2p39Peftyo/
 5i7f5vrlxrmPztVndM0UJkww0lBeOWGv3J/Mm1sjVMUU2dZZXDZ5f/2wEktxRqKhFnNRcSIA
 XxGznMgCAAA=
X-CMS-MailID: 20190624072040eucas1p2d484086328b7c097693c2b45f18076db
X-Msg-Generator: CA
X-RootMTR: 20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86
References: <20190621155845.7079-1-krzk@kernel.org>
 <20190621155845.7079-3-krzk@kernel.org>
 <CGME20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86@epcas2p3.samsung.com>
 <CANAwSgTFQo8wL5s-djwPXFFOLtTHvRQif6234kFC=23PwMhuEQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_002045_578485_54CA6171 
X-CRM114-Status: GOOD (  13.57  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On 2019-06-23 18:02, Anand Moon wrote:
> Thanks for this patch. Please add my
>
> Tested-by: Anand Moon <linux.amoon@gmail.com>
>
> [snip]
>
> Could you integrate below small changes into this patch.
> with these below changes suspend and resume work correctly at my end.
>
> [1] XU4_suspendresume.patch
>
> As per S2MPS11B PMIC 1.2.1 Regulator (Features)
> Fix the min max value for *Buck7* and *Buck8*
>
> -- Buck7 (VDD_1.0V_LDO) 1.5 A (1.2 V to 1.5 V, 12.5 mV step, default on 1.35 V)
> -- Buck8 (VDD_1.8V_LDO) 2.5 A (1.8 V to 2.1 V, 12.5 mV step, default on 2.0 V)

Could you elaborate why such change for Buck7 and Buck8 is needed?

> Also add suspend-off for *Buck9*
> Buck9 internally controls the power of USB hub.
> Adding suspend the this node help proper reset of USB hub on Odroid
> XU4 / HC1/ XU3
> during suspend and resume. Below it the logs from my testing.

Disabling Buck9 in suspend indeed reduces the power consumed by the 
board during suspend-to-ram from about 80mA to as little as 7-10mA, what 
matches the results of OdroidXU3. Thanks for the hint!

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
