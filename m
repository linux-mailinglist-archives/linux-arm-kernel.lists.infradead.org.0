Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA91B3A4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ac7oWc6Phz7+oPd+zFM4GYGXza8EdYDFeZPv5gGeFo=; b=pl0TfLgoalBoxW
	PCzGeVYdcpV1kioF0UmW/ykfDoFDtLP9Hl7OjOzeIIx3Xw/XSWnO8vsmPaNs3OHVFjN6VfQndxbfD
	AL8xzLPwE5N40NogEJKHhTEjl/Pkyage9XxqoJF5NsYsU1kottDHtRV1KqkpuldeW6cpoH9zU27A9
	V3vPZ/FIUYQDwpGLki3ZOdOA65r+HNLQepytNMF2WDAiNDp2V9k0+HD/6+p51H1zguShZM/wAXcvm
	wuNuaSbRpFDbzdD4t99sYZIHm4LokQcic46C2OTtmSnx9zUHY5xEEfO1alQ31hhAn4SH28xDngTw9
	CgHynqwa5nqW1hQmQuuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9q57-0000Dh-3b; Mon, 16 Sep 2019 12:26:13 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9q4s-0000Cn-SM
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:26:01 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190916122556euoutp0192fcc9864960213d430466cb803ed049~E6tG8nBwc0041100411euoutp01r
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 12:25:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190916122556euoutp0192fcc9864960213d430466cb803ed049~E6tG8nBwc0041100411euoutp01r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568636756;
 bh=pd4LFeq8Hf58x/uaWkVtzZwd7F67Yro/hz+c01DyRcI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=DcOGAFncEUFXIdBgwinf/2dim/Bv4mXH5gmKVthlJ5nWI32w9waFYKPKsLHN/b1Tm
 FYiXqhXf6WxCWvHsgakZFJTVHvgY51wTbUld+hBiTafHCeN5aVrJAZLc6TBA1oqtv+
 2bJPVKNiUQcBcPKRcWIPSkWFnNL5YeJw1UQxx0wQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190916122555eucas1p1b403dcd9a69c421eec08dea14a4aabf7~E6tGKH_RG0799707997eucas1p1N;
 Mon, 16 Sep 2019 12:25:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 35.93.04469.35F7F7D5; Mon, 16
 Sep 2019 13:25:55 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190916122555eucas1p100b7f2c9c7c63a585a8b96aafb931c01~E6tFWzA1e0775607756eucas1p1P;
 Mon, 16 Sep 2019 12:25:55 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190916122554eusmtrp29217d31fe51b7619dabfd1be6c2cf541~E6tFIeilQ1085610856eusmtrp2y;
 Mon, 16 Sep 2019 12:25:54 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-c7-5d7f7f536494
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 47.D6.04166.25F7F7D5; Mon, 16
 Sep 2019 13:25:54 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190916122553eusmtip281778247ca06eec9d1ec906ab34edca4~E6tETXae41817718177eusmtip2D;
 Mon, 16 Sep 2019 12:25:53 +0000 (GMT)
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
To: Brian Masney <masneyb@onstation.org>, Enric Balletbo i Serra
 <enric.balletbo@collabora.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <d729f4cd-1d00-fc8b-1688-78c9f325eeac@samsung.com>
Date: Mon, 16 Sep 2019 14:25:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190916120228.GA3045@onstation.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTut/tUWtxN04NJ0SAio9QM+kUPCvrjBv2hVNADq1vdluWW7Gbv
 nJXWMrTZ2y0tS5nKophpOlJrSstso/Uws2QLpXf2tHea2y3yv++c833nOx8cllCfp2PYNP1m
 0aAX0jV0OFl747t30kKjMTXhq3089nb/JHG+t1WB25p6STxQW0jgMy1eCt/ve0dj+2MXwqef
 exB+8PUlgVvfPCDxwcIyBh/7ZVNgR3c7hQubPAy+5zxN4/KHPgU+bH1NYVfBcvy89BuBcxta
 GNx1tAXNGcnbS+yIf9eRy/B1XWWIb/hyluTrLV0MbzUVUbyj6iDN3zTfVfBP2q/S/JUvAYr3
 H3Ir+OoyI1/eEcG7nZ0Mfy3/KMl/coxO5paFz1wrpqdtEQ3xs1eFr6+22+iMCxO22Y4VM9mo
 RpOHwljgpsKzwHEmiNVcBYJDPfPzUPgg/owg+1YpKRefENhO5FH/FFZHCZIHNgTvrWW0XLxF
 sLf3R4gVwaXAbYuXDuJIToDuxjchBcHtJ6Hw3JGQIc1NgN/Vj0IkJTcbDjjNITHJjYOGtuIQ
 HsktgY+BZkrmqKC1qGfwJpYN46aAf1+oTXBjYF+NlZBxNHT2nFEEvYALsFBQ+pQI8oGbB3mV
 s+QEEfDKfZmRcSwM1Af5QWwEf0UOIWtNCGou1RPyYAY0u31UcA8xePNFZ7zcngvmNh8prx8B
 HW9V8gkj4Ejtyb+uSjDtV8vsseD31PxdGA3ld/poM9JYhuSyDAljGRLG8t/3LCKrULSYKem0
 opSoF7dOlgSdlKnXTl6zSedAg6/b1u/+WIf67q52IY5FmuHK7NysVDUlbJG261wIWEITqUze
 bUxVK9cK23eIhk0rDZnpouRCo1hSE63cOSywXM1phc3iRlHMEA3/pgo2LCYbqdQ7vH3C0vxR
 Rb0rLvdfq2pOemluqa9OOEVHNZK5A4v0ppR1CbaLCZEHYozD2p1RGZ6xSa7G1/7jYlblLt/E
 F/eTdu+pTI7SLjF4xcSNOaYuV4pwc4G2WPLVfZje9AS/UJmy4hsW57R6ptWlXY+d8/hUf6cr
 dn6P6lVcwYbfP3UaUlovJMYRBkn4A6FlcQK2AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf0yMcRzH931+3XPN6XGV+8qGnTWyeXJX6Zvphg2PYcL8WGl5lmdF3V27
 52p+TEVCWZT84yn9oNMkTXerrmjlpNyukiiJxLKh/BoqJj+qY+u/1/Z+vf74bB8aV9pJX3q/
 wSyYDHyCmvIgXL9bXyzdlpoatcxSwqKOwZ8Eyu5wYsjV+JFAf2pycVTU3EGixyOfKFTxzAFQ
 wZt2gLrH3uHI+b6bQJm5pTJ0YbwMQ9bBHhLlNrbL0KP6AgpZnjzE0Ln8YRI5zkaiNyXfcZTR
 0CxD/XnNYJUPV1FYAbhPvRkyzt5fCriG0WKCq5P6ZVz+6YskZy3PpLj7OV0Y97znNsXVjr4k
 uYEzrRhnK03lLL1eXGt9n4xrys4juK/WeeFMBLvSZEwyCwvijKI5TB2pQVpWE4pYbVAoqwkM
 iVqhDVYH6FbuExL2JwumAN1eNs5WUUYl3vA/WHbhkiwNVKuzgJyGTBDMtxaCLOBBKxkLgJcz
 h3D3oIK3ij78Yy843pNFuaVhAI9/LMMmBy9mK2yTOqhJ9mZ46Pp5dUrCmZMErKtsIN3FTRx2
 j1QRkxbF+MNftqdThYLRwVP1OeQkE4wfbHBdmmIfZje8a5eA25kFnRdfT7Q0LWe0cCB9SsGZ
 RXC8sAt383yYXp3/j1Ww73URlgOU0rRampZI0xJpWlIMiHLgLSSJ+li9qGFFXi8mGWLZGKPe
 Cia+pqblh80Ouqq2OwBDA/UMRVpGSpSS5JPFQ3oHgDSu9laEH02NUir28YcOCyZjtCkpQRAd
 IHjitlzc1yfGOPGDBnO0JlgTgkI1IYEhgcuRWqU4zdzZo2RiebMQLwiJgul/h9Fy3zTgufna
 jrH2yuqIY9ROc+PcLRsMHtfPh9Oe8xds6o75su6UIX5XdvTcxctLZvr0dGqji2e/WP3AhS17
 q+NH158bGWgfbdPJ4x+eOGLPs6UHduosCz3jmmrXql45zZ6Sk51DyTePkfdK04Kl4gMpfnXf
 Oq9s5NdEbmj5XFU51KoKYzzUhBjHa5bgJpH/C4U8smxLAwAA
X-CMS-MailID: 20190916122555eucas1p100b7f2c9c7c63a585a8b96aafb931c01
X-Msg-Generator: CA
X-RootMTR: 20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
 <20190916103614.GA1644@onstation.org>
 <20190916104907.GB4734@pendragon.ideasonboard.com>
 <3ec4f0bc-f3c5-aebf-8213-bc4f80915902@collabora.com>
 <20190916120228.GA3045@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_052559_361388_D8868C1F 
X-CRM114-Status: GOOD (  27.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 dri-devel@lists.freedesktop.org, narmstrong@baylibre.com, airlied@linux.ie,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org, jonas@kwiboo.se,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
 robdclark@gmail.com, agross@kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, daniel@ffwll.ch,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYuMDkuMjAxOSAxNDowMiwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+IE9uIE1vbiwgU2VwIDE2
LCAyMDE5IGF0IDAxOjMyOjU4UE0gKzAyMDAsIEVucmljIEJhbGxldGJvIGkgU2VycmEgd3JvdGU6
Cj4+IEhpLAo+Pgo+PiBPbiAxNi85LzE5IDEyOjQ5LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+
Pj4gSGkgQnJpYW4sCj4+Pgo+Pj4gT24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMDY6MzY6MTRBTSAt
MDQwMCwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+Pj4+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0IDEy
OjAyOjA5UE0gKzAyMDAsIEFuZHJ6ZWogSGFqZGEgd3JvdGU6Cj4+Pj4+IE9uIDE1LjA4LjIwMTkg
MDI6NDgsIEJyaWFuIE1hc25leSB3cm90ZToKPj4+Pj4+IFdoZW4gYXR0ZW1wdGluZyB0byBjb25m
aWd1cmUgdGhpcyBkcml2ZXIgb24gYSBOZXh1cyA1IHBob25lIChtc204OTc0KSwKPj4+Pj4+IHNl
dHRpbmcgdXAgdGhlIGR1bW15IGkyYyBidXMgZm9yIFRYX1AwIHdvdWxkIGZhaWwgZHVlIHRvIGFu
IC1FQlVTWQo+Pj4+Pj4gZXJyb3IuIFRoZSBkb3duc3RyZWFtIE1TTSBrZXJuZWwgc291cmNlcyBb
MV0gc2hvd3MgdGhhdCB0aGUgcHJvcGVyIHZhbHVlCj4+Pj4+PiBmb3IgVFhfUDAgaXMgMHg3OCwg
bm90IDB4NzAsIHNvIGNvcnJlY3QgdGhlIHZhbHVlIHRvIGFsbG93IGRldmljZQo+Pj4+Pj4gcHJv
YmluZyB0byBzdWNjZWVkLgo+Pj4+Pj4KPj4+Pj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vQUlD
UC9rZXJuZWxfbGdlX2hhbW1lcmhlYWQvYmxvYi9uNy4xL2RyaXZlcnMvdmlkZW8vc2xpbXBvcnQv
c2xpbXBvcnRfdHhfcmVnLmgKPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBNYXNu
ZXkgPG1hc25leWJAb25zdGF0aW9uLm9yZz4KPj4+Pj4+IC0tLQo+Pj4+Pj4gIGRyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oIHwgMiArLQo+Pj4+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4eHguaCBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oCj4+Pj4+PiBpbmRleCAyNWUwNjNiY2Vj
YmMuLmJjNTExZmM2MDVjOSAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgtYW54Nzh4eC5oCj4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L2FuYWxvZ2l4LWFueDc4eHguaAo+Pj4+Pj4gQEAgLTYsNyArNiw3IEBACj4+Pj4+PiAgI2lmbmRl
ZiBfX0FOWDc4eHhfSAo+Pj4+Pj4gICNkZWZpbmUgX19BTlg3OHh4X0gKPj4+Pj4+ICAKPj4+Pj4+
IC0jZGVmaW5lIFRYX1AwCQkJCTB4NzAKPj4+Pj4+ICsjZGVmaW5lIFRYX1AwCQkJCTB4NzgKPj4+
Pj4KPj4+Pj4gVGhpcyBib3RoZXJzIG1lIGxpdHRsZS4gVGhlcmUgYXJlIG5vIHVwc3RyZWFtIHVz
ZXJzLCBncmVwcGluZyBhbmRyb2lkCj4+Pj4+IHNvdXJjZXMgc3VnZ2VzdHMgdGhhdCBib3RoIHZh
bHVlcyBjYW4gYmUgdXNlZCBbMV1bMl3CoCAoZ3JlcCBmb3IgIiNkZWZpbmUKPj4+Pj4gVFhfUDAi
KSwgbW9yZW92ZXIgdGhlcmUgaXMgY29kZSBzdWdnZXN0aW5nIGJvdGggdmFsdWVzIGNhbiBiZSB2
YWxpZCBbM10uCj4+Pj4+Cj4+Pj4+IENvdWxkIHlvdSB2ZXJpZnkgZGF0YXNoZWV0IHdoaWNoIGky
YyBzbGF2ZSBhZGRyZXNzZXMgYXJlIHZhbGlkIGZvciB0aGlzCj4+Pj4+IGNoaXAsIGlmIGJvdGgg
SSBndWVzcyB0aGlzIHBhdGNoIHNob3VsZCBiZSByZXdvcmtlZC4KPj4+Pj4KPj4+Pj4KPj4+Pj4g
WzFdOgo+Pj4+PiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvbXNtLysv
YW5kcm9pZC1tc20tZmxvLTMuNC1qYi1tcjIvZHJpdmVycy9taXNjL3NsaW1wb3J0X2FueDc4MDgv
c2xpbXBvcnRfdHhfcmVnLmgKPj4+Pj4KPj4+Pj4gWzJdOgo+Pj4+PiBodHRwczovL2dpdGh1Yi5j
b20vQW5kcm9pZEdYL1NpbXBsZUdYLU1NLTYuMF9IODE1XzIwZC9ibG9iL21hc3Rlci9kcml2ZXJz
L3ZpZGVvL3NsaW1wb3J0L2FueDc4MTIvc2xpbXBvcnQ3ODEyX3R4X3JlZy5oCj4+Pj4+Cj4+Pj4+
IFszXToKPj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2NvbW1hYWkvYW5kcm9pZF9rZXJuZWxfbGVl
Y29fbXNtODk5Ni9ibG9iL21hc3Rlci9kcml2ZXJzL3ZpZGVvL21zbS9tZHNzL2RwL3NsaW1wb3J0
X2N1c3RvbV9kZWNsYXJlLmgjTDczCj4+Pj4gVGhpcyBhZGRyZXNzIGlzIDB4Nzggb24gbXkgTmV4
dXMgNS4gR2l2ZW4gWzNdIGFib3ZlIGl0IGxvb2tzIGxpa2Ugd2UKPj4+PiBuZWVkIHRvIHN1cHBv
cnQgYm90aCBhZGRyZXNzZXMuIFdoYXQgZG8geW91IHRoaW5rIGFib3V0IG1vdmluZyB0aGVzZQo+
Pj4+IGFkZHJlc3NlcyBpbnRvIGRldmljZSB0cmVlPwo+Pj4gQXNzdW1pbmcgdGhhdCB0aGUgZGV2
aWNlIHN1cHBvcnRzIGRpZmZlcmVudCBhZGRyZXNzZXMgKEkgY2FuJ3QgdmFsaWRhdGUKPj4+IHRo
YXQgYXMgSSBkb24ndCBoYXZlIGFjY2VzcyB0byB0aGUgZGF0YXNoZWV0KSwgYW5kIGRpZmZlcmVu
dCBhZGRyZXNzZXMKPj4+IG5lZWQgdG8gYmUgdXNlZCBvbiBkaWZmZXJlbnQgc3lzdGVtcywgdGhl
biB0aGUgYWRkcmVzcyB0byBiZSB1c2VkIG5lZWRzCj4+PiB0byBiZSBwcm92aWRlZCBieSB0aGUg
ZmlybXdhcmUgKERUIGluIHRoaXMgY2FzZSkuIFR3byBvcHRpb25zIGFyZQo+Pj4gcG9zc2libGUs
IGVpdGhlciBzcGVjaWZ5aW5nIHRoZSBhZGRyZXNzIGV4cGxpY2l0bHkgaW4gdGhlIGRldmljZSdz
IERUCj4+PiBub2RlLCBvciBzcGVjaWZ5aW5nIGZyZWUgYWRkcmVzc2VzIChpbiB0aGUgZm9ybSBv
ZiBhIHdoaXRlIGxpc3Qgb3IgYmxhY2sKPj4+IGxpc3QpIGFuZCBhbGxvY2F0aW5nIGFuIGFkZHJl
c3MgZnJvbSB0aGF0IHBvb2wuIFRoZSBsYXR0ZXIgaGFzIGJlZW4KPj4+IGRpc2N1c3NlZCBpbiBh
IEJvRiBhdCB0aGUgTGludXggUGx1bWJlcnMgQ29uZmVyZW5jZSBsYXN0IHdlZWssCj4+PiBodHRw
czovL2xpbnV4cGx1bWJlcnNjb25mLm9yZy9ldmVudC80L2NvbnRyaWJ1dGlvbnMvNTQyLy4KPj4+
Cj4+Pj4gVGhlIGRvd25zdHJlYW0gYW5kIHVwc3RyZWFtIGtlcm5lbCBzb3VyY2VzIGRpdmlkZSB0
aGVzZSBhZGRyZXNzZXMgYnkgdHdvCj4+Pj4gdG8gZ2V0IHRoZSBpMmMgYWRkcmVzcy4gSGVyZSdz
IHRoZSBjb2RlIGluIHVwc3RyZWFtOgo+Pj4+Cj4+Pj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFu
eDc4eHguYyNMMTM1Mwo+Pj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVz
dC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmMjTDQxCj4+
Pj4KPj4+PiBJJ20gbm90IHN1cmUgd2h5IHRoZSBhY3R1YWwgaTJjIGFkZHJlc3MgaXNuJ3QgdXNl
ZCBpbiB0aGlzIGNvZGUuCj4+IFRoZSBBTlg3ODAyLzEyLzE0LzE2IGhhcyBhIHNsYXZlIEkyQyBi
dXMgdGhhdCBwcm92aWRlcyB0aGUgaW50ZXJmYWNlIHRvIGFjY2Vzcwo+PiBvciBjb250cm9sIHRo
ZSBjaGlwIGZyb20gdGhlIEFQLiBUaGUgSTJDIHNsYXZlIGFkZHJlc3NlcyB1c2VkIHRvIGNvbnRy
b2wgdGhlCj4+IEFOWDc4MDIvMTIvMTQvMTYgYXJlIDcwaCwgNzJoLCA3QWgsIDdFaCBhbmQgODBo
LiBFdmVyeSBhZGRyZXNzIGFsbG93cyB5b3UgdG8KPj4gYWNjZXNzIHRvIGRpZmZlcmVudCByZWdp
c3RlcnMgb2YgdGhlIGNoaXAgYW5kIEFGQUlDUyBpcyBub3QgY29uZmlndXJhYmxlLgo+Pgo+PiBJ
IGRvbid0IHRoaW5rIHRoZXNlIGFkZHJlc3NlcyBzaG91bGQgYmUgY29uZmlndXJlZCB2aWEgRFQg
YnV0IGZvciB0aGUgZHJpdmVyIGl0c2VsZi4KPj4KPj4gTXkgd2lsZCBndWVzcyBpcyB0aGF0IHRo
ZSBBTlg3ODA4IGhhcyBkaWZmZXJlbnQgYWRkcmVzc2VzLCBidXQgSSBkb24ndCBoYXZlIHRoZQo+
PiBkYXRhc2hlZXQgb2YgdGhpcyB2ZXJzaW9uLgo+IEknbSBhYmxlIHRvIGNvbW11bmljYXRlIHdp
dGggdGhlIDc4MDggb24gbXkgTmV4dXMgNSB1c2luZyB0aGUgMHg3OAo+IGFkZHJlc3MuIEdpdmVu
IHRoYXQgdGhlIGFkZHJlc3NlcyBhcHBlYXIgdG8gYmUgZml4ZWQgcGVyIG1vZGVsLCBtYXliZSBp
dAo+IG1ha2VzIHNlbnNlIHRvIGRyb3AgdGhlIGFkZHJlc3MgI2RlZmluZXMgYW5kIGFkZCB0aGUg
YWRkcmVzc2VzIHRvIHRoZQo+IGRhdGEgcG9pbnRlciBpbiB0aGUgZHJpdmVyJ3Mgb2ZfbWF0Y2hf
dGFibGUgbGlrZSBzbzoKPgo+IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFueDc4
eHhfbWF0Y2hfdGFibGVbXSA9IHsKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiYW5hbG9naXgs
YW54NzgwOCIsIC5kYXRhID0gUFRSX1RPXzc4MDhfQUREUlMgfSwKPiAgICAgICAgIHsgLmNvbXBh
dGlibGUgPSAiYW5hbG9naXgsYW54NzgxMiIsIC5kYXRhID0gUFRSX1RPXzc4MVhfQUREUlMgfSwK
PiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiYW5hbG9naXgsYW54NzgxNCIsIC5kYXRhID0gUFRS
X1RPXzc4MVhfQUREUlMgfSwKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiYW5hbG9naXgsYW54
NzgxOCIsIC5kYXRhID0gUFRSX1RPXzc4MVhfQUREUlMgfSwKPiAgICAgICAgIHsgLyogc2VudGlu
ZWwgKi8gfSwKPiB9Owo+Cj4gQnJpYW4KPgo+CgpJIGhhdmUgc3BvdHRlZCBmb2xsb3dpbmcgY29t
bWVudCBvbiBjaHJvbWl1bSdzIE1MWzFdOgoKPiBUaGUgbG9jYXRpb25zIGFyZSBoYXJkIGNvZGVk
IGluIHRoZSByZWdpc3RlciBzcGVjLsKgIEZ1cnRoZXJtb3JlLCBlYWNoCj4gb25lIGNhbiBiZSBj
aGFuZ2VkIGluZGVwZW5kZW50bHktLWZvciBleGFtcGxlIHRoZSBBbmRyb2lkIGRyaXZlciBwdXRz
Cj4gMHgzOCBhdCAweDNjIGJ1dCBsZWF2ZXMgdGhlIHJlc3QgYWxvbmUuCgpJdCBpcyBub3QgZW50
aXJlbHkgY2xlYXIsIGJ1dCBJTU8gaXQgc3VnZ2VzdHMgdGhlc2UgYWRkcmVzc2VzIGFyZQpoYXJk
d2FyZSBjb25maWd1cmFibGUuCgoKWzFdOgpodHRwczovL2Nocm9taXVtLXJldmlldy5nb29nbGVz
b3VyY2UuY29tL2MvY2hyb21pdW1vcy90aGlyZF9wYXJ0eS9rZXJuZWwvKy80NDYwMS8yL2RyaXZl
cnMvYXV4ZGlzcGxheS9zbGltcG9ydC5jIzMzMQoKClJlZ2FyZHMKCkFuZHJ6ZWoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
