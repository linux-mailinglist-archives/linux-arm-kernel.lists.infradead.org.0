Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A441BE9F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 03:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yV5P9dKOBDDgJt31+cC4HI6xcSolVNCOMt8jQsKsgI=; b=WZ/RCBqYLYnNDO
	Oo6qFe5vcPQcXXRFMKVLpkUjyMRVx/6WXKa304/Dww7HrTF91Y78JKgkd1+B4PcPNP/kXstgfIiUs
	Ctb+D7DGaa9nV1QRFlox+DLRerAoRt8GOvckgtjcZ/ynbhJTRZRfhHqFfXiIWCOMCHzo+G17jDDFf
	vQ6vMVKs85A5NwHnzm8PKcp6o74bbRj8xDQwBA2ZM4P8CYFOFiYzEx5cZo5pGAyeGI1+sYC2YGMDN
	vK8zgoMU5laN2/guFK7mciOsqxCX60xGs9heXSSqS28zWEjRY8dYGwFW+D2WJpg6sainxqksDKf8Z
	5FZ9SNBzO+GFmbCYgm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDIMw-00053q-D0; Thu, 26 Sep 2019 01:14:54 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDIMj-00053M-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 01:14:44 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190926011438epoutp0461a834f905c329b5260471b88f2b028c~H1-1f0Bgi1352113521epoutp04g
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 01:14:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190926011438epoutp0461a834f905c329b5260471b88f2b028c~H1-1f0Bgi1352113521epoutp04g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569460478;
 bh=AesaqjDo0YbWP27vWCIaz9cMDJ9+CQh/g3Zywou/rt4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=EfyEfTVTcD9uXEC/6g/Xh/ISBweQ1JhRHBraPEtQoQlMsb6rxiBRWpsW4FDdGucbO
 NyuEAy1NEaT3Q5h7h36itf9/6yI1KIYMq5QQb7cS9KyAH/IofwRZpPYVZSYtHpmJHZ
 3vdpHn3vCcYYXp0jpHU/Y83081I7rIcJL4xU7cg8=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190926011437epcas1p3689c1103b3624d494cfd8f1ec1540295~H1-0uOr8G2749427494epcas1p3g;
 Thu, 26 Sep 2019 01:14:37 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.158]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 46dxmB6w7lzMqYkX; Thu, 26 Sep
 2019 01:14:34 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 14.6F.04068.AF01C8D5; Thu, 26 Sep 2019 10:14:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190926011434epcas1p4fad14708395e5735db9d9ee09f7b13d0~H1-xiIfbM1342313423epcas1p4L;
 Thu, 26 Sep 2019 01:14:34 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190926011434epsmtrp16dc8cd010679c943b67f56486c17f53f~H1-xgw6cX1961419614epsmtrp1X;
 Thu, 26 Sep 2019 01:14:34 +0000 (GMT)
X-AuditID: b6c32a39-f5fff70000000fe4-a5-5d8c10fac2f6
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 93.CD.04081.9F01C8D5; Thu, 26 Sep 2019 10:14:33 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190926011433epsmtip21b64d1f76168dd7fa8ab3c1188222f4f~H1-xMX7EG2820028200epsmtip2u;
 Thu, 26 Sep 2019 01:14:33 +0000 (GMT)
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <10b7f567-3d07-d4b0-b555-48c03a26461e@samsung.com>
Date: Thu, 26 Sep 2019 10:19:15 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKJsWRmVeSWpSXmKPExsWy7bCmnu4vgZ5Yg19zzS0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUCPKCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0ihNz
 i0vz0vWS83OtDA0MjEyBChOyM9bfuMtU8Mq9Yu7HQywNjPstuxg5OSQETCRu3zrM3MXIxSEk
 sINRYv2SaWwQzidGiZZt1xlBqoQEvjFK7F3EBdOxZUE7VNFeRomXiw+yQjjvGSUO/LzMClIl
 LGAj8f/qRzYQW0QgVOLL00vMIDazQBOrxKcjZSA2m4CWxP4XN8Bq+AUUJa7+eAy2jVfATmLZ
 3V9ANgcHi4CqxNOTUSBhUYEIiU8PDrNClAhKnJz5hAXE5hSIlbi4/iArxHhxiVtP5jNB2PIS
 zVtng70mIXCNXeLB8qOsIDMlBFwk1j3Th3hGWOLV8S3sELaUxMv+Nii7WmLlySNsEL0djBJb
 9l9ghUgYS+xfOpkJZA6zgKbE+l1QcxQldv6eywixl0/i3dceqFW8Eh1tQhAlyhKXH9xlgrAl
 JRa3d7JNYFSaheSbWUg+mIXkg1kIyxYwsqxiFEstKM5NTy02LDBFjutNjOAkrmW5g/HYOZ9D
 jAIcjEo8vBKR3bFCrIllxZW5hxglOJiVRHhnyXTFCvGmJFZWpRblxxeV5qQWH2I0BYb1RGYp
 0eR8YIbJK4k3NDUyNja2MDE0MzU0VBLn9UhviBUSSE8sSc1OTS1ILYLpY+LglGpg1A00cPOT
 cym2SD40V2jy4w+1n74EGr5OWf7f8/Hf72a7Fl0RK/jxbY78tm8MT2WVGipCao0XdlgUM7yc
 3eu2t/uA1vWb1jlS+94uZhKasXnNciXp6+0qMhJ3j0gmXS56x7Nh23HWPe0aAYme55M5P/K/
 e8hRmK6ju3s252fm0+KBloyJD+dMU2Ipzkg01GIuKk4EABjinqH4AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsWy7bCSvO5PgZ5YgyknrS0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUVw2Kak5mWWpRfp2CVwZ62/cZSp45V4x9+MhlgbG/ZZdjJwc
 EgImElsWtLN1MXJxCAnsZpR4+mcyI0RCUmLaxaPMXYwcQLawxOHDxRA1bxklpt/dxAxSIyxg
 I/H/6kc2EFtEIFTiT+dyVpAiZoEmVomu79cZITpeMUkcvtjHClLFJqAlsf/FDbAOfgFFias/
 HoNt4xWwk1h29xcjyDYWAVWJpyejQMKiAhESh3fMgioRlDg58wkLiM0pECtxcf1BsJHMAuoS
 f+ZdYoawxSVuPZnPBGHLSzRvnc08gVF4FpL2WUhaZiFpmYWkZQEjyypGydSC4tz03GLDAsO8
 1HK94sTc4tK8dL3k/NxNjOCY1tLcwXh5SfwhRgEORiUe3gNh3bFCrIllxZW5hxglOJiVRHhn
 yXTFCvGmJFZWpRblxxeV5qQWH2KU5mBREud9mncsUkggPbEkNTs1tSC1CCbLxMEp1cCooPCw
 1Oxxlo3Ty7g9n1SXvJt+VeFn7TPXHUrvDv86NkH4OZ9EGUek8Hdr21nTb7ocduDQL7poV6Gw
 ospC9P931dtHL0qxOWyqehS+KMbm2Z2Qi2oiu+ceTnygLWN1kn2JHmtWs1LPiVlrZnm67Dtk
 Vb/62v9tfBNn7DkQWFq/sDC1zThu+fXFSizFGYmGWsxFxYkA/TvVgeUCAAA=
X-CMS-MailID: 20190926011434epcas1p4fad14708395e5735db9d9ee09f7b13d0
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45@epcas4p3.samsung.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <40885624-8f11-4eea-d5bf-d6bb50fa44dd@samsung.com>
 <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_181442_209292_4447B08C 
X-CRM114-Status: GOOD (  29.07  )
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

T24gMTkuIDkuIDI2LiDsmKTsoIQgNjoxOCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDI1
LjA5LjIwMTkgMDU6MTEsIENoYW53b28gQ2hvaSB3cm90ZToKPj4gT24gMTkuIDkuIDI0LiDsmKTt
m4QgNzoxMSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4gUmVnaXN0ZXIgbm90aWZpZXJzIHdp
dGggdGhlIFBNIFFvUyBmcmFtZXdvcmsgaW4gb3JkZXIgdG8gcmVzcG9uZCB0bwo+Pj4gcmVxdWVz
dHMgZm9yIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSBhbmQgREVWX1BNX1FPU19NQVhfRlJFUVVF
TkNZLgo+Pj4KPj4+IE5vIG5vdGlmaWVycyBhcmUgYWRkZWQgYnkgdGhpcyBwYXRjaCBidXQgUE0g
UW9TIGNvbnN0cmFpbnRzIGNhbiBiZQo+Pj4gaW1wb3NlZCBleHRlcm5hbGx5IChmb3IgZXhhbXBs
ZSBmcm9tIG90aGVyIGRldmljZXMpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jl
c3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+PiBSZXZpZXdlZC1ieTogTWF0dGhpYXMg
S2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9kZXZmcmVx
L2RldmZyZXEuYyB8IDc1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
Pj4gICBpbmNsdWRlL2xpbnV4L2RldmZyZXEuaCAgIHwgIDUgKysrCj4+PiAgIDIgZmlsZXMgY2hh
bmdlZCwgODAgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZy
ZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4gaW5kZXggZWVlNDAz
ZTcwYzg0Li43ODRmM2U0MDUzNmEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2
ZnJlcS5jCj4+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+PiBAQCAtMjIsMTUg
KzIyLDE4IEBACj4+PiAgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4+ICAg
I2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KPj4+ICAgI2luY2x1ZGUgPGxpbnV4L3ByaW50ay5oPgo+
Pj4gICAjaW5jbHVkZSA8bGludXgvaHJ0aW1lci5oPgo+Pj4gICAjaW5jbHVkZSA8bGludXgvb2Yu
aD4KPj4+ICsjaW5jbHVkZSA8bGludXgvcG1fcW9zLmg+Cj4+PiAgICNpbmNsdWRlICJnb3Zlcm5v
ci5oIgo+Pj4gICAKPj4+ICAgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRTCj4+PiAgICNpbmNs
dWRlIDx0cmFjZS9ldmVudHMvZGV2ZnJlcS5oPgo+Pj4gICAKPj4+ICsjZGVmaW5lIEhaX1BFUl9L
SFoJMTAwMAo+Pj4gKwo+Pj4gICBzdGF0aWMgc3RydWN0IGNsYXNzICpkZXZmcmVxX2NsYXNzOwo+
Pj4gICAKPj4+ICAgLyoKPj4+ICAgICogZGV2ZnJlcSBjb3JlIHByb3ZpZGVzIGRlbGF5ZWQgd29y
ayBiYXNlZCBsb2FkIG1vbml0b3JpbmcgaGVscGVyCj4+PiAgICAqIGZ1bmN0aW9ucy4gR292ZXJu
b3JzIGNhbiB1c2UgdGhlc2Ugb3IgY2FuIGltcGxlbWVudCB0aGVpciBvd24KPj4+IEBAIC0xMDks
MTAgKzExMiwxMSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJl
cShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4+ICAgc3RhdGljIHZvaWQgZ2V0X2ZyZXFfcmFu
Z2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+PiAgIAkJCSAgIHVuc2lnbmVkIGxvbmcgKm1p
bl9mcmVxLAo+Pj4gICAJCQkgICB1bnNpZ25lZCBsb25nICptYXhfZnJlcSkKPj4+ICAgewo+Pj4g
ICAJdW5zaWduZWQgbG9uZyAqZnJlcV90YWJsZSA9IGRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFi
bGU7Cj4+PiArCXVuc2lnbmVkIGxvbmcgcW9zX21pbl9mcmVxLCBxb3NfbWF4X2ZyZXE7Cj4+PiAg
IAo+Pj4gICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2ZnJlcS0+bG9jayk7Cj4+PiAgIAo+Pj4g
ICAJLyoKPj4+ICAgCSAqIEluaXQgbWluL21heCBmcmVxdWVuY3kgZnJvbSBmcmVxIHRhYmxlLgo+
Pj4gQEAgLTEyNSwxMCArMTI5LDE4IEBAIHN0YXRpYyB2b2lkIGdldF9mcmVxX3JhbmdlKHN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxLAo+Pj4gICAJfSBlbHNlIHsKPj4+ICAgCQkqbWluX2ZyZXEgPSBm
cmVxX3RhYmxlW2RldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+Pj4gICAJCSptYXhf
ZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4+PiAgIAl9Cj4+PiAgIAo+Pj4gKwkvKiBjb25zdHJhaW50
cyBmcm9tIFBNIFFvUyAqLwo+Pgo+PiBBcyBJIGNvbW1lbnRlZCBvbiBwYXRjaDQsCj4+ICdjb25z
dHJhaW50cycgLT4gJ0NvbnN0cmFpbnQnIGJlY2F1c2UgZmlyc3QgdmVyYiBoYXZlIHRvIGJlIHVz
ZWQKPj4gYXMgdGhlIHNpZ3VsYXIgdmVyYnMuCj4gCj4gQWxyZWFkeSBkaXNjdXNzZWQgZm9yIGFu
b3RoZXIgcGF0Y2g7IEkgd2lsbCBtb2RpZnkgdG8gIkFwcGx5IGNvbnN0cmFpbnRzIAo+IGZyb20g
UE0gUW9TIiBpbnN0ZWFkLgo+IAo+PiBJIHByZWZlciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRz
Ogo+Pgo+PiAJLyogQ29uc3RyYWludCBtaW5pbXVtL21heGltdW0gZnJlcXVlbmN5IGZyb20gUE0g
UW9TIGNvbnN0cmFpbnRzICovCj4+Cj4+PiArCXFvc19taW5fZnJlcSA9IGRldl9wbV9xb3NfcmVh
ZF92YWx1ZShkZXZmcmVxLT5kZXYucGFyZW50LAo+Pj4gKwkJCQkJICAgICBERVZfUE1fUU9TX01J
Tl9GUkVRVUVOQ1kpOwo+Pj4gKwlxb3NfbWF4X2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUo
ZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4+ICsJCQkJCSAgICAgREVWX1BNX1FPU19NSU5fRlJFUVVF
TkNZKTsKPj4+ICsJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgSFpfUEVSX0tIWiAqIHFvc19t
aW5fZnJlcSk7Cj4+PiArCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIEhaX1BFUl9LSFogKiBx
b3NfbWF4X2ZyZXEpOwo+Pj4gKwo+Pj4gICAJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+
Pj4gICAJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+bWluX2ZyZXEpOwo+Pj4g
ICAJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwgZGV2ZnJlcS0+bWF4X2ZyZXEpOwo+Pj4gICAK
Pj4+ICAgCS8qIGNvbnN0cmFpbnRzIGZyb20gT1BQIGludGVyZmFjZSAqLwo+Pj4gQEAgLTYwNiwx
MCArNjE4LDQ5IEBAIHN0YXRpYyBpbnQgZGV2ZnJlcV9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3Rp
Zmllcl9ibG9jayAqbmIsIHVuc2lnbmVkIGxvbmcgdHlwZSwKPj4+ICAgCW11dGV4X3VubG9jaygm
ZGV2ZnJlcS0+bG9jayk7Cj4+PiAgIAo+Pj4gICAJcmV0dXJuIHJldDsKPj4+ICAgfQo+Pj4gICAK
Pj4+ICsvKioKPj4+ICsgKiBxb3Nfbm90aWZpZXJfY2FsbCgpIC0gQ29tbW9uIGhhbmRsZXIgZm9y
IFFvUyBjb25zdHJhaW50cy4KPj4+ICsgKiBAZGV2ZnJlcTogICAgdGhlIGRldmZyZXEgaW5zdGFu
Y2UuCj4+PiArICovCj4+PiArc3RhdGljIGludCBxb3Nfbm90aWZpZXJfY2FsbChzdHJ1Y3QgZGV2
ZnJlcSAqZGV2ZnJlcSkKPj4+ICt7Cj4+PiArCWludCBlcnI7Cj4+PiArCj4+PiArCW11dGV4X2xv
Y2soJmRldmZyZXEtPmxvY2spOwo+Pj4gKwllcnIgPSB1cGRhdGVfZGV2ZnJlcShkZXZmcmVxKTsK
Pj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+ICsJaWYgKGVycikKPj4+ICsJ
CWRldl9lcnIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4+ICsJCQkJImZhaWxlZCB0byB1cGRhdGUg
ZnJlcXVlbmN5IGZvciBQTSBRb1MgY29uc3RyYWludHMgKCVkKVxuIiwKPj4KPj4gSXMgaXQgbm90
IG92ZXIgODAgY2hhcj8KPiAKPiBZZXMgYnV0IGNvZGluZyBzdHlsZSBleHBsaWNpdGx5IGZvcmJp
ZHMgYnJlYWtpbmcgc3RyaW5ncy4KCkkgd2FudCB0byBtYWtlIGl0IHdpdGhpbiA4MCBjaGFyLiBI
b3cgYWJvdXQgZm9sbG93aW5nIGNvbW1lbnQ/CgoJCWRldl9lcnIoZGV2ZnJlcS0+ZGV2LnBhcmVu
dCwKCQkJImZhaWxlZCB0byB1cGRhdGUgZnJlcXVlbmN5IGZyb20gUE0gUW9TICglZClcbiIsCgo+
Pj4gKwkJCQllcnIpOwo+Pj4gKwo+Pj4gKwlyZXR1cm4gTk9USUZZX09LOwo+Pj4gK30KPj4+ICsK
Pj4+ICsvKioKPj4+ICsgKiBxb3NfbWluX25vdGlmaWVyX2NhbGwoKSAtIENhbGxiYWNrIGZvciBR
b1MgbWluX2ZyZXEgY2hhbmdlcy4KPj4+ICsgKiBAbmI6CQlTaG91bGQgYmUgZGV2ZnJlcS0+bmJf
bWluCj4+PiArICovCj4+PiArc3RhdGljIGludCBxb3NfbWluX25vdGlmaWVyX2NhbGwoc3RydWN0
IG5vdGlmaWVyX2Jsb2NrICpuYiwKPj4+ICsJCQkJCSB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAq
cHRyKQo+Pj4gK3sKPj4+ICsJcmV0dXJuIHFvc19ub3RpZmllcl9jYWxsKGNvbnRhaW5lcl9vZihu
Yiwgc3RydWN0IGRldmZyZXEsIG5iX21pbikpOwo+Pj4gK30KPj4+ICsKPj4+ICsvKioKPj4+ICsg
KiBxb3NfbWF4X25vdGlmaWVyX2NhbGwoKSAtIENhbGxiYWNrIGZvciBRb1MgbWF4X2ZyZXEgY2hh
bmdlcy4KPj4+ICsgKiBAbmI6CQlTaG91bGQgYmUgZGV2ZnJlcS0+bmJfbWF4Cj4+PiArICovCj4+
PiArc3RhdGljIGludCBxb3NfbWF4X25vdGlmaWVyX2NhbGwoc3RydWN0IG5vdGlmaWVyX2Jsb2Nr
ICpuYiwKPj4+ICsJCQkJCSB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAqcHRyKQo+Pj4gK3sKPj4+
ICsJcmV0dXJuIHFvc19ub3RpZmllcl9jYWxsKGNvbnRhaW5lcl9vZihuYiwgc3RydWN0IGRldmZy
ZXEsIG5iX21heCkpOwo+Pj4gK30KPj4+ICsKPj4+ICAgLyoqCj4+PiAgICAqIGRldmZyZXFfZGV2
X3JlbGVhc2UoKSAtIENhbGxiYWNrIGZvciBzdHJ1Y3QgZGV2aWNlIHRvIHJlbGVhc2UgdGhlIGRl
dmljZS4KPj4+ICAgICogQGRldjoJdGhlIGRldmZyZXEgZGV2aWNlCj4+PiAgICAqCj4+PiAgICAq
IFJlbW92ZSBkZXZmcmVxIGZyb20gdGhlIGxpc3QgYW5kIHJlbGVhc2UgaXRzIHJlc291cmNlcy4K
Pj4+IEBAIC02MjAsMTAgKzY3MSwxNSBAQCBzdGF0aWMgdm9pZCBkZXZmcmVxX2Rldl9yZWxlYXNl
KHN0cnVjdCBkZXZpY2UgKmRldikKPj4+ICAgCj4+PiAgIAltdXRleF9sb2NrKCZkZXZmcmVxX2xp
c3RfbG9jayk7Cj4+PiAgIAlsaXN0X2RlbCgmZGV2ZnJlcS0+bm9kZSk7Cj4+PiAgIAltdXRleF91
bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4+ICAgCj4+PiArCWRldl9wbV9xb3NfcmVtb3Zl
X25vdGlmaWVyKGRldmZyZXEtPmRldi5wYXJlbnQsICZkZXZmcmVxLT5uYl9tYXgsCj4+PiArCQkJ
REVWX1BNX1FPU19NQVhfRlJFUVVFTkNZKTsKPj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVfbm90aWZp
ZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4+ICsJCQlERVZfUE1f
UU9TX01JTl9GUkVRVUVOQ1kpOwo+Pj4gKwo+Pgo+PiBKdXN0IHByaW50IGVycm9yIHdpdGggZGV2
X2VycigpIHdpdGhvdXQgc3RvcHBpbmcgdGhlIHJlbGVhc2Ugc3RlcC4KPj4KPj4gSSBwcmVmZXIg
dG8gaGFuZGxlIHRoZSByZXR1cm4gdmFsdWUgaWYga2VybmVsIEFQSSBwcm92aWRlcwo+PiB0aGUg
ZXJyb3IgY29kZS4KPj4KPj4+ICAgCWlmIChkZXZmcmVxLT5wcm9maWxlLT5leGl0KQo+Pj4gICAJ
CWRldmZyZXEtPnByb2ZpbGUtPmV4aXQoZGV2ZnJlcS0+ZGV2LnBhcmVudCk7Cj4+PiAgIAo+Pj4g
ICAJa2ZyZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4+PiAgIAlrZnJlZShkZXZmcmVxLT50
cmFuc190YWJsZSk7Cj4+PiBAQCAtNzMzLDEwICs3ODksMjggQEAgc3RydWN0IGRldmZyZXEgKmRl
dmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiAgIAlpZiAoZXJyKSB7Cj4+
PiAgIAkJcHV0X2RldmljZSgmZGV2ZnJlcS0+ZGV2KTsKPj4+ICAgCQlnb3RvIGVycl9vdXQ7Cj4+
PiAgIAl9Cj4+PiAgIAo+Pj4gKwkvKgo+Pj4gKwkgKiBSZWdpc3RlciBub3RpZmllcnMgZm9yIHVw
ZGF0ZXMgdG8gbWluL21heF9mcmVxIGFmdGVyIGRldmljZSBpcwo+Pj4gKwkgKiBpbml0aWFsaXpl
ZCAoYW5kIHdlIGNhbiBoYW5kbGUgbm90aWZpY2F0aW9ucykgYnV0IGJlZm9yZSB0aGUKPj4+ICsJ
ICogZ292ZXJub3IgaXMgc3RhcnRlZCAod2hpY2ggc2hvdWxkIGRvIGFuIGluaXRpYWwgZW5mb3Jj
ZW1lbnQgb2YKPj4+ICsJICogY29uc3RyYWludHMpLgo+Pj4gKwkgKi8KPj4KPj4gTXkgcHJldmlv
dXMgY29tbWVudCBpcyBub3QgZW5vdWdoIHdoeSBJIHByZWZlciB0byByZW1vdmUgaXQuIFNvcnJ5
Lgo+PiBBY3R1YWxseSwgdW50aWwgbm93LCB0aGUgZGV2ZnJlcV9hZGRfZGV2aWNlKCkgZG9uJ3Qg
aGF2ZSB0aGUgZGV0YWlsZWQKPj4gY29tbWVudHMgYmVjYXVzZSB0aGUgbGluZSBjb2RlIGlzIG5v
dCB0b28gbG9uZy4gQnV0LCBhdCB0aGUgcHJlc2VudCB0aW1lLAo+PiBkZXZmcmVxX2FkZF9kZXZp
Y2UoKSBpcyB0b28gbG9uZy4gSXQgbWVhbnMgdGhhdCB0aGUgZGV0YWlsZWQgY29tbWVudAo+PiBh
cmUgbmVjZXNzYXJ5Lgo+Pgo+PiBTbywgSSdsbCBhZGQgdGhlIGRldGFpbGVkIGNvbW1lbnQgZm9y
IGVhY2ggc3RlcCBvZiBkZXZmcmVxX2FkZF9kZXZpY2UoKQo+PiBvbiBzZXBhcmF0ZSBwYXRjaCB0
byBrZWVwIHRoZSBzYW1lIHN0eWxlLiBJJ2xsIHNlbmQgdGhlIHBhdGNoIHRvIHlvdQo+PiBmb3Ig
dGhlIHJldmlldy4KPiAKPiBUaGlzIGlzIHZlcnkgbGlrZWx5IHRvIHJlc3VsdCBpbiBtZXJnZSBj
b25mbGljdHMsIG1heWJlIHdhaXQgZm9yIG15IAo+IHNlcmllcyB0byBnbyBpbiBmaXJzdD8KPiAK
Pj4+ICsJZGV2ZnJlcS0+bmJfbWluLm5vdGlmaWVyX2NhbGwgPSBxb3NfbWluX25vdGlmaWVyX2Nh
bGw7Cj4+PiArCWVyciA9IGRldl9wbV9xb3NfYWRkX25vdGlmaWVyKGRldmZyZXEtPmRldi5wYXJl
bnQsICZkZXZmcmVxLT5uYl9taW4sCj4+PiArCQkJCSAgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFV
RU5DWSk7Cj4+PiArCWlmIChlcnIpCj4+PiArCQlnb3RvIGVycl9kZXZmcmVxOwo+Pj4gKwo+Pj4g
KwlkZXZmcmVxLT5uYl9tYXgubm90aWZpZXJfY2FsbCA9IHFvc19tYXhfbm90aWZpZXJfY2FsbDsK
Pj4+ICsJZXJyID0gZGV2X3BtX3Fvc19hZGRfbm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwg
JmRldmZyZXEtPm5iX21heCwKPj4+ICsJCQkJICAgICAgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZ
KTsKPj4+ICsJaWYgKGVycikKPj4+ICsJCWdvdG8gZXJyX2RldmZyZXE7Cj4+PiArCj4+PiAgIAlt
dXRleF9sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+PiAgIAo+Pj4gICAJZ292ZXJub3IgPSB0
cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZyZXEtPmdvdmVybm9yX25hbWUpOwo+Pj4gICAJ
aWYgKElTX0VSUihnb3Zlcm5vcikpIHsKPj4+ICAgCQlkZXZfZXJyKGRldiwgIiVzOiBVbmFibGUg
dG8gZmluZCBnb3Zlcm5vciBmb3IgdGhlIGRldmljZVxuIiwKPj4+IEBAIC03NjAsMTAgKzgzNCwx
MSBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRl
diwKPj4+ICAgCj4+PiAgIAlyZXR1cm4gZGV2ZnJlcTsKPj4+ICAgCj4+PiAgIGVycl9pbml0Ogo+
Pj4gICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+PiArZXJyX2RldmZyZXE6
Cj4+PiAgIAlkZXZmcmVxX3JlbW92ZV9kZXZpY2UoZGV2ZnJlcSk7Cj4+PiAgIAlyZXR1cm4gRVJS
X1BUUihlcnIpOwo+Pj4gICAKPj4+ICAgZXJyX2RldjoKPj4+ICAgCS8qCj4+PiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLmggYi9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+Pj4g
aW5kZXggYzNjYmMxNWZkZjA4Li5kYWMwZGZmZWFiYjQgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRl
L2xpbnV4L2RldmZyZXEuaAo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4+IEBA
IC0xMzQsMTAgKzEzNCwxMiBAQCBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSB7Cj4+PiAgICAq
IEB0b3RhbF90cmFuczoJTnVtYmVyIG9mIGRldmZyZXEgdHJhbnNpdGlvbnMKPj4+ICAgICogQHRy
YW5zX3RhYmxlOglTdGF0aXN0aWNzIG9mIGRldmZyZXEgdHJhbnNpdGlvbnMKPj4+ICAgICogQHRp
bWVfaW5fc3RhdGU6CVN0YXRpc3RpY3Mgb2YgZGV2ZnJlcSBzdGF0ZXMKPj4+ICAgICogQGxhc3Rf
c3RhdF91cGRhdGVkOglUaGUgbGFzdCB0aW1lIHN0YXQgdXBkYXRlZAo+Pj4gICAgKiBAdHJhbnNp
dGlvbl9ub3RpZmllcl9saXN0OiBsaXN0IGhlYWQgb2YgREVWRlJFUV9UUkFOU0lUSU9OX05PVElG
SUVSIG5vdGlmaWVyCj4+PiArICogQG5iX21pbjoJCU5vdGlmaWVyIGJsb2NrIGZvciBERVZfUE1f
UU9TX01JTl9GUkVRVUVOQ1kKPj4+ICsgKiBAbmJfbWF4OgkJTm90aWZpZXIgYmxvY2sgZm9yIERF
Vl9QTV9RT1NfTUFYX0ZSRVFVRU5DWQo+Pj4gICAgKgo+Pj4gICAgKiBUaGlzIHN0cnVjdHVyZSBz
dG9yZXMgdGhlIGRldmZyZXEgaW5mb3JtYXRpb24gZm9yIGEgZ2l2ZSBkZXZpY2UuCj4+PiAgICAq
Cj4+PiAgICAqIE5vdGUgdGhhdCB3aGVuIGEgZ292ZXJub3IgYWNjZXNzZXMgZW50cmllcyBpbiBz
dHJ1Y3QgZGV2ZnJlcSBpbiBpdHMKPj4+ICAgICogZnVuY3Rpb25zIGV4Y2VwdCBmb3IgdGhlIGNv
bnRleHQgb2YgY2FsbGJhY2tzIGRlZmluZWQgaW4gc3RydWN0Cj4+PiBAQCAtMTc2LDEwICsxNzgs
MTMgQEAgc3RydWN0IGRldmZyZXEgewo+Pj4gICAJdW5zaWduZWQgaW50ICp0cmFuc190YWJsZTsK
Pj4+ICAgCXVuc2lnbmVkIGxvbmcgKnRpbWVfaW5fc3RhdGU7Cj4+PiAgIAl1bnNpZ25lZCBsb25n
IGxhc3Rfc3RhdF91cGRhdGVkOwo+Pj4gICAKPj4+ICAgCXN0cnVjdCBzcmN1X25vdGlmaWVyX2hl
YWQgdHJhbnNpdGlvbl9ub3RpZmllcl9saXN0Owo+Pj4gKwo+Pj4gKwlzdHJ1Y3Qgbm90aWZpZXJf
YmxvY2sgbmJfbWluOwo+Pj4gKwlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgbmJfbWF4Owo+Pj4gICB9
Owo+Pj4gICAKPj4+ICAgc3RydWN0IGRldmZyZXFfZnJlcXMgewo+Pj4gICAJdW5zaWduZWQgbG9u
ZyBvbGQ7Cj4+PiAgIAl1bnNpZ25lZCBsb25nIG5ldzsKPj4+Cj4+Cj4+Cj4gCgoKLS0gCkJlc3Qg
UmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
