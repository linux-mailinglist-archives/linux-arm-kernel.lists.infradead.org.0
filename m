Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217BA6A7C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKAd2wzKG09c6D3ahOAJC8N7eBW/R+H8EyiEz1AhdPc=; b=YT6N3OuSiNvhtL
	o1RXRnipA7+Xzc+7BpPAkq3Sm0k4iEobBecFyI3Uok++4vZHfoVnLsZkeP13PjWfKugwpx3UfQMlP
	J4avI7BOLv1CVmbLzxkf0/K7DXLU9Ow0dskPuCyufwYH9hq3ctvER0/yAga2E/GIiD0FdTz4luej3
	1C6//DC3Fb7YnZESoiszP9gWX3XomYHLa5vxQ4tzchR8hdzYrls1xPa+cuLXuoY+be9fYx5NS26zz
	Y5XwYcXKJiNaDOtxsWWMMyXLbnc99azjda00R+2GEByAMs+bPoxna8uCSUzdDoz/9zZN9xuYgEq9b
	rlRy4hWOkkpHoATHLoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM4k-0002t2-3n; Tue, 16 Jul 2019 11:56:54 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM4Y-0002sG-CS
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:56:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190716115640euoutp016b4211755716499fb5b6b3870065db7b~x4T2os0561064210642euoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 11:56:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190716115640euoutp016b4211755716499fb5b6b3870065db7b~x4T2os0561064210642euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563278200;
 bh=Y3MANFjWTHlxjydAw2DLCdEv+GbkTiMm4tBgi0aarJY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=c+hxmP48Yp5LvkGJBHxTlauVG/ULPZDG+5g0qfFlDpTog82+5FFNfYuvR5+wsEe71
 D3AU4FNbJfdvsWYMdUIJtFhk2ZTGXjmrhPkjm/tT8mYrl6iRffSfEo3Erb7OLlL7ZU
 8S9+SE+tWHTei6ZMEINRjGDlDwk88b51UGjumZTk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190716115639eucas1p2252defebcb31c54f283170a0f744f54d~x4T15nIZZ1928219282eucas1p27;
 Tue, 16 Jul 2019 11:56:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4A.76.04325.77BBD2D5; Tue, 16
 Jul 2019 12:56:39 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190716115639eucas1p1e0758b5a7cb975371e4ffaee7df37810~x4T1MvjBX2004420044eucas1p14;
 Tue, 16 Jul 2019 11:56:39 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716115638eusmtrp221979503b0434b170572313d87b5b1ec~x4T0_XZuD1854818548eusmtrp21;
 Tue, 16 Jul 2019 11:56:38 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-f3-5d2dbb772fe1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8E.97.04140.67BBD2D5; Tue, 16
 Jul 2019 12:56:38 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716115638eusmtip218f7812e10a373febd695656cb893464~x4T0UJkBj2456924569eusmtip2z;
 Tue, 16 Jul 2019 11:56:38 +0000 (GMT)
Subject: Re: [PATCH v2 2/4] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Message-ID: <e5570b67-8326-c9ba-fb1a-488cb5673410@samsung.com>
Date: Tue, 16 Jul 2019 13:56:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1a9e5752-bc2b-3b08-a36b-fc02ca51764c@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOKsWRmVeSWpSXmKPExsWy7djP87rlu3VjDb49VbC4/uU5q8X8I+dY
 Lfr2/We06H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs3izY+zTBate4+wW/y7tpHFYvODY2wOgh5r5q1h9Ni0qpPNY/OSeo+D7/YwefRtWcXo
 cfzGdiaPz5vkAtijuGxSUnMyy1KL9O0SuDI2t05mKpjBUfHn3nXGBsb7rF2MnBwSAiYSN6f1
 MnUxcnEICaxglOj//Y0RwvnCKPGksYcFwvnMKNHc8oEJpqW5oxGqZTmjxMyej1BVbxklVjft
 BBssLBAu8ev+LkYQm03ASmJi+yowW0RAQ2Lm3ytgO5gFLrBIHFt9G6yBV8BO4sWUs2A2i4Cq
 xM9jR8FsUYEIifvHNkDVCEqcnPmEBcTmFLCXuLvoLjOIzSwgLnHryXwmCFteYvvbOcwgCyQE
 Wjkkvp15yN7FyAHkuEi8uZQG8YKwxKvjW9ghbBmJ/zvnM0HUr2OU+NvxAqp5O6PE8sn/2CCq
 rCUOH7/ICjKIWUBTYv0ufYiwo8Sj1l9MEPP5JG68FYS4gU9i0rbpzBBhXomONiGIajWJDcs2
 sMGs7dq5knkCo9IsJJ/NQvLNLCTfzELYu4CRZRWjeGppcW56arFxXmq5XnFibnFpXrpecn7u
 JkZg8jv97/jXHYz7/iQdYhTgYFTi4T2xRydWiDWxrLgy9xCjBAezkgiv7VftWCHelMTKqtSi
 /Pii0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2MrW+i/fb4FotYl7UdK7b5
 9svEY9mTGI3j/xksNV/PFX8dtPf5zZuy/xIqPNMZJwqvTLU6oHbOTyggJHWi9roD1UwrIhdM
 03xf9bx6khT7FNMJaez6X+bL760+cerP7QsK07+mV/2cVygXLa/zPN/kFbvCjpguib/Vt8SN
 DkXxuXT3nt/XbHxOiaU4I9FQi7moOBEAgnYTV3oDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xe7plu3VjDe7NNrC4/uU5q8X8I+dY
 Lfr2/We06H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs3izY+zTBate4+wW/y7tpHFYvODY2wOgh5r5q1h9Ni0qpPNY/OSeo+D7/YwefRtWcXo
 cfzGdiaPz5vkAtij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMy
 y1KL9O0S9DI2t05mKpjBUfHn3nXGBsb7rF2MnBwSAiYSzR2NTF2MXBxCAksZJa7uWsPexcgB
 lJCROL6+DKJGWOLPtS42iJrXjBJ7Hn8AaxYWCJf4dX8XI4jNJmAlMbF9FZgtIqAhMfPvFTCb
 WeASi0Tz9FKI5n4WiZcLFoIleAXsJF5MOQs2iEVAVeLnsaNgtqhAhMSZ9ytYIGoEJU7OfAJm
 cwrYS9xddJcZYqi6xJ95l6BscYlbT+YzQdjyEtvfzmGewCg0C0n7LCQts5C0zELSsoCRZRWj
 SGppcW56brGRXnFibnFpXrpecn7uJkZgrG879nPLDsaud8GHGAU4GJV4eE/s0YkVYk0sK67M
 PcQowcGsJMJr+1U7Vog3JbGyKrUoP76oNCe1+BCjKdBzE5mlRJPzgWkoryTe0NTQ3MLS0NzY
 3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD48rdEVGRXx6GbspZEJM2Z6FjZZFB/T+F
 iSaHtZm8rNj+6TTOSjTuOmfF8v+zwgvxWFvNH2/1zkpPVOfYpbO17u+9mrbuvyLm+XbTfh4r
 U1ta/0UgtG3xeu6yoht3Ar/n7b/uN/2Zn9RtjT0qh7x03flqBZhqPIWrt61K2PpU06zL905x
 0Y7NSizFGYmGWsxFxYkAtqaVtgsDAAA=
X-CMS-MailID: 20190716115639eucas1p1e0758b5a7cb975371e4ffaee7df37810
X-Msg-Generator: CA
X-RootMTR: 20190715120431eucas1p215eae81d0ca772d7e2a22a803669068a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120431eucas1p215eae81d0ca772d7e2a22a803669068a
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120431eucas1p215eae81d0ca772d7e2a22a803669068a@eucas1p2.samsung.com>
 <20190715120416.3561-3-k.konieczny@partner.samsung.com>
 <7f7cf551-005a-c647-d571-77eb5426478a@samsung.com>
 <3d1687b7-4825-ad82-2706-a712c30e530b@samsung.com>
 <5612547b-47c8-0dc4-cb3c-e972782d5a26@samsung.com>
 <3ba736fa-832c-a72c-e60b-f4328e54c524@samsung.com>
 <29cfafc4-ee22-6d38-4c67-776c48bfed8a@samsung.com>
 <1a9e5752-bc2b-3b08-a36b-fc02ca51764c@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045642_560776_606168A0 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 7/16/19 1:39 PM, Bartlomiej Zolnierkiewicz wrote:
> 
> On 7/16/19 1:26 PM, Chanwoo Choi wrote:

[...]

>>> Doesn't seem to be needed, care to explain it more?
>>
>> In order to fix the sequence problem between clock and regulator
>> with dev_pm_opp_set_regualtor() and want to keep two functions
>> (exynos_bus_parent_parse_of() and exynos_bus_parse_of()),
>> have to change the call order as following and then modify
>> the exception handling code when error happen.
>>
>> 	node = of_parse_phandle(dev->of_node, "devfreq", 0);                    
>> 	if (node) {                                                             
>> 		of_node_put(node);                                              
>> 		passive = true
>> 	}
>>
>> 	if (!passive)	
>> 		exynos_bus_parent_parse_of()
>> 			dev_pm_opp_set_regulator
>>
>> 	exynos_bus_parse_of()
> 
> OK. This seems like a solution.

PS Thanks for explaining this in detail.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
