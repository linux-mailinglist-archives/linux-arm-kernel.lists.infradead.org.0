Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC311E1BB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0rAgNCL+zZnc8FYlYz+Acgv31z+P5Oc/By8q2ZTEDc=; b=S2FAQJyMd0miDK
	5Xih7qx41EQLWENb5LpwoGdlWJSDaRcJJ780jN3TPyBQ6lAf0+moB9BuFDQpTHNs917gbloYJ96iH
	8za3pdu9tCfCZeROptMahm5K9l6GeIwB/WJEIDH8D8R1AROJincm2mLdtrUoW+bVPM/2hz+7SgpyT
	nLmzGgIT3XLTLDvlrvWMhCU10L9NcJkQaQiF/PxUUXAu/8MJjqlP37JX946BD5DivdO7exsCJRjz9
	ncZBonqJga8tqQaZZpqk7GtR3YVrOOXh63C4/DyXkVaUMaOZOqIU9N0j+9x6F9vNXw8a/xw6GKkCo
	LbanJTZgNVUkzi2Xd/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTae-0006My-6O; Tue, 26 May 2020 07:01:32 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTaQ-0006Li-V3
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:01:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200526070114euoutp028951cc936fd6d469ec13481cc327a89d~Sge1CENqi2030920309euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 07:01:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200526070114euoutp028951cc936fd6d469ec13481cc327a89d~Sge1CENqi2030920309euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590476474;
 bh=TExFOZKUdc91DA/GbHMHDJO6iJStmTQq07gI/F9otJQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ngREkd6gYrNAjBeNsyQH+DEaEujwBqRY1BL4RCR5KQabW63nPllJUW5xg2Cm9yukH
 Vy9VGD3Xh4W753TQvCp/d4oiqMfMaG7vJC2xdhhFEdeDdvUqaoP+corfxWVEu8ZshP
 q/7zeiWI6qywQ2FJzxPS29eE2qhyf6orMDFwzing=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200526070114eucas1p1b21e7d81a2b80bed13fce326d04b8fa4~Sge0v3Mwc0579305793eucas1p1C;
 Tue, 26 May 2020 07:01:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AD.1F.60698.9BEBCCE5; Tue, 26
 May 2020 08:01:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200526070113eucas1p1257c0e7ff6b0c11799b9e597c5f6b003~Sge0Z0u0a0565905659eucas1p1d;
 Tue, 26 May 2020 07:01:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200526070113eusmtrp14496b0af1b30c286212fd7472a072830~Sge0ZHP8Z3257232572eusmtrp1h;
 Tue, 26 May 2020 07:01:13 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-e1-5eccbeb959b9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C7.69.07950.9BEBCCE5; Tue, 26
 May 2020 08:01:13 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200526070113eusmtip1691e79cbdd9856fa111356479cb767ac~Sgez0JoOV0550105501eusmtip1H;
 Tue, 26 May 2020 07:01:13 +0000 (GMT)
Subject: Re: [PATCH v5 00/38] DRM: fix struct sg_table nents vs. orig_nents
 misuse
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <83d04017-c6f2-d714-963c-ffa9c7248790@samsung.com>
Date: Tue, 26 May 2020 09:01:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200513134741.GA12712@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHee69m9fR5HEaHrQMFkkv9iIJXTLUXqj7qYQiyHB1czet3Izd
 1AwqsZBaK62BbkvKrDBtak6ZZmSk6LI5WxmRFpmpH7LESh2YoW27Wn77/8/5nfN/Djw0qXgl
 CaePaU/xOi2XoZTKKHvH1Ku1zS1dqg3VHHO1u5Ng6ky1EmbWfp1k3k6OSZnKh+0EU/Ysjpl4
 O0AwtsF3EqanuVTKPP8xJEmUsdZbVsQ+9ZRRbKPns4Ttv+Ig2Pp759kPM4Mka3xfgdgnvXlS
 9lpDFWLHbZFJsmTZFjWfcSyb162PPyxLt1jxyWnJ6Ut9diIPfaP0KJAGHAvWi79IPZLRCvwA
 wY/CwjkzgaDW2Un6KAUeR+D4Gj0/Me16TIlQBQJ3x6c5M4agZvK6fyIE74Pi3krCp0OxEoZH
 XMgHkbibAEvhG3+4FMeAflQv9Wk5joex4WH/MIVXQFvedz+zGKeA8249Eplg6DQP+euBOBo8
 A3a/JvEyaBwtJUUdBn1DtwlfGOAvAVAydd/boL1mBzj7BfGEEBhxNASIegk4jQZK5C8gGOiu
 DhCNAUFPvgmJVBx87P4t9S0i8SqobV4vlrfCz4ZGQtwfBO9Hg8U3BMENe8lcrBwuFShEOgos
 jpp/sc/db8gipLQsuMyy4BrLgmss/3PLEFWFwvgsQZPGCxu1fM46gdMIWdq0damZGhvyfjPn
 jGOyCbX8OdKKMI2Ui+SM1alSSLhsIVfTioAmlaHybS5vSa7mcs/wusxDuqwMXmhFETSlDJNv
 LP+aosBp3Cn+BM+f5HXzXYIODM9DBVG6Vm2Ku8wUvelG4vLX5qpqvGvyAOMxqe+Y25wq487N
 bZeTV9Ln7qtzMq11hqby40F3PB+Mla4Id+RUfLsGjl61vdi+xtx78/isfk95Js51nz5YMpJg
 NOyVh49YVna15T9KYvicsQvcUlVuf2rDKPHCHbv77Mvqfen7ixKKlZSQzsWsJnUC9xfB9hoZ
 YgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEIsWRmVeSWpSXmKPExsVy+t/xu7o7952JM1j2Ud2i99xJJouNM9az
 WvzfNpHZ4srX92wWK1cfZbJYsN/a4suVh0wWmx5fY7W4vGsOm8XBD09YHbg81sxbw+ix99sC
 Fo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH35ZVjB6fN8kFcEXp2RTll5akKmTk
 F5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZcxaI1Dwm7Wi49Y2pgbG
 1yxdjJwcEgImEr/P7gSzhQSWMkr8naQIEZeRODmtgRXCFpb4c62LrYuRC6jmLaPE6W17mUAS
 wgIhEtNurgSzRQSUJJ6+OssIUsQscIFJ4sbOo8wQUzcxSux8A2azCRhKdL0FmcTJwStgJ/H+
 6VOwOIuAqsThhjdgV4gKxEqsvtbKCFEjKHFy5hOwOKeAjsS3h9vAbGYBM4l5mx8yQ9jyEtvf
 zoGyxSVuPZnPNIFRaBaS9llIWmYhaZmFpGUBI8sqRpHU0uLc9NxiI73ixNzi0rx0veT83E2M
 wPjdduznlh2MXe+CDzEKcDAq8fBarDkdJ8SaWFZcmXuIUYKDWUmE1+ksUIg3JbGyKrUoP76o
 NCe1+BCjKdBzE5mlRJPzgaklryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFM
 HxMHp1QDo9Y28WDXjQIHpyo7aEYfe1b3X8TZf+5vg+BdtzeVPEm93d2xVT3/i3MW60MD1gJL
 y6r2n8ed5pvcK36tc+J/095ty1L5/rQ8z5n00H/ryz9qB+TvJeVtD/vJe34hj1FTSEGhEXc4
 Yyxj6J7zuz1MN9f8ZNLhP3WNd2GNv2zN4XM/XUqDBKv6lFiKMxINtZiLihMBzmXRsPUCAAA=
X-CMS-MailID: 20200526070113eucas1p1257c0e7ff6b0c11799b9e597c5f6b003
X-Msg-Generator: CA
X-RootMTR: 20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204
References: <CGME20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204@eucas1p2.samsung.com>
 <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513134741.GA12712@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000119_310083_27D8C8AE 
X-CRM114-Status: GOOD (  12.27  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 13.05.2020 15:47, Christoph Hellwig wrote:
> I've pushed out a branch with the first three patches here:
>
>     git://git.infradead.org/users/hch/dma-mapping.git dma-sg_table-helper
>
> Gitweb:
>
>     http://git.infradead.org/users/hch/dma-mapping.git/shortlog/refs/heads/dma-sg_table-helper
>
> and merged it into the dma-mapping for-next tree.  Unless someone shouts
> the branch should be considered immutable in 24 hours.

David & Daniel: could you merge all the DRM related changes on top of 
the provided branch? Merging those changes separately would take a lots 
of time because of the dependencies on the sgtable helpers and changes 
in the DRM core.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
