Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7A4979AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+p52bpgKh25Gq1dHRfdjX26EyBvx5YvWCpX8TnlLSo=; b=gPfmmPeg6/25jI
	oakuBo32lCg+/q5XGKMnHiC8HW718a5wWGabT+3l9XW8T2AyokLJ/i0qHpsalAVDifjzFckFHyTDr
	xauuRxNdigKetKt6Qs4ZwlZrrSD1MDy+ipwhisNmdr7DrqlUztcYl0pWJikCoYB4Sf7LHuWhcYVnK
	DOhQT8X7wVqoqJQxPFrQroRVF3herlFA8LSSsfNezkBnM5inDCQMLxYsd/XuKTitrenvPVhx3ozlB
	OdZwXD2BuMoW1V4YBaMd3kAX4gWz0jFXpx+LtFKtEdlOMMQU79DoEzl6Chqol9/LIsIaWgDbnoqqz
	KsqmHgw0uJsWvgByFcbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Pvm-0006W8-MH; Wed, 21 Aug 2019 12:41:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PvZ-0006Vc-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:41:27 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190821124123euoutp02bb04e898112bb7b845ead811df2c0dbe~88JLL9yk40462004620euoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 12:41:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190821124123euoutp02bb04e898112bb7b845ead811df2c0dbe~88JLL9yk40462004620euoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566391283;
 bh=AWVH8ErKQTpBej/vG98z0OHhZ8Sbjr1RrRMUtFdjqBs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Wm3RKf7rH0wUFAZZPqQbwO187t32Y7Ad/sUEllz+0+59j13bEdTNXqDwTwBRMLnb4
 NQqjKfoCGBmYIGWyimpXeZz4OuS65vwjxCQMIW/DJXXs4CG/iEe6ZnOF22JxoI3lrS
 J61Own9lr6ifGWitj+07w/GOqEd7QiaYa+gtLBCI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190821124122eucas1p1c61d22736ae1d2d482271ec608f455ce~88JKft-Ul1714117141eucas1p1B;
 Wed, 21 Aug 2019 12:41:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BE.DB.04309.2FB3D5D5; Wed, 21
 Aug 2019 13:41:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190821124121eucas1p29a471a96f26a9e2ec83f7785be6c6766~88JJkYuH92485024850eucas1p2j;
 Wed, 21 Aug 2019 12:41:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190821124121eusmtrp224b366b1d01b12eb7caf90744d1af89a~88JJWK8z32343923439eusmtrp2y;
 Wed, 21 Aug 2019 12:41:21 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-ce-5d5d3bf2a42e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6A.D6.04117.1FB3D5D5; Wed, 21
 Aug 2019 13:41:21 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190821124120eusmtip1748aeac163f204dbb76025899603aefa~88JIRL0bz1934619346eusmtip1G;
 Wed, 21 Aug 2019 12:41:20 +0000 (GMT)
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to
 use the regmap API
To: Krzysztof Kozlowski <krzk@kernel.org>, Bartlomiej Zolnierkiewicz
 <b.zolnierkie@samsung.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <537999b7-b0e8-33a7-4bdc-c6952a0a5d06@samsung.com>
Date: Wed, 21 Aug 2019 14:41:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPdh9eHrAuCxHkQBvJMqEnUCeU2xwkK=9yyiJ6BuTLJ+_A@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0iTYRTGe/2ujlavU/NgUjDqjwI1K+gLTSoKVkEUQZax8lO/VHIqm5p2
 la7zMpMFamvgrLCchDrNW6Q55zSNVmgX6Dawi12mpAtqpeb8lPzvd855znmfB16WkL2mgtmU
 tExBncanymkJ2WT/7Qgdi1Qq17zsWslN6O0MV19eS3EVticUd8Fwg+SuDH0jOIejjuEsQy8o
 bqDNSHPjOhviyh3tPly+20Bzd21vGe7GPTfDXXxgY7jLH78QXIPTTm/Gij8ePVJYzPm0ouHW
 WYXu/AitKG40I8W4ZdkeOlYSlSikpmQL6vDoOElyYWUrmdEtyfH07c5DHWwB8mUBr4f2Ghdd
 gCSsDN9B0GsYJcTCjaD5+WtGLMYRWO1D5NxKcfEnUhzcRqD9WYTEwoXg52M35VX548PwznZ9
 +jDLBmAeJod5r4bAOhJKjS0zl2gcAbruYuRlKY6G1gYn4WUSr4SrN2sYLwfiAzDm7KJEjR88
 uvZhZtcX74W3wx7aywQOgnPuakrk5dDsMs5kADzBwEN9LyPa3gbOKb2PyP7wtadxth8CU60V
 PuLCeQRF98XQgEsQvO8xIVEVCV09zyhvHAKvgtq2cC8C3gKDnetEXASvXH6ih0WgbyojxLYU
 tJdk4o0V8MdcNusgGAo/TJElSG6Yl8wwL41hXhrD/2dNiDSjICFLo0oSNGvThONhGl6lyUpL
 CktIV1nQ9Jfrn+xxt6C2v/FWhFkkXygtCVUqZRSfrclVWRGwhDxAmmOMVcqkiXzuCUGdfkSd
 lSporGgpS8qDpCcXOA/JcBKfKRwThAxBPTf1YX2D81DJ9lb/TP1o31FrjD4mwbZxLNCQ5Lo0
 ua9jsWcg25xSmnxwRNv1eW9dUPTjiaexF7MjTlee2tpr7zhnOkvmTXRWjcf/MFG5Gy0QVZXe
 MZjxPS7jWI3i+RlPX3+jn2pd/S5Jxc7qph2JT/cvqR2QG8tbfi1vC9nk/+abdoPjjfa37qSc
 1CTzEasJtYb/B8merxpuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xu7ofrWNjDWb807D4O+kYu8XGGetZ
 LeYfOcdq0TJrEYtF/+PXzBbnz29gt9j0+BqrxeVdc9gsPvceYbSYcX4fk0Xnl1lsFmuP3GW3
 WLT1C7tF694j7BbtT18yW2x+cIzNQcDj969JjB6bVnWyeWxeUu/R2/yOzaNvyypGj8+b5ALY
 ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyuhfu
 ZCk4ylXx65RfA+N+ji5GTg4JAROJvr5nLF2MXBxCAksZJT6ce8HWxcgBlJCSmN+iBFEjLPHn
 WhcbRM1rRom+hrfsIAlhgTiJZfefgdkiAokS064fYgcpYhboZZFY8vMBO0THG2aJjp/XwKrY
 BAwleo/2MYLYvAJ2Ejs3P2AGsVkEVCUmL14NViMqECFxeMcsqBpBiZMzn7CA2JwCgRJ3X/xi
 A7GZBdQl/sy7xAxhi0s0fVnJCmHLS2x/O4d5AqPQLCTts5C0zELSMgtJywJGllWMIqmlxbnp
 ucVGesWJucWleel6yfm5mxiBcb3t2M8tOxi73gUfYhTgYFTi4Z2gGxsrxJpYVlyZe4hRgoNZ
 SYS3Yk5UrBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnA1NOXkm8oamhuYWlobmxubGZhZI4
 b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxvU/gg1zVlSFTXaUVFkla/E4173o4LfZb4wOtDB0
 PD26u5bF4XYI283lGVYanX27Vv/RK97+ZpuY49Y1Z82NZN5ruVhqVn169vRL+QIF768zrQK5
 Ohr0ExSiw3uu7+0QFYuYUP3v/slT6redL7kY1a8VWmapuuBl0POJ8hce1C/NPxI2zeWekxJL
 cUaioRZzUXEiAH60K+8BAwAA
X-CMS-MailID: 20190821124121eucas1p29a471a96f26a9e2ec83f7785be6c6766
X-Msg-Generator: CA
X-RootMTR: 20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
 <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
 <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
 <1e428c8e-f4b5-0810-77f9-2c899c040fc7@kernel.org>
 <72eea1ea-2433-2f76-6265-5851554e845d@samsung.com>
 <CAJKOXPdh9eHrAuCxHkQBvJMqEnUCeU2xwkK=9yyiJ6BuTLJ+_A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_054126_178001_52A8C953 
X-CRM114-Status: GOOD (  14.75  )
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>, vireshk@kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, robh+dt@kernel.org, kgene@kernel.org,
 pankaj.dubey@samsung.com, linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/21/19 14:16, Krzysztof Kozlowski wrote:
>>> I'm also inclined to have it converted to a regular driver.  We already
>>> have "exynos-asv" driver matching on the chipid node (patch 3/9).
>>> The ASV patches will not be merged soon anyway, all this needs some more
>>> thought. Krzysztof, can we abandon the chipid patches for now? Your
>>
>> chipid driver is good and useful on its own. The preferred solution
>> IMHO would be to just revert "soc: samsung: Convert exynos-chipid
>> driver to use the regmap API" commit.
>
> I queued the chipid as a dependency for ASV but ASV requires the
> regmap. What would be left after reverting the regmap part? Simple
> unused printk driver? No need for such. If reverting, then let's drop
> entire driver and rework it offline.

In fact there is now no dependency between the chipid and the ASV 
driver (patch 3/9), the regmap is provided by the syscon driver/API.
I should have added "depends on REGMAP && MFD_SYSCON" to Kconfig.
Both drivers (chipid, ASV) share the registers region so the regmap 
API seemed appropriate here.
Converting the chipid code to platform driver wouldn't make sense as
it wouldn't be useful early in arch/arm/mach-exynos and we can't have
two drivers for same device (the ASV driver matches on the chipid 
compatible now).

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
