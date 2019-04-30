Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74139101B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 23:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqEcbMSgChZbBjyJ3B/PGLflqLK4h5+FYxixAVerJfI=; b=hYNotsaZwI0Tui
	QG3Dhl6axJRJaxNCiKv39b1IAH7r0S5pARGL6ukI3duAjcHEweumP+TNyvLXlxd9Is5nX6yBi09Rf
	aVqKq/VfV34MzQkzk/77wADQI+uLKKFt2bjjqlRrg9eQGblsds+bZ6SYcLRdV0bI335PnbIaB1Jop
	GcXcS4TvoM90mhaaVn2xA7fJTkC8uECBkCfwHhhjdiG6ZCsw+WZssTRVTCXOnZThDBlWPDoqIlhMA
	pZyOMyQFBN+ya4Wp7bzPsSs080Ll5n7EGhXCWN+cV2YgO2654x1CQ3o72xydd9tSXX/ASnldiTM+6
	dk/eLfYM1rxPXpRbvk7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaEB-0004tu-Ic; Tue, 30 Apr 2019 21:23:51 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLaE4-0004tQ-4n
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 21:23:45 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190430212341euoutp015ed99c4e9bb0e1818169a956e3dd57a4~aXX8ox_bf0683206832euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 21:23:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190430212341euoutp015ed99c4e9bb0e1818169a956e3dd57a4~aXX8ox_bf0683206832euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556659421;
 bh=YEHEf386cwBjJCHJeDYVU0n83ZH5g1cs9B5q2hkxT1s=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=AJ3NSYBPz+KEhi6KikXTUB16W7VZNxQIkhG7ZanWHRRNJ8bZP1udyiB1QmOS9DqA7
 G69kK4pA0qpuwBUw3rm+fdJalA/KvmhkFWMkniC/lPZX6t4wXY5R1bHKz1a+rlODVw
 2m3eEcRsJLwx1L7FrVwqbMI/iu4/F40DYv40pPLU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190430212340eucas1p2e2a54c2f3248cbe17e90f4a8b7f94817~aXX7ceULc2181021810eucas1p2e;
 Tue, 30 Apr 2019 21:23:40 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 58.95.04325.CDCB8CC5; Tue, 30
 Apr 2019 22:23:40 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190430212338eucas1p175060bff36acc3f080375a67c310ce0b~aXX5iXyAW0803108031eucas1p1a;
 Tue, 30 Apr 2019 21:23:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190430212338eusmtrp199e46e833df9964e8aede6a64bbf528f~aXX5Sr68a2100921009eusmtrp14;
 Tue, 30 Apr 2019 21:23:38 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-45-5cc8bcdcaa30
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 23.54.04146.ADCB8CC5; Tue, 30
 Apr 2019 22:23:38 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190430212337eusmtip282f66c20f479ac604197b4b114b39dde~aXX4mc_DF0376503765eusmtip2U;
 Tue, 30 Apr 2019 21:23:37 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <03805022-f086-c83c-7481-cad9cccfa6f5@partner.samsung.com>
Date: Tue, 30 Apr 2019 23:23:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <52204c4b-80fa-1a87-2e00-1cfb774478f6@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTut7u7e5Um12l50jK6VNhDMwq8la2i1/xHBPsjTKipFx/p0l1X
 2sO010o0rbDmctrDcKz5WiZqJqjzMUyXKJqlJSkZpmDOCimltqvkf9/3ne+c8x04JCYZxD3J
 WEUyq1TI42mRs7C6dbbLd7C+Pdy/WC1hKjXlONM/M4YzReYunMkZ+YYxVmsFwXRemSAY00gf
 zvTUFYgYW7YZMRprg4ApNQ8RzLP+bgHzIUMvYq6/NhNM84QaZ362f0b7KZmx0IhktdohQmYy
 3BLJXhRflt2uMiCZzeQdIgpzDoxi42PPsspt0lPOMaXqUSxx3Dsl97kNS0c6j0zkRAK1E4au
 /cIzkTMpofQINLo5IU9mEAw2P0U8sSH4WtaOL7Z8ydUsFEoQdPbWi3gyicAyMCu0u9yoY1D2
 sY+wF9wpC4LsjCHHFsw+yzLc94+QpIjygxpDkr1BTB2BN50lyI6F1AaYG6l3DFpBHYdPrRU4
 73EFS/6oQ3ei9sGdnCKHjlEe8H60SMDjtXD15UPMvguoDBK6CqdEfO5D0J1eJuCxG4y3VRE8
 Xg0d97KEPOYgPfsx4vFFGMnRLXj2QHNbtyMzRm2C8rptvHwAXujnkF0GygXeTbryEVzgbvUD
 jJfFcPOGhHf7QFXW24UAK6HEeJ/IRbR2yWHaJcdolxyj/b/3ERIakAer4hKiWW6Hgj3nx8kT
 OJUi2i/yTIIJ/fu5jvm2HzWo4U9EE6JIRC8X+wS1h0tw+VkuNaEJAYnR7mJZW0u4RBwlTz3P
 Ks+cVKriWa4JeZFC2kN8YdnwCQkVLU9mT7NsIqtcrApIJ890dLQ/yNvXf5dlYj7UfNj/4OcM
 fQMtXdPbn3arx0v1ZEA9ULn1dehgZF9cfrWUGG+MGGv2w3u8P1pV0RvpgFVTMSlp+kZdoLQ6
 mP5uWRdZGGYr8rmUF2L0agzYG9ijaFpvtD449eq34fbutOxxXcvT2hVbgqenC+LUFSbpfa+8
 g0m0kIuRb9+MKTn5Xyjag5dvAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsVy+t/xe7q39pyIMWh8w2exccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaL1r1H2C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXsbb9
 CXPBK7mKCas/MzcwzhXvYuTkkBAwkXg2YQZjFyMXh5DAUkaJo/M2M0MkxCQm7dvODmELS/y5
 1sUGUfSaUWL+9/+sIAlhgRCJdfeusYMkRAROMkrMnvCXCcRhFvjMKDF9zWVmiJYpTBKTJj4A
 KuPgYBPQk9ixqhCkm1fATeLM2eWMIDaLgKrE38d7WEBsUYEIiTPvV7BA1AhKnJz5BMzmFLCX
 mNg/H2wzs4CZxLzND5khbHGJW0/mM0HY8hLNW2czT2AUmoWkfRaSlllIWmYhaVnAyLKKUSS1
 tDg3PbfYUK84Mbe4NC9dLzk/dxMjMLa3Hfu5eQfjpY3BhxgFOBiVeHgvuJ2IEWJNLCuuzD3E
 KMHBrCTC63H8aIwQb0piZVVqUX58UWlOavEhRlOg5yYyS4km5wPTTl5JvKGpobmFpaG5sbmx
 mYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsaZfBMyl55JOLBzwTwbobKLj14v7T/I57rN
 8sw6aYFD0SdO2k8/Y1ZjpOP2wy5Kzt3YW6lpmRwfq8BbkR4D/mP1Xx0sRW5uFD7CLsOwcGWl
 vr6t+GyPej/nLzWl5e0qFzY7Mdz8Is6dE2DWv8lHo0fsTbXmk3Zl1d/BPH5TtncH7p2/1PWs
 shJLcUaioRZzUXEiAMAF2D0DAwAA
X-CMS-MailID: 20190430212338eucas1p175060bff36acc3f080375a67c310ce0b
X-Msg-Generator: CA
X-RootMTR: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
 <52204c4b-80fa-1a87-2e00-1cfb774478f6@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_142344_322219_F5105EAA 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzMwLzE5IDg6MTYgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBIaSBMdWthc3osCj4g
Cj4gT24gMTkuIDQuIDE5LiDsmKTtm4QgMTA6NDgsIEx1a2FzeiBMdWJhIHdyb3RlOgo+PiBFeHRl
bmQgdGhlIGRvY3VtZW5hdGlvbiBieSBldmVudHMgZGVzY3JpcHRpb24gd2l0aCBuZXcgJ2V2ZW50
LWRhdGEtdHlwZScKPj4gZmllbGQuIEFkZCBleGFtcGxlIGhvdyB0aGUgZXZlbnQgbWlnaHQgYmUg
ZGVmaW5lZCBpbiBEVC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHViYUBw
YXJ0bmVyLnNhbXN1bmcuY29tPgo+PiAtLS0KPj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9k
ZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LnR4dCAgfCAxOCArKysrKysrKysrKysrKysrKysKPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvZXh5bm9zLXBwbXUu
dHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvZXh5
bm9zLXBwbXUudHh0Cj4+IGluZGV4IDNlMzZjMWQuLjQ3ZmViNWYgMTAwNjQ0Cj4+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11
LnR4dAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9l
dmVudC9leHlub3MtcHBtdS50eHQKPj4gQEAgLTE0NSwzICsxNDUsMjEgQEAgRXhhbXBsZTMgOiBQ
UE1VdjIgbm9kZXMgaW4gZXh5bm9zNTQzMy5kdHNpIGFyZSBsaXN0ZWQgYmVsb3cuCj4+ICAgCQkJ
cmVnID0gPDB4MTA0ZDAwMDAgMHgyMDAwPjsKPj4gICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
PiAgIAkJfTsKPj4gKwo+PiArVGhlICdldmVudCcgdHlwZSBzcGVjaWZpZWQgaW4gdGhlIFBQTVUg
bm9kZSBkZWZpbmVzICdldmVudC1uYW1lJwo+PiArd2hpY2ggYWxzbyBjb250YWlucyAnaWQnIG51
bWJlciBhbmQgb3B0aW9uYWxseSAnZXZlbnQtZGF0YS10eXBlJy4KPj4gKwo+PiArRXhhbXBsZToK
Pj4gKwo+PiArCQlldmVudHMgewo+PiArCQkJcHBtdV9sZWZ0YnVzXzA6IHBwbXUtZXZlbnQwLWxl
ZnRidXMgewo+PiArCQkJCWV2ZW50LW5hbWUgPSAicHBtdS1ldmVudDAtbGVmdGJ1cyI7Cj4+ICsJ
CQkJZXZlbnQtZGF0YS10eXBlID0gPFBQTVVfUk9fREFUQV9DTlQ+Owo+PiArCQkJfTsKPj4gKwkJ
fTsKPj4gKwo+PiArVGhlICdldmVudC1kYXRhLXR5cGUnIGRlZmluZXMgdGhlIHR5cGUgb2YgZGF0
YSB3aGljaCBzaGVsbCBiZSBjb3VudGVkCj4+ICtieSB0aGUgY291bnRlci4gWW91IGNhbiBjaGVj
ayBpbmNsdWRlL2R0LWJpbmRpbmdzL3BtdS9leHlub3NfcHBtdS5oIGZvcgo+PiArYWxsIHBvc3Np
YmxlIHR5cGUsIGkuZS4gY291bnQgcmVhZCByZXF1ZXN0cywgY291bnQgd3JpdGUgZGF0YSBpbiBi
eXRlcywKPj4gK2V0Yy4gVGhpcyBmaWVsZCBpcyBvcHRpb25hbCBhbmQgd2hlbiBpdCBpcyBtaXNz
aW5nLCB0aGUgZHJpdmVyIGNvZGUgd2lsbAo+PiArdXNlIGRlZmF1bHQgZGF0YSB0eXBlLgo+Pgo+
IAo+IEhvdyBhYm91dCBlZGl0aW5nIGl0IGFzIGZvbGxvd2luZz8KPiAKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBtdS50eHQK
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9ldmVudC9l
eHlub3MtcHBtdS50eHQKPiBAQCAtMTAsMTQgKzEwLDIzIEBAIFRoZSBFeHlub3MgUFBNVSBkcml2
ZXIgdXNlcyB0aGUgZGV2ZnJlcS1ldmVudCBjbGFzcyB0byBwcm92aWRlIGV2ZW50IGRhdGEKPiAg
IHRvIHZhcmlvdXMgZGV2ZnJlcSBkZXZpY2VzLiBUaGUgZGV2ZnJlcSBkZXZpY2VzIHdvdWxkIHVz
ZSB0aGUgZXZlbnQgZGF0YSB3aGVuCj4gICBkZXJ0ZXJtaW5nIHRoZSBjdXJyZW50IHN0YXRlIG9m
IGVhY2ggSVAuCj4gICAKPiAtUmVxdWlyZWQgcHJvcGVydGllczoKPiArUmVxdWlyZWQgcHJvcGVy
dGllcyBmb3IgUFBNVSBkZXZpY2U6Cj4gICAtIGNvbXBhdGlibGU6IFNob3VsZCBiZSAic2Ftc3Vu
ZyxleHlub3MtcHBtdSIgb3IgInNhbXN1bmcsZXh5bm9zLXBwbXUtdjIuCj4gICAtIHJlZzogcGh5
c2ljYWwgYmFzZSBhZGRyZXNzIG9mIGVhY2ggUFBNVSBhbmQgbGVuZ3RoIG9mIG1lbW9yeSBtYXBw
ZWQgcmVnaW9uLgo+ICAgCj4gLU9wdGlvbmFsIHByb3BlcnRpZXM6Cj4gK09wdGlvbmFsIHByb3Bl
cnRpZXMgZm9yIFBQTVUgZGV2aWNlOgo+ICAgLSBjbG9jay1uYW1lcyA6IHRoZSBuYW1lIG9mIGNs
b2NrIHVzZWQgYnkgdGhlIFBQTVUsICJwcG11Igo+ICAgLSBjbG9ja3MgOiBwaGFuZGxlcyBmb3Ig
Y2xvY2sgc3BlY2lmaWVkIGluICJjbG9jay1uYW1lcyIgcHJvcGVydHkKPiAgIAo+ICtSZXF1aXJl
ZCBwcm9wZXJ0aWVzIGZvciAnZXZlbnRzJyBjaGlsZCBub2RlIG9mIFBQTVUgZGV2aWNlOgo+ICst
IGV2ZW50LW5hbWUgOiB0aGUgdW5pcXVlIGV2ZW50IG5hbWUgYW1vbmcgUFBNVSBkZXZpY2UKPiAr
T3B0aW9uYWwgcHJvcGVydGllcyBmb3IgJ2V2ZW50cycgY2hpbGQgbm9kZSBvZiBQUE1VIGRldmlj
ZToKPiArLSBldmVudC1kYXRhLXR5cGUgOiBEZWZpbmUgdGhlIHR5cGUgb2YgZGF0YSB3aGljaCBz
aGVsbCBiZSBjb3VudGVkCj4gK2J5IHRoZSBjb3VudGVyLiBZb3UgY2FuIGNoZWNrIGluY2x1ZGUv
ZHQtYmluZGluZ3MvcG11L2V4eW5vc19wcG11LmggZm9yCj4gK2FsbCBwb3NzaWJsZSB0eXBlLCBp
LmUuIGNvdW50IHJlYWQgcmVxdWVzdHMsIGNvdW50IHdyaXRlIGRhdGEgaW4gYnl0ZXMsCj4gK2V0
Yy4gVGhpcyBmaWVsZCBpcyBvcHRpb25hbCBhbmQgd2hlbiBpdCBpcyBtaXNzaW5nLCB0aGUgZHJp
dmVyIGNvZGUKPiArd2lsbCB1c2UgZGVmYXVsdCBkYXRhIHR5cGUuCj4gKwo+ICAgRXhhbXBsZTEg
OiBQUE1VdjEgbm9kZXMgaW4gZXh5bm9zMzI1MC5kdHNpIGFyZSBsaXN0ZWQgYmVsb3cuCj4gICAK
PiAgICAgICAgICAgICAgICAgIHBwbXVfZG1jMDogcHBtdV9kbWMwQDEwNmEwMDAwIHsKPiBAQCAt
MTQ1LDMgKzE1NCwxNiBAQCBFeGFtcGxlMyA6IFBQTVV2MiBub2RlcyBpbiBleHlub3M1NDMzLmR0
c2kgYXJlIGxpc3RlZCBiZWxvdy4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MTA0ZDAwMDAgMHgyMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRp
c2FibGVkIjsKPiAgICAgICAgICAgICAgICAgIH07Cj4gKwo+ICtFeGFtcGxlNCA6ICdldmVudC1k
YXRhLXR5cGUnIGluIGV4eW5vczQ0MTItcHBtdS1jb21tb24uZHRzaSBhcmUgbGlzdGVkIGJlbG93
Lgo+ICsKPiArICAgICAgICZwcG11X2RtYzAgewo+ICsgICAgICAgICAgICAgICBzdGF0dXMgPSAi
b2theSI7Cj4gKyAgICAgICAgICAgICAgIGV2ZW50cyB7Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgcHBtdV9kbWMwXzM6IHBwbXUtZXZlbnQzLWRtYzAgewo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZXZlbnQtbmFtZSA9ICJwcG11LWV2ZW50My1kbWMwIjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGV2ZW50LWRhdGEtdHlwZSA9IDwoUFBNVV9ST19EQVRBX0NO
VCB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUFBN
VV9XT19EQVRBX0NOVCk+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAg
ICAgICAgIH07Cj4gKyAgICAgICB9Owo+IAo+IEkgYWdyZWUuIEl0IHdpbGwgYmUgY2hhbmdlZCBp
biB0aGUgbmV4dCB2ZXJzaW9uLgoKUmVnYXJkcywKTHVrYXN6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
