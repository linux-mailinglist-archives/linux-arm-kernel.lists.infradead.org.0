Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F002BE9DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 03:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMo6IU9rcqcffVP05dJLPiJky7l6T3c2FDCf2O186so=; b=cvyJJ0Ewr9B6Nd
	Fe7x4x8+YwounoIX6jCYXMen5LRXfLFmdcbMQvdae8nevdX4M/XB9VoLWfrvF7LX/KzAjEXgFEsWz
	efZi70JFQgY8EN/7mohZoJM62+PDZ3VLxSwb4nZp2MDCkzDvy6QJQR/refu0uZTDqY2Z50nJCgMhj
	7zxf11Xne45biGXCoIzh9bMJtiUov0JggMHPRc3uHw8VnH2/PpGMMnPGN04FSUPCuQuulSC+SsqlA
	4jYJxnf1uPD2Kn/ydsjJUyK52PtIhsfs4Ty102XR8AKFCBeBbzyykKwEIJAj9+o94JSjfdv8teBPU
	7b9x52AWJLqWJtqT8MUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDIC2-0001My-KT; Thu, 26 Sep 2019 01:03:38 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDIBq-0001MW-Mm
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 01:03:28 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190926010324epoutp0454c639afa47e38a9c513b66dece41984~H12By5E7C0391703917epoutp04O
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 01:03:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190926010324epoutp0454c639afa47e38a9c513b66dece41984~H12By5E7C0391703917epoutp04O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569459804;
 bh=Yqpkx4BCEja08YHcDCpzNi4z57TCOeCeLIIybRZTEyE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=MPMNErV2qY1BF4t2pzdLhCBRpqxCDiloREu6f7HWZYItHSbAr2K0063jc2dhv+S8n
 xIcY3o3oD7cTXNXIUerBGIOxq43q9LAq0J/vXT0/LLhzFIbAWffSOc5f53Ezw1TRjq
 xhizmkkwJ79Q/UjlYV7JLU0Q3oEjiD66ebJl4HP4=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190926010323epcas1p293ad50585fbf8750f02b64768785c4c3~H12BD7VLe0177201772epcas1p2V;
 Thu, 26 Sep 2019 01:03:23 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 46dxWF2kbczMqYkZ; Thu, 26 Sep
 2019 01:03:21 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 55.E3.04085.95E0C8D5; Thu, 26 Sep 2019 10:03:21 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190926010320epcas1p4cfb1f724d67da870e657f0a4483c8e3b~H11_etUap1100411004epcas1p4M;
 Thu, 26 Sep 2019 01:03:20 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190926010320epsmtrp15b0d05597ba8c8698e5c5dbb04c422ab~H11_dqJra1220412204epsmtrp1d;
 Thu, 26 Sep 2019 01:03:20 +0000 (GMT)
X-AuditID: b6c32a37-e31ff70000000ff5-9e-5d8c0e59e369
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 78.1D.04081.85E0C8D5; Thu, 26 Sep 2019 10:03:20 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190926010320epsmtip2288b7d5cec1706a5df38966fe4465b17~H11_N6lDo2189421894epsmtip2a;
 Thu, 26 Sep 2019 01:03:20 +0000 (GMT)
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <48e271f5-58d3-845a-538f-6fb75eb3deb6@samsung.com>
Date: Thu, 26 Sep 2019 10:08:02 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023910B94E4920D329427C8EE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmnm4kX0+swc5XAhaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmjxecNjRovb
 jSvYLFafO8hm0XXoL5vFxq8eDgIe72+0snvMbrjI4rFgU6nHplWdbB53ru1h89i8pN5j47sd
 TB4H3+1h8ujbsorR4/MmuQCuqGybjNTElNQihdS85PyUzLx0WyXv4HjneFMzA0NdQ0sLcyWF
 vMTcVFslF58AXbfMHKBHlBTKEnNKgUIBicXFSvp2NkX5pSWpChn5xSW2SqkFKTkFlgV6xYm5
 xaV56XrJ+blWhgYGRqZAhQnZGf/v32At+ClV8W7Xb5YGxquiXYycHBICJhJr/qxi7mLk4hAS
 2MEocWvNMnYI5xOjxMGDn1ggnG+MEltubWCHaTm25ARUYi+jxLpdX5ggnPeMEhf6VrOAVAkL
 2Ej8v/qRDcQWEQiV+PL0EjOIzSzQxCrx6UgZiM0moCWx/8UNsBp+AUWJqz8eM4LYvAJ2Enu3
 3GECsVkEVCVm3/wI1isqECHx6cFhVogaQYmTM5+A7eIUiJW48nQ6O8R8cYlbT+YzQdjyEs1b
 Z4M9JyFwjV1ix57njBAvuEhM2r+aCcIWlnh1fAvUa1ISL/vboOxqiZUnj7BBNHcA/b//AitE
 wlhi/9LJQM0cQBs0Jdbv0ocIK0rs/D2XEWIxn8S7rz2sICUSArwSHW1CECXKEpcf3IVaKymx
 uL2TbQKj0iwk78xC8sIsJC/MQli2gJFlFaNYakFxbnpqsWGBMXJ0b2IEp3It8x2MG875HGIU
 4GBU4uGViOyOFWJNLCuuzD3EKMHBrCTCO0umK1aINyWxsiq1KD++qDQntfgQoykwtCcyS4km
 5wPzTF5JvKGpkbGxsYWJoZmpoaGSOK9HekOskEB6YklqdmpqQWoRTB8TB6dUA6P4m5u9YhM2
 ynE9yWzl4LmucWjvHV0vpoqdWlNsJ75sqZaZ+STuQ8vd6INsPh5z9y/e/uPSjelOydZGM2Uv
 /LY4cqjBZHvxeY8t154ee/F1nuLFZrncQ1uP7v/ZZHpKc07+tVBFm5s/jzMtZ75ulJSyO2Cm
 cHln6OSWM+pqPUsL/6fb5Osv/vtbiaU4I9FQi7moOBEAAmeKgPsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsWy7bCSvG4EX0+sweIuXYtDx7ayW3w9fYrR
 Ytmlo4wW0/duYrM4f34Du8XZpjfsFrcaZCxW3P3IarHp8TVWi65fK5ktPvceYbT4vOExo8Xt
 xhVsFqvPHWSz6Dr0l81i41cPBwGP9zda2T1mN1xk8ViwqdRj06pONo871/aweWxeUu+x8d0O
 Jo+D7/YwefRtWcXo8XmTXABXFJdNSmpOZllqkb5dAlfG//s3WAt+SlW82/WbpYHxqmgXIyeH
 hICJxLElJ1i6GLk4hAR2M0rMmvWIGSIhKTHt4lEgmwPIFpY4fLgYouYto8T9ztUsIDXCAjYS
 /69+ZAOxRQRCJf50LmcFKWIWaGKV6Pp+nRGi4wmzxJsVd9lBqtgEtCT2v7gB1sEvoChx9cdj
 RhCbV8BOYu+WO0wgNouAqsTsmx/BrhAViJA4vGMWVI2gxMmZT8A2cwrESlx5Oh1sJrOAusSf
 eZeYIWxxiVtP5jNB2PISzVtnM09gFJ6FpH0WkpZZSFpmIWlZwMiyilEytaA4Nz232LDAMC+1
 XK84Mbe4NC9dLzk/dxMjOKq1NHcwXl4Sf4hRgINRiYf3QFh3rBBrYllxZe4hRgkOZiUR3lky
 XbFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeZ/mHYsUEkhPLEnNTk0tSC2CyTJxcEo1MPJGFJve
 EBSqOh2ydN+F//UnBNelFG8x/l1662iuXLUmR9UZLRvLUxbmtS/ruttLqr9/FN68bu7Muy6a
 1y1dDT7d2LCZe33pn4piV6t/hZOOTrFOTGlN8vx2xPC8Wc9aXunTf7cUvRO7HGbVu6L5q03O
 zz3HDqkcbBIverVkeWHfJMb9zOfO/ldiKc5INNRiLipOBAAgoGxU5gIAAA==
X-CMS-MailID: 20190926010320epcas1p4cfb1f724d67da870e657f0a4483c8e3b
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924192429epcas3p196a7de011d3e78508d1e643efd27e717
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <20190924191124.GJ133864@google.com>
 <CGME20190924192429epcas3p196a7de011d3e78508d1e643efd27e717@epcas3p1.samsung.com>
 <VI1PR04MB7023034123415F86CC045CCDEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <080027a2-d807-5fa4-f148-4469678ce849@samsung.com>
 <VI1PR04MB7023910B94E4920D329427C8EE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_180326_911404_D4A437F5 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjYuIOyYpOyghCA0OjQwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
T24gMjUuMDkuMjAxOSAwNToxMywgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBPbiAxOS4gOS4gMjUu
IOyYpOyghCA0OjIyLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBPbiAyNC4wOS4yMDE5IDIy
OjExLCBNYXR0aGlhcyBLYWVobGNrZSB3cm90ZToKPj4+PiBPbiBUdWUsIFNlcCAyNCwgMjAxOSBh
dCAwMToxMToyOVBNICswMzAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+Pj4+IFJlZ2lzdGVy
IG5vdGlmaWVycyB3aXRoIHRoZSBQTSBRb1MgZnJhbWV3b3JrIGluIG9yZGVyIHRvIHJlc3BvbmQg
dG8KPj4+Pj4gcmVxdWVzdHMgZm9yIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSBhbmQgREVWX1BN
X1FPU19NQVhfRlJFUVVFTkNZLgo+Pj4+Pgo+Pj4+PiBObyBub3RpZmllcnMgYXJlIGFkZGVkIGJ5
IHRoaXMgcGF0Y2ggYnV0IFBNIFFvUyBjb25zdHJhaW50cyBjYW4gYmUKPj4+Pj4gaW1wb3NlZCBl
eHRlcm5hbGx5IChmb3IgZXhhbXBsZSBmcm9tIG90aGVyIGRldmljZXMpLgo+Pj4+Pgo+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+
Pj4+PiBSZXZpZXdlZC1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4+
Pj4+IC0tLQo+Pj4+PiAgICBkcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIHwgNzUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4+ICAgIGluY2x1ZGUvbGludXgvZGV2
ZnJlcS5oICAgfCAgNSArKysKPj4+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCA4MCBpbnNlcnRpb25z
KCspCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIv
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4+PiBpbmRleCBlZWU0MDNlNzBjODQuLjc4NGYz
ZTQwNTM2YSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4+
PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+Pj4+IEBAIC0yMiwxNSArMjIsMTgg
QEAKPj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+Pj4+PiAgICAj
aW5jbHVkZSA8bGludXgvbGlzdC5oPgo+Pj4+PiAgICAjaW5jbHVkZSA8bGludXgvcHJpbnRrLmg+
Cj4+Pj4+ICAgICNpbmNsdWRlIDxsaW51eC9ocnRpbWVyLmg+Cj4+Pj4+ICAgICNpbmNsdWRlIDxs
aW51eC9vZi5oPgo+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3BtX3Fvcy5oPgo+Pj4+PiAgICAjaW5j
bHVkZSAiZ292ZXJub3IuaCIKPj4+Pj4gICAgCj4+Pj4+ICAgICNkZWZpbmUgQ1JFQVRFX1RSQUNF
X1BPSU5UUwo+Pj4+PiAgICAjaW5jbHVkZSA8dHJhY2UvZXZlbnRzL2RldmZyZXEuaD4KPj4+Pj4g
ICAgCj4+Pj4+ICsjZGVmaW5lIEhaX1BFUl9LSFoJMTAwMAo+Pj4+PiArCj4+Pj4+ICAgIHN0YXRp
YyBzdHJ1Y3QgY2xhc3MgKmRldmZyZXFfY2xhc3M7Cj4+Pj4+ICAgIAo+Pj4+PiAgICAvKgo+Pj4+
PiAgICAgKiBkZXZmcmVxIGNvcmUgcHJvdmlkZXMgZGVsYXllZCB3b3JrIGJhc2VkIGxvYWQgbW9u
aXRvcmluZyBoZWxwZXIKPj4+Pj4gICAgICogZnVuY3Rpb25zLiBHb3Zlcm5vcnMgY2FuIHVzZSB0
aGVzZSBvciBjYW4gaW1wbGVtZW50IHRoZWlyIG93bgo+Pj4+PiBAQCAtMTA5LDEwICsxMTIsMTEg
QEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgZmluZF9hdmFpbGFibGVfbWF4X2ZyZXEoc3RydWN0IGRl
dmZyZXEgKmRldmZyZXEpCj4+Pj4+ICAgIHN0YXRpYyB2b2lkIGdldF9mcmVxX3JhbmdlKHN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxLAo+Pj4+PiAgICAJCQkgICB1bnNpZ25lZCBsb25nICptaW5fZnJl
cSwKPj4+Pj4gICAgCQkJICAgdW5zaWduZWQgbG9uZyAqbWF4X2ZyZXEpCj4+Pj4+ICAgIHsKPj4+
Pj4gICAgCXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZXZmcmVxLT5wcm9maWxlLT5mcmVx
X3RhYmxlOwo+Pj4+PiArCXVuc2lnbmVkIGxvbmcgcW9zX21pbl9mcmVxLCBxb3NfbWF4X2ZyZXE7
Cj4+Pj4+ICAgIAo+Pj4+PiAgICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2ZnJlcS0+bG9jayk7
Cj4+Pj4+ICAgIAo+Pj4+PiAgICAJLyoKPj4+Pj4gICAgCSAqIEluaXQgbWluL21heCBmcmVxdWVu
Y3kgZnJvbSBmcmVxIHRhYmxlLgo+Pj4+PiBAQCAtMTI1LDEwICsxMjksMTggQEAgc3RhdGljIHZv
aWQgZ2V0X2ZyZXFfcmFuZ2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+Pj4+ICAgIAl9IGVs
c2Ugewo+Pj4+PiAgICAJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVbZGV2ZnJlcS0+cHJvZmlsZS0+
bWF4X3N0YXRlIC0gMV07Cj4+Pj4+ICAgIAkJKm1heF9mcmVxID0gZnJlcV90YWJsZVswXTsKPj4+
Pj4gICAgCX0KPj4+Pj4gICAgCj4+Pj4+ICsJLyogY29uc3RyYWludHMgZnJvbSBQTSBRb1MgKi8K
Pj4+Pj4gKwlxb3NfbWluX2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2
LnBhcmVudCwKPj4+Pj4gKwkJCQkJICAgICBERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kpOwo+Pj4+
PiArCXFvc19tYXhfZnJlcSA9IGRldl9wbV9xb3NfcmVhZF92YWx1ZShkZXZmcmVxLT5kZXYucGFy
ZW50LAo+Pj4+PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7ID4KPj4+PiBU
aGlzIG5lZWRzIHRvIGJlIERFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWS4gSSBtaXNzZWQgdGhpcyBp
biB0aGUgZWFybGllcgo+Pj4+IHJldmlld3MsIGJ1dCBzdHVtYmxlZCBhY3Jvc3MgaXQgd2hlbiB0
ZXN0aW5nLgo+Pj4+Cj4+Pj4gIVJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNo
cm9taXVtLm9yZz4KPj4+Cj4+PiBJIGJyb2tlIGl0IGluIHY4IHdoaWxlIHByb2Nlc3NpbmcgY29t
bWVudHMuIFRoYW5rcyBmb3IgY2F0Y2hpbmcgaXQuCj4+Cj4+IERpZCB5b3UgdGVzdCB0aGlzIHBh
dGNoc2V0IHdpdGggdjg/Cj4+IE1heWJlIGl0IGlzIG5vdCB3b3JraW5nIHdpdGggdGhpcyBtaXN0
YWtlLgo+IAo+IEkgcmFuIHNvbWUgc2NyaXB0cyB3aGljaCB0ZXN0IHRoYXQgbWluX2ZyZXEgcmVx
dWVzdHMgd29yayBhcyBleHBlY3RlZCAKPiAodXNpbmcgaW14IGludGVyY29ubmVjdCtkZXZmcmVx
KS4gVGhleSBkb24ndCB0b3VjaCBtYXhfZnJlcS4KCldlIGFsd2F5cyBoYXZlIHRvIHRlc3QgdGhl
IGNvZGUgYmVmb3JlIGNvbnRyaWJ1dGluZyB0aGUgcGF0Y2guClBsZWFzZSB0ZXN0IGFsbCBjYXNl
cyBmb3IgdGhlc2UgcGF0Y2hlcy4KCj4gCj4gLS0KPiBSZWdhcmRzLAo+IExlb25hcmQKPiAKCgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
