Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CF4F050
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 08:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=324HaST37xyo/WGepfOAqBhfgXNaGdeKRVWt+hZAJsk=; b=HJ0M9ntmG0hJEb
	qT4y29bUy0Tohf5vQJALxG7Ub2CGFnSOjRgRgARG8isBi0jfSgahQe9GmLNIWMfqwbQ2sW8EoZ6Uy
	yiJxlhjS43g5EFuEBhi22XBY8Ny1HL7dJP3Umwk6BmrWQ5xmG8U9qiKlYMoiXp5lloiFLC4mjRR4E
	y3WUon9JzoYXmUQSvuNYN93OEGKkXn2P0BxTMNW+XiEA2+WZlOSHUBbb6UEMD9Rl8Fc1guUjngY7v
	YMYsZSsDRphYJL0+JLPAGEemCNMb0dsCTkq/JXB/4x4VqoQ0Pl6C4bp9F5mL3L/nXeWl101Bje0Ex
	9F9a20b6pBi0PszeKTWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLxc-0001Ha-9C; Tue, 30 Apr 2019 06:09:48 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLxU-0001HD-Q6
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 06:09:42 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190430060937epoutp02b88794448d3af0139cc2c25101ebc847~aK52246PH2622826228epoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:09:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190430060937epoutp02b88794448d3af0139cc2c25101ebc847~aK52246PH2622826228epoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556604577;
 bh=s4+gCxQmp9Ft0gltHb67tjlRyzWs9lclWGMzsc5X/xI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fTRsK6w/rsRH4dp7XOUr/fw3skEk6HJ68mF8kKAsy4QLGjFcSr8sTdIJLvYMqwqZ4
 iHNWwcJThl1NYKKIBRnx9lfHFpd/yiRPkclKU7vvUo24s4JBUef1eocujvu8GOQEOO
 58lZB0clT7ZIOwsxxFSkF2Z/SEXEbG859K7w4ecc=
Received: from epsmges1p1.samsung.com (unknown [182.195.40.155]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190430060931epcas1p39482c1bb63551d588b515f8ca887a9c3~aK5w8xPcP0921309213epcas1p3e;
 Tue, 30 Apr 2019 06:09:31 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 F4.EC.04139.B96E7CC5; Tue, 30 Apr 2019 15:09:31 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190430060930epcas1p4858f6f12ec5e7a0221b76178ebdc4edc~aK5wYkdYN0046400464epcas1p4i;
 Tue, 30 Apr 2019 06:09:30 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190430060930epsmtrp1f49f5db76537f4890e80f9cf41e2c4c1~aK5wXrW9I0761107611epsmtrp1_;
 Tue, 30 Apr 2019 06:09:30 +0000 (GMT)
X-AuditID: b6c32a35-deaec9c00000102b-58-5cc7e69b1984
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5E.D2.03662.A96E7CC5; Tue, 30 Apr 2019 15:09:30 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190430060930epsmtip1e427ea154bc532509ae59b8844ec8028~aK5wCKkYq2006320063epsmtip1V;
 Tue, 30 Apr 2019 06:09:30 +0000 (GMT)
Subject: Re: [PATCH v3 4/4] DT: arm: exynos4412: add event data type which
 is monitored
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <cee7b5a2-377e-59d6-7c6e-b6f9b3140d4f@samsung.com>
Date: Tue, 30 Apr 2019 15:10:45 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555681688-19643-5-git-send-email-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLJsWRmVeSWpSXmKPExsWy7bCmru7sZ8djDLat57LYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vF2aY37Ba3GmQsNj2+xmpxedccNovPvUcYLWac38dksfbIXXaLpdcvMlnc
 blzBZtG69wi7xeE37awW3048YnQQ8Fgzbw2jx85Zd9k9Nq3qZPPYvKTe4+C7PUwefVtWMXp8
 3iQXwB6VbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkD
 dLuSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8CyQK84Mbe4NC9dLzk/18rQwMDI
 FKgwITtjZ3snW8Eu/op9ex6zNzD+4epi5OSQEDCROLP+AXMXIxeHkMAORokZO6+wQDifGCVO
 TZ7PDuF8Y5TYcP8kM0zL93vzoar2MkrcmHcfqv89o8THZXPAqoQFIiV63vQwgiREBM4ySjxo
 2sYG4jALfGaUOPngGitIFZuAlsT+FzfYQGx+AUWJqz8eM4LYvAJ2EivbbjCB2CwCqhIvdv4G
 qxcViJC4f2wDK0SNoMTJmU9YQGxOAW+Jt5dngtUzC4hL3HoyH8qWl2jeOhvsPAmBY+wSTQtn
 MUI84SKxcfIFKFtY4tXxLewQtpTEy/42KLtaYuXJI2wQzR2MElv2X2CFSBhL7F86GWgDB9AG
 TYn1u/QhlvFJvPvawwoSlhDglehoE4KoVpa4/OAuE4QtKbEYGA0QtofE3Kmv2CYwKs5C8s4s
 JC/MQvLCLIRlCxhZVjGKpRYU56anFhsWGCJH+CZGcNLWMt3BOOWczyFGAQ5GJR5ej3fHYoRY
 E8uKK3MPMUpwMCuJ8HocPxojxJuSWFmVWpQfX1Sak1p8iNEUGNoTmaVEk/OBGSWvJN7Q1MjY
 2NjCxNDM1NBQSZx3vYNzjJBAemJJanZqakFqEUwfEwenVANjRetkxpzbC2Q+HChc9mevsKe+
 vbKW0VqVRra7HGnhe+T1PjG2bJZzDjx/9D7btSdzFLR1M/Nta1crL1l8IJLlr9rbTsVnljeX
 fsyefun87G9vFM1VHcsW+NYGCcQ3/jsynW8ve4XFtlNlGjaqzz7tXTC1bMnCnYeVGVf0r2Ds
 cVnFVli3NUpdiaU4I9FQi7moOBEAc4p47/ADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKIsWRmVeSWpSXmKPExsWy7bCSnO6sZ8djDN6+UrDYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vF2aY37Ba3GmQsNj2+xmpxedccNovPvUcYLWac38dksfbIXXaLpdcvMlnc
 blzBZtG69wi7xeE37awW3048YnQQ8Fgzbw2jx85Zd9k9Nq3qZPPYvKTe4+C7PUwefVtWMXp8
 3iQXwB7FZZOSmpNZllqkb5fAlbGzvZOtYBd/xb49j9kbGP9wdTFyckgImEh8vzefpYuRi0NI
 YDejxMPVB1kgEpIS0y4eZe5i5ACyhSUOHy6GqHnLKDHl5VdGkLiwQKTEwb4CkLiIwFlGiUWT
 FrCDOMwCnxklpq+5zAwySEjgPqPE3Zn6IDabgJbE/hc32EBsfgFFias/HjOC2LwCdhIr224w
 gdgsAqoSL3b+ZgWxRQUiJM68X8ECUSMocXLmEzCbU8Bb4u3lmWD1zALqEn/mXWKGsMUlbj2Z
 DxWXl2jeOpt5AqPwLCTts5C0zELSMgtJywJGllWMkqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ
 +bmbGMGRq6W1g/HEifhDjAIcjEo8vB7vjsUIsSaWFVfmHmKU4GBWEuH1OH40Rog3JbGyKrUo
 P76oNCe1+BCjNAeLkjivfP6xSCGB9MSS1OzU1ILUIpgsEwenVAOjSu1J7q/LZ3Q/FHT0jT71
 deXz39KPuxjqFswJfSYgkxTJ/EhUi3Xx0s889cumpPtm71co2mB7u2tlDq/0rjcf5lclfhXl
 s58hVKnAz8g5W/7Wk79BnM6GRnwFk7iDWjndHec99Dv5K9t+24If20piNyReSzt+dPXM1w9K
 pf7FzjML21LrJLdXiaU4I9FQi7moOBEAJ1cgT9gCAAA=
X-CMS-MailID: 20190430060930epcas1p4858f6f12ec5e7a0221b76178ebdc4edc
X-Msg-Generator: CA
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190419134823eucas1p1ff852194b1db655ed2dbce72b5f7f3a6
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134823eucas1p1ff852194b1db655ed2dbce72b5f7f3a6@eucas1p1.samsung.com>
 <1555681688-19643-5-git-send-email-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230941_010961_844BF62C 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGksCgpPbiAxOS4gNC4gMTkuIOyYpO2bhCAxMDo0OCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gVGhl
IHBhdGNoIGFkZHMgbmV3IGZpZWxkIGluIHRoZSBQUE1VIGV2ZW50IHdoaWNoIHNob3dzIGV4cGxp
Y2l0bHkKPiB3aGF0IGtpbmQgb2YgZGF0YSB0aGUgZXZlbnQgaXMgbW9uaXRvcmluZy4gSXQgaXMg
cG9zc2libGUgdG8gY2hhbmdlIGl0Cj4gdXNpbmcgZGVmaW5lZCB2YWx1ZXMgaW4gZXh5bm9zX3Bw
bXUuaCBmaWxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5l
ci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1wcG11
LWNvbW1vbi5kdHNpIHwgMTAgKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLXBw
bXUtY29tbW9uLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLXBwbXUtY29tbW9u
LmR0c2kKPiBpbmRleCAzYTNiMmZhLi41NDlmYWJhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2V4eW5vczQ0MTItcHBtdS1jb21tb24uZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczQ0MTItcHBtdS1jb21tb24uZHRzaQo+IEBAIC02LDEyICs2LDE2IEBACj4gICAq
IEF1dGhvcjogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+Cj4gICAqLwo+ICAK
PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BtdS9leHlub3NfcHBtdS5oPgo+ICsKPiAgJnBwbXVf
ZG1jMCB7Cj4gICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gIAo+ICAgICAgICAgZXZlbnRzIHsK
PiAgCSAgICAgICBwcG11X2RtYzBfMzogcHBtdS1ldmVudDMtZG1jMCB7Cj4gIAkJICAgICAgIGV2
ZW50LW5hbWUgPSAicHBtdS1ldmVudDMtZG1jMCI7Cj4gKwkJICAgICAgIGV2ZW50LWRhdGEtdHlw
ZSA9IDwoUFBNVV9ST19EQVRBX0NOVCB8Cj4gKwkJCQkJICAgUFBNVV9XT19EQVRBX0NOVCk+Owo+
ICAJICAgICAgIH07Cj4gICAgICAgICB9Owo+ICB9Owo+IEBAIC0yMiw2ICsyNiw4IEBACj4gICAg
ICAgICBldmVudHMgewo+ICAJICAgICAgIHBwbXVfZG1jMV8zOiBwcG11LWV2ZW50My1kbWMxIHsK
PiAgCQkgICAgICAgZXZlbnQtbmFtZSA9ICJwcG11LWV2ZW50My1kbWMxIjsKPiArCQkgICAgICAg
ZXZlbnQtZGF0YS10eXBlID0gPChQUE1VX1JPX0RBVEFfQ05UIHwKPiArCQkJCQkgICBQUE1VX1dP
X0RBVEFfQ05UKT47Cj4gIAkgICAgICAgfTsKPiAgICAgICAgIH07Cj4gIH07Cj4gQEAgLTMyLDYg
KzM4LDggQEAKPiAgICAgICAgIGV2ZW50cyB7Cj4gIAkgICAgICAgcHBtdV9sZWZ0YnVzXzM6IHBw
bXUtZXZlbnQzLWxlZnRidXMgewo+ICAJCSAgICAgICBldmVudC1uYW1lID0gInBwbXUtZXZlbnQz
LWxlZnRidXMiOwo+ICsJCSAgICAgICBldmVudC1kYXRhLXR5cGUgPSA8KFBQTVVfUk9fREFUQV9D
TlQgfAo+ICsJCQkJCSAgIFBQTVVfV09fREFUQV9DTlQpPjsKPiAgCSAgICAgICB9Owo+ICAgICAg
ICAgfTsKPiAgfTsKPiBAQCAtNDIsNiArNTAsOCBAQAo+ICAgICAgICAgZXZlbnRzIHsKPiAgCSAg
ICAgICBwcG11X3JpZ2h0YnVzXzM6IHBwbXUtZXZlbnQzLXJpZ2h0YnVzIHsKPiAgCQkgICAgICAg
ZXZlbnQtbmFtZSA9ICJwcG11LWV2ZW50My1yaWdodGJ1cyI7Cj4gKwkJICAgICAgIGV2ZW50LWRh
dGEtdHlwZSA9IDwoUFBNVV9ST19EQVRBX0NOVCB8Cj4gKwkJCQkJICAgUFBNVV9XT19EQVRBX0NO
VCk+Owo+ICAJICAgICAgIH07Cj4gICAgICAgICB9Owo+ICB9Owo+IAoKQWNrZWQtYnk6IENoYW53
b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53
b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
