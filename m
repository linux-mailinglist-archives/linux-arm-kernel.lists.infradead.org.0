Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF7A1ECC84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJTDlpUdKardTQbN+CgDmkoxrOJpE/5tWlVpPx3YcFw=; b=oRKKAArHV2+HJp
	10paFrXexbRryNlEcOE9eHpdaTYHev0bWkpQl6T92SLoQiPOk6ycjtxTQT/ujUYtR5+j/fEHv8dJx
	zGqjojFAS3ouub5TaJnK3lt78Nrqr0nfF3+57oUmRa7oS03xgYr24gY+aUgwzgchINnNJhUG5mcdn
	v/siuXK3qHqfAevTtnz4zr1rBEdBtKdRfdFWrVoSSSXP3j8avmLWUkTg5vzsVehVyKCepZiom4YSF
	OybmgdxcysyPt1C8aN7L2+y3bY2Fit9ay4UiLC5zACCXdHYSpbcdQ19xF1kGP8LJxxZvFKg8dAuEr
	P9TEygS54cj/DSETsKaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPdW-0004Pq-BC; Wed, 03 Jun 2020 09:24:38 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPdO-0004OJ-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:24:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200603092424euoutp014044650f65936961845d19abd6707d3e~U-mHoW3K80797407974euoutp01k
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jun 2020 09:24:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200603092424euoutp014044650f65936961845d19abd6707d3e~U-mHoW3K80797407974euoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591176264;
 bh=XO/QiYl57DOU/dK9RKCj+V/LJBHjH3PoBQM7E5+ewQo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Bcqt7b26shMY9WMA4xcmbyWgDF1nGwXYcgb7OjIS/hKJ4i+wWdQzTIXfrlg1mGllR
 nvbENxa/CKs9BJu4KBKIT7r5dOCFD4J+tlD4UX7mcsz0fQ42dcvveGKF353cslkXIz
 3qx5j8i6N6Ws3iqXYVtCXhPwdRUxpAN5DefmeNng=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200603092424eucas1p2b3ccd3ad37c515bbc9962a1dae1cece7~U-mHXG9OJ1778017780eucas1p2s;
 Wed,  3 Jun 2020 09:24:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 9B.04.61286.84C67DE5; Wed,  3
 Jun 2020 10:24:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200603092424eucas1p2ef04c5f4c46ac6aa1a0a1353ddc3d62e~U-mG8xgXY1370513705eucas1p28;
 Wed,  3 Jun 2020 09:24:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200603092424eusmtrp1d6b208270abae472bd5e3d4de5476b16~U-mG79jjA2512725127eusmtrp1p;
 Wed,  3 Jun 2020 09:24:24 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-e3-5ed76c48d4de
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E0.6D.08375.84C67DE5; Wed,  3
 Jun 2020 10:24:24 +0100 (BST)
Received: from [106.210.123.115] (unknown [106.210.123.115]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200603092423eusmtip2719da20227c9c25a7abfb92811384c2d~U-mGDI0hg0572005720eusmtip2m;
 Wed,  3 Jun 2020 09:24:23 +0000 (GMT)
Subject: Re: [RFC PATCH v5 2/6] interconnect: Add generic interconnect
 driver for Exynos SoCs
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <c6ef8015-26fc-61dc-14a6-e16c07b390c8@samsung.com>
Date: Wed, 3 Jun 2020 11:24:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200602082118.GB8216@kozik-lap>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRjlt3t3d7Um16n4YZYwjFDwMTS4YUhF1PxPzLAMtWtedLipbc6y
 IB9plu/UUIdZhJCKoi3R0owQdcqsgZpvXQ9RZvl+V2a6q+R/53zfOZzvwEdiIgPfgZTFxLPK
 GEYuJizxxs5Ng5tUPhjqOfXYkTaWpyP6VUkdnx5cmebT/avzBF3cqiXoAmM+ThsM9QJa+32A
 T/c1lxF0ieE9j65tHxfQoymVO7TQRJwRSrXVjwjp2MA7QmrM0vGkryuSpLkN1Ui6rD3mTwRb
 no5g5bIEVunhe90yqqSnFI9LFdzuezqCktEXfiayIIHyhq5v2zvYkhRRlQiGq4owjqwgGK9Z
 wzmyjEA3uc7bt4zV9/K4xUsEC/N6xJFFBGszGfiuyoYKgydVbwW72JZygcGtdXMIRn3mgXZC
 bxYRlARyOnLRLhZSvtCYYzQbcMoZhvJ+mOPsqBDINs5gnMYauksnzV4Lyh1+tueZNRhlDyOT
 z/awEzTNlplLAGUSQNHS4t7d5yG5pQfjsA3M6BoEHHYEfWE2zhnuI8huGRVwJB+BUfcccSof
 GPv0i8hE5E6EC9Q1e3Djs/Bhqpa3OwbKCoZmrbkjrKCgsRjjxkJ4+EDEqZ3hd3Xx3jkOkDW5
 jecjseZANc2BOpoDdTT/c58jvBrZs2qVIpJVSWLYW+4qRqFSx0S634hVaNHOm+n/6pbeoNXe
 8DZEkUh8WOgpGQgV8ZkEVaKiDQGJiW2F5z7qQ0XCCCbxDquMDVOq5ayqDR0hcbG90OuFKURE
 RTLxbDTLxrHK/S2PtHBIRumLqUG0xjOtobEj8N6F5uMp6wEM8hrv8pal2tlnbiA18TWw5mjF
 SdOcn+yQU5BPKjGqyJgaTgvOmHa9lFQW3TqT4nZFLYGbHncvb53qmxpZaVp38TTFRg/bzPld
 vRheETdQ3l3uvda0oA6gNocUf0r9N/qdmGtWC05+Jzon1GJcFcVIXDGlivkHhAlzX2IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAIsWRmVeSWpSXmKPExsVy+t/xe7oeOdfjDM63M1vcn9fKaLFxxnpW
 i+tfnrNaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xabH11gtLu+aw2Yx4/w+Jou1R+6yW9xuXAHk
 Tn7J5sDrsWlVJ5vHnWt72Dzudx9n8ti8pN6jb8sqRo/Pm+QC2KL0bIryS0tSFTLyi0tslaIN
 LYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0MmacmclS0MRecXnuLcYGxgesXYyc
 HBICJhJ3Nlxi6mLk4hASWMooMevnH6AEB1BCSmJ+ixJEjbDEn2tdbBA17xklXn77zgySEBaI
 lzg65QCYLSKgKXH973dWkCJmgatMEjOnd0NNfcooMa3nKBtIFZuAoUTv0T5GEJtXwE5iW+99
 dhCbRUBF4kb/ayYQW1QgVqJ78Q92iBpBiZMzn7CA2JwCehJvjvSD1TALqEv8mXeJGcIWl7j1
 ZD5UXF5i+9s5zBMYhWYhaZ+FpGUWkpZZSFoWMLKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93E
 CIzdbcd+bt7BeGlj8CFGAQ5GJR5eA8NrcUKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqP
 LyrNSS0+xGgK9NxEZinR5HxgWskriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBa
 BNPHxMEp1cBY2H5gXx/bwUd50ewLf78SfqH+sz3oj9+25xq86tyiZzYxvxV2Pyp508/OJO++
 B8v1GRFvLrlePPPAPD3yy4Lrmy5+ms2+/0/yGbVlp5n6jMsUG574XDL6H6IffPtfe8Db+VvX
 WKw3tPt/6OJX+1tzRbOffa97e6llVluYjdpmMZ3d7z5pn3lsqsRSnJFoqMVcVJwIAI+YC+7z
 AgAA
X-CMS-MailID: 20200603092424eucas1p2ef04c5f4c46ac6aa1a0a1353ddc3d62e
X-Msg-Generator: CA
X-RootMTR: 20200529163223eucas1p2f663280abb499b4114b2f2930b43a4e5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163223eucas1p2f663280abb499b4114b2f2930b43a4e5
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163223eucas1p2f663280abb499b4114b2f2930b43a4e5@eucas1p2.samsung.com>
 <20200529163200.18031-3-s.nawrocki@samsung.com>
 <20200602082118.GB8216@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_022431_043726_7C47BBF8 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.06.2020 10:21, Krzysztof Kozlowski wrote:
>> +static struct icc_node *exynos_icc_get_parent(struct device_node *np)
>> +{
>> +	struct of_phandle_args args;
>> +	int num, ret;
>> +
>> +	num = of_count_phandle_with_args(np, "samsung,interconnect-parent",
>> +					"#interconnect-cells");
>> +	if (num != 1)
>> +		return NULL; /* parent nodes are optional */
>> +
>> +	ret = of_parse_phandle_with_args(np, "samsung,interconnect-parent",
>> +					"#interconnect-cells", 0, &args);
>> +	if (ret < 0)
>> +		return ERR_PTR(ret);
>> +
>> +	of_node_put(args.np);
>> +
>> +	return of_icc_get_from_provider(&args);

> I think of_node_put() should happen after of_icc_get_from_provider().

Indeed, thanks, I will amend that. It seems the node reference count decrementing
is often not done properly after existing calls to of_parse_phandle_with_args().

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
