Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72302C86C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sp/CEQuvJqWnxI1kl+MozHwdzy2UNG9VBkCQd5c5kf4=; b=o+N1sRA4cwY47p
	s820BpHIwNATTb3LjIYeijXNn9z3mvYMKJ5x3VAp8MLltXcciSAnuLWRyuNUvNKVEV8unBpL9aEsY
	Fg8fn6fjBSVmDXzN154KdA1ni3LOp9uY+mR4G8cjGUYno2AzJks4wNGVPwrxAo73rjrDJAL7a+24w
	1ly6c4Bgb6Sfg0W224tXY2uvI8vmkG1ed0IcMvntIWV01qVm0E8Sg9EQDh16FeOKQtrxg+ljYIbhD
	V2nZiuH7PG4YlKcrhwlflIvvH1FihDrL0/+xlCn+SIhkHCbT7fejlvmPurjx86F04YU56Kr9jL/6i
	VTmtZIk6+svIdYfLUbaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcJB-0001h8-Pj; Wed, 02 Oct 2019 10:56:37 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcIt-0001ZB-14
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:56:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002105616euoutp02fb856659b69376c71969213b248060e3~JzzYfVMwR2178521785euoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 10:56:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191002105616euoutp02fb856659b69376c71969213b248060e3~JzzYfVMwR2178521785euoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570013776;
 bh=a0IMDPZhOCWOk4Vu3wxuz1nmbnSLf3W3a5GRUP5wqqc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=P31ypzpVLOOr89SvbXlzOT0MQ3zjzaxCj5JRVtb8FU2x6Ho6tTQU60+JOgto2OSmX
 0etqzwd5VmQLTniT/ENL5qMAYz+Rc8c92kEPj1s2zquNJCCDRoY1P72eLesSWx1t7d
 nnTlpwnGNt/BwA08rhFO7PrX0kFw+zyj/6vQ2DnM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191002105616eucas1p28dc2ab30bfff5459c6fa692713e7109a~JzzYIp7NE2135821358eucas1p2u;
 Wed,  2 Oct 2019 10:56:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E2.2F.04469.F42849D5; Wed,  2
 Oct 2019 11:56:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191002105615eucas1p2238ff9e54dd3a452d5e65a979a89a3e3~JzzX1_0pR2135821358eucas1p2t;
 Wed,  2 Oct 2019 10:56:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191002105615eusmtrp1a454ad35e225ea92a8f12fbd712a4c6f~JzzX1Ixrf3228132281eusmtrp1C;
 Wed,  2 Oct 2019 10:56:15 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-0a-5d94824f4fa6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 32.05.04117.F42849D5; Wed,  2
 Oct 2019 11:56:15 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191002105615eusmtip128d5bcd7a7ad5826a706a709fb85509a~JzzXXy9oE0068900689eusmtip1p;
 Wed,  2 Oct 2019 10:56:15 +0000 (GMT)
Subject: Re: [PATCH v3 RESEND 1/3] ASoC: samsung: arndale: Simplify DAI link
 initialization
To: Mark Brown <broonie@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <9ddc271f-e88f-8991-2625-b885f2f2fae7@samsung.com>
Date: Wed, 2 Oct 2019 12:56:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001175601.GB14762@sirena.co.uk>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDKsWRmVeSWpSXmKPExsWy7djP87oBTVNiDX6dZ7K4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF+fMb2C2+Xelgstj0+BqrxYzz+5gs1h65y27x+f1+VouLK74wOXB7bPjc
 xOaxc9Zddo9NqzrZPDYvqfeYPuc/o0ffllWMHp83yQWwR3HZpKTmZJalFunbJXBlTJ43k6ng
 IXvFvcYv7A2MG9m6GDk5JARMJFaf+8TSxcjFISSwglHi2dk/rBDOF0aJX/fb2SCcz4wSL1oe
 s8K0zJvfANWynFFixd73UFVvGSWuLVrHDFIlLBAr8WvjBBYQW0RAWeLq971gHcwCc5kk9v59
 yQ6SYBMwlOg92scIYvMK2Ek0Xv4FtoJFQEVi6tafYDWiAhESnx4cZoWoEZQ4OfMJ2FBOASOJ
 BdtmMoHYzAIGEkcWzWGFsMUlmr6shLLlJba/ncMMslhC4BG7xNatlxghfnCR+H/tPtQ/whKv
 jm9hh7BlJE5P7mGBaGhmlOjZfZsdwpnAKHH/+AKobmuJw8cvQnU7ShxechBoBQeQzSdx460g
 xGY+iUnbpkOFeSU62oQgqlUkfq+azgRhS0l0P/nPMoFRaRaS32Yh+WcWkn9mIflnASPLKkbx
 1NLi3PTUYsO81HK94sTc4tK8dL3k/NxNjMA0dvrf8U87GL9eSjrEKMDBqMTDeyNkcqwQa2JZ
 cWXuIUYJDmYlEV6bP5NihXhTEiurUovy44tKc1KLDzFKc7AoifNWMzyIFhJITyxJzU5NLUgt
 gskycXBKNTDG/rbP3a6QopPFFeP3uVBe04SpceYt5WqBjFNJ16y+WJwItl5jM3+ejXCb8IQZ
 r37+2H9CNalh3+ET/94GflO5q6M/bcJ0c+XkG/u3Bj29fJlDod/XWH2D87l7t7okHrc2CQjF
 Bz1MdLsdeEs8vfzFuztpkrt+JrpIVn/dY2G3ZlKd65uFlgpKLMUZiYZazEXFiQDsoHNdXwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNIsWRmVeSWpSXmKPExsVy+t/xu7r+TVNiDbbd0bW4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF+fMb2C2+Xelgstj0+BqrxYzz+5gs1h65y27x+f1+VouLK74wOXB7bPjc
 xOaxc9Zddo9NqzrZPDYvqfeYPuc/o0ffllWMHp83yQWwR+nZFOWXlqQqZOQXl9gqRRtaGOkZ
 WlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehlTJ43k6ngIXvFvcYv7A2MG9m6GDk5JARM
 JObNb2DpYuTiEBJYyiixfO80xi5GDqCElMT8FiWIGmGJP9e62CBqXjNKrF7bzAqSEBaIlfi1
 cQILiC0ioCxx9ftesEHMAnOZJLbdfMEK0bGdUaLz/ytGkCo2AUOJ3qN9YDavgJ1E4+VfYJNY
 BFQkpm79yQ5iiwpESBzeMQuqRlDi5MwnYBs4BYwkFmybyQRiMwvoSey4DtHLLCAu0fRlJZQt
 L7H97RzmCYxCs5C0z0LSMgtJyywkLQsYWVYxiqSWFuem5xYb6RUn5haX5qXrJefnbmIERuy2
 Yz+37GDsehd8iFGAg1GJh7chaHKsEGtiWXFl7iFGCQ5mJRFemz+TYoV4UxIrq1KL8uOLSnNS
 iw8xmgI9N5FZSjQ5H5hM8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFx
 cEo1MPrt+moq8Xb62rnvJNR81h+84vf9r+2+qeJe77xyZbcIFk/Sv3P8ukvQvSt35jl9dFlZ
 +OKlbo1iCfsTuYk1T7lO/mu7P1Vx0sIpuS/Zj/1nnzOvKOzt5knB9Yu3Z/6s+vP4a9Ybw9eT
 Z75Rq9uYPvu8SHtsq1jPv6oG+TsWZtP+33n3WJ3TTdtNiaU4I9FQi7moOBEAlNLUqu4CAAA=
X-CMS-MailID: 20191002105615eucas1p2238ff9e54dd3a452d5e65a979a89a3e3
X-Msg-Generator: CA
X-RootMTR: 20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5
References: <CGME20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5@eucas1p2.samsung.com>
 <20191001123625.19370-1-s.nawrocki@samsung.com>
 <20191001175601.GB14762@sirena.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_035619_289969_C8140CFB 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/1/19 19:56, Mark Brown wrote:
> On Tue, Oct 01, 2019 at 02:36:23PM +0200, Sylwester Nawrocki wrote:
> 
>> Changes since v1:
>>  - rebased due to reordering patches in the series
>
> These still don't apply, please check and resend specifying what you're
> basing them on - I don't think this is an ordering issue.

Sory, the above is an old comment, it just refers to what I did
between v1 and v2. I'm not sure what happened, the patches were based 
on for-next branch, git://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound

I will resend shortly with a fix for issue reported by the kbuild test.

ea7bfc805cee ASoC: samsung: Rename Arndale card driver
2db0e4f97a07 ASoC: samsung: arndale: Add support for WM1811 CODEC
fb5ca16f40f0 ASoC: samsung: arndale: Simplify DAI link initialization
82965165b0a9 Merge branch 'asoc-5.5' into asoc-next
952139a546d0 Merge branch 'asoc-5.4' into asoc-linus
4bb41984bf2f ASoC: max98373: check for device node before parsing

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
