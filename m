Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254C5184A9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnTFUFdlY3goor1fnfW2+MXvDq1qwnuNsTTzy33nXGI=; b=Ft6eaQbQ4ykKli
	eiiPaHSMKOxbO3vxzAVCQZR5VL8TIMBXQCtS750lzRvXrDH4tRV7lS2TF+8Sk9ug5hg/SY4gY7TZ7
	FkrFdsIDlZgbWaFCPlsutn2iJUnD1wNb7+/1zAbdQYZJDL3hVBRtcWiqKYpm7SLgVqTExwIqEgDLW
	sgFHYX30lRuR55VRUt+Ny7zRoU/xY4kWU05j8cXS5x97DzEAODSF+yGSup3RwwP9umccadbbkjSRk
	XS+KmqrOOcB4OVhZXtqLekG7vF4Jk+8vdjKsbDp5E22rFur5Rfj6o6NH4ALwTRyWK5gDYhdC3pZZx
	ZjOVZ/kmemSqumjVBGlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmAn-0006D7-Mh; Fri, 13 Mar 2020 15:24:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmAa-0006BQ-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:24:20 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200313152414euoutp025809ec65bfc63c59b2570adbd0c9a8af~75m4FMUBL0981609816euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 15:24:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200313152414euoutp025809ec65bfc63c59b2570adbd0c9a8af~75m4FMUBL0981609816euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584113054;
 bh=aWYruqPImE2yRmXAc06ncHutY2ccoXbCh2dVKoEvLqE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=dY23mrXeK+TjyGvUcklE9Xu4poah7S023VJU5+YECWUVljGdZrmogd+vabxJLXkHd
 IgFsIpLOtlDdtq8WiclaYSdToTdFylChYOZCQeUc/ihSc6B8q6++24B8K6/bFnIpZS
 YAon+tfZ0GeKIMupnHwy6ZC0U3Q70KrwuEZrKtas=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200313152413eucas1p228ff0292a076a20865747d2f7b92dfed~75m3zUxlM0602106021eucas1p2K;
 Fri, 13 Mar 2020 15:24:13 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F9.09.61286.D95AB6E5; Fri, 13
 Mar 2020 15:24:13 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200313152413eucas1p2f4d16175542741285150966a2e2ad151~75m3YCfU50602106021eucas1p2G;
 Fri, 13 Mar 2020 15:24:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200313152413eusmtrp17e6cfb72f3f5b7d25ebafa902dd67a9d~75m3UcAv20468004680eusmtrp1G;
 Fri, 13 Mar 2020 15:24:13 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-3b-5e6ba59dde66
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 56.FC.08375.D95AB6E5; Fri, 13
 Mar 2020 15:24:13 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200313152412eusmtip2c36baa481c0ed00df010fc32f765ac86~75m22hhje1905919059eusmtip2N;
 Fri, 13 Mar 2020 15:24:12 +0000 (GMT)
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Paul Cercueil <paul@crapouillou.net>, Krzysztof Kozlowski <krzk@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <fbc3b48c-9f99-5ce2-0a7b-3d879588ab4c@samsung.com>
Date: Fri, 13 Mar 2020 16:24:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1584110014.3.1@crapouillou.net>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djPc7pzl2bHGcx8amgx/8g5Vov+x6+Z
 Lc6f38BusenxNVaLy7vmsFnMOL+PyWLp9YtMFv2LL7FYtO49wm4xZclMdgcujzXz1jB6rL7U
 zuaxc9Zddo9NqzrZPDYvqff4vEkugC2KyyYlNSezLLVI3y6BK+NC+xKmgnN8Fd8/9LI2ML7i
 7mLk4JAQMJF4NCe4i5GLQ0hgBaPEspvvmCGcL4wSz3sPQzmfGSW+tExn6mLkBOs4/vw/C0Ri
 OaPE4WnzWCGct4wS71rvs4HMFRbwkNj/PBmkQUQgUOL0hNesIDazwFwmievbTEBsNgFDia63
 XWDlvAJ2EgevWYKEWQRUJWZv3soMYosKxErMXnmYBcTmFRCUODnzCZjNKaArceZMKzPESHmJ
 5q2zoWxxiVtP5jOBnCMhcIld4tGU42wQR7tIrL3TwA5hC0u8Or4FypaROD25hwWioZlR4uG5
 tewQTg+jxOWmGYwQVdYSd879AruUWUBTYv0ufYiwo8TF3umMkHDkk7jxVhDiCD6JSdumM0OE
 eSU62oQgqtUkZh1fB7f24IVLzBMYlWYheW0WkndmIXlnFsLeBYwsqxjFU0uLc9NTiw3zUsv1
 ihNzi0vz0vWS83M3MQLT1Ol/xz/tYPx6KekQowAHoxIPb0RqdpwQa2JZcWXuIUYJDmYlEd6O
 GqAQb0piZVVqUX58UWlOavEhRmkOFiVxXuNFL2OFBNITS1KzU1MLUotgskwcnFINjGkHP4k+
 PfXZOfDtC6Hmye/UdUpFX3z7Ye716HJfgcOch7f8ndeVXQsweNj8zOoOY7qloLR80qLHkxp1
 D1sEGWSXlvP8+DN928k72uLu79cU35Kte+4851/EP5OCB+ISL+7GJfO6C585l+YfaTDh78vc
 qgpnjdsn7H2fSVfnX/p5e+LKz/ejA5RYijMSDbWYi4oTAYjqyBFPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsVy+t/xe7pzl2bHGaw5w28x/8g5Vov+x6+Z
 Lc6f38BusenxNVaLy7vmsFnMOL+PyWLp9YtMFv2LL7FYtO49wm4xZclMdgcujzXz1jB6rL7U
 zuaxc9Zddo9NqzrZPDYvqff4vEkugC1Kz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng8
 1srIVEnfziYlNSezLLVI3y5BL+NC+xKmgnN8Fd8/9LI2ML7i7mLk5JAQMJE4/vw/SxcjF4eQ
 wFJGiVXzF7BAJGQkTk5rYIWwhSX+XOtigyh6zSjRcqqFuYuRg0NYwENi//NkkBoRgUCJLf83
 gdUwC8xnkpj06h0zRMMfRoljn94yg1SxCRhKdL0FmcTBwStgJ3HwmiVImEVAVWL25q1gJaIC
 sRI3ZnYwgdi8AoISJ2c+ATuIU0BX4syZVrAaZgEziXmbH0LZ8hLNW2dD2eISt57MZ5rAKDQL
 SfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4mRmBsbjv2c/MOxksbgw8x
 CnAwKvHwRqRmxwmxJpYVV+YeYpTgYFYS4e2oAQrxpiRWVqUW5ccXleakFh9iNAV6biKzlGhy
 PjBt5JXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYBTe/0NrfUry
 pHd9k7NPyvJq3DKTbJux1U3j3XENpq686Mb1Qea/dE7dfLgi+XNh2p8VCsUfnrTv7/HYv+/z
 0cpZ9++9WZAQ7qTnW5dXOdug/k/o2kX/vafcYNJ9OHH6La3QhdkOXBMLVzhlvc7rWPYy/KLv
 pJDeU7VzzGTsvgrGaX7JrVlTLaHEUpyRaKjFXFScCADoGegu4wIAAA==
X-CMS-MailID: 20200313152413eucas1p2f4d16175542741285150966a2e2ad151
X-Msg-Generator: CA
X-RootMTR: 20200313143349eucas1p22d40f6966299ffdf132f0f2e488e8c11
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200313143349eucas1p22d40f6966299ffdf132f0f2e488e8c11
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200313143349eucas1p22d40f6966299ffdf132f0f2e488e8c11@eucas1p2.samsung.com>
 <1584110014.3.1@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_082416_879729_41698BAD 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCk9uIDEzLjAzLjIwMjAgMTU6MzMsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6Cj4gSGkg
S3J6eXN6dG9mLAo+Cj4KPiBMZSB2ZW4uLCBtYXJzIDEzLCAyMDIwIGF0IDEwOjAwLCBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IAo+IGEgw6ljcml0IDoKPj4gT24gVGh1LCBN
YXIgMTIsIDIwMjAgYXQgMDQ6MzQ6MTFQTSArMDEwMCwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPj4+
IMKgRnJvbTogU3RlbmtpbiBFdmdlbml5IDxzdGVua2luZXZnZW5peUBnbWFpbC5jb20+Cj4+Pgo+
Pj4gwqBBZGQgZGV2aWNldHJlZSBmaWxlIGZvciB0aGUgRXh5bm9zIDQyMTAgYmFzZWQgR2FsYXh5
IFMyIChpOTEwMCAKPj4+IHZlcnNpb24pLgoKID4gWy4uLl0KCj4gwqArCj4+PiDCoCsKPj4+IMKg
K8KgwqDCoCBtZW1vcnlANDAwMDAwMDAgewo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgZGV2aWNlX3R5
cGUgPSAibWVtb3J5IjsKPj4+IMKgK8KgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDQwMDAwMDAwIDB4
NDAwMDAwMDA+Owo+Pj4gwqArwqDCoMKgIH07Cj4+PiDCoCsKPj4KPj4gWW91IGRvIG5vdCBoYXZl
IGEgY2hvc2VuIG5vZGUsIGF0IGxlYXN0IGZvciBzdGRvdXQgc2VyaWFsIHNlbGVjdGlvbi4KPj4g
UHJvYmFibHkgeW91IHNob3VsZCBoYXZlIG9uZS4uLiBib290YXJncyBJIGd1ZXNzIGNvdWxkIGNv
bWUgZnJvbQo+PiBib290bG9hZGVyLgo+Cj4gUHJvYmxlbSBpcywgSSBoYXZlIG5vIGlkZWEgd2hp
Y2ggVUFSVCBpcyBhdmFpbGFibGUgdmlhIHRoZSBVU0IgamlnIDopCgpTZWUgZXh5bm9zNDIxMC10
cmF0cy5kdHMgYW5kIGV4eW5vczQyMTAtdW5pdmVyc2FsX2MyMTAuZHRzLCB0aGV5IGFyZSAKc2lt
aWxhciB0byBpOTEwMCBhbmQgc2hhcmUgYSBsb3RzLiBUaGV5IGFsbCB1c2Ugc2VyaWFsMiBmb3Ig
ZGVidWcgVUFSVCAKdmlhIFVTQiBqaWcuCgo+Pj4gwqArwqDCoMKgIHZlbW1jX3JlZzogcmVndWxh
dG9yLTAgewo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW5hbWUgPSAiVk1FTV9WRERfMi44
ViI7Cj4+PiDCoCvCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwyODAw
MDAwPjsKPj4+IMKgK8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDI4
MDAwMDA+Owo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgZ3BpbyA9IDwmZ3BrMCAyIEdQSU9fQUNUSVZF
X0hJR0g+Owo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgZW5hYmxlLWFjdGl2ZS1oaWdoOwo+Pgo+PiBU
aGlzIGxvb2tzIGxpa2UgYSBzdHViL2Zha2UgcmVndWxhdG9yLiBQcm9iYWJseSBpdCBzaG9vdWxk
IGJlIHJlcGxhY2VkCj4+IHdpdGggcHJvcGVyIHJlZ3VsYXRvciBjb21pbmcgZnJvbSBQTUlDIChm
ZXcgc2VlbXMgdG8gYmUgbWlzc2luZyB0aGVyZSkuCj4+Cj4+IEkgZG9uJ3QgaGF2ZSB0aGUgc2No
ZW1hdGljcyBzbyBJIGNhbm5vdCBqdWRnZS4uLiBJIHNlZSBUcmF0cyBoYXMgdGhlCj4+IHNhbWUu
Cj4+Cj4+IE1hcmVrLCBtYXl5YmUgeW91IGtub3csIGlzIGl0IHJlYWxseSBhIHNlcGFyYXRlIHJl
Z3VsYXRvcj8KClRyYXRzIGhhcyB0aGUgc2FtZSByZWd1bGF0b3IgYW5kIGFjY29yZGluZyB0byB0
aGUgc2NoZW1hdGljIGl0IGlzIApzdXBwbGllZCBmcm9tIFZCQVQgYW5kIGNvbnRyb2xsZWQgdmlh
IGVNTUNfRU4gR1BJTyBwaW4uCgo+ID4gWy4uLl0KCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5
cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
