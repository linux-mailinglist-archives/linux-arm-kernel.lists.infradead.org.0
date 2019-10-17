Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B18DA7F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yIdxfJ8Zj1CW2SdeL9lRlPEUt5wFyStc/Pp/jL5gU8=; b=fPo5r2ECS9gIls
	1XbT4vBY1cfKcGqkQR9CagPEPhGaZbyt0feYk6t6svPDd/BEQKTBjLXFh9J9T+vl1q7W/klZAhUmq
	OtIbRICOUDadb7F+cveh/I8SVzZ7Vt1iFBLjTgohArLOe9Xrx4e9PgmgzwS2PTSi6hntts+zG6mct
	HwpmgXElBouOUQian3ja2T77kkLXK/kXtiBq+WZMbfqQtvVH6WhmVVSTWR5mdou+DRnYccFrW04zF
	RbTQVwEsWC1oNVAmHQzVo/zLHwtIdIsbUXNUVNT91COCnkbByMf8X3Tr7eTamzs9PipuUCaUNootG
	kORgjBh2hoI6aEeppNIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1gi-0001FJ-K5; Thu, 17 Oct 2019 09:03:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1gZ-0001ET-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:03:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191017090303euoutp0162e31ca84ad6d27b6fb64da7eb2ec5e7~OY70P371g1964819648euoutp013
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 09:03:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191017090303euoutp0162e31ca84ad6d27b6fb64da7eb2ec5e7~OY70P371g1964819648euoutp013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571302983;
 bh=3z0Meifbwr5zG+mE7LdzyRuTTfPqBg1Ea+yb3WOdQ6M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=B6RpQs+3bIbxe5nbrqwo/7TX6yFC91J3iDB/9DHDOMpf5JJlvIHBnKx6UAhVUGJwA
 GQH02JYtVURBOxWSAN+Z1ii0SW/e2PT/PGrVrqQMt9zzd5PGeMdITi47G917JDeUv/
 Nws3WxjY76mtQVJbamXa+GBQRH7gpJalcsCQJlIY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191017090303eucas1p16b2cb435692005c820b1b5d9b745397a~OY7z7wYCy2584825848eucas1p1t;
 Thu, 17 Oct 2019 09:03:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 24.13.04374.74E28AD5; Thu, 17
 Oct 2019 10:03:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191017090302eucas1p17cbcaea2d7e2479d19a60205fe7ba69f~OY7zh1K0b0112301123eucas1p1p;
 Thu, 17 Oct 2019 09:03:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191017090302eusmtrp2a9e9214e2871787b5e86381e36dafc57~OY7zgzBm52488524885eusmtrp2e;
 Thu, 17 Oct 2019 09:03:02 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-65-5da82e475026
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 03.B9.04166.64E28AD5; Thu, 17
 Oct 2019 10:03:02 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191017090302eusmtip2c6d402ce73ee18fe5039249704c2f539~OY7y-COjD1289712897eusmtip2_;
 Thu, 17 Oct 2019 09:03:02 +0000 (GMT)
Subject: Re: [PATCH v5 2/4] dt-bindings: arm: samsung: Update the CHIPID
 binding for ASV
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <e5f441af-a21c-292b-b6ba-7e1e6550f091@samsung.com>
Date: Thu, 17 Oct 2019 11:03:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeagcSRUm2Qwwby=NHfWGdQ6KVZ2htb3UmnU2GfX+Ckcg@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djPc7rueitiDbZvErLYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGbx79pGFovND46xOXB7bFrV
 yeaxeUm9R8vJ/SwefVtWMXp83iQXwBrFZZOSmpNZllqkb5fAlTFz1ha2gs/sFd9/ZTcwzmXr
 YuTkkBAwkfj5s52xi5GLQ0hgBaPE3ssfmUASQgJfGCW+/fOEsD8zSrQtz4FpmPe6jQmiYTmj
 xIt7Cxkhit4ySrxuMQGxhQWiJA68W8oCYosIaEpc//udFaSBWaCJWeL0qvVgq9kEDCV6j/aB
 NfMK2Em0n78CZrMIqEpMaP0OZHNwiApESJz+mghRIihxcuYTsJmcAoESN3fOYgWxmQXEJZq+
 rISy5SW2v53DDHHoJXaJiWskQcZICLhI/N1tDxEWlnh1fAs7hC0j8X/nfLBfJASaGSV6dt9m
 h3AmMErcP76AEaLKWuLw8YusIIOYgZ5Zv0sfIuwo8eHrckaI+XwSN94KQpzAJzFp23RmiDCv
 REebEES1isTvVdOZIGwpie4n/1kmMCrNQvLYLCTPzELyzCyEvQsYWVYxiqeWFuempxYb56WW
 6xUn5haX5qXrJefnbmIEJqjT/45/3cG470/SIUYBDkYlHt4Jj5bHCrEmlhVX5h5ilOBgVhLh
 nd+yJFaINyWxsiq1KD++qDQntfgQozQHi5I4bzXDg2ghgfTEktTs1NSC1CKYLBMHpxQwyVxR
 DOdVWvtWibnFamlkh0Dux09eXtOMmEJW/9S9PPFl+numUyF+3oJt+xuPXu5ujy/KmitWv34P
 r5X5ylXVGxIWXmk+3bCJddPTg1o/jlhfuXjUTcnu4POalNZjZyfqC5WtLvleGiOy+GxOQf4q
 /yXyfTMFzTW3/18yh3f5PRG2tW5TrwW9V2Ipzkg01GIuKk4EAEcrwptMAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsVy+t/xe7pueitiDU680rfYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGbx79pGFovND46xOXB7bFrV
 yeaxeUm9R8vJ/SwefVtWMXp83iQXwBqlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5eglzFz1ha2gs/sFd9/ZTcwzmXrYuTkkBAwkZj3uo2pi5GLQ0hg
 KaPEtkO32LsYOYASUhLzW5QgaoQl/lzrYoOoec0oMf9RLytIQlggSuLAu6UsILaIgKbE9b/f
 WUGKmAWamCX+dRxjhujoYJJYvqOFHaSKTcBQovdoHyOIzStgJ9F+/gqYzSKgKjGh9TuYLSoQ
 IfF8+w2oGkGJkzOfgG3gFAiUuLlzFthmZgF1iT/zLjFD2OISTV9WQsXlJba/ncM8gVFoFpL2
 WUhaZiFpmYWkZQEjyypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzA2Nx27OfmHYyXNgYfYhTg
 YFTi4Z3AuDxWiDWxrLgy9xCjBAezkgjv/JYlsUK8KYmVValF+fFFpTmpxYcYTYGem8gsJZqc
 D0wbeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGKe5rl31wVaC
 M/B6ZqrV8X+xdsKm2pIHmBOatWbtFgh4vMuqodYt/ntHdGy8SkzsgVnqnaun3ls4x32W0g7Z
 1fN/7jUrkjjmvN+N++6ehrtX65orfm/eeT3Ci9NNTG39/IVyv16c/L/ot0jJuvN/l8YdlQwr
 5YxJ5jj/9GfKzCxl0XWntpYZ8SuxFGckGmoxFxUnAgCOd6+r4wIAAA==
X-CMS-MailID: 20191017090302eucas1p17cbcaea2d7e2479d19a60205fe7ba69f
X-Msg-Generator: CA
X-RootMTR: 20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2
References: <CGME20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2@eucas1p1.samsung.com>
 <20191016145756.16004-1-s.nawrocki@samsung.com>
 <20191016145756.16004-3-s.nawrocki@samsung.com>
 <CAJKOXPeagcSRUm2Qwwby=NHfWGdQ6KVZ2htb3UmnU2GfX+Ckcg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_020307_844791_0CCA6D2D 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, vireshk@kernel.org,
 linux-pm@vger.kernel.org, roger.lu@mediatek.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/16/19 18:16, Krzysztof Kozlowski wrote:
>> --- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
>> +++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
>> @@ -9,17 +9,42 @@ title: Samsung Exynos SoC series Chipid driver

BTW, I think we should rename the above title to talk about IP block/device
rather than driver, e.g.

-SAMSUNG Exynos SoCs Chipid driver.
+SAMSUNG Exynos SoC series CHIPID subsystem

>> +# Custom select to avoid matching all nodes with 'syscon'
>> +select:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        const: samsung,exynos4210-chipid
>> +  required:
>> +    - compatible
>> +
>>  properties:
>>    compatible:
>> -    items:
>> -      - const: samsung,exynos4210-chipid
>> +    allOf:
>
> I think it was my mistake to use allOf in other Exynos bindings. It
> should not be needed.

Indeed it seems to work well without allOf, I was wondering why we
needed the custom select above AND allOf.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
