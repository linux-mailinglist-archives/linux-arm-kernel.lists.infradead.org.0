Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5347E763DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJzROX9YdLlqUnCuS2IUTFEMTH9IRSRpcL58ANISyFY=; b=NIrREZFih25oBi
	8eZkbNJ6L2+A2//j8AYMwwEFH7w689SgZC/aBjd6HUIc2CCAKmAKOBqaTYX3X976qD7cq1teu5G83
	y47RH3CCD3Mkx/XqwteR7PrvpHuiLhUAlRhuFQjV0wLIBztvwvYSM+CbihPlIJK6KaRh2WdX3NWe0
	1Mn2Vsa/JsO6tIT/4wHDc6qbTlx5tavdxJA1V04ld1UhRgblu/Lx3Th8ajZ9fhR7nXHnC4Tx1KKhd
	YeboB1MO+/UXvgkBetmcGmQr2s3l5A/xJimuO+tuIn12SalLGFGCJ0j0dyoFGLLCkuM03JmQ7UIXZ
	a6No8RObquHT9HfSf+Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxn1-0003xC-0e; Fri, 26 Jul 2019 10:49:31 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxmp-0003vV-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:49:21 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190726104914epoutp0282ad1b0cbaf61c548936bbfdcc4909d5~0710yc-d90241102411epoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:49:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190726104914epoutp0282ad1b0cbaf61c548936bbfdcc4909d5~0710yc-d90241102411epoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564138154;
 bh=FIem0CBgLtzFAqemq5f5qbAnnycsSJMfeDVL8zF1qi4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=WczEiAsv1rqzmdAOf14xZOESPKte7VHAJhZnEilN4tmci3GsxhVjWIWcifXfT2aF/
 XkJKFMULS08uM0I7x0Y5R2/a/25T6FKCYqOcUch+eBCuq4eOeBfIfzS6vsUPPd3O4S
 W0HxitfWe6g5wFmkuV5gTg9Jt3ma50XSZaAvHGt4=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190726104913epcas1p2d655cf59d621852a8144b4e197e4a334~0710Lb4eX2019720197epcas1p2N;
 Fri, 26 Jul 2019 10:49:13 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.158]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 45w5Rq2TRZzMqYkZ; Fri, 26 Jul
 2019 10:49:11 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 D0.8D.04075.7AADA3D5; Fri, 26 Jul 2019 19:49:11 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190726104910epcas1p2eeb9f55b4fc0bc7b4d4a1bc05358758b~071xJudE-2019720197epcas1p2L;
 Fri, 26 Jul 2019 10:49:10 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190726104910epsmtrp211de1d153c6bdc03c887623f840fa98a~071xGVDnz0122601226epsmtrp23;
 Fri, 26 Jul 2019 10:49:10 +0000 (GMT)
X-AuditID: b6c32a36-b49ff70000000feb-de-5d3adaa76465
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.9A.03706.6AADA3D5; Fri, 26 Jul 2019 19:49:10 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190726104909epsmtip1e1bb6a5400bed5480c06a24590667b60~071w323wD2044320443epsmtip1Q;
 Fri, 26 Jul 2019 10:49:09 +0000 (GMT)
Subject: Re: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
To: Krzysztof Kozlowski <krzk@kernel.org>, cwchoi00@gmail.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ea48649f-736e-4d76-e1f5-47731fb44a74@samsung.com>
Date: Fri, 26 Jul 2019 19:52:30 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPe4nOjjuA2MXLP1n=dPa7o6egjLZScSBNhyi9agHqqM7A@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCJsWRmVeSWpSXmKPExsWy7bCmnu7yW1axBmcmClgcOraV3eLZUW2L
 +UfOsVpc+fqezWL63k1sFpPuT2CxOH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y25x
 u3EFm8WMyS/ZHPg8ds66y+6xaVUnm8eda3vYPO53H2fy2Lyk3uPguz1MHn1bVjF6fN4kF8AR
 lW2TkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pmYKhraGlhrqSQl5ibaqvk4hOg65aZA3S2kkJZ
 Yk4pUCggsbhYSd/Opii/tCRVISO/uMRWKbUgJafAskCvODG3uDQvXS85P9fK0MDAyBSoMCE7
 4/p11YLrRhXH/8xnamD8p9TFyMkhIWAisezfTTYQW0hgB6PExRd+XYxcQPYnRon5E6+wQTjf
 GCVe3D/OCNPxaeZLqMReRolnW7uYIJz3jBJ7OjewgFQJC4RLvFz2BWyuiICtxO7Z81hAipgF
 VrJIrOt4BzaKTUBLYv+LG2BF/AKKEld/PAaL8wrYSXzb8hPI5uBgEVCVuDvNCyQsKhAh8enB
 YVaIEkGJkzOfgO3iFAiUOLZzDVgrs4C4xK0n85kgbHmJ5q2zmUH2SgjsYpfo+bAK6gUXib3P
 W9ggbGGJV8e3sEPYUhKf3+2FildLrDx5hA2iuYNRYsv+C6wQCWOJ/UsnM4EcxyygKbF+lz5E
 WFFi5++5UEfwSbz72sMKUiIhwCvR0SYEUaIscfnBXSYIW1JicXsn2wRGpVlI3pmF5IVZSF6Y
 hbBsASPLKkax1ILi3PTUYsMCI+TI3sQITtFaZjsYF53zOcQowMGoxMN7YbllrBBrYllxZe4h
 RgkOZiUR3q07gEK8KYmVValF+fFFpTmpxYcYTYGBPZFZSjQ5H5g/8kriDU2NjI2NLUwMzUwN
 DZXEeRf+sIgVEkhPLEnNTk0tSC2C6WPi4JRqYDzqYnWxqo6N5+p5yyOL3KxOtcseSOg8Pe+S
 yBuZlgfsUsuNPZZ+8p85R3ryvXA7ZnFL4fi29RYmb17dTRQ9NeFjcGBk5Hw55dJ41j+N0foe
 v191bVJVUT+1/1Tv5ZbEC4/NitfrnZi/vd7dQOf4yo6Vd/8Lst5UFp146POVnsehq7IEGm8x
 3VZiKc5INNRiLipOBADNjK8U5wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPIsWRmVeSWpSXmKPExsWy7bCSnO6yW1axBo/72C0OHdvKbvHsqLbF
 /CPnWC2ufH3PZjF97yY2i0n3J7BYnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbe4
 3biCzWLG5JdsDnweO2fdZffYtKqTzePOtT1sHve7jzN5bF5S73Hw3R4mj74tqxg9Pm+SC+CI
 4rJJSc3JLEst0rdL4Mq4fl214LpRxfE/85kaGP8pdTFyckgImEh8mvmSrYuRi0NIYDejxOYp
 z9kgEpIS0y4eZe5i5ACyhSUOHy6GqHnLKPHoaBczSI2wQLjEy2VfwOpFBGwlds+exwJSxCyw
 mkXizIb/TBAdt5kkdp7eyApSxSagJbH/xQ2wDn4BRYmrPx4zgti8AnYS37b8ZATZxiKgKnF3
 mhdIWFQgQuLwjllQJYISJ2c+YQGxOQUCJY7tXAMWZxZQl/gz7xIzhC0ucevJfCYIW16ieets
 5gmMwrOQtM9C0jILScssJC0LGFlWMUqmFhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIER6uW
 5g7Gy0viDzEKcDAq8fBqrLKMFWJNLCuuzD3EKMHBrCTCu3UHUIg3JbGyKrUoP76oNCe1+BCj
 NAeLkjjv07xjkUIC6YklqdmpqQWpRTBZJg5OqQZGXfmfuRI3Yq04JA6/nlawKrSIuf7cya+K
 4QX9TgqHZ6g2bDFrWhZ7JeGbeE/vbr3w6Rzv/0hyBOQrThM5tsexVz/XfX5K+mWd6oIJ5uVT
 Jz/v/uuW/J6p5XKpjYTws6f2S7WdG50+/HXtZQxI/iWu+UVK4r/N87iZXwWTqqfXHgpjWet4
 46MSS3FGoqEWc1FxIgC7Xjrq0gIAAA==
X-CMS-MailID: 20190726104910epcas1p2eeb9f55b4fc0bc7b4d4a1bc05358758b
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190723122022eucas1p1266d90873d564894bd852c20140f8474
References: <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-2-a.swigon@partner.samsung.com>
 <CAGTfZH0JE0PmiCHaT3vMrDaP0-8eZ3afyHy_zT9aFmMOGNTR8g@mail.gmail.com>
 <CAJKOXPe4nOjjuA2MXLP1n=dPa7o6egjLZScSBNhyi9agHqqM7A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_034919_740057_95F75932 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Inki Dae <inki.dae@samsung.com>,
 devicetree <devicetree@vger.kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDcuIDI2LiDsmKTtm4QgNzo0MiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBP
biBUaHUsIDI1IEp1bCAyMDE5IGF0IDE0OjQ0LCBDaGFud29vIENob2kgPGN3Y2hvaTAwQGdtYWls
LmNvbT4gd3JvdGU6Cj4+Cj4+IDIwMTnrhYQgN+yblCAyNOydvCAo7IiYKSDsmKTsoIQgODowOSwg
QXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+64uY7J20IOyekeyE
sToKPj4+Cj4+PiBUaGlzIHBhdGNoIGFkZHMgYSBuZXcgc3RhdGljIGZ1bmN0aW9uLCBleHlub3Nf
YnVzX3Byb2ZpbGVfaW5pdCgpLCBleHRyYWN0ZWQKPj4+IGZyb20gZXh5bm9zX2J1c19wcm9iZSgp
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVy
LnNhbXN1bmcuY29tPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8
IDEwNiArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCA2MCBpbnNlcnRpb25zKCspLCA0NiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3Mt
YnVzLmMKPj4+IGluZGV4IGQ5ZjM3NzkxMmMxMC4uZDhmMWVmYWYyZDQ5IDEwMDY0NAo+Pj4gLS0t
IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYwo+Pj4gQEAgLTM3MiwxMiArMzcyLDY5IEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4gICAgICAgICByZXR1cm4g
cmV0Owo+Pj4gIH0KPj4+Cj4+PiArc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChz
dHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZSkKPj4+ICt7Cj4+PiArICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2Owo+Pj4gKyAgICAgICBzdHJ1Y3QgZGV2
ZnJlcV9zaW1wbGVfb25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKPj4+ICsgICAgICAgaW50
IHJldDsKPj4+ICsKPj4+ICsgICAgICAgLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUg
YW5kIGdvdmVybm9yIGRhdGEgZm9yIHBhcmVudCBkZXZpY2UgKi8KPj4+ICsgICAgICAgcHJvZmls
ZS0+cG9sbGluZ19tcyA9IDUwOwo+Pj4gKyAgICAgICBwcm9maWxlLT50YXJnZXQgPSBleHlub3Nf
YnVzX3RhcmdldDsKPj4+ICsgICAgICAgcHJvZmlsZS0+Z2V0X2Rldl9zdGF0dXMgPSBleHlub3Nf
YnVzX2dldF9kZXZfc3RhdHVzOwo+Pj4gKyAgICAgICBwcm9maWxlLT5leGl0ID0gZXh5bm9zX2J1
c19leGl0Owo+Pj4gKwo+Pj4gKyAgICAgICBvbmRlbWFuZF9kYXRhID0gZGV2bV9remFsbG9jKGRl
diwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4+PiArICAgICAgIGlmICgh
b25kZW1hbmRfZGF0YSkgewo+Pj4gKyAgICAgICAgICAgICAgIHJldCA9IC1FTk9NRU07Cj4+PiAr
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+PiArICAgICAgIH0KPj4+ICsgICAgICAgb25kZW1h
bmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKPj4+ICsgICAgICAgb25kZW1hbmRfZGF0YS0+ZG93
bmRpZmZlcmVudGlhbCA9IDU7Cj4+PiArCj4+PiArICAgICAgIC8qIEFkZCBkZXZmcmVxIGRldmlj
ZSB0byBtb25pdG9yIGFuZCBoYW5kbGUgdGhlIGV4eW5vcyBidXMgKi8KPj4+ICsgICAgICAgYnVz
LT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLAo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgREVWRlJFUV9HT1Zf
U0lNUExFX09OREVNQU5ELAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgb25kZW1hbmRfZGF0YSk7Cj4+PiArICAgICAgIGlmIChJU19FUlIoYnVzLT5k
ZXZmcmVxKSkgewo+Pj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFk
ZCBkZXZmcmVxIGRldmljZVxuIik7Cj4+PiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihi
dXMtPmRldmZyZXEpOwo+Pj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4gKyAgICAgICB9
Cj4+PiArCj4+PiArICAgICAgIC8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0aGUg
Y2hhbmdlIG9mIE9QUCAgKi8KPj4+ICsgICAgICAgcmV0ID0gZGV2bV9kZXZmcmVxX3JlZ2lzdGVy
X29wcF9ub3RpZmllcihkZXYsIGJ1cy0+ZGV2ZnJlcSk7Cj4+PiArICAgICAgIGlmIChyZXQgPCAw
KSB7Cj4+PiArICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIg
b3BwIG5vdGlmaWVyXG4iKTsKPj4+ICsgICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+ICsgICAg
ICAgfQo+Pj4gKwo+Pj4gKyAgICAgICAvKgo+Pj4gKyAgICAgICAgKiBFbmFibGUgZGV2ZnJlcS1l
dmVudCB0byBnZXQgcmF3IGRhdGEgd2hpY2ggaXMgdXNlZCB0byBkZXRlcm1pbmUKPj4+ICsgICAg
ICAgICogY3VycmVudCBidXMgbG9hZC4KPj4+ICsgICAgICAgICovCj4+PiArICAgICAgIHJldCA9
IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKPj4+ICsgICAgICAgaWYgKHJldCA8IDApIHsK
Pj4+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJl
cS1ldmVudCBkZXZpY2VzXG4iKTsKPj4+ICsgICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+ICsg
ICAgICAgfQo+Pj4gKwo+Pj4gKyAgICAgICByZXQgPSBleHlub3NfYnVzX3NldF9ldmVudChidXMp
Owo+Pj4gKyAgICAgICBpZiAocmV0IDwgMCkgewo+Pj4gKyAgICAgICAgICAgICAgIGRldl9lcnIo
ZGV2LCAiZmFpbGVkIHRvIHNldCBldmVudCB0byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+
Pj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4gKyAgICAgICB9Cj4+PiArCj4+PiArZXJy
Ogo+Pj4gKyAgICAgICByZXR1cm4gcmV0Owo+Pj4gK30KPj4+ICsKPj4+ICBzdGF0aWMgaW50IGV4
eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+ICB7Cj4+PiAg
ICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4+PiAgICAgICAgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGUsICpub2RlOwo+Pj4gICAgICAgICBzdHJ1
Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZTsKPj4+IC0gICAgICAgc3RydWN0IGRldmZy
ZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEgKm9uZGVtYW5kX2RhdGE7Cj4+PiAgICAgICAgIHN0cnVj
dCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwo+Pj4gICAgICAgICBzdHJ1Y3Qg
ZGV2ZnJlcSAqcGFyZW50X2RldmZyZXE7Cj4+PiAgICAgICAgIHN0cnVjdCBleHlub3NfYnVzICpi
dXM7Cj4+PiBAQCAtNDE4LDUyICs0NzUsOSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+ICAgICAgICAgaWYgKHJldCA8IDApCj4+
PiAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+Pgo+Pj4gLSAgICAgICAvKiBJbml0aWFsaXpl
IHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFyZW50IGRldmljZSAq
Lwo+Pj4gLSAgICAgICBwcm9maWxlLT5wb2xsaW5nX21zID0gNTA7Cj4+PiAtICAgICAgIHByb2Zp
bGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0Owo+Pj4gLSAgICAgICBwcm9maWxlLT5nZXRf
ZGV2X3N0YXR1cyA9IGV4eW5vc19idXNfZ2V0X2Rldl9zdGF0dXM7Cj4+PiAtICAgICAgIHByb2Zp
bGUtPmV4aXQgPSBleHlub3NfYnVzX2V4aXQ7Cj4+PiAtCj4+PiAtICAgICAgIG9uZGVtYW5kX2Rh
dGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVM
KTsKPj4+IC0gICAgICAgaWYgKCFvbmRlbWFuZF9kYXRhKSB7Cj4+PiAtICAgICAgICAgICAgICAg
cmV0ID0gLUVOT01FTTsKPj4+ICsgICAgICAgcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXQo
YnVzLCBwcm9maWxlKTsKPj4+ICsgICAgICAgaWYgKHJldCA8IDApCj4+PiAgICAgICAgICAgICAg
ICAgZ290byBlcnI7Cj4+PiAtICAgICAgIH0KPj4+IC0gICAgICAgb25kZW1hbmRfZGF0YS0+dXB0
aHJlc2hvbGQgPSA0MDsKPj4+IC0gICAgICAgb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVudGlh
bCA9IDU7Cj4+PiAtCj4+PiAtICAgICAgIC8qIEFkZCBkZXZmcmVxIGRldmljZSB0byBtb25pdG9y
IGFuZCBoYW5kbGUgdGhlIGV4eW5vcyBidXMgKi8KPj4+IC0gICAgICAgYnVzLT5kZXZmcmVxID0g
ZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLAo+Pj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgREVWRlJFUV9HT1ZfU0lNUExFX09OREVN
QU5ELAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
b25kZW1hbmRfZGF0YSk7Cj4+PiAtICAgICAgIGlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewo+
Pj4gLSAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRl
dmljZVxuIik7Cj4+PiAtICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEp
Owo+Pj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4gLSAgICAgICB9Cj4+PiAtCj4+PiAt
ICAgICAgIC8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9Q
UCAgKi8KPj4+IC0gICAgICAgcmV0ID0gZGV2bV9kZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmll
cihkZXYsIGJ1cy0+ZGV2ZnJlcSk7Cj4+PiAtICAgICAgIGlmIChyZXQgPCAwKSB7Cj4+PiAtICAg
ICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVy
XG4iKTsKPj4+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+IC0gICAgICAgfQo+Pj4gLQo+
Pj4gLSAgICAgICAvKgo+Pj4gLSAgICAgICAgKiBFbmFibGUgZGV2ZnJlcS1ldmVudCB0byBnZXQg
cmF3IGRhdGEgd2hpY2ggaXMgdXNlZCB0byBkZXRlcm1pbmUKPj4+IC0gICAgICAgICogY3VycmVu
dCBidXMgbG9hZC4KPj4+IC0gICAgICAgICovCj4+PiAtICAgICAgIHJldCA9IGV4eW5vc19idXNf
ZW5hYmxlX2VkZXYoYnVzKTsKPj4+IC0gICAgICAgaWYgKHJldCA8IDApIHsKPj4+IC0gICAgICAg
ICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVudCBkZXZp
Y2VzXG4iKTsKPj4+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+IC0gICAgICAgfQo+Pj4g
LQo+Pj4gLSAgICAgICByZXQgPSBleHlub3NfYnVzX3NldF9ldmVudChidXMpOwo+Pj4gLSAgICAg
ICBpZiAocmV0IDwgMCkgewo+Pj4gLSAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIHNldCBldmVudCB0byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+Pj4gLSAgICAgICAg
ICAgICAgIGdvdG8gZXJyOwo+Pj4gLSAgICAgICB9Cj4+Pgo+Pj4gICAgICAgICBnb3RvIG91dDsK
Pj4+ICBwYXNzaXZlOgo+Pj4gLS0KPj4+IDIuMTcuMQo+Pj4KPj4KPj4gTkFDSy4KPj4KPj4gSXQg
aGFzIG5vdCBhbnkgYmVuZWZpdCBhbmQgSSBkb24ndCB1bmRlcnN0YW5kIHJlYXNvbiB3aHkgaXQg
aXMgbmVjZXNzYXJ5Lgo+PiBJIGRvbid0IGFncmVlLiBQbGVhc2UgZHJvcCBpdC4KPiAKPiBUaGUg
cHJvYmUgaGFzIDEyIGxvY2FsIHZhcmlhYmxlcyBhbmQgYXJvdW5kIDE0MCBsaW5lcyBvZiBjb2Rl
IChzbyBtdWNoCj4gbW9yZSB0aGFuIGNvZGluZyBzdHlsZSByZWNvbW1lbmRhdGlvbnMpLiBUaGVy
ZWZvcmUgc3BsaXR0aW5nIHNvbWUKPiBsb2dpY2FsIHBhcnQgb3V0IG9mIHByb2JlIHRvIG1ha2Ug
Y29kZSBiZXR0ZXIgb3JnYW5pemVkIGFuZCBtb3JlCj4gcmVhZGFibGUgaXMgcHJldHR5IG9idmlv
dXMgYmVuZWZpdC4KCkFmdGVyIGNoZWNrZWQgdGhlIHBhdGNoMywgSSBjaGFuZ2VkIG15IG9waW5p
b24uIEl0IHNlZW1zIG1vcmUgc2ltcGxlIHRoYW4gYmVmb3JlCmFuZCBJIHJlcGxpZWQgb24gcGF0
Y2gzLiBCdXQsIEkgdGhpbmsgdGhhdCBjYW4gbWVyZ2UgcGF0Y2gxLzIvMiB0byBvbmUgcGF0Y2gu
CgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
