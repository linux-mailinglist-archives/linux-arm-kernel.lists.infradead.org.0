Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE846857BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 03:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQi4aMGQoD6zHOwUlchMo4hnnNxu0Q6caOIedB5sXqQ=; b=IJKEI8YZwmMBau
	Ofci6nGD45v2fHZyott/0gGUWr9JCTWG3HdaMuHWBpO5Yo8rDv/2Xf03jb7lhFqBINhQYS2QltLX3
	Jm87F5/yP94jCthmVblWShA8CZq+WWjH/KVIdcHoESY30etEZmy/glAFB9Dk9in70So/5BIqvh/nt
	2YWEGdFeIEkkXIVW+gg5pPQxlTHN0dlf+z9++b2FF6QygCwPj2V7UJNNZSruh4bdZTScp32csThXL
	6nZV4tDaiB4B97EbRDjf4r19Jfmg9c64Li6fjxYIu0rGyH4xl2udF+4rI5rTrZwaDG2+EWx7nJGk4
	uK1T1MhKGdLIaKt7AqPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvXT7-0001lW-U3; Thu, 08 Aug 2019 01:43:54 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvXSw-0001kq-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 01:43:44 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190808014338epoutp04709b087f24fd7c305801b5406f8cf9bf~4zyKn-kP53261132611epoutp04J
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 01:43:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190808014338epoutp04709b087f24fd7c305801b5406f8cf9bf~4zyKn-kP53261132611epoutp04J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565228618;
 bh=g/w4k8k8kjGX3U5NCIJA3IW3tGMmcpA8VH1KgK5s/dM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=HRtD5KtmR8+DT8Gpg6cJtsL84OqbKqKt2+JOOqZP5U2RSO/BBeR4l4wDWNDkMzwLz
 sa9iUGmTye/l7HuKTLDUvhruRWavmiCK4YKRG2wEgoHd8ThDWO0JzXhClPTDvI1x7a
 +F5UqRBDId/Ay93+XyHho2jRzPPx5kY7vgLePgr8=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190808014337epcas1p3fef83b5cd5c8d07f9b88e1a7776f89a2~4zyKDcmkm1702217022epcas1p39;
 Thu,  8 Aug 2019 01:43:37 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.156]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 463rkH3g2KzMqYkZ; Thu,  8 Aug
 2019 01:43:35 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 99.55.04160.74E7B4D5; Thu,  8 Aug 2019 10:43:35 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190808014335epcas1p4808da0fca0ee5e83f3e93fdb5fae0a80~4zyHuKMuV0142801428epcas1p4K;
 Thu,  8 Aug 2019 01:43:35 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190808014335epsmtrp23ceb36b32893e61da4790576e1185a9e~4zyHsPdDT0126601266epsmtrp2T;
 Thu,  8 Aug 2019 01:43:35 +0000 (GMT)
X-AuditID: b6c32a38-b4bff70000001040-67-5d4b7e475deb
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 80.B1.03638.64E7B4D5; Thu,  8 Aug 2019 10:43:35 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190808014334epsmtip179ac81fd45d6031fde926485f4927413~4zyHc4yRQ1624616246epsmtip1X;
 Thu,  8 Aug 2019 01:43:34 +0000 (GMT)
Subject: Re: [PATCH v5 0/4] add coupled regulators for Exynos5422/5800
To: k.konieczny@partner.samsung.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <6888b704-1971-4832-d7b9-092368c797d0@samsung.com>
Date: Thu, 8 Aug 2019 10:47:14 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPJsWRmVeSWpSXmKPExsWy7bCmrq57nXeswetTshYbZ6xntZh/5Byr
 Rd++/4wW/Y9fM1ucP7+B3eJs0xt2i02Pr7FaXN41h83ic+8RRosZ5/cxWaw9cpfdYun1i0wW
 txtXsFm8+XGWyaJ17xF2i3/XNrJYbH5wjM1B0GPNvDWMHptWdbJ5bF5S73Hw3R4mj74tqxg9
 jt/YzuTxeZNcAHtUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKL
 T4CuW2YO0AdKCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnALLAr3ixNzi0rx0veT8
 XCtDAwMjU6DChOyM5pbLzAW/JCvmLF/B3sD4V6SLkYNDQsBEYuZxmS5GLg4hgR2MEr8PXWDt
 YuQEcj4xSixpdINIfGOUmL/8HjNIAqRh1uk2ZojEXkaJT78+MUE47xklOuYcZQSpEhZwk7jS
 MBGsQ0RAWWLyvelgHcwCl1kkpj2aBLaDTUBLYv+LG2wgNr+AosTVH4/BmnkF7CQen21gAbmP
 RUBFonlrAEhYVCBC4tODw6wQJYISJ2c+YQGxOQVcJb7unQDWyiwgLnHryXwmCFseqHU22F4J
 gWPsEg+n7mKFeMFF4sqCO+wQtrDEq+NboGwpic/v9rJB2NUSK08eYYNo7mCU2LL/AlSzscT+
 pZOZQI5jFtCUWL9LHyKsKLHz91yoI/gk3n3tYYWEL69ER5sQRImyxOUHd5kgbEmJxe2dbBMY
 lWYheWcWkhdmIXlhFsKyBYwsqxjFUguKc9NTiw0LTJAjexMjOHFrWexg3HPO5xCjAAejEg8v
 wwWvWCHWxLLiytxDjBIczEoivPfKPGOFeFMSK6tSi/Lji0pzUosPMZoCA3sis5Rocj4wq+SV
 xBuaGhkbG1uYGJqZGhoqifMu/GERKySQnliSmp2aWpBaBNPHxMEp1cAYGL2phpnjS/a2Kcs+
 7jq2ePMM/+1LWGTu1u4J7T/5r5v9lb8g74HXx19ejimVn7Htkc+82+3vRXy/MD24/K+eP/Rv
 x8MYdXer5eWREhvcfwsu7POZIDVR9I+JsdDlhY7nt1px7txfvsVt0XR+hjXCt7YXrPJ3zKs2
 TVUWrVi0/MK1vjKzE7rsSizFGYmGWsxFxYkAzT7GePIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsWy7bCSnK57nXeswcU9jBYbZ6xntZh/5Byr
 Rd++/4wW/Y9fM1ucP7+B3eJs0xt2i02Pr7FaXN41h83ic+8RRosZ5/cxWaw9cpfdYun1i0wW
 txtXsFm8+XGWyaJ17xF2i3/XNrJYbH5wjM1B0GPNvDWMHptWdbJ5bF5S73Hw3R4mj74tqxg9
 jt/YzuTxeZNcAHsUl01Kak5mWWqRvl0CV0Zzy2Xmgl+SFXOWr2BvYPwr0sXIySEhYCIx63Qb
 cxcjF4eQwG5Gif1bG9ghEpIS0y4eBUpwANnCEocPF0PUvGWUaNnaxAxSIyzgJnGlYSKYLSKg
 LDH53nSwQcwCV1kkzm+cwwbRMYNRouPlPVaQKjYBLYn9L26wgdj8AooSV388ZgSxeQXsJB6f
 bWAB2cYioCLRvDUAJCwqECFxeMcsqBJBiZMzn7CA2JwCrhJf904AizMLqEv8mXeJGcIWl7j1
 ZD4ThC0PNGY28wRG4VlI2mchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQuM8lLL9YoTc4tL89L1
 kvNzNzGCo1hLawfjiRPxhxgFOBiVeHgZLnjFCrEmlhVX5h5ilOBgVhLhvVfmGSvEm5JYWZVa
 lB9fVJqTWnyIUZqDRUmcVz7/WKSQQHpiSWp2ampBahFMlomDU6qBccmfjf7TlTpf91jcuHXh
 EotQeEMRwz+NM34cywTuT+Ndybip/T3L+9Q6CeeESQUlP6Zv+BBwWvHYrV91N1IWHk5/zD9J
 49/Zf6tVGj49cYuO+3/7w10Pfra1eQpxDyt8vTSdj4ZZdJm1fLkRJ8Gpm3VqX3n0hX0nv6zq
 +sI3bZuPvPO6PTH5fUosxRmJhlrMRcWJANBxI2/eAgAA
X-CMS-MailID: 20190808014335epcas1p4808da0fca0ee5e83f3e93fdb5fae0a80
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da
References: <CGME20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da@eucas1p1.samsung.com>
 <20190807133838.14678-1-k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_184342_520818_B429C899 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2FtaWwsCgpXaGVuIEkgYXBwbGllZCB0aGVtIHRvIHRlc3RpbmcgYnJhbmNoLCB0aG9zZSBk
b24ndCBoYXZlIHRoZSBhdXRob3IgbmFtZQpvbmx5IGp1c3QgaGF2ZSB0aGUgZW1haWwgYWRkcmVz
cyBhcyBmb2xsb3dpbmc6CllvdSBoYXZlIHRvIGVkaXQgdGhlIHlvdXIgZ2l0IGF1dGhvciBpbmZv
cm1hdGlvbiB3aXRoIHlvdXIgbmFtZS4KCmF1dGhvcglrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1
bmcuY29tIDxrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcuY29tPgkyMDE5LTA4LTA3IDE1OjM4
OjM2ICswMjAwCmNvbW1pdHRlcglDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4J
MjAxOS0wOC0wOCAxMDozNToxNiArMDkwMApjb21taXQJNDMwNGY0ZWNlYzkzY2ViZDI1NTQ2M2Q1
NmIwYTRmMTEyZWU5ZGM1MCAocGF0Y2gpCnRyZWUJMjg1OWU1NjZkNmY2ODIxOWY3MWE2MWU3YzQx
MjcxN2MxYWRiYTRmNQpwYXJlbnQJNTdkODU0MjEwMzhiNDU4ZGQ4N2VjMjY4NDA0ZmY2MDhmOTBj
MzZhZSAoZGlmZikKZG93bmxvYWQJbGludXgtNDMwNGY0ZWNlYzkzY2ViZDI1NTQ2M2Q1NmIwYTRm
MTEyZWU5ZGM1MC50YXIuZ3oKClJlZ2FyZHMsCkNoYW53b28gQ2hvaQoKT24gMTkuIDguIDcuIOyY
pO2bhCAxMDozOCwgay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5nLmNvbSB3cm90ZToKPiBIaSwK
PiAKPiBUaGUgbWFpbiBwdXJwb3NlIG9mIHRoaXMgcGF0Y2ggc2VyaWVzIGlzIHRvIGFkZCBjb3Vw
bGVkIHJlZ3VsYXRvcnMgZm9yCj4gRXh5bm9zNTQyMi81ODAwIHRvIGtlZXAgY29uc3RyYWluIG9u
IHZvbHRhZ2UgZGlmZmVyZW5jZSBiZXR3ZWVuIHZkZF9hcm0KPiBhbmQgdmRkX2ludCB0byBiZSBh
dCBtb3N0IDMwMG1WLiBJbiBleHlub3MtYnVzIGluc3RlYWQgb2YgdXNpbmcKPiByZWd1bGF0b3Jf
c2V0X3ZvbHRhZ2VfdG9sKCkgd2l0aCBkZWZhdWx0IHZvbHRhZ2UgdG9sZXJhbmNlIGl0IHNob3Vs
ZCBiZQo+IHVzZWQgcmVndWxhdG9yX3NldF92b2x0YWdlX3RyaXBsZXQoKSB3aXRoIHZvbGF0ZWdl
IHJhbmdlLCBhbmQgdGhpcyBpcwo+IGFscmVhZHkgcHJlc2VudCBpbiBvcHAvY29yZS5jIGNvZGUs
IHNvIGl0IGNhbiBiZSByZXVzZWQuIFdoaWxlIGF0IHRoaXMsCj4gbW92ZSBzZXR0aW5nIHJlZ3Vs
YXRvcnMgaW50byBvcHAvY29yZS4KPiAKPiBUaGlzIHBhdGNoc2V0IHdhcyB0ZXN0ZWQgb24gT2Ry
b2lkIFhVMy4KPiAKPiBUaGUgRFRTIGNvdXBsZWQgcmVndWxhdG9ycyBwYXRjaCBkZXBlbmRzIG9u
IHByZXZpb3VzIHBhdGNoZXMuCj4gCj4gQ2hhbmdlczoKPiB2NToKPiAtIHNxdWFzaGVkIGxhc3Qg
cGF0Y2ggInJlbW92ZSBleHlub3NfYnVzX3Bhc3NpdmVfdGFyZ2V0KCkiIGludG8gc2Vjb25kCj4g
LSBhZGRlZCBBY2tlZC1ieSB0byBwYXRjaCAiY29ycmVjdCBjbG9jayBlbmFibGUgc2VxdWVuY2Ui
Cj4gdjQ6Cj4gLSByZW1vdmVkICJvcHA6IGNvcmU6IGFkZCByZWd1bGF0b3JzIGVuYWJsZSBhbmQg
ZGlzYWJsZSIgZnJvbSBwYXRjaHNldAo+ICAgYXMgaXQgd2FzIGFwcGxpZWQgYnkgVmlyZXNoIEt1
bWFyIGFuZCBjaGFuZ2VkIGNvdmVyIGxldHRlcgo+IC0gZml4IHBhdGNoICJkZXZmcmVxOiBleHlu
b3MtYnVzOiBjb3JyZWN0IGNsb2NrIGVuYWJsZSBzZXF1ZW5jZSIgdG8KPiAgIGNvcnJlY3Qgb3Jk
ZXIgb2YgZW5hYmxlL2Rpc2FibGUKPiAtIHJlbW92ZWQgdW5yZWxhdGVkIGNoYW5nZXMgaW4gImRl
dmZyZXE6IGV4eW5vcy1idXM6IGNvbnZlcnQgdG8gdXNlCj4gICBkZXZfcG1fb3BwX3NldF9yYXRl
KCkiCj4gLSBhZGRlZCBuZXcgcGF0Y2ggImRldmZyZXE6IGV4eW5vcy1idXM6IHJlbW92ZSBleHlu
b3NfYnVzX3Bhc3NpdmVfdGFyZ2V0KCkiCj4gICBhcyBzdWdnZXN0ZWQgYnkgQ2hhbndvbyBDaG9p
Cj4gdjM6Cj4gLSBhZGRlZCBuZXcgZXh5bm9zLWJ1cyBwYXRjaCB0byBjb3JyZWN0IGNsb2NrIGFu
ZCByZWd1bGF0b3IgZW5hYmxpbmcKPiAgIGFuZCBkaXNhYmxpbmcgc2VxdWVuY2UgYXMgc3VnZ2Vz
dGVkIGJ5IENoYW53b28gQ2hvaQo+IC0gY29ycmVjdGVkIGVycm9yIHBhdGggaW4gZW5hYmxlIGFu
ZCBpbXByb3ZlZCBjb21taXQgbWVzc2FnZSBpbiBvcHAvY29yZQo+IC0gaW1wcm92ZSBjb21tZW50
IGluIGRldmZyZXEvZXh5bm9zLWJ1cy5jIGJlZm9yZSBkZXZmcmVxX3JlY29tbWVuZGVkX29wcCgp
Cj4gLSBjaGFuZ2UgY292ZXIgbGV0dGVyIGFzIHRoZXJlIGlzIG5ldyBwYXRjaAo+IC0gYWRkZWQg
bm90ZSBiZWZvcmUgU2lnbmVkLW9mZi1ieSBpbiA0dGggcGF0Y2gKPiB2MjoKPiAtIGltcHJvdmUg
cmVndWxhdG9ycyBlbmFibGUvZGlzYWJsZSBjb2RlIGluIG9wcC9jb3JlIGFzIHN1Z2dlc3RlZCBi
eQo+ICAgVmlyZXNoIEt1bWFyCj4gLSBhZGQgbmV3IHBhdGNoIGZvciByZW1vdmUgdW51c2VkIGR0
LWJpbmRpbmdzIGFzIHN1Z2dlc3RlZCBieSBLcnp5c3p0b2YKPiAgIEtvemxvd3NraQo+IAo+IEth
bWlsIEtvbmllY3pueSAoMyk6Cj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBjb3JyZWN0IGNsb2Nr
IGVuYWJsZSBzZXF1ZW5jZQo+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogY29udmVydCB0byB1c2Ug
ZGV2X3BtX29wcF9zZXRfcmF0ZSgpCj4gICBkdC1iaW5kaW5nczogZGV2ZnJlcTogZXh5bm9zLWJ1
czogcmVtb3ZlIHVudXNlZCBwcm9wZXJ0eQo+IAo+IE1hcmVrIFN6eXByb3dza2kgKDEpOgo+ICAg
QVJNOiBkdHM6IGV4eW5vczogYWRkIGluaXRpYWwgZGF0YSBmb3IgY291cGxlZCByZWd1bGF0b3Jz
IGZvcgo+ICAgICBFeHlub3M1NDIyLzU4MDAKPiAKPiAgLi4uL2JpbmRpbmdzL2RldmZyZXEvZXh5
bm9zLWJ1cy50eHQgICAgICAgICAgIHwgICAyIC0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NTQyMC5kdHNpICAgICAgICAgICAgIHwgIDM0ICsrLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNTQyMi1vZHJvaWQtY29yZS5kdHNpIHwgICA0ICsKPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNTgwMC1wZWFjaC1waS5kdHMgICAgIHwgICA0ICsKPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNTgwMC5kdHNpICAgICAgICAgICAgIHwgIDMyICsrLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYyAgICAgICAgICAgICAgICAgIHwgMTUzICsrKysrLS0tLS0tLS0tLS0tLQo+ICA2
IGZpbGVzIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDE1MSBkZWxldGlvbnMoLSkKPiAKCgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
