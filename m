Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91AAFB36A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 16:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icNSaTS8SqdFz1dd9ZJ6vcvViX2eJGXY8lINmz0JOcU=; b=gCQCxvsAiTIwbk
	uatbNvx2xIePz694JGY+/KDojxJKCSRO4U2a7v18L1CIkrE2UCk7NoKgoqCPpUt0vzzjjLyut5IMQ
	idW6ol9BGxAl63t1yFLi5rNij4L4NV/tXH3MRtWeyVVxytdbM2Aj+qIg+mMpZ7deA+V/yZZUri1U9
	YQKU0IqF2M1kKn0SmA3fn2BmXmIr0PVl8K46zdsU3DGgB9eLL6NERl0zzNKEtMqyM84kTWTXMH3Kj
	j9aFOLtFJwdRFTLtb74C4p3guZnHNU4Rwq/0BSL7h8wFDM2mWDPQE4FUnhxXXX3texqAWc0z/7/W6
	1j0VOMTI5xlLY1WfzY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuLr-0006Nk-2S; Wed, 13 Nov 2019 15:14:35 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuK5-0004oA-BR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 15:12:48 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191113151243euoutp01e1eeca00e90f082e4e1b80ec77d0885a~WwZRuVGPs0521905219euoutp01u
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 15:12:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191113151243euoutp01e1eeca00e90f082e4e1b80ec77d0885a~WwZRuVGPs0521905219euoutp01u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573657963;
 bh=RiDiIT7iZ5uWRSjJDpfwksM+DRbkVa+LCl9cMMehqnI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=tGXerBJ7Va5Aq7PP8dnmiz2KrZLnS/JofvI6jykP6ykDrjWcLbmeOkxA2AbBtKBlG
 BQza9yLSGjzgEPyCQOn3kxME2+T2rJRgs2G8KKzSkuExgEkhPDhWBA+W2KcsvOoA8s
 Mas6grB5W5AOTo7+ViQNfPiRIvS5iLl+Kd4G8/ME=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191113151242eucas1p19f54308ea4dd5ef747b4f485b803195a~WwZRYuPz-0444904449eucas1p1j;
 Wed, 13 Nov 2019 15:12:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id D1.1C.04469.A6D1CCD5; Wed, 13
 Nov 2019 15:12:42 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191113151242eucas1p1e8b0d203e369ebfd09e6f1a0a1dcbb38~WwZQ8Azu10439304393eucas1p1z;
 Wed, 13 Nov 2019 15:12:42 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191113151242eusmtrp10b8b131e00d6d2b819161bb99d21f889~WwZQ7Vhb_2223022230eusmtrp1y;
 Wed, 13 Nov 2019 15:12:42 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-71-5dcc1d6acedf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D0.BE.04117.A6D1CCD5; Wed, 13
 Nov 2019 15:12:42 +0000 (GMT)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191113151241eusmtip15dedb606b73b17597ce4871c94296be2~WwZQYnjNx0590005900eusmtip14;
 Wed, 13 Nov 2019 15:12:41 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: Chanwoo Choi <cw00.choi@samsung.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, k.konieczny@partner.samsung.com
From: Kamil Konieczny <k.konieczny@samsung.com>
Message-ID: <dd5bc937-e776-f717-1cf3-ee0e17621304@samsung.com>
Date: Wed, 13 Nov 2019 16:12:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d742e7be-ca79-ae9e-6cc2-dc1fae08d252@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUwTYRD163bbpaFkKRAmoBBL0IgKEq9NUNDEaH/4Q/8Y1KCssnIX0uXG
 RPBAIdASRUUwVAyXRQRLJYQokbOUFrkMIngQAZuIEKXQID9A2sXIvzfvvZk3kwyBSTpwDyJa
 nsQo5HScVCDiN3X/6d8ds8UUtme5zYd6WVyPUx8WzDilbF1FlGpyBqP6+xuEVN/1n0JKOzmC
 U8MtjwWUpaATUcX9rTyqrvOzkBrPrhEccZRpNbkCWWPFNVnb3GueTKnTIJlF63UKPyc6FMHE
 RacwioDgcFHUikbLS3y/M62xawxloW6fPORAALkPRgyFwjwkIiRkDYJJkwXjigUESsNHnCss
 CAxLOehfi9ZcxOOEagQDo2rEFbMIinJrBTaXCxkLVmMVZsOuZBrkq/LtczFynAcF88t8myAg
 A6Ctz2DHYjIYrOoeewSf9IUq8/RaBEG4kaFgXKQ5izMYHk3Z7Q5kCAy809jnY6Q7jE2peRz2
 hhuvSu1ZQI4IQVNZKuTWPgZ60zzGYRf4odet85vBeC+fz+FUmC5XCrnmmwgmbv9eF4KgQz+I
 2xbCyB1Q3xLA0Udh9uswstFAOsHorDO3gxPcbXqIcbQY7uRIOLcvmHvzeRz2hLzVF3ghkpZs
 uKxkwzUlG64p+Z/7BPE1yJ1JZuMjGTZQzqT6s3Q8myyP9L+cEK9Fa69lXNHPN6PFoUvtiCSQ
 1FH81s0UJsHpFDY9vh0BgUldxc1pPWEScQSdnsEoEi4qkuMYth15Enypuzhz08R5CRlJJzGx
 DJPIKP6pPMLBIws90McUXzl92F++9dPBNHRC56VzjcgtS1o4WT3Y8D3bU6AyagqGKhlFzcJI
 8pu88tmZvcWC1Ja5jMxQ66/EOF0wMVpqsT799kx3NpOWHqhI8LtVt225K/iL1nu7Z4iP24XB
 Xc+tV7OP9y7NBe0Pr1Opl8cazZHRZVL6/pn5idrVDCmfjaID/TAFS/8F3cqc4VYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xu7pZsmdiDdp3c1hsnLGe1eL6l+es
 Fn37/jNa9D9+zWxx/vwGdouzTW/YLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i9uNK9gc
 eDw2repk89i8pN7j4Ls9TB59W1YxenzeJBfAGqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2Ri
 qWdobB5rZWSqpG9nk5Kak1mWWqRvl6CX8W/VJqaCK9oVm4/eYmxgPKbcxcjJISFgIrHp+RSm
 LkYuDiGBpYwSV9bMZYZISEs0nl7NBGELS/y51sUGUfSaUaLn4js2kISwQLbEt9PLwBpEBCok
 tlybATaJWeAuk8S6bx+gxm5nkrj88QULSBWbgL7EwbMnwWxeATuJb/NPMILYLAKqEsuePwVb
 JyoQIfF8+w1GiBpBiZMzn4DVcwrYS1w4twpsG7OAusSfeZegbHGJW0/mM0HY8hLNW2czT2AU
 moWkfRaSlllIWmYhaVnAyLKKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMFK3Hfu5ZQdj17vg
 Q4wCHIxKPLwSEmdihVgTy4orcw8xSnAwK4nw7qg4ESvEm5JYWZValB9fVJqTWnyI0RTouYnM
 UqLJ+cAkklcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgXGd9U3D
 ujuPZypsvbx/1fuUH/cOifmVPHFZq3Krp/5WfmYrs5iv2gvRk8575031/n+k9frzuZNqTHqn
 drwQ2/7d9/Mm3Z2rwgxm/XE6Ee/ZkRv0bIpprcpGLifnXUtWfFy6YkfcU36hLdLZpjPqzSvK
 r1q7e3/X2LVt1rHCQhVt1adFLwU+ya9VYinOSDTUYi4qTgQAEWC1r+oCAAA=
X-CMS-MailID: 20191113151242eucas1p1e8b0d203e369ebfd09e6f1a0a1dcbb38
X-Msg-Generator: CA
X-RootMTR: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
 <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
 <d742e7be-ca79-ae9e-6cc2-dc1fae08d252@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_071246_201220_C674A7A5 
X-CRM114-Status: GOOD (  28.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDE0LjEwLjIwMTkgMDg6NDYsIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSBNYXJlaywKPiAKPiBPbiAxOS4gMTAuIDExLiDsmKTtm4QgODozMywgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPj4gSGkgQ2hhbndvbywKPj4KPj4gT24gMTAuMTAuMjAxOSAwNDo1MCwgQ2hhbndv
byBDaG9pIHdyb3RlOgo+Pj4gT24gMjAxOeuFhCAxMOyblCAwOOydvCAyMjo0OSwgay5rb25pZWN6
bnlAcGFydG5lci5zYW1zdW5nLmNvbSB3cm90ZToKPj4+PiBDb21taXQgNDI5NGE3NzliZDhkICgi
UE0gLyBkZXZmcmVxOiBleHlub3MtYnVzOiBDb252ZXJ0IHRvIHVzZQo+Pj4+IGRldl9wbV9vcHBf
c2V0X3JhdGUoKSIpIGludHJvZHVjZWQgZXJyb3JzOgo+Pj4+IGV4eW5vcy1idXM6IG5ldyBidXMg
ZGV2aWNlIHJlZ2lzdGVyZWQ6IHNvYzpidXNfd2NvcmUgKCA4NDAwMCBLSHogfiA0MDAwMDAgS0h6
KQo+Pj4+IGV4eW5vcy1idXM6IG5ldyBidXMgZGV2aWNlIHJlZ2lzdGVyZWQ6IHNvYzpidXNfbm9j
ICggNjcwMDAgS0h6IH4gMTAwMDAwIEtIeikKPj4+PiBleHlub3MtYnVzOiBuZXcgYnVzIGRldmlj
ZSByZWdpc3RlcmVkOiBzb2M6YnVzX2ZzeXNfYXBiICgxMDAwMDAgS0h6IH4gMjAwMDAwIEtIeikK
Pj4+PiAuLi4KPj4+PiBleHlub3MtYnVzIHNvYzpidXNfd2NvcmU6IGRldl9wbV9vcHBfc2V0X3Jh
dGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQIGZvciBmcmVxIDUzMjAwMDAwMCAoLTM0KQo+
Pj4+IGV4eW5vcy1idXMgc29jOmJ1c19ub2M6IGRldl9wbV9vcHBfc2V0X3JhdGU6IGZhaWxlZCB0
byBmaW5kIGN1cnJlbnQgT1BQIGZvciBmcmVxIDExMTAwMDAwMCAoLTM0KQo+Pj4+IGV4eW5vcy1i
dXMgc29jOmJ1c19mc3lzX2FwYjogZGV2X3BtX29wcF9zZXRfcmF0ZTogZmFpbGVkIHRvIGZpbmQg
Y3VycmVudCBPUFAgZm9yIGZyZXEgMjIyMDAwMDAwICgtMzQpCj4+Pj4KPj4+PiBUaGV5IGFyZSBj
YXVzZWQgYnkgaW5jb3JyZWN0IFBMTCBhc3NpZ25lZCB0byBjbG9jayBzb3VyY2UsIHdoaWNoIHJl
c3VsdHMKPj4+PiBpbiBjbG9jayByYXRlIG91dHNpZGUgb2YgT1BQIHJhbmdlLiBBZGQgd29ya2Fy
b3VuZCBmb3IgdGhpcyBpbgo+Pj4+IGV4eW5vc19idXNfcGFyc2Vfb2YoKSBieSBhZGp1c3Rpbmcg
Y2xvY2sgcmF0ZSB0byB0aG9zZSBwcmVzZW50IGluIE9QUC4KPj4+IElmIHRoZSBjbG9jayBjYXVz
ZWQgdGhpcyBpc3N1ZSwgeW91IGNhbiBzZXQgdGhlIGluaXRpYWwgY2xvY2sgb24gRGV2aWNlVHJl
ZQo+Pj4gd2l0aCBhc3NpZ25lZC1jbG9jay0qIHByb3BlcnRpZXMuIEJlY2F1c2UgdGhlIHByb2Jl
IHRpbWUgb2YgY2xvY2sgZHJpdmVyCj4+PiBpcyBlYXJseSB0aGFuIHRoZSBhbnkgZGV2aWNlIGRy
aXZlcnMuCj4+Pgo+Pj4gSXQgaXMgbm90IHByb3BlciB0byBmaXggdGhlIGNsb2NrIGlzc3VlIG9u
IG90aGVyIGRldmljZSBkcml2ZXIuCj4+PiBJIHRoaW5rIHlvdSBjYW4gZml4IGl0IGJ5IHVzaW5n
IHRoZSBzdXBwb3J0ZWQgY2xvY2sgcHJvcGVydGllcy4KPj4KPj4gVGhpcyBpc3N1ZSBpcyBhYm91
dCBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQuIFRoZSBPUFBzIGRlZmluZWQgaW4gCj4+
IERUIGNhbm5vdCBiZSBhcHBsaWVkLCBiZWNhdXNlIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBkZXJp
dmUgdGhlIG5lZWRlZCAKPj4gY2xvY2sgcmF0ZSBmcm9tIHRoZSBib290bG9hZGVyLWNvbmZpZ3Vy
ZWQgY2xvY2sgdG9wb2xvZ3kgKG1haW5seSBkdWUgdG8gCj4+IGxhY2sgb2YgY29tbW9uIGRpdmlz
b3IgdmFsdWVzIGZvciBzb21lIG9mIHRoZSBwYXJlbnQgY2xvY2tzKS4gU29tZSB0aW1lIAo+PiBh
Z28gTHVrYXN6IHRyaWVkIGluaXRpYWxseSB0byByZWRlZmluZSB0aGlzIGNsb2NrIHRvcG9sb2d5
IHVzaW5nIAo+PiBhc3NpZ25lZC1jbG9jay1yYXRlcy9wYXJlbnRzIHByb3BlcnRpZXMgKHNlZSAK
Pj4gaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS91cmw/az00YjgwYzAzMDQ0NTliYzhlLjRi
ODE0YjdmLWY4N2YxZTFhZWUxYTg1YzAmdT1odHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS83LzE1
LzI3NiksIGJ1dCBpdCBoYXMgbGltaXRhdGlvbnMgYW5kIHNvbWUgCj4+IHN1Y2ggY2hhbmdlcyBo
YXMgdG8gYmUgZG9uZSBpbiBib290bG9hZGVyLiBVbnRpbCB0aGlzIGlzIHJlc29sdmVkLCAKPj4g
ZGV2ZnJlcSBzaW1wbHkgY2Fubm90IHNldCBzb21lIG9mIHRoZSBkZWZpbmVkIE9QUHMuCj4gCj4g
QXMgeW91IG1lbnRpb25lZCwgdGhlIHdyb25nIHNldHRpbmcgaW4gYm9vdGxvYWRlciBjYXVzZSB0
aGUgdGhpcyBpc3N1ZS4KPiBTbywgdGhpcyBwYXRjaCBjaGFuZ2UgdGhlIHJhdGUgb24gZXh5bm9z
LWJ1cy5jIGluIG9yZGVyIHRvIGZpeAo+IHRoZSBpc3N1ZSB3aXRoIHdvcmthcm91bmQgc3R5bGUu
IAo+IAo+IEJ1dCwgYWxzbywgaXQgY2FuIGJlIGZpeGVkIGJ5IGluaXRpYWxpemluZyB0aGUgY2xv
Y2sgcmF0ZSBvbiBEVAo+IGFsdGhvdWdoIGl0IGlzIG5vdCBmdW5kYW1lbnRhbCBzb2x1dGlvbiBh
cyB5b3UgbWVudGlvbmVkLgo+IAo+IElmIGFib3ZlIHR3byBtZXRob2QgYXJlIHdvcmthcm91bmQg
d2F5LCBJIHRoaW5rIHRoYXQgc2V0IHRoZSBjbG9jawo+IHJhdGUgaW4gRFQgaXMgcHJvcGVyLiBU
aGUgcm9sZSBvZiAnYXNzaWduZWQtY2xvY2stKicgcHJvcGVydGllcwo+IGlzIGZvciB0aGlzIGNh
c2UgaW4gb3JkZXIgdG8gc2V0IHRoZSBpbml0aWFsIGZyZXF1ZW5jeSBvbiBwcm9iZSB0aW1lLgoK
SSBjYW4gYWRkICdhc3NpZ25lZC1jbG9jay0qJyB0byBEVCwgYnV0IHRoZSBpc3N1ZSBpcyBjYXVz
ZWQgaW4gb3BwIHBvaW50cywKc28gdGhlIHdhcm5pbmcgZnJvbSBleHlub3MtYnVzIHdpbGwgc3Rp
bGwgYmUgdGhlcmUuCgpCZWZvcmUgdGhpcyBmaXgsIGRldmZyZXEgd2lsbCBpc3N1ZSB3YXJuaW5n
IGFuZCB0aGVuIGNoYW5nZSBjbG9jayB0byBtYXgKZnJlcXVlbmN5IHdpdGhpbiBvcHAgcmFuZ2Uu
IFRoaXMgZml4IG1hc2sgd2FybmluZywgYW5kIGFzIE1hcmVrIGFuZApMdWthc3ogTHViYSB3cm90
ZXMsIHRoZSBwcm9wZXIgZml4IHdpbGwgYmUgdG8gbWFrZSBjaGFuZ2VzIGluIHUtYm9vdAooYW5k
IGNvbm5lY3QgcHJvcGVyIFBMTHMgdG8gSVBzKS4KClNlY29uZCBzb2x1dGlvbiB3b3VsZCBiZSB0
byB3cml0ZSBkb3duIG5ldyBPUFAgcG9pbnRzIHdpdGggY3VycmVudGx5IHVzZWQKZnJlcXVlbmNp
ZXMsIGFuZCB3aXRoIG1heCBvbmUgZm9yIDUzMiBNSHouCgo+IEkgdGhpbmsgdGhhdCB0aGUgcHJl
dmlvdXMgcGF0Y2hbMV0gb2YgS2FtaWwgS29uaWVjem55IGlzIG1pc3NpbmcKPiB0aGUgcGF0Y2hl
cyB3aGljaCBpbml0aWFsaXplIHRoZSBjbG9jayByYXRlIG9uIERUIGZpbGUuCj4gWzFdIGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC9jb21taXQvP2lkPTQyOTRhNzc5YmQ4ZGZmNmM2NWU3ZTg1ZmZlN2ExZWEyMzZlOTJhNjgK
PiAKPj4KPj4gVGhpcyBpc3N1ZSB3YXMgdGhlcmUgZnJvbSB0aGUgYmVnaW5uaW5nLCByZWNlbnQg
S2FtaWwncyBwYXRjaCBvbmx5IAo+PiByZXZlYWxlZCBpdC4gSW4gZmFjdCBpdCB3YXMgZXZlbiB3
b3JzZSAtIGRldmZyZXEgYW5kIGNvbW1vbiBjbG9jayAKPj4gZnJhbWV3b3JrIHNpbGVudGx5IHNl
dCBsb3dlciBjbG9jayB0aGFuIHRoZSBnaXZlbiBPUFAgZGVmaW5lZC4KPj4KPj4+PiBGaXhlczog
NDI5NGE3NzliZDhkICgiUE0gLyBkZXZmcmVxOiBleHlub3MtYnVzOiBDb252ZXJ0IHRvIHVzZSBk
ZXZfcG1fb3BwX3NldF9yYXRlKCkiKQo+Pj4+IFJlcG9ydGVkLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogS2FtaWwgS29uaWVjem55
IDxrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDE0ICsrKysrKysrKysrLS0tCj4+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYwo+Pj4+IGluZGV4IGM4MzI2NzMyNzNhMi4uMzdiZDM0ZDU2MjViIDEwMDY0NAo+
Pj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+PiArKysgYi9kcml2ZXJz
L2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4+Pj4gQEAgLTI0Myw3ICsyNDMsNyBAQCBzdGF0aWMgaW50
IGV4eW5vc19idXNfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPj4+PiAgIHsKPj4+
PiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPj4+PiAgIAlzdHJ1Y3QgZGV2X3Bt
X29wcCAqb3BwOwo+Pj4+IC0JdW5zaWduZWQgbG9uZyByYXRlOwo+Pj4+ICsJdW5zaWduZWQgbG9u
ZyByYXRlLCBvcHBfcmF0ZTsKPj4+PiAgIAlpbnQgcmV0Owo+Pj4+ICAgCj4+Pj4gICAJLyogR2V0
IHRoZSBjbG9jayB0byBwcm92aWRlIGVhY2ggYnVzIHdpdGggc291cmNlIGNsb2NrICovCj4+Pj4g
QEAgLTI2NywxMyArMjY3LDIxIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+ICAgCX0KPj4+PiAgIAo+Pj4+ICAgCXJhdGUgPSBjbGtf
Z2V0X3JhdGUoYnVzLT5jbGspOwo+Pj4+IC0KPj4+PiAtCW9wcCA9IGRldmZyZXFfcmVjb21tZW5k
ZWRfb3BwKGRldiwgJnJhdGUsIDApOwo+Pj4+ICsJb3BwX3JhdGUgPSByYXRlOwo+Pj4+ICsJb3Bw
ID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2LCAmb3BwX3JhdGUsIDApOwo+Pj4+ICAgCWlm
IChJU19FUlIob3BwKSkgewo+Pj4+ICAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBmaW5kIGRl
dl9wbV9vcHBcbiIpOwo+Pj4+ICAgCQlyZXQgPSBQVFJfRVJSKG9wcCk7Cj4+Pj4gICAJCWdvdG8g
ZXJyX29wcDsKPj4+PiAgIAl9Cj4+Pj4gKwkvKgo+Pj4+ICsJICogRklYTUU6IFUtYm9vdCBsZWF2
ZXMgY2xvY2sgc291cmNlIGF0IGluY29ycmVjdCBQTEwsIHRoaXMgcmVzdWx0cwo+Pj4+ICsJICog
aW4gY2xvY2sgcmF0ZSBvdXRzaWRlIGRlZmluZWQgT1BQIHJhdGUuIFdvcmsgYXJvdW5kIHRoaXMg
YnVnIGJ5Cj4+Pj4gKwkgKiBzZXR0aW5nIGNsb2NrIHJhdGUgdG8gcmVjb21tZW5kZWQgb25lLgo+
Pj4+ICsJICovCj4+Pj4gKwlpZiAocmF0ZSA+IG9wcF9yYXRlKQo+Pj4+ICsJCWNsa19zZXRfcmF0
ZShidXMtPmNsaywgb3BwX3JhdGUpOwo+Pj4+ICsKPj4+PiAgIAlidXMtPmN1cnJfZnJlcSA9IGRl
dl9wbV9vcHBfZ2V0X2ZyZXEob3BwKTsKPj4+PiAgIAlkZXZfcG1fb3BwX3B1dChvcHApOwo+Pj4+
ICAgCj4+Pj4KPj4+Cj4+IEJlc3QgcmVnYXJkcwo+Pgo+IAo+IAoKLS0gCkJlc3QgcmVnYXJkcywK
S2FtaWwgS29uaWVjem55ClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
