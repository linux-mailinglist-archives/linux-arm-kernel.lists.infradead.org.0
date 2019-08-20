Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A40B9602C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4PZ0+bhfC7A81s0ZQ7BU/dp9uwWtY9rqyjPe6pJZjU=; b=NhYvsTd2dL4QmG
	9PaK8bJ5gx1YP1Nmh1Ho1SL5tUZC9PIuf562kblQqM78XNzdIr5m7HFF4ynt65oaP75DGs5mqUNtu
	sfDYgQ3EE7NdN6YT9vAe/p8/H/2y3QTfqDzcs3ZPgFowGqhRV6laL5zRAJ8EbBh/+OACZSZIKcJaT
	BgOZYwcb61qU8Ngob4+9ylDZ1C6UNAwV5AfalVHkV+Rvpk2OcTbkSII42Fu7aj3jCukZaMbKEZ9nx
	uG9NPOJi3ypgoLDv27e19RsbYWSjPaEwRVXo2cD4F6WhTFFfw8U5q7GyMP9DsxquUFkIMEd/Jmi0O
	qLynWnMHyrEPVV4PgjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04HO-00080T-2F; Tue, 20 Aug 2019 13:34:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04H9-0007zz-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:34:17 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190820133413euoutp027b86cdc650564de631d2131dbce824e5~8pOBCG8kP0977309773euoutp028
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 13:34:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190820133413euoutp027b86cdc650564de631d2131dbce824e5~8pOBCG8kP0977309773euoutp028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566308053;
 bh=y5+m4oh3f5HZ9GaPBhzEmkmmjPQmnF4NtajzvtKbr18=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=n5ciGKL9vwsCN5Oy5LCLmlyh75DdU7gQpyuqVEallfgUS5vxlaRDs8n981kAfwYDr
 eHHmqLjEp6QFmuHGAzDR1QxaqE7h/MWscRV1NgCPP39qL5Wit5tWcBymbHS+N6cwhF
 ZkuNCOSYhgEl4xzKvIhmm3jSj6vAqHn0tP5oJigQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190820133412eucas1p2abe6fdaea89cd7caacb8ed0681e64479~8pOAPM6QD2748027480eucas1p2J;
 Tue, 20 Aug 2019 13:34:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 85.61.04469.4D6FB5D5; Tue, 20
 Aug 2019 14:34:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190820133411eucas1p25741893d0f33d3b7603b3ccce81532c7~8pN-STqtL2646926469eucas1p2F;
 Tue, 20 Aug 2019 13:34:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190820133411eusmtrp2ee3c3cd7ae983a4c99fdc918737663e8~8pN-EE3nw0087000870eusmtrp2j;
 Tue, 20 Aug 2019 13:34:11 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-ff-5d5bf6d49254
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.16.04166.3D6FB5D5; Tue, 20
 Aug 2019 14:34:11 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190820133410eusmtip2e34747c4bdc0b17fec87fddf04b9e97d~8pN_C699I1271112711eusmtip21;
 Tue, 20 Aug 2019 13:34:10 +0000 (GMT)
Subject: Re: [PATCH] MAINTAINERS: Extend patterns for Samsung SoC, Security
 Subsystem and clock drivers
To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <83e1be95-1fb5-ab23-0517-aef220ebdd9e@samsung.com>
Date: Tue, 20 Aug 2019 15:34:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190818172750.20921-1-krzk@kernel.org>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRjtvR/bdTS7rYWPS/oYCSmWCQU3ij4g69avfpZiecuLWm7K7lxa
 UaYVactMTW0MtAiWs1KnmS7T0tSyH0MLnYm1yJKMWeqytNLcrpL/zjnPed7nHHgpXPGFVFGJ
 Wj2v03JJaomMqGufdKx/MxEds7GodTnT6xkiGbPjAsFcGQ5icptmEHPt41eccTiqpIztYw/J
 jBrfkcz7d5MY89puljAljiaM6eqMZKZ7qgnGav+DmJmpLHznEvab86KUrS3vw9gG04CUrXsa
 zNqs2RK25s45dvpWIcE+G2nE2NxaK2LHbSsPyKJk2+L4pEQDrwvfHitLqK5ySVMe4GmWC+1k
 BvqE5SA/CuhN0DNYIclBMkpB30WQY/6LicSDYKCrExfJOIJHJrN0fqXKOU2KAwuC0oJ2qUjc
 sysVJsLrWkYnQnPlFPJi5SwutWf6TDjdhUOJxe27LqEj4Gpbrs8kp7dDhTt/9lmKIuhgGKpc
 4pWX0wdhzNVKipal8PLmoO99P3oz9NX/xb0YpwMg01NOingVPHKbfbGBvk5Br6durulusGeM
 zuFlMNxRO1cnCGYaSjFxIQuB8XG/VCR5CN53lCHRtRVaO7p86XA6BCrt4aK8CyraX2JeGWh/
 cLqXiiH8Ib+uGBdlOVy+pBDda+G3tXguggquDM4QeUhtWlDNtKCOaUEd0/+7ZYiwogA+VdDE
 80KElj+5QeA0Qqo2fsOxZI0NzX7AV9MdY/XoR/fRFkRTSL1YXt8XHaMgOYOQrmlBQOFqpTzN
 HBWjkMdx6ad4XfIRXWoSL7SgFRShDpCfXuSKVtDxnJ4/wfMpvG5+ilF+qgwUlX9272TcuoKQ
 kNiRtn0vSsIOK8nP96Mjjfs1/R8eN/96wxWw5QePH+pNP94clp3tXG+0DiuLIy3BeRMDKzhX
 9fdjL3b8tOzBn1za1HZRjxq0Sd2F5y0jKmNojKXQUPTwwW1bZGDK6i2NN9IMu0PSbqavCXzu
 DnjbVKM/fOZeWaVSTQgJXEQorhO4fxibm+R8AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFIsWRmVeSWpSXmKPExsVy+t/xe7qXv0XHGqw9LGpx/ctzVos551tY
 LLpfyVj07fvPaNH/+DWzxfnzG9gtNj2+xmrxseceq8X9ez+ZLC7vmsNmMeP8PiaLi6dcLf5d
 28hisWrXH0aL/7+amR34Pd7faGX32LLyJpPHzll32T22HVD12LSqk81j85J6j38Lp7B4HHy3
 h8mjb8sqRo/Pm+QCuKL0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJS
 czLLUov07RL0MjZueMBesI65YnnLMdYGxqdMXYycHBICJhIbbvxj7WLk4hASWMoo0da9m7GL
 kQMoISUxv0UJokZY4s+1LjaImteMEi9nT2IBSQgLZErsX/+LEcQWAbJvvV3LAlHUwSjRc/gm
 M4jDLHCZWeLJzjZ2kCo2AUOJ3qN9YB28AnYSq99OYgXZxiKgKvF8PT9IWFQgQuLwjllQJYIS
 J2c+AVvGKWAqcXPHX2YQm1lAXeLPvEtQtrhE05eVrBC2vMT2t3OYJzAKzULSPgtJyywkLbOQ
 tCxgZFnFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGO/bjv3cvIPx0sbgQ4wCHIxKPLw7bkbH
 CrEmlhVX5h5ilOBgVhLhrZgTFSvEm5JYWZValB9fVJqTWnyI0RTot4nMUqLJ+cBUlFcSb2hq
 aG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVH8/UmtpWfmPbt/IPKFz/ad
 K9f8cp2SuFhmJU/6Cefzjg6FItP1b784MEdXdfcBhgb/s2cezrxxRvD8mRerVbyesG+4aJ5U
 17rZ/atQ9O6i0w4cTbeDI6tuln7d8PiNhf0vttz6OTVZdgU7ehsab0UbqpvGL+t303ZaZ3b2
 nuiWU3u8kivDFssosRRnJBpqMRcVJwIAwa6cxg0DAAA=
X-CMS-MailID: 20190820133411eucas1p25741893d0f33d3b7603b3ccce81532c7
X-Msg-Generator: CA
X-RootMTR: 20190818172803epcas2p42fa4c0219beb7de452d276cb06bfa73a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190818172803epcas2p42fa4c0219beb7de452d276cb06bfa73a
References: <CGME20190818172803epcas2p42fa4c0219beb7de452d276cb06bfa73a@epcas2p4.samsung.com>
 <20190818172750.20921-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_063416_165228_6F928387 
X-CRM114-Status: GOOD (  11.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-crypto@vger.kernel.org,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/18/19 19:27, Krzysztof Kozlowski wrote:
> Extend the patterns to cover all related files in respective
> categories:
> 1. Samsung Exynos ARM architecture: add soc drivers headers and make
>    directory matches consistent,
> 2. Samsung Security SubSystem driver (crypto): add bindings,
> 3. Samsung SoC clock drivers: add S3C24xx, S3C64xx and S5Pv210 bindings.

Acked-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
