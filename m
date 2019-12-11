Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5C311AE7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tl5yMb3z/mDm0gTsJuucn+LTgniuT8+vi8MDO5J0wqE=; b=ClTL+G+ugnms8I
	UlSoQ+6QEeb33nz/sO9ASEus13kGJ9gueHm39VHY9hQ903fv/kJwBDa8VDyxDE0WHpxydHAlySdD6
	0XF1TxGv6SINEw+2QYA7E16ZqDyvvamQzBVuYA7MFZEEg9mu4+80Tvx8s/oie1ZYPgnrLqCIc06n/
	V9uEXojSpSNkfQhuEnIYRmSNmQ/NXzRDTOAdrZFr2iANshI9IiDcBfeBrh+z3WvGkXScclwWFBcJp
	G2prE+u+nfo/smnb5AjIgJV0uOJNbRFyWzOkq038uUok/ZEuT5I7HJuCcf1QA12SuqgvVqy9dwZYU
	c1ajN50/giFVnJ8JYvKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Oj-00026r-Uk; Wed, 11 Dec 2019 14:55:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3OE-0000Q1-2Q
 for linux-arm-kernel@bombadil.infradead.org; Wed, 11 Dec 2019 14:54:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:
 Content-Transfer-Encoding:Mime-Version:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3geT+16YDY/ZnT6g0unUce0W4Zs91pfr3cDL8ouXL4Y=; b=G++7vnKkr13L1WQ6DJE0F8J94
 McdJ7WKbiZz2VvqzgnvWRcYxk7lmaV+oB8WWxCC8R+e+vc3IimbSPqXaUtxs0ETMttnt7W31JOla4
 o8flBDeAiNWaEs7G/xnZ7pNlpugxNgg2cUMQ77vmwNlOhcdL1Ur8I/Kg6O0NzGIfv88Xy6qEzMeTA
 YeddL7YTY/ETlzIhjvmyKFzV9Q33WJVTQHeQcFxLj3uNUk4+19RBJYudwaKX2guMHTYsZ58L+S22e
 4iPp55ILIgMgQgz5hNDhK1zowNio9D3FrQRn7e27LuyXkNeL++nT9OZfvQKQBD9dCyUn5BngaG1sI
 gu6Y+nkGw==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3AG-0005lD-HC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:40:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211143958euoutp027f5b0a256ea62f12c8b9e81f8d9db0ba~fWArXDvlD0653906539euoutp02Q
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:39:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191211143958euoutp027f5b0a256ea62f12c8b9e81f8d9db0ba~fWArXDvlD0653906539euoutp02Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075198;
 bh=3geT+16YDY/ZnT6g0unUce0W4Zs91pfr3cDL8ouXL4Y=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=TY+LtNkFN2MURu+zND8qISU5Huj1k8Aopzg6e86CLnuC00SKvFUunk9R+FTk07BVx
 T2PPdMdiLmJ8IXJdNT2+UBFwHI/4aOwd8OMGMIPv5qgYshmwAeBvp3IwmdbTwpSnvJ
 XsBFzkiAploIitZG/AbBcT06UNaoUgZZCcMUFhM8=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191211143957eucas1p2da02f6c6663bc3c434faec5d61efca44~fWArCw7-q1898418984eucas1p24;
 Wed, 11 Dec 2019 14:39:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B2.2E.61286.DBFF0FD5; Wed, 11
 Dec 2019 14:39:57 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191211143957eucas1p29477538aa5520cf0009cacea907171c3~fWAqY0SH91877418774eucas1p2E;
 Wed, 11 Dec 2019 14:39:57 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191211143957eusmtrp19a94f600792247c037d111cac1212e8d~fWAqYD_cI2547525475eusmtrp1X;
 Wed, 11 Dec 2019 14:39:57 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-6d-5df0ffbd618e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A8.18.08375.CBFF0FD5; Wed, 11
 Dec 2019 14:39:57 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20191211143956eusmtip2fd8ad4471581893f1fa014b3417c7114~fWApqHGq10290902909eusmtip2L;
 Wed, 11 Dec 2019 14:39:54 +0000 (GMT)
Message-ID: <32cd66aca8d9435bed69732771a7716db883f5a0.camel@samsung.com>
Subject: Re: [PATCH v3 4/4] devfreq: exynos-bus: Clean up code
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-pm@vger.kernel.org
Date: Wed, 11 Dec 2019 15:39:53 +0100
In-Reply-To: <ab5cd151-0f9f-929e-fcbe-e7fe7b6c8645@samsung.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURTNm6UdkClDUbmpRrHqBy5UqiaTiCiJ0f64JEaDJo1WGYFIgXRA
 UT8saBDrXiTSamIFZTMsFqmVRBIr0NiquAQVF9AQZBEB2yL1w4VhMPh33jn33HvPzaNw+RNS
 QaVlZHOGDF26UhJKONp+Plv+4M+odkXTYCx7p6SOZN8E+kjW3H2RYG2+EpK90PMVZ9vb66Xs
 0/whKVv58TvJ2ntek+yrpmsS1n+uBbEl7c0YW9PyUcq+z6uUsM2FnzC2pGhAsp7RnGx+J9XY
 q09LNA03j2vuDDsxzfm71Ujjt8/bJtkdGp/Mpacd4gyqhL2hqRdG/ERW8drcmsZ6zIjqVSYU
 QgGzCsaDDVITCqXkTCWCJw8tSBDkTABBoO2YKPgRdFU9Jk2ImnR8soSLfAWCNuflKfcXBJ1v
 HZNumtGAr7YYF3AkkwDlNicmYAmzDp6+/4EJhplMLQLT8y4kPHDmDAZ9nlqpUEUwi2Go9p1E
 GBcy4Sg2JYq7LoNvnvOEQNNMBPxyRgo0zsyHE41XcaENMGNS6A96SbF+AzzyGDERR8Kg+65U
 xHPBW3SWEDEPvfe7SdFsRGAvb8FFYQ08cr+YjIwzMVDXNHWvRLCPBgnxEjJ4+y1C3EEGZscV
 XKRpKCyQi1AJTRaZaATIv/16qrcGLGWtxEW0wDqdxfpfFuv0VBvCq1EUl8PrUzg+LoM7HMvr
 9HxORkrs/ky9HU38Me9vt8+Jxl7ucyGGQsow2nZvRCsndYf4I3oXAgpXzqTdBcNaOZ2sO3KU
 M2TuMeSkc7wLzaEIZRS9snRAK2dSdNncQY7L4gz/VIwKURhR5EYKv7X1Jhl1q/Pc0s+nIpKd
 mRG01dLg6qVbOvWyXbMOdJRFqVvNDnV/9JbLOafdm3dkje2cMdRxYyT18Yr9SRWBuO2rc93J
 BWkHPdT8ReOqUlUwT4Fc6kvWcW24Wf4sPi3G4zOGFyUqNnUk5RtnP4hWbVEf6F54Pcz7YaO3
 Sknwqbq4JbiB1/0Fmx5qZ18DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsVy+t/xe7p7/3+INfi5idFi44z1rBbXvzxn
 tZh0fwKLxYJPM1gt+h+/ZrY4f34Du8XZpjfsFivufmS12PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLPY1/GAyWLG5JdsDgIeLftusXtsWtXJ5rF5Sb3Hxnc7mDz6tqxi9Pi8SS6A
 LUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvo//9
 Z5aCqbYVa7duYGpg3KDfxcjBISFgIvFgJn8XIxeHkMBSRokvPyYydjFyAsUlJD6uv8EKYQtL
 /LnWxQZR9IRR4k/bXHaQBK+Ah8SndVOZQWxhATuJZQt2MIHYbAL2Emdvf2MCaRARWM8oMf3y
 SRYQh1mgh0li9rRVYGNZBFQl3qy7xQZyBidQx9QuR4gNXxklJhw/AraBWUBTonX7b3aIM3Qk
 3p7qYwGp5xUQlPi7QxiiRF6ieets5gmMgrOQdMxCqJqFpGoBI/MqRpHU0uLc9NxiQ73ixNzi
 0rx0veT83E2MwCjdduzn5h2MlzYGH2IU4GBU4uFdsP19rBBrYllxZe4hRgkOZiUR3uNt72KF
 eFMSK6tSi/Lji0pzUosPMZoCvTORWUo0OR+YQPJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmk
 J5akZqemFqQWwfQxcXBKNTAa60YXtXjFXU9mEQoNOjRFzX2u7CH3ozceM8uH167WP3Nu4+5j
 djqrRFlC92xl+3t+A3fgglXhkRLvTq4wixB8ZqDnqCZ2sNDRYKpymzarmLD7nqiSRQe3aS24
 /3+On/kq+f/z3k2WM+YQsH1x+6UcJ//1Y+f+fGWw0K2bG24172a1vc7UczVKLMUZiYZazEXF
 iQBiRwlw6AIAAA==
X-CMS-MailID: 20191211143957eucas1p29477538aa5520cf0009cacea907171c3
X-Msg-Generator: CA
X-RootMTR: 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2@eucas1p2.samsung.com>
 <20191209104902.11904-5-a.swigon@samsung.com>
 <ab5cd151-0f9f-929e-fcbe-e7fe7b6c8645@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_144032_620215_45FC26E7 
X-CRM114-Status: GOOD (  39.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 krzk@kernel.org, inki.dae@samsung.com, kyungmin.park@samsung.com,
 myungjoo.ham@samsung.com, rostedt@goodmis.org, kgene@kernel.org,
 leonard.crestez@nxp.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIDIwMTktMTItMTAgYXQgMTM6MjAgKzA5MDAsIENoYW53b28gQ2hvaSB3cm90
ZToKPiBIaSwKPiAKPiBUaGlzIHBhdGNoIGNvbnRhaW5zIHRoZSBjbGVhbi11cCBjb2RlIHJlbGF0
ZWQgdG8gJ2dvdG8nIHN0eWxlLgo+IFBsZWFzZSBtZXJnZSB0aGUgdGhlIGNsZWFuLXVwIGNvZGUg
b2YgJ2dvdG8nIHRvIG9uZSBwYXRjaCB3aXRoIHBhdGNoMy9wYXRjaDQuCj4gLSBwYXRjaDMgcmVs
YXRlZCB0byAnZ290bycgY2xlYW4tdXAgY29kZQo+IC0gcGF0Y2g0IHJlbGF0ZWQgdG8gcmVtYWlu
aW5nIGNsZWFuLXVwIGNvZGUuIAo+IAo+IEFuZCBJIGFkZGVkIHRoZSBjb21tZW50IGJlbG93LiBQ
bGVhc2UgY2hlY2sgdGhlbS4KCk9LLCBJIGNhbiBtZXJnZSB0aGVzZSBwYXRjaGVzLiBQbGVhc2Ug
YWxzbyBzZWUgbXkgY29tbWVudHMgYmVsb3cgcmVnYXJkaW5nCnRoZSBpc3N1ZXMgeW91IGhpZ2hs
aWdodGVkOiBremFsbG9jIHZzLiBrY2FsbG9jLCBmaXR0aW5nIGluIDgwIGNvbHVtbnMgYW5kCmNo
YW5naW5nIHJlcGVhdGVkIGV4cHJlc3Npb25zIHRvIHZhcmlhYmxlcy4KCj4gCj4gT24gMTIvOS8x
OSA3OjQ5IFBNLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggYWRkcyBtaW5v
ciBpbXByb3ZlbWVudHMgdG8gdGhlIGV4eW5vcy1idXMgZHJpdmVyLCBpbmNsdWRpbmcKPiA+IGNs
ZWFuaW5nIHVwIGhlYWRlciBpbmNsdWRlcywgdmFyaWFibGVzLCBhbmQgcmV0dXJuIHBhdGhzLgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5j
b20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNTYgKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIzIGlu
c2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiA+
IGluZGV4IDBiNTU3ZGY2MzY2Ni4uM2ViNmEwNDMyODRhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYwo+ID4gQEAgLTE1LDExICsxNSwxMCBAQAo+ID4gICNpbmNsdWRlIDxsaW51eC9kZXZpY2Uu
aD4KPiA+ICAjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+ID4gLSNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiA+ICsjaW5jbHVkZSA8
bGludXgvb2YuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcG1fb3BwLmg+Cj4gPiAgI2luY2x1ZGUg
PGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3Iv
Y29uc3VtZXIuaD4KPiA+IC0jaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ID4gIAo+ID4gICNkZWZp
bmUgREVGQVVMVF9TQVRVUkFUSU9OX1JBVElPCTQwCj4gPiAgCj4gPiBAQCAtMTc4LDcgKzE3Nyw3
IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9u
b2RlICpucCwKPiA+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4gPiAgCXN0cnVj
dCBvcHBfdGFibGUgKm9wcF90YWJsZTsKPiA+ICAJY29uc3QgY2hhciAqdmRkID0gInZkZCI7Cj4g
PiAtCWludCBpLCByZXQsIGNvdW50LCBzaXplOwo+ID4gKwlpbnQgaSwgcmV0LCBjb3VudDsKPiA+
ICAKPiA+ICAJb3BwX3RhYmxlID0gZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycyhkZXYsICZ2ZGQs
IDEpOwo+ID4gIAlpZiAoSVNfRVJSKG9wcF90YWJsZSkpIHsKPiA+IEBAIC0yMDEsOCArMjAwLDcg
QEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm5wLAo+ID4gIAl9Cj4gPiAgCWJ1cy0+ZWRldl9jb3VudCA9IGNvdW50Owo+ID4gIAo+ID4g
LQlzaXplID0gc2l6ZW9mKCpidXMtPmVkZXYpICogY291bnQ7Cj4gPiAtCWJ1cy0+ZWRldiA9IGRl
dm1fa3phbGxvYyhkZXYsIHNpemUsIEdGUF9LRVJORUwpOwo+ID4gKwlidXMtPmVkZXYgPSBkZXZt
X2tjYWxsb2MoZGV2LCBjb3VudCwgc2l6ZW9mKCpidXMtPmVkZXYpLCBHRlBfS0VSTkVMKTsKPiAK
PiBkaXR0by4KPiBJdCBkZXBlbmRzIG9uIHBlcnNvbmFsIHN0eWxlLiBEb24ndCBjaGFuZ2UgaXQg
YmVjYXVzZSB3ZSBjYW5ub3QKPiBtb2RpZnkgdGhlbSBhdCB0aGUgYWxsIGRldmljZSBkcml2ZXIu
IElmIGlzIG5vdCB3cm9uZywKPiBqdXN0IGtlZXAgdGhlIG9yaWdpbmFsIGNvZGUuCgpPZiBjb3Vy
c2UsIHRoaXMgaXMgYSBtYXR0ZXIgb2Ygc3R5bGUsIGJ1dCBJIHRoaW5rIHRoYXQgQ29jY2luZWxs
ZSByZXBvcnRzCnN1Y2ggY29kZSwgY29tcGFyZSB3aXRoIGUuZy4sIGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzUvOC85MjcKCkFueXdheSwgSSBjYW4gZHJvcCBpdCBzaW5jZSB0aGUgcHVycG9z
ZSBvZiB0aGlzIHBhdGNoc2V0IGFzIGEgd2hvbGUgd2FzIHRvCnVudGFuZ2xlIGFsbCB0aGUgZ290
bydzIGFuZCBJIGFncmVlIHRoaXMgaXMga2luZCBvZiB1bnJlbGF0ZWQuCgo+IAo+ID4gIAlpZiAo
IWJ1cy0+ZWRldikgewo+ID4gIAkJcmV0ID0gLUVOT01FTTsKPiA+ICAJCWdvdG8gZXJyX3JlZ3Vs
YXRvcjsKPiA+IEBAIC0zMDEsMTAgKzI5OSw5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9m
aWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiA+ICAJcHJvZmlsZS0+ZXhpdCA9IGV4
eW5vc19idXNfZXhpdDsKPiA+ICAKPiA+ICAJb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+ID4gLQlpZiAoIW9uZGVt
YW5kX2RhdGEpIHsKPiA+IC0JCXJldCA9IC1FTk9NRU07Cj4gPiAtCQlnb3RvIGVycjsKPiA+IC0J
fQo+ID4gKwlpZiAoIW9uZGVtYW5kX2RhdGEpCj4gPiArCQlyZXR1cm4gLUVOT01FTTsKPiA+ICsK
PiA+ICAJb25kZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKPiA+ICAJb25kZW1hbmRfZGF0
YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7Cj4gPiAgCj4gPiBAQCAtMzE0LDE1ICszMTEsMTQgQEAg
c3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVz
LAo+ID4gIAkJCQkJCW9uZGVtYW5kX2RhdGEpOwo+ID4gIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJl
cSkpIHsKPiA+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldmljZVxu
Iik7Cj4gPiAtCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gPiAtCQlnb3RvIGVycjsK
PiA+ICsJCXJldHVybiBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gPiAgCX0KPiA+ICAKPiA+ICAJ
LyogUmVnaXN0ZXIgb3BwX25vdGlmaWVyIHRvIGNhdGNoIHRoZSBjaGFuZ2Ugb2YgT1BQICAqLwo+
ID4gIAlyZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwgYnVzLT5k
ZXZmcmVxKTsKPiA+ICAJaWYgKHJldCA8IDApIHsKPiA+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIHJlZ2lzdGVyIG9wcCBub3RpZmllclxuIik7Cj4gPiAtCQlnb3RvIGVycjsKPiA+ICsJCXJl
dHVybiByZXQ7Cj4gPiAgCX0KPiA+ICAKPiA+ICAJLyoKPiA+IEBAIC0zMzIsMTcgKzMyOCwxNiBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpi
dXMsCj4gPiAgCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKPiA+ICAJaWYgKHJl
dCA8IDApIHsKPiA+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVxLWV2
ZW50IGRldmljZXNcbiIpOwo+ID4gLQkJZ290byBlcnI7Cj4gPiArCQlyZXR1cm4gcmV0Owo+ID4g
IAl9Cj4gPiAgCj4gPiAgCXJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4gPiAgCWlm
IChyZXQgPCAwKSB7Cj4gPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8g
ZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0JCWdvdG8gZXJyOwo+ID4gKwkJcmV0dXJu
IHJldDsKPiA+ICAJfQo+ID4gIAo+ID4gLWVycjoKPiA+IC0JcmV0dXJuIHJldDsKPiA+ICsJcmV0
dXJuIDA7Cj4gPiAgfQo+ID4gIAo+ID4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2lu
aXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ID4gQEAgLTM1MSw3ICszNDYsNiBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4eW5v
c19idXMgKmJ1cywKPiA+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4gPiAgCXN0
cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwo+ID4gIAlzdHJ1Y3QgZGV2
ZnJlcSAqcGFyZW50X2RldmZyZXE7Cj4gPiAtCWludCByZXQgPSAwOwo+ID4gIAo+ID4gIAkvKiBJ
bml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFzc2l2
ZSBkZXZpY2UgKi8KPiA+ICAJcHJvZmlsZS0+dGFyZ2V0ID0gZXh5bm9zX2J1c190YXJnZXQ7Cj4g
PiBAQCAtMzU5LDMwICszNTMsMjYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gPiAgCj4gPiAgCS8qIEdldCB0aGUg
aW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNlICovCj4gPiAgCXBhcmVudF9kZXZmcmVx
ID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Cj4gPiAtCWlmIChJU19F
UlIocGFyZW50X2RldmZyZXEpKSB7Cj4gPiAtCQlyZXQgPSAtRVBST0JFX0RFRkVSOwo+ID4gLQkJ
Z290byBlcnI7Cj4gPiAtCX0KPiA+ICsJaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpCj4gPiAr
CQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPiA+ICAKPiA+ICAJcGFzc2l2ZV9kYXRhID0gZGV2bV9r
emFsbG9jKGRldiwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEpLCBHRlBfS0VSTkVMKTsKPiA+IC0JaWYg
KCFwYXNzaXZlX2RhdGEpIHsKPiA+IC0JCXJldCA9IC1FTk9NRU07Cj4gPiAtCQlnb3RvIGVycjsK
PiA+IC0JfQo+ID4gKwlpZiAoIXBhc3NpdmVfZGF0YSkKPiA+ICsJCXJldHVybiAtRU5PTUVNOwo+
ID4gKwo+ID4gIAlwYXNzaXZlX2RhdGEtPnBhcmVudCA9IHBhcmVudF9kZXZmcmVxOwo+ID4gIAo+
ID4gIAkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdv
dmVybm9yICovCj4gPiAtCWJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRl
diwgcHJvZmlsZSwgREVWRlJFUV9HT1ZfUEFTU0lWRSwKPiA+ICsJYnVzLT5kZXZmcmVxID0gZGV2
bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLAo+ID4gKwkJCQkJCURFVkZSRVFfR09W
X1BBU1NJVkUsCj4gCj4gSXQgaXMgbm90IGNsZWFuLXVwLiBJdCBkZXBlbmRzIG9uIHBlcnNvbmFs
IHN0eWxlLiBEb24ndCBjaGFuZ2UgaXQKPiBiZWNhdXNlIHdlIGNhbm5vdCBtb2RpZnkgdGhlbSBh
dCB0aGUgYWxsIGRldmljZSBkcml2ZXIuIElmIGlzIG5vdCB3cm9uZywKPiBqdXN0IGtlZXAgdGhl
IG9yaWdpbmFsIGNvZGUuCgpJIHdhbnRlZCB0byBtYWtlIHRoZSBjb2RlIGZpdCBpbiA4MCBjb2x1
bW5zIChpc3N1ZSByZXBvcnRlZCBieQpzY3JpcHRzL2NoZWNrcGF0Y2gucGwpLiBGb3IgdGhlIHJl
YXNvbnMgc3RhdGVkIGluIG15IHByZXZpb3VzIGNvbW1lbnQsCkkgYW0gaGFwcHkgdG8gZHJvcCB0
aGlzIGNoYW5nZSBpZiB5b3UgZG9uJ3QgbGlrZSBpdC4KCj4gCj4gPiAgCQkJCQkJcGFzc2l2ZV9k
YXRhKTsKPiA+ICAJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4gPiAgCQlkZXZfZXJyKGRl
diwKPiA+ICAJCQkiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldiB3aXRoIHBhc3NpdmUgZ292ZXJu
b3JcbiIpOwo+ID4gLQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+ID4gLQkJZ290byBl
cnI7Cj4gPiArCQlyZXR1cm4gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+ID4gIAl9Cj4gPiAgCj4g
PiAtZXJyOgo+ID4gLQlyZXR1cm4gcmV0Owo+ID4gKwlyZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4g
PiAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gPiBAQCAtNDAwLDE4ICszOTAsMTggQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiA+
ICAJfQo+ID4gIAo+ID4gLQlidXMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpi
dXMpLCBHRlBfS0VSTkVMKTsKPiA+ICsJYnVzID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpi
dXMpLCBHRlBfS0VSTkVMKTsKPiAKPiBkaXR0by4KPiBJdCBkZXBlbmRzIG9uIHBlcnNvbmFsIHN0
eWxlLiBEb24ndCBjaGFuZ2UgaXQgYmVjYXVzZSB3ZSBjYW5ub3QKPiBtb2RpZnkgdGhlbSBhdCB0
aGUgYWxsIGRldmljZSBkcml2ZXIuIElmIGlzIG5vdCB3cm9uZywKPiBqdXN0IGtlZXAgdGhlIG9y
aWdpbmFsIGNvZGUuCgpQbGVhc2Ugbm90ZSB0aGF0IHRoZXJlIGV4aXN0cyB0aGlzIHZhcmlhYmxl
IGluIGV4eW5vc19idXNfcHJvYmUoKToKCnN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7
CgpidXQgdGhlIGV4cHJlc3Npb24gJyZwZGV2LT5kZXYnIGlzIHJldXNlZCB0d2ljZSBtb3JlICgn
ZGV2JyBpdHNlbGYKaXMgYWxzbyB1c2VkKS4gSXMgdGhlcmUgYW55IHJlYXNvbiBmb3Igc3VjaCBp
bmNvbnNpc3RlbmN5PwoKPiAKPiA+ICAJaWYgKCFidXMpCj4gPiAgCQlyZXR1cm4gLUVOT01FTTsK
PiA+ICAJbXV0ZXhfaW5pdCgmYnVzLT5sb2NrKTsKPiA+IC0JYnVzLT5kZXYgPSAmcGRldi0+ZGV2
Owo+ID4gKwlidXMtPmRldiA9IGRldjsKPiAKPiBkaXR0by4KPiBJdCBkZXBlbmRzIG9uIHBlcnNv
bmFsIHN0eWxlLiBEb24ndCBjaGFuZ2UgaXQgYmVjYXVzZSB3ZSBjYW5ub3QKPiBtb2RpZnkgdGhl
bSBhdCB0aGUgYWxsIGRldmljZSBkcml2ZXIuIElmIGlzIG5vdCB3cm9uZywKPiBqdXN0IGtlZXAg
dGhlIG9yaWdpbmFsIGNvZGUuCgooU2VlIGFib3ZlKQoKPiAKPiA+ICAJcGxhdGZvcm1fc2V0X2Ry
dmRhdGEocGRldiwgYnVzKTsKPiA+ICAKPiA+ICAJcHJvZmlsZSA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqcHJvZmlsZSksIEdGUF9LRVJORUwpOwo+ID4gIAlpZiAoIXByb2ZpbGUpCj4gPiAg
CQlyZXR1cm4gLUVOT01FTTsKPiA+ICAKPiA+IC0Jbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2
LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOwo+ID4gKwlub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShu
cCwgImRldmZyZXEiLCAwKTsKPiA+ICAJaWYgKG5vZGUpIHsKPiA+ICAJCW9mX25vZGVfcHV0KG5v
ZGUpOwo+ID4gIAkJcGFzc2l2ZSA9IHRydWU7Cj4gPiAKPiAKCkJlc3QgcmVnYXJkcywKLS0gCkFy
dHVyIMWad2lnb8WEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKU2Ftc3VuZyBFbGVjdHJv
bmljcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
