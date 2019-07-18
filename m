Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9416C8FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXHu8jv/NLwxrfLOEso0DcM5QlzVQ0E/d3vridxO2ZI=; b=fjU69YxOnqs/U0
	oPdeeaRjfSRW5+V13zKoCTFEF5zjh5/OOWpDGtJncZN/u9B9m4lZL+5IDetDZFitepDYR92T9HJ9W
	5QEcQ1aIAithB2OU2NfMBGvq1qSb8Q5wcsYkqh6mDAql6kJ4qNoka9ccnvwmaEjvT72htz3A1Cknh
	uJFYB4jhW4FCcjalps3hlNys4rHXlbF2Fu8RtZvLxgvdgmuBR0ZsLBsHix9T5JsZRAeJgXTacp5nm
	3sU9xMM5uxChQCuRTKU4mk0xIpKffFkatIVkcVF3rbq1bTZ+mhZCxFqu1Ad6pVvIm52yeB2BI7sWc
	HX5u099Pu04nUTpD62Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzU6-0001QA-BQ; Thu, 18 Jul 2019 06:01:42 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzTl-0001ON-78
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:01:22 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718060119euoutp01a89051b055ea6c5714fe9647af41cda1~yawKJRSmZ2273822738euoutp01e
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 06:01:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190718060119euoutp01a89051b055ea6c5714fe9647af41cda1~yawKJRSmZ2273822738euoutp01e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563429679;
 bh=z61fGzgHQ0VATyWTsCRxlQY0ElDRLc0lESOGpAN4rSY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=GiCzdX0NcnAKFHqRNkmiRAwX2L066zuAit/OznwTknFlRIpWeajcTGhl1XidVpjHy
 1kkz8NceWRTLMXuG4pSsFak8XTppcSiejiyws4mhI3UgUA6tEoLwWSzFAdtYVWvto/
 NILrTPQpaxvpBsn+46puxGKGDaNkKIHzr7Zbo1RM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718060118eucas1p1eccd454fd23a1f1395ed249a6e0faf69~yawJajnaG2681526815eucas1p1n;
 Thu, 18 Jul 2019 06:01:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 93.5D.04325.E2B003D5; Thu, 18
 Jul 2019 07:01:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718060117eucas1p284ee6f2d6ce65627101cceb784cb62eb~yawIhrwH-1953619536eucas1p2J;
 Thu, 18 Jul 2019 06:01:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718060117eusmtrp27cfac19e6333c33d6297ff62e0ca2465~yawITds1x0409204092eusmtrp23;
 Thu, 18 Jul 2019 06:01:17 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-e0-5d300b2e9a92
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 59.E6.04140.D2B003D5; Thu, 18
 Jul 2019 07:01:17 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190718060116eusmtip219833ca52c831fc34803533efb850f3b~yawHmJ34m2012520125eusmtip2n;
 Thu, 18 Jul 2019 06:01:16 +0000 (GMT)
Subject: Re: [PATCH v1 13/50] clk: samsung: add DPLL rate table in Exynos5420
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <8d361a79-4147-e613-5b05-faf8efcef434@partner.samsung.com>
Date: Thu, 18 Jul 2019 08:01:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <9095a5be-3002-93c6-9d08-92eb84f5c103@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0zMYRzuvbvvj67O3r7FfRahmzY/5mKYd/JzC/cH04bNpOnStx9TyX2l
 wqYi0VLCyIViUjsXuk4qE6t0K3SdG1LD2YWhWCS1tej6XtN/z+d5ns/7PJ/tZaWck/Jn45MO
 8LokbYKKlstqWobbF6q9FkUsetcmJ1232ylSVXSHIq8HPlOkpHlsLHB+kxKr9S5Dnmf1MsTk
 fEWR/rx3FLHXX6ZJkbVBQiqb3zKk7LVNQmxt60l3ZgVNsh82M6SpN4cio6+qZGs5jfGqEWl+
 dGYzGpPhFK2pvnFUk282IM0v08wweqd8ZTSfEH+Q1wWvjpTHfThXJklu9k8r+9RKZ6AXU3OR
 Jwt4KVQYrlC5SM5yuAKB0TbIuAQODyC4Vb9cFH4hGLUcpyY2njkrpaJQjuD6RQstDn0IivuL
 xl2+eAuU2huQS/DDbQgyHbkSlyDFFySgvzoWzrI0VkOtYb+LVuAN8KCqB7mwDAeBs9s6jqfi
 HWA31yPR4wOtl3pkLuyJ18Bjw3n3k0ro6ilx41lw7F7xeDvA2SyUPs2nxdqhUPGk1I194avF
 zIh4BvytE5cBC5Bx+hoS8RFwFlxxe0KgyWKjXJ2leB7cqQ8W6XXw+76edtGAp0Bnn49YYQqc
 rbkoFWkFnDzBie65YM7rcAdNg3LjBeYMUuknHaafdIx+0jH6/7mlSGZASj5FSIzlhSVJfKpa
 0CYKKUmx6j37Ek1o7Os9HbX8rkUNI1GNCLNI5a3ImB0cwVHag0J6YiMCVqryU3R/GaMU0dr0
 Q7xu325dSgIvNKLprEylVBz2cIRzOFZ7gN/L88m8bkKVsJ7+GWjVy2pvQ0nyxxx7mJIzD/6J
 7EdqxeK4z461oYNVJ+0mhi/cvHWES20yBhQ/iuLTwmyqupLCwOKOuWnD1Tcb7sY+W9FS3eGt
 XGaN8Vj+pss/OgY6NxaFDATwP8Mj/3zPWjFr24I5Qbvbvp8dUgz17criNnl9ep/naA98sT1C
 aI9Wq2RCnHbxfKlO0P4DU/BqHnYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xe7q63AaxBmuPCFjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFtsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG77BZL
 r19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDkMeaeWsYPd7faGX32LSqk81j85J6j74t
 qxg9Pm+SC2CL0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst
 0rdL0Mt4OHkpU8ERqYqlz06yNTBeEu1i5OSQEDCROPN4LXMXIxeHkMBSRol/Nx8wQyTEJCbt
 284OYQtL/LnWxQZR9JpR4uX8K2BFwgK+EtvO3mcESYgInGKU6H60mA0kwSwwjUnixHqosX8Z
 JRoe/gRyODjYBPQkdqwqBKnhFXCT2L3xCSOIzSKgKvH49nkwW1QgQqKvbTYbRI2gxMmZT1hA
 bE4Be4kDq6YwQcw3k5i3+SEzhC0ucevJfKi4vETz1tnMExiFZiFpn4WkZRaSlllIWhYwsqxi
 FEktLc5Nzy020itOzC0uzUvXS87P3cQIjPVtx35u2cHY9S74EKMAB6MSD+8NJf1YIdbEsuLK
 3EOMEhzMSiK8t18ChXhTEiurUovy44tKc1KLDzGaAj03kVlKNDkfmIbySuINTQ3NLSwNzY3N
 jc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwWt8t/35nr1pYGq9T3Z2b66o8/cI9/9xi
 TPmyvFdMXOrlob6/VeaNx4/qxPHX/HMHOosn7H7G14edJzw4zlW15L0/O4f9SJxVpkhyXv9M
 lgXpodG/jrHFiS9+0H+PYxvXx1NHRSNM2V6Jvz2hcdePZ+b/1MTmjQuV7N9v5J2xeQEfw3P2
 vfVKLMUZiYZazEXFiQAKIyRuCwMAAA==
X-CMS-MailID: 20190718060117eucas1p284ee6f2d6ce65627101cceb784cb62eb
X-Msg-Generator: CA
X-RootMTR: 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea@eucas1p2.samsung.com>
 <20190715124417.4787-14-l.luba@partner.samsung.com>
 <9095a5be-3002-93c6-9d08-92eb84f5c103@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_230121_462436_887BDFCC 
X-CRM114-Status: GOOD (  21.22  )
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDcvMTYvMTkgMTE6MzEgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSwKPiAKPiBBbHNvLCB5b3UgYmV0dGVyIHRvIG1lcmdlIHBhdGNoMTMvcGF0Y2gxNS9wYXRjaDE2
IHRvIG9uZSBwYXRjaAo+IGluIG9yZGVyIHRvIGFkZCB0aGUgUExMIHRhYmxlIGZvciBEUExML01Q
TEwvU1BMTC4KT0sKPiAKPiBBbmQgSSBoYXZlIGEgcXVlc3Rpb24uIEFyZSB0aGVyZSBhbnkgdXNl
LWNhc2UgdG8gY2hhbmdlCj4gdGhlIFBMTCBmcmVxdWVuY3kgZm9yIERQTEwvTVBMTC9TUExMPwpZ
ZXMsIHdoZW4geW91IHNldCBhIFBMTCBmcmVxdWVuY3kgaS5lLiBEUExMIHRvIDEyMDBNSHogKGZy
b20gNjAwTUh6KQp5b3UgY2FuIGF0dGFjaCBhIGNoaWxkIHRvIGl0IHdoaWNoIGlzIHJ1bm5pbmcg
d2l0aCA0MDAsIDMwMCwgMTUwIE1IegphbmQgdGhlc2UgZnJlcXVlbmNpZXMgYXJlIHNldCBvbmx5
IG9uIHRoaXMgY2hpbGQgY2xvY2sgZGl2aWRlcgooLzMsIC80LCAvOCAtIDNiaXQgZGl2KSAoYW5k
IHRoZXJlIGlzIG5vIHNldCBwYXJlbnQgcmF0ZSBhbmQKcmVwcm9ncmFtbWluZyB0aGUgbWFzdGVy
IFBMTCkuIFdoaWxlIDYwME1IeiBjYW5ub3Qgc2F0aXNmeSA0MDBNSHoKYW5kIDMwME1IeiBPUFBz
IGF0IHRoZSBzYW1lIHRpbWUuCklmIHRoZSBjaGlsZCBjYW5ub3QgY2hhbmdlIHRoZSBQTEwsIGJl
Y2F1c2UgaXQgY291bGQgYWZmZWN0IG90aGVyCmNoaWxkcmVuIG9mIHRoaXMgUExMIGFuZCBjYXVz
ZSBtaXNhbGlnbm1lbnQgaW4gdGhlaXIgZnJlcXVlbmN5IGFmdGVyCnRoZWlyIGRpdmlkZXJzLCBp
dCBpcyBiZXR0ZXIgdG8gc3RpY2sgd2l0aCBhIHJ1bGU6IHBpbiBjaGlsZHJlbiB0byB0aGUKUExM
IHdpdGggZnJlcXVlbmN5IHJhdGUgd2hpY2ggY291bGQgYmUgZGl2aWRlZCB3aXRob3V0IGEgcmVz
dCBhbmQgZ2l2ZXMKYWxsIE9QUHMgcmF0ZXMgb2YgYWxsIGNoaWxkcmVuLiBUaGlzIFBMTCByYXRl
IGNvdWxkIGJlIGNhbGN1bGF0ZWQgYnkKaGFuZCwgZmluZGluZyBsZWFzdCBjb21tb24gbXVsdGlw
bGUsIGtlZXBpbmcgaW4gbWluZCBjbG9jayBkaXZpZGVycwp3aWR0aCAoaS5lLiAzYml0KS4KClRo
YXQncyB3aHkgSSBhbSBjaGFuZ2luZyB0aGUgUExMcycgcmF0ZXMgYW5kIGNvbm5lY3QgY2hpbGRy
ZW4gdG8gdGhlbQphbHNvIGFsaWduaW5nIE9QUHMgdG8gdGhlIHZhbHVlcyB3aGljaCBhcmUgcG9z
c2libGUgYWZ0ZXIgRElWICgzYml0KS4KClJlZ2FyZHMsCkx1a2FzegoKPiAKPiBPbiAxOS4gNy4g
MTUuIOyYpO2bhCA5OjQzLCBMdWthc3ogTHViYSB3cm90ZToKPj4gVGhlIERQTEwgaGFzIGZpeGVk
IGZyZXF1ZW5jeSBsZWZ0IGJ5IHRoZSBib290bG9hZGVyIGFuZCBpdCBpcyBub3QgcG9zc2libGUK
Pj4gdG8gY2hhbmdlIGl0LiBXaXRoIHRoaXMgcGF0Y2ggdGhlIERQTEwgZ2V0cyByYXRlIHRhYmxl
IHRoZSBzYW1lIGZvciB0aGUKPj4gd2hvbGUgIFBMTCBmYW1pbHkgKHNpbWlsYXIgYXMgQVBMTCwg
S1BMTCBhY2NvcmRpbmcgdG8gUk0pIHNvIHRoZSBmcmVxdWVuY3kKPj4gbWlnaHQgYmUgY2hhbmdl
ZCB0byBvbmUgb2YgdGhlIHZhbHVlcyBkZWZpbmVkIHRoZXJlLgo+PiBJdCBpcyBuZWVkZWQgZm9y
IGZ1cnRoZXIgcGF0Y2hlcyB3aGljaCBjaGFuZ2UgdGhlIERQTEwgZnJlcXVlbmN5IHRvIGZlZWQK
Pj4gdGhlIGNsb2NrcyB3aXRoIHByb3BlciBiYXNlLgo+PiBJdCBhbHNvIHNldHMgQ0xLX0lTX0NS
SVRJQ0FMIGZvciBTQ0xLX0RQTEwgZHVlIHRvIHNvbWUgZHJpdmVycyB3aGljaCBjb3VsZAo+PiBk
aXNhYmxlIG1hc3RlciBjbG9jaywgd2hpY2ggaXMgdGhlbiBwb3B1bGF0ZWQgaGlnaGVyIGFuZCB0
cmllcyB0byBkaXNhYmxlCj4+IFBMTCwgd2hpY2ggY2FzdWVzIHN5c3RlbSBjcmFzaC4gVGhlIGZs
YWcgaXMgbmVlZGVkIGZvciB0aGlzIGtpbmQgb2YgdXNlCj4+IGNhc2VzLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBMdWthc3ogTHViYSA8bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4+IC0tLQo+
PiAgIGRyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyB8IDQgKysrLQo+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyBiL2RyaXZlcnMvY2xr
L3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+PiBpbmRleCA3ZjgyMjE1Mjc2MzMuLjIzOTViMDJj
ZThjNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5j
Cj4+ICsrKyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+PiBAQCAtNjk0
LDcgKzY5NCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sgZXh5bm9z
NXhfbXV4X2Nsa3NbXSBfX2luaXRjb25zdCA9IHsKPj4gICAJTVVYKDAsICJtb3V0X3NjbGtfcnBs
bCIsIG1vdXRfcnBsbF9wLCBTUkNfVE9QNiwgMTYsIDEpLAo+PiAgIAlNVVhfRihDTEtfTU9VVF9F
UExMLCAibW91dF9zY2xrX2VwbGwiLCBtb3V0X2VwbGxfcCwgU1JDX1RPUDYsIDIwLCAxLAo+PiAg
IAkJCUNMS19TRVRfUkFURV9QQVJFTlQsIDApLAo+PiAtCU1VWCgwLCAibW91dF9zY2xrX2RwbGwi
LCBtb3V0X2RwbGxfcCwgU1JDX1RPUDYsIDI0LCAxKSwKPj4gKwlNVVhfRihDTEtfTU9VVF9TQ0xL
X0RQTEwsICJtb3V0X3NjbGtfZHBsbCIsIG1vdXRfZHBsbF9wLAo+PiArCQkJU1JDX1RPUDYsIDI0
LCAxLCBDTEtfSVNfQ1JJVElDQUwsIDApLAo+PiAgIAlNVVgoMCwgIm1vdXRfc2Nsa19jcGxsIiwg
bW91dF9jcGxsX3AsIFNSQ19UT1A2LCAyOCwgMSksCj4+ICAgCj4+ICAgCU1VWChDTEtfTU9VVF9T
V19BQ0xLNDAwX0lTUCwgIm1vdXRfc3dfYWNsazQwMF9pc3AiLAo+PiBAQCAtMTUxNCw2ICsxNTE1
LDcgQEAgc3RhdGljIHZvaWQgX19pbml0IGV4eW5vczV4X2Nsa19pbml0KHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAsCj4+ICAgCj4+ICAgCWlmIChfZ2V0X3JhdGUoImZpbl9wbGwiKSA9PSAyNCAqIE1I
Wikgewo+PiAgIAkJZXh5bm9zNXhfcGxsc1thcGxsXS5yYXRlX3RhYmxlID0gZXh5bm9zNTQyMF9w
bGwyNTUweF8yNG1oel90Ymw7Cj4+ICsJCWV4eW5vczV4X3BsbHNbZHBsbF0ucmF0ZV90YWJsZSA9
IGV4eW5vczU0MjBfcGxsMjU1MHhfMjRtaHpfdGJsOwo+PiAgIAkJZXh5bm9zNXhfcGxsc1tlcGxs
XS5yYXRlX3RhYmxlID0gZXh5bm9zNTQyMF9lcGxsXzI0bWh6X3RibDsKPj4gICAJCWV4eW5vczV4
X3BsbHNba3BsbF0ucmF0ZV90YWJsZSA9IGV4eW5vczU0MjBfcGxsMjU1MHhfMjRtaHpfdGJsOwo+
PiAgIAl9Cj4+Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
