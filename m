Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4BE6FE10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haF8LknjYr9QnRoh9YX3ZJGqfGCh/H4YALvhkdDrA10=; b=d3f7eRI85Bf3GW
	1dA3tHCTLC2bNFgp5z13kTA0aIHudUsRSc7SII1CYgTqrotziY58ZEZYHBZLNtr9Y3oKarj/bcv6D
	Z9/A9aJrA20Fhom45jenK/Nk9fz7F0wRs0OR8NQZ5UOekHs72bBa5I93O5IlJArzBZNW6CO55IJIf
	fEPbj3visAgha68KdGuAuErahbZkzRNNqgx9CbacaAOflNUmZt/y07gtVhrAz/qnNM4XCsMx7GReb
	mYPBNib0Kl1o5zCWPZ7P7OiNfd7wK0B5fIlE1A0YkANJ9cgBIevz0HAsBwvu8lJP4nPRfl1k6mar9
	5197Vg0GhZ3GEi0VLXFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVqg-00029H-NH; Mon, 22 Jul 2019 10:47:18 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVqX-00028K-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:47:10 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190722104704euoutp0138d9b811135ba5d0bed860108b209bbc~ztOzVBs5c2755027550euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:47:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190722104704euoutp0138d9b811135ba5d0bed860108b209bbc~ztOzVBs5c2755027550euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563792424;
 bh=SU/b9A0zsnNhPkaLQo5sGUXkfyHQlTM+GWVxLlhikNU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=R3LqS7NN1841cneVf+Eeq+NokM14T+0kmmzgTnw7z8DurcfRcGDWKcIeN1BLR7Znu
 kF0aYIhxz+zV52YNv8lh373BBDhR3z91B1hJBe6zypoFaRefG5ZiRysJqsW2sXfS2N
 mmfZZ+lCRze3dl1M6FqLb9F18iwGyxmA8w222uMc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190722104703eucas1p1ca3ad44bf079e57560ed4abd64f1a90f~ztOyeqIGz1733317333eucas1p1C;
 Mon, 22 Jul 2019 10:47:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2E.38.04325.724953D5; Mon, 22
 Jul 2019 11:47:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190722104703eucas1p2c5bdf87985b37b8e0ffdb3ffb5aae4de~ztOxtRcAh3223832238eucas1p2s;
 Mon, 22 Jul 2019 10:47:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190722104702eusmtrp20dfdf63b5472e0e4ca7c4ca6353dafc3~ztOxe-CuS2917129171eusmtrp2Y;
 Mon, 22 Jul 2019 10:47:02 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-48-5d3594273b62
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 61.D9.04146.624953D5; Mon, 22
 Jul 2019 11:47:02 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190722104702eusmtip1609c60234108be50719c9071fe202060~ztOwxnrdM1710317103eusmtip1Q;
 Mon, 22 Jul 2019 10:47:02 +0000 (GMT)
Subject: Re: [PATCH v1 21/50] ARM: dts: exynos: add OPP into FSYS APB bus in
 Exynos5420
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <7b662b86-f442-3de8-e357-88bf9eaffd5a@partner.samsung.com>
Date: Mon, 22 Jul 2019 12:47:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPd0kzwZ9_eCK9r04Qj0Rf5SSSnMmwDj11cZozmu0gqsgw@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTYRzt233s+ljdLdMfFQWDHhY+IoNPiqioGARRUKHJqKUXXc1pu85H
 VpqQqVmaWpnY00yxZbnUTNBiSpJhpuIjc1pNKM1V4soEtbzeSf53zu93ft85Bz6GUAxSSxmt
 PoYz6DU6Je1KVr+aeOuzJm+T2r/o5XrcW/6WwhX5jync7fhC4duNMzTL9o3Ara1PpLglZUSK
 zbYuCo9m9lO4o7aQxvmt9RL8qNEqxcXdbRLc1rwLfzhXSuPzdY1S3DBygcLTXRXkNoXKdMuE
 VD96zktV5rJ0WvX0fpLqcmUZUo2ZV+yjD7tuCeN02ljO4Lf1qGuEKbdZEj0hje+7+pBORsV0
 BnJhgA2AovQWlIFcGQVbiuDFz3JaJA4EKeUlTjKGYKKlk5w7qSp3SMRFCYLpN8NOYkdgdTRL
 BNViNhiyL1qRgD1Yb+ieGqcEEcF2kvBnYHzmKYahWV+oKTspaGTsbjC3WykBk+wqsPfZZ/ES
 Ngg6KmuRqJHD6xuDsylc2P1QPfSZEDDBekHv4G2JiFfCM3shIXgBm85AxdBHJMbeCV8nzc4K
 i2G4qVIq4uXw97l4DCwPyZfuOvWnwZZ106nZDA1NbZSQmZgp87jWTxxvh56Bh7QwBnYh9Njl
 YoSFkFN9nRDHMkhLVYjqtVCZ+c5p5AklpmvSbKQsmFesYF6ZgnllCv773kFkGfLijHxkOMdv
 1HNxvrwmkjfqw31DoyLNaObvvZlu+lWD6iePWRDLIKW7zL86QK2gNLF8QqQFAUMoPWR6/01q
 hSxMk3CKM0QdMRh1HG9ByxhS6SVLXPAxRMGGa2K4ExwXzRnmthLGZWky4ke/f+otytqs2xPs
 OOEdWLiaTv+9IyS+zjQ28mB94klLtA99MHVt62vtWWJRilxttOpIz+fFB0KvRE+3ZCV1B9kc
 yfdj1d+D+q/ZpmT5U0ZLoPu9vXmJ8jP5uavupg1PjYT6nfEI/UGWwCE3v6M9cadyJqveo3a3
 iODj9/bGyLVKko/QbFhHGHjNP53fZkJ3AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xu7pqU0xjDT7ONre4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZa
 pG+XoJexZvIppoKf7BV3pq5ma2BcytbFyMkhIWAisXXdF6YuRi4OIYGljBKL51xkhEiISUza
 t50dwhaW+HOtiw2i6DWjxNm2J2AJYYFIiQndd8EaRAQ0Ja7//c4KUsQscJVFYsqrjewQHf1M
 Er2L3gC1c3CwCehJ7FhVCNLAK+AmsenSXVYQm0VAVeLtnbdgtqhAhERf22w2iBpBiZMzn7CA
 2JwCgRLbXj5iBrGZBcwk5m1+CGWLS9x6Mp8JwpaX2P52DvMERqFZSNpnIWmZhaRlFpKWBYws
 qxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQJjfduxn5t3MF7aGHyIUYCDUYmH12CbSawQa2JZ
 cWXuIUYJDmYlEd48A9NYId6UxMqq1KL8+KLSnNTiQ4ymQM9NZJYSTc4HpqG8knhDU0NzC0tD
 c2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MotJz7a903I+4yl495wTTKcmiyfUP
 lsxszbxmKRRu/NveKuub/7k1ul/WbFo6p2dx25rDDe713ge987hb5d/oJrNW7/+iZ1Z14EHX
 u32nU456txXdsjHXfFsxyVIm3lTnlG9blIZVse5Gqbr5Iaqcuz/Jit+etoz10qW7u8NOnz/I
 9+DXgc3aSizFGYmGWsxFxYkAD4ZHwgsDAAA=
X-CMS-MailID: 20190722104703eucas1p2c5bdf87985b37b8e0ffdb3ffb5aae4de
X-Msg-Generator: CA
X-RootMTR: 20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5
References: <CGME20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-22-l.luba@partner.samsung.com>
 <CAJKOXPd0kzwZ9_eCK9r04Qj0Rf5SSSnMmwDj11cZozmu0gqsgw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_034709_573344_71E25374 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 7/17/19 10:48 AM, Krzysztof Kozlowski wrote:
> On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> Add an OPP for FSYS APB which reflects the real possible frequency.
>> The bus will have a new parent clock which speed has 600MHz, thus
>> a new possible frequency provided by the clock divider is 150MHz.
>> According to the documentation max possible frequency for this bus is
>> 200MHz.
> 
> Commit msg is good but title could be improved. Focus in the title
> what problem/issue you are solving - add intermediate step in scaling
> of FSYS APB?
The devfreq governor for this bus device follows the set OPP of the
master device - WCORE bus and sets the OPP with corresponding ID.
Thus, jumping to max frequency 200MHz when the WCORE bus and other
devices are operating in the middle of their min-max speed is not
needed for FSYS APB and this patch adds the intermediate speed step.

Regards,
Lukasz

> 
> Best regards,
> Krzysztof
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
