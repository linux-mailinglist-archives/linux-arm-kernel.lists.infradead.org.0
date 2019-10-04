Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E81CBAC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOvmS4jOFvGpabZ1bSs41IuEwUooHrukohdE5RCRE7I=; b=Cse/ttve7fd4WW
	Y9Dh5uhuwrqEG/MlZCgol/M3G8ZPp0/rdIc0eNTQdnVp+MmBkp76wrwzNBZL6cTSR9jtY/KvKbbsu
	uracMDfwt/+87g11I+OZTg6Ef3wNlMcHSHua/DwRa0l7mY0zWMlv9A5ydgPLeCJfemrf+oBiOywF2
	qsyHC68g6Zritamtf0KSsOYEocGRcFohCvyYB6meD3kumpH2gsRpZJErHXUJ9uRTkqSe4l7D9e4iA
	La4wQ+qex/+ZtXT+gL+WmdM93MVGP7qB+B2N7zaVKcaq3efwmHjNEcxhn0Zd/WIIzkL6HC3KlOuW2
	AxDFdZzFNS+fIyydGwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMz3-0001oP-D1; Fri, 04 Oct 2019 12:46:57 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMyw-0001nO-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:46:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191004124644euoutp02b13e4f0b92c203ba27ea2697d8132613~KcmaHyzxC0589905899euoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 12:46:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191004124644euoutp02b13e4f0b92c203ba27ea2697d8132613~KcmaHyzxC0589905899euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570193204;
 bh=BcsNEFkM/KTH9Df3ovnCXdA3VkXksZAwn5HvSZ+nBDM=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=MrjNG3iWw7FUBi7zfXM4p45Y2o9SEGjKcNVURL3FBoZSFNAHPAAJ98Oz9gpSJs1Lj
 BYSTK6KQHFiZ/61fEdHPKA3NwSiQQtV/pvx25AE1XcYude0K67CG9Itl/h+RxL+o5p
 NbqoepF+l2axgNKUh3sv35LLpzc5Dhjw3lJMHMf8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191004124644eucas1p194f7eaee75c8cd1a7cd374f89d0d1809~KcmZx9Qhy0766807668eucas1p1a;
 Fri,  4 Oct 2019 12:46:44 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8F.2E.04374.43F379D5; Fri,  4
 Oct 2019 13:46:44 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191004124644eucas1p2c8469c29442a5f0b10da0c931b04aa11~KcmZdRjaC2510225102eucas1p2-;
 Fri,  4 Oct 2019 12:46:44 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191004124644eusmtrp10ab8216e023690352696d27b8eb85786~KcmZcn1Zu1984919849eusmtrp1K;
 Fri,  4 Oct 2019 12:46:44 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-01-5d973f34216e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.6C.04166.33F379D5; Fri,  4
 Oct 2019 13:46:44 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191004124643eusmtip2d03720b6194d44f3f3e0755f64c9c6e3~KcmZA4zty2489424894eusmtip2d;
 Fri,  4 Oct 2019 12:46:43 +0000 (GMT)
Subject: Re: Devfreq looks for unsupported frequencies on Exynos
To: Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi
 <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kamil
 Konieczny <k.konieczny@partner.samsung.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Kamil Konieczny <k.konieczny@samsung.com>
Message-ID: <e68cb899-b207-a674-e7b0-fa5f8cbb6a1b@samsung.com>
Date: Fri, 4 Oct 2019 14:46:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191004103101.GA9176@pi3>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGPbv3bnfTyXVavmooDQsV0iLJC4kZBI3Q6h8pFNGlFz9yUzY/
 MgMVR36PysF02IchOBepbbb8mKJONJUaqWTMCkWHES0tDQpDa95F/vc7z/M+nPc5HBITmYhA
 MkdeyCjk0jwxV4CbJ37ZjkWf0aYevz90kF7YWiNo9fAuom22Hh5tXHlL0HMDrVx6s3Ec0c22
 YQ79dPwDj16s1HPj+RKjoZYrMbWXS0a/WjgSda8BSTaNwZeJZEFsJpOXU8woouLSBdn2+UsF
 04IbX+zVqAINk3WITwIVDaaJerwOCUgRpUdQbengsoctBG2qLreziUD3uo/4F2mo3XAbHQju
 djW7I04EVY1rWB0iSV8qHvqcMS7dj1rhgPalai/NpaJg9NUU7mIhFQeaqgnMxTgVCk1q9R4f
 oK7C9yUrwc74wFTL6t48nwqDiZ0hjosxyh/sqw/dHAIvnK2Y6zKgzDx4Vj+Hsaueg86R54hl
 X/g82ctj+RDMNDXgLJeAo03NY8MqBEvV39zGabBOviFcbTAqHLoHolj5LFh6NvZkoLzhndOH
 3cEb7pm1GCsLoea2iJ0+AmvTDRyWg6But8v9iBJof7zLu4MO6/a11O1rptvXTPd/h0cINyB/
 pkgpy2KUJ+VMSaRSKlMWybMiM/JlRvT3K83sTP7oQ8O/r40hikRiL2HzKW2qiJAWK0tlYwhI
 TOwnnO3WpIqEmdLSm4wiP01RlMcox1AQiYv9hWUeSykiKktayFxnmAJG8c/lkPzACvQxwuxI
 bA3Qnlfd2uZ1LD6pGcxtdxzt7BznzONJHpU/g7XIGG5PLtO0eKc7ghI85V7LtTJLeaJpfeli
 07o2IzblvTltYURf+2kjgBoIKY0JS+BaklTbudw2iUFjnepvthKDs+v6B3NX0hs9GvovyGOc
 09tCe2iZJywPVmvEuDJbeiICUyilfwBGSXURRgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJIsWRmVeSWpSXmKPExsVy+t/xe7om9tNjDfZuZ7K4/uU5q0Xfvv+M
 FufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+Txdojd9ktbjeuYHPg9Ni0qpPNY/OSeo+D7/Yw
 efRtWcXo8XmTXABrlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpO
 Zllqkb5dgl7GrSv+Bae4Kt7camdsYNzH0cXIySEhYCLR0/mBpYuRi0NIYCmjxNKWi+wQCWmJ
 xtOrmSBsYYk/17rYIIpeM0r8eviSsYuRg0NYwEFix1tzkLiIwFMmiVmLz4E1CwlUS3z6+wus
 mU1AX+Lg2ZMsIDavgJ3ElOZjzCA2i4CKxOS+PjBbVCBC4vCOWYwQNYISJ2c+AavnFNCQOPZv
 L9gcZgF1iT/zLjFD2OISt57Mh4rLS2x/O4d5AqPgLCTts5C0zELSMgtJywJGllWMIqmlxbnp
 ucWGesWJucWleel6yfm5mxiB0bbt2M/NOxgvbQw+xCjAwajEw/vBYnqsEGtiWXFl7iFGCQ5m
 JRHeS+unxArxpiRWVqUW5ccXleakFh9iNAV6biKzlGhyPjAR5JXEG5oamltYGpobmxubWSiJ
 83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJzddKd4kkTUer+TrPdXnZ3E3KP9RbMr/dXnbv1P
 M0Q3Wtkt/GmQobRCUX6qcFZmmc/DKYI3eRZtYFCdc6vS4eim2afqW+Plb7b3mUoeXVKqmXr/
 x/kLjP+9Hq55s6H5iLNc0oMnPmsLqj8alp78FrL/lcsS9vufM5hyP2aZdwv+2LFq02KODwuV
 WIozEg21mIuKEwEn51LCzAIAAA==
X-CMS-MailID: 20191004124644eucas1p2c8469c29442a5f0b10da0c931b04aa11
X-Msg-Generator: CA
X-RootMTR: 20191004103109epcas5p23221e4098d5d62faaf5d8db871ac3770
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191004103109epcas5p23221e4098d5d62faaf5d8db871ac3770
References: <CGME20191004103109epcas5p23221e4098d5d62faaf5d8db871ac3770@epcas5p2.samsung.com>
 <20191004103101.GA9176@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_054650_552531_ED60251D 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.10.2019 12:31, Krzysztof Kozlowski wrote:
> 
> Hi All,
> 
> I noticed recently error logs when booting Odroid HC1 (Exynos5422) on
> exynos_defconfig, 5.4.0-rc1-next-20191004:
> [...]
> [    5.225222] exynos-bus soc:bus_wcore: dev_pm_opp_set_rate: failed to find current OPP for freq 532000000 (-34)
> [    5.225975] exynos-bus: new bus device registered: soc:bus_peri ( 67000 KHz ~  67000 KHz)
> [    5.238824] exynos-bus soc:bus_noc: dev_pm_opp_set_rate: failed to find current OPP for freq 111000000 (-34)
> [    5.245719] exynos-bus: new bus device registered: soc:bus_g2d ( 84000 KHz ~ 333000 KHz)
> [    5.252653] exynos-bus soc:bus_fsys_apb: dev_pm_opp_set_rate: failed to find current OPP for freq 222000000 (-34)
> [...]
> You can see that Exynos devfreq was trying to set 532000000 Hz for
> wcore, 111000000 for noc and 222000000 for fsys_apb. These are higher
> frequencies than we have in DTSI.
> 
> Any ideas why? It does not look normal...

Thank you for report. This is known issue, clocks left by u-boot are too
high and they are not present in opp tables. Lukasz Luba sended patchset
"[PATCH v1 00/50] Exynos5x clocks and buses changes" but it should first
be made in u-boot.

I have idea for a fix and will send it soon after weekend.

-- 
Best regards,
Kamil Konieczny
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
