Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D1B644E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyzSO4wduhBpXRgBLnNHCGUbuhMc8O2Tf9XUHAEVpFg=; b=CZkqmPTFTsTD9z
	8UvUFrNKreBGbJdjD6iTlLFVbG33hxyl/Dq2xdT0n6+HAR4bQ52up38IutyMQ6eLEsc5DVoP+CLRe
	X10R+8fgORM3dOy9xq1xoigswg/wRMKIhYwNxwl67ftZwUj0IxihyuP+K2e/Hw3eJJlkysgsi9WwP
	XqeGsvuySteLv4btJowqme5nsCr+TsRoEHG/4ijV6DIS4X7JNDhRFJjKYG2kGNJRdneSqGvIPq4ap
	mYxZ2ztKmrvLObutiVlvJOjnB7x5ZILqVYEHGvyruClF9to20GA6ScdAyWF7to/g/v+b+KE6D51vc
	p29lpZWHjaWPpw836wnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9S3-0000tr-6g; Wed, 10 Jul 2019 10:03:51 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9Rl-0000sU-Dr
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:03:35 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190710100329euoutp01f7ecc8b54a4ad130877962d60f68b273~wA5UPWp6D2413724137euoutp01n
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 10:03:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190710100329euoutp01f7ecc8b54a4ad130877962d60f68b273~wA5UPWp6D2413724137euoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562753009;
 bh=05OMm3VSTi/89wp1oOwXoIF+99YdS1ZF43mBPBMGA4E=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=G1TmNNUZiXJgpwqPPyPQOjrIjoyTc5So/kWh6AXZOVc50jGcQhd2qDNJ94p7PAj7s
 bJn3XsT3CVfGiG2Oin9/OZHFGR3r7RCI+nK3pR0Xt8IW4DX9pOxKV+1TneChCucxNa
 sVMhxEBkkmx9+fioWFPUt8UaXHHy9bK/dWurELzw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190710100328eucas1p23ede1aa2c1baed33bde4a075181f9f9f~wA5TUiX3f1797817978eucas1p26;
 Wed, 10 Jul 2019 10:03:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 35.6E.04377.0F7B52D5; Wed, 10
 Jul 2019 11:03:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190710100327eucas1p22155293a32da90454bf2559080a8e013~wA5SXvlfw1796417964eucas1p25;
 Wed, 10 Jul 2019 10:03:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190710100327eusmtrp14a2d7009dca3152c14d70669f797b532~wA5SJdnQf2175421754eusmtrp1b;
 Wed, 10 Jul 2019 10:03:27 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ca-5d25b7f002d5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 06.56.04140.FE7B52D5; Wed, 10
 Jul 2019 11:03:27 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190710100326eusmtip16170632a9ff55b074bfe324aae6c82e6~wA5Rd6hGh0440304403eusmtip1M;
 Wed, 10 Jul 2019 10:03:26 +0000 (GMT)
Subject: Re: [PATCH 0/3] add coupled regulators for Exynos5422/5800
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <91f65527-3440-90fd-4096-5824fba1df78@partner.samsung.com>
Date: Wed, 10 Jul 2019 12:03:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAJKOXPd+UZ2MdrTVfBv5UYzK5LgKNQHUFzRbRNeq271EaDSchg@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTURzHO/exe11Or8vyRy9lJWHlowd0ohCj16iIwn/EsFp2U2lO2XRW
 Eq3IJ64ki2zJzNlTLHOK2kSDNVr5tkBFqUxnD2tgbJCVrZzXyP8+v+/v9zvnfOCwpPQ9vZhN
 UWXwapVCKROJqYbnP7rCJxpDE6Jyqn1xbWkNjfvdH2lcbuui8eXRLyTu7n7M4M4LXxlsHu2j
 8WtLmQi79DaES7tbCfzQ9obBd/p7CTx0/r4If53sJHBOi43Bnr5aCtcNPxfFBMirjdVIbq4q
 EMnrbp+TX6qvQnL7QCMhd5mXHxDFi7ce55UpWl4dGX1UnDyZbyLS2/xPTbT0MDpU5FuIfFjg
 NsLVy3aiEIlZKXcfgbnLQAqFG8FPTx4lFC4Ew7Wt1L8VY6WBERr3EDjyxmcLJ4KSD99EhYhl
 F3DbYaolzLsQyIVB/+/vtHeG5CYp0I0/mTlJxG2CkcYOwssSbhf06IZoL1NcKEyNlCIvL+Ti
 oM1mpISZAHh5wzHDPtxBsOudjJdJLggGHeWEwMHQ6CybcQCugIXasUpCePYOcJvfzSosgHF7
 PSPwUmgvKZrNs2Cs4hIjLF+cds77NtvYAs/svbTXjJzWqbFECvE2cHh+I28MnB8MOAOEN/jB
 lYbrpBBLID9XKkyHg/FPBy3wEij884guRjLDHDPDHBvDHBvD/3tvIaoKBfGZmtQkXrNexWdF
 aBSpmkxVUkRiWqoZTX+8do/d3YQsU8esiGORzFcCF1cmSGmFVnM61YqAJWWBktbdKxKkkuOK
 02d4ddoRdaaS11jREpaSBUmy5w0fknJJigz+JM+n8+p/XYL1WaxDd8/nphfvm3hwRjv6Kfhm
 dJQ/tWupbdX8/Y/apiw72GLHBlNdPclYtYnRn2OzBo8qQ562Ny0/XBdVUxJS8natJGika9nO
 2D2uF85svXT344jsJ8rmE36MPGaR6UWEO+dHfHCFniw+aI7rzRDrf40F+5oq955tfuVYcy23
 Y3OsOtshozTJinWrSbVG8RdWaxm4dAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCIsWRmVeSWpSXmKPExsVy+t/xu7rvt6vGGkw9yWmxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaLNz/OMlm07j3CbvHv2kYWi80PjrE5CHqsmbeG0WPTqk42j81L6j36tqxi9Dh+YzuT
 x+dNcgFsUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWpRfp2
 CXoZPzoWMRWc4q/4sPcCewNjD08XIyeHhICJxLzFs9i7GLk4hASWMkq8P/yWHSIhLdF4ejUT
 hC0s8edaFxtE0WtGid67a1i6GDk4hAWcJf7s1QSpERHQlLj+9zsrSA2zwB8Wia7GGYwQDfcZ
 JT4sWg82lU3AXOLR9jNgU3kF3CQuNNxmBbFZBFQl/jwCaeDkEBWIkJh0bScLRI2gxMmZT8Bs
 ToFAieO9ENcxC6hL/Jl3iRnCFpe49WQ+E4QtL7H97RzmCYxCs5C0z0LSMgtJyywkLQsYWVYx
 iqSWFuem5xYb6RUn5haX5qXrJefnbmIExvi2Yz+37GDsehd8iFGAg1GJh1eiRSVWiDWxrLgy
 9xCjBAezkgjvPnflWCHelMTKqtSi/Pii0pzU4kOMpkDPTWSWEk3OB6afvJJ4Q1NDcwtLQ3Nj
 c2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjJPWrEi7+kF4f6BoutaKF8HT0jcszV/d
 PHW6yr1DG0yM11xUit7bvuzl21w9Yc3/S3JOHAh9G/3s8dPlezU6xH88s6+OeZ512KH6Sc+v
 w0o1ziZ9ovq2Asaf8x8sy5/5eSL/p2I95f6YF4lHvqTks8pGb4qdui90y7yVzzRyblrH8O3i
 OKX8Zb8SS3FGoqEWc1FxIgDKvMj4BwMAAA==
X-CMS-MailID: 20190710100327eucas1p22155293a32da90454bf2559080a8e013
X-Msg-Generator: CA
X-RootMTR: 20190708141158eucas1p17d4b50978dbe1e5c876ce6d8f433cc95
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141158eucas1p17d4b50978dbe1e5c876ce6d8f433cc95
References: <CGME20190708141158eucas1p17d4b50978dbe1e5c876ce6d8f433cc95@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CAJKOXPd+UZ2MdrTVfBv5UYzK5LgKNQHUFzRbRNeq271EaDSchg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_030333_677421_321D8C92 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.07.2019 11:00, Krzysztof Kozlowski wrote:
> On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
>>
>> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>>
>> Hi,
>>
>> The main purpose of this patch series is to add coupled regulators for
>> Exynos5422/5800 to keep constrain on voltage difference between vdd_arm
>> and vdd_int to be at most 300mV. In exynos-bus instead of using
>> regulator_set_voltage_tol() with default voltage tolerance it should be
>> used regulator_set_voltage_triplet() with volatege range, and this is
>> already present in opp/core.c code, so it can be reused. While at this,
>> move setting regulators into opp/core.
>>
>> This patchset was tested on Odroid XU3.
>>
>> The last patch depends on two previous.
> 
> So you break the ABI... I assume that patchset maintains
> bisectability. However there is no explanation why ABI break is needed
> so this does not look good...

Patchset is bisectable, first one is simple and do not depends on others,
second depends on first, last depends on first and second.

What do you mean by breaking ABI ?

> Best regards,
> Krzysztof
> 
>>
>> Regards,
>> Kamil
>>
>> Kamil Konieczny (2):
>>   opp: core: add regulators enable and disable
>>   devfreq: exynos-bus: convert to use dev_pm_opp_set_rate()
>>
>> Marek Szyprowski (1):
>>   ARM: dts: exynos: add initial data for coupled regulators for
>>     Exynos5422/5800
>>
>>  arch/arm/boot/dts/exynos5420.dtsi             |  34 ++--
>>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi |   4 +
>>  arch/arm/boot/dts/exynos5800-peach-pi.dts     |   4 +
>>  arch/arm/boot/dts/exynos5800.dtsi             |  32 ++--
>>  drivers/devfreq/exynos-bus.c                  | 172 +++++++-----------
>>  drivers/opp/core.c                            |  13 ++
>>  6 files changed, 120 insertions(+), 139 deletions(-)
>>
>> --
>> 2.22.0

-- 
Best regards,
Kamil Konieczny
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
