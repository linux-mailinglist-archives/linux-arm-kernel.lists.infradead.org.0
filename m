Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C684C287A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 23:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nvkEjw+9YWePktidknY6fVA1m4FWyyBRiy+HOJEmvg=; b=HjyUTaDZY86hkg
	Pla4fMFXCfhh/P8iD9EEdz40PFFTon8VJDhqymX74NJZHGTU5QcxVqf9BkCpF2TtWD5bywwqN6Xhz
	Q1DlTblzO/bNT0/9EfJ+IIlanAPARh+tD3AqOaKIU3zAF46C4ccy8YGCQrTK8/vL33tTiLG4IHVLL
	mIn6GcO/cUwGSX6lzZlbL2Bq7+iSovf6jhqNkRKryLji9ukUVRkSqFVI6seaPkbREKfnXNN4nDxnA
	4T8RefkkPKM6Oy0cT8WPFW5zDt+iy4J3QP5qOjCLNAS7kCS6Wi6Wl96/LCwdJVav1iZ0iP7S7Cjn6
	FAr/LxAXe80RyCP7n4Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF325-0007Gx-5h; Mon, 30 Sep 2019 21:16:37 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF31v-0007Ff-PG
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 21:16:30 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190930211622epoutp04af84faba0d2cd9a8ab7754634192d0ab~JU_PFNGhZ0245402454epoutp04i
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 21:16:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190930211622epoutp04af84faba0d2cd9a8ab7754634192d0ab~JU_PFNGhZ0245402454epoutp04i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569878182;
 bh=Y8TesGzN6CSsQhSACPzJXpS6DJNzW02UCdaYTqgBDzY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fnnm2Kx+6BMBFuJDb4hOFOV+APWkT7mvpbnwAMhV3h0Z+wrwRnXGEt2XrnDjqQ2v1
 4LN9yzECBeyCXLjwpjXuV2UlhQ1DFoGRy1hfURsSozs6iGr1Gxli9Vio3jcXir6V7N
 hG8F7bO7o6CTiJClPVa+h0lIarrd2R8lHStbCF8o=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190930211621epcas1p316edfd8556b7c1d2984a836563d9d27d~JU_OPZB6C3028730287epcas1p32;
 Mon, 30 Sep 2019 21:16:21 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.152]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 46hwDz5F83zMqYkY; Mon, 30 Sep
 2019 21:16:19 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 70.75.04135.3A0729D5; Tue,  1 Oct 2019 06:16:19 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190930211619epcas1p12f21744446ae27b280e23b6a062fa57b~JU_LiBT7A3028630286epcas1p1Y;
 Mon, 30 Sep 2019 21:16:19 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190930211619epsmtrp26ac093d9737260e677356e24e24482a1~JU_LhIjHE0341903419epsmtrp2N;
 Mon, 30 Sep 2019 21:16:19 +0000 (GMT)
X-AuditID: b6c32a36-7fbff70000001027-ef-5d9270a37c7a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BC.29.03889.2A0729D5; Tue,  1 Oct 2019 06:16:18 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190930211618epsmtip2e614c8e0098fa826722aa102b0ca40d3~JU_LOuU820415104151epsmtip2K;
 Mon, 30 Sep 2019 21:16:18 +0000 (GMT)
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <2e6d165e-a7b9-80fa-3d44-eaf8cdc109c0@samsung.com>
Date: Tue, 1 Oct 2019 06:21:07 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023FDB02BCC9E4248F05CF9EE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOJsWRmVeSWpSXmKPExsWy7bCmge7igkmxBm0LlC0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUCPKCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0ihNz
 i0vz0vWS83OtDA0MjEyBChOyMxZ+mc5W0BZQMWP6cZYGxgkOXYycHBICJhIz57QxdTFycQgJ
 7GCUODL9NjOE84lRovXTEajMN0aJo+cmM8K07Ds7Dyqxl1Fi/+PpjBDOe0aJc+u3soNUCQvY
 SPy/+pENxBYRCJX48vQSM4jNLNDEKvHpSBmIzSagJbH/xQ2wGn4BRYmrPx4DDeLg4BWwk7h9
 SwAkzCKgInH943MWEFtUIELi04PDrCA2r4CgxMmZT8DinAKxEvevrGKCGC8ucevJfChbXqJ5
 62ywdyQErrFLLL6ylg3iAxeJQ1tXMEPYwhKvjm9hh7ClJD6/2wtVUy2x8uQRNojmDkaJLfsv
 sEIkjCX2L53MBHIos4CmxPpd+hBhRYmdv+cyQizmk3j3tYcVpERCgFeio00IokRZ4vKDu0wQ
 tqTE4vZOtgmMSrOQvDMLyQuzkLwwC2HZAkaWVYxiqQXFuempxYYFRsixvYkRnMi1zHYwLjrn
 c4hRgINRiYd3wsuJsUKsiWXFlbmHGCU4mJVEeMUZJsQK8aYkVlalFuXHF5XmpBYfYjQFhvZE
 ZinR5HxglskriTc0NTI2NrYwMTQzNTRUEud1T2+IFRJITyxJzU5NLUgtgulj4uCUamCMP7aT
 S1+8ddq9pycv/l4559Fh31Ofda+tCmu97CXR/3Zz06Sf1jqB87n4r/AKpkSd0RXUtel2bdt/
 Y+HLFY+PK6yy8qsVWslisqcl+WZ+q+o6kanPlFcGHXEsfnp7w5SMIwYf7iYt0pUKK98VtZll
 lewPw6f1r761z227y3Nm5d2YlIsl8xcWKLEUZyQaajEXFScCAKDftpz6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsWy7bCSvO6igkmxBoufW1ocOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orhsUlJzMstSi/TtErgyFn6ZzlbQFlAxY/pxlgbGCQ5djJwc
 EgImEvvOzmPqYuTiEBLYzShxf9ErJoiEpMS0i0eZuxg5gGxhicOHiyFq3jJKPDo5mwWkRljA
 RuL/1Y9sILaIQKjEn87lrCBFzAJNrBJd368zQnR8YpaYc76PGaSKTUBLYv+LG2Ad/AKKEld/
 PGYE2cArYCdx+5YASJhFQEXi+sfnYAtEBSIkDu+YxQhi8woISpyc+QQszikQK3H/yiqwQ5kF
 1CX+zLvEDGGLS9x6Mh8qLi/RvHU28wRG4VlI2mchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQuM
 8lLL9YoTc4tL89L1kvNzNzGCY1pLawfjiRPxhxgFOBiVeHgnvJwYK8SaWFZcmXuIUYKDWUmE
 V5xhQqwQb0piZVVqUX58UWlOavEhRmkOFiVxXvn8Y5FCAumJJanZqakFqUUwWSYOTqkGRg+N
 yzxuq98tVJSUZMj53rcoaZHinreTHWdunrhKXiyHV+Bw/oc9+c818+5fKTxv013Bxjj10TXH
 EJ5NteeD2Mt5dq1gmbPPeIZk35vOtRMl+Zqr9OPmFl77v37Py6ieA8eMYtlsjF68XvBaZtcv
 W2C6yldwruYReMfcKCcdmjO1smvTSdckJZbijERDLeai4kQATv8IteUCAAA=
X-CMS-MailID: 20190930211619epcas1p12f21744446ae27b280e23b6a062fa57b
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
 <10b7f567-3d07-d4b0-b555-48c03a26461e@samsung.com>
 <VI1PR04MB7023FDB02BCC9E4248F05CF9EE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_141628_215590_25EF2BD1 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gMTkuIDkuIDMwLiDsmKTtm4QgOTo0MywgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDIw
MTktMDktMjYgNDoxNCBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBPbiAxOS4gOS4gMjYuIOyY
pOyghCA2OjE4LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBPbiAyNS4wOS4yMDE5IDA1OjEx
LCBDaGFud29vIENob2kgd3JvdGU6Cj4+Pj4gT24gMTkuIDkuIDI0LiDsmKTtm4QgNzoxMSwgTGVv
bmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4+PiBSZWdpc3RlciBub3RpZmllcnMgd2l0aCB0aGUgUE0g
UW9TIGZyYW1ld29yayBpbiBvcmRlciB0byByZXNwb25kIHRvCj4+Pj4+IHJlcXVlc3RzIGZvciBE
RVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kgYW5kIERFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWS4KPj4+
Pj4KPj4+Pj4gTm8gbm90aWZpZXJzIGFyZSBhZGRlZCBieSB0aGlzIHBhdGNoIGJ1dCBQTSBRb1Mg
Y29uc3RyYWludHMgY2FuIGJlCj4+Pj4+IGltcG9zZWQgZXh0ZXJuYWxseSAoZm9yIGV4YW1wbGUg
ZnJvbSBvdGhlciBkZXZpY2VzKS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBD
cmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPj4+Pj4gUmV2aWV3ZWQtYnk6IE1hdHRo
aWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+Pj4+PiAtLS0KPj4+Pj4gICAgZHJpdmVy
cy9kZXZmcmVxL2RldmZyZXEuYyB8IDc1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+Pj4+PiAgICBpbmNsdWRlL2xpbnV4L2RldmZyZXEuaCAgIHwgIDUgKysrCj4+Pj4+
ICAgIDIgZmlsZXMgY2hhbmdlZCwgODAgaW5zZXJ0aW9ucygrKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVx
LmMKPj4+Pj4gaW5kZXggZWVlNDAzZTcwYzg0Li43ODRmM2U0MDUzNmEgMTAwNjQ0Cj4+Pj4+IC0t
LSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVx
L2RldmZyZXEuYwo+Pj4+PiBAQCAtMjIsMTUgKzIyLDE4IEBACj4+Pj4+ICAgICNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4K
Pj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L3ByaW50ay5oPgo+Pj4+PiAgICAjaW5jbHVkZSA8bGlu
dXgvaHJ0aW1lci5oPgo+Pj4+PiAgICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4+Pj4gKyNpbmNs
dWRlIDxsaW51eC9wbV9xb3MuaD4KPj4+Pj4gICAgI2luY2x1ZGUgImdvdmVybm9yLmgiCj4+Pj4+
ICAgIAo+Pj4+PiAgICAjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lOVFMKPj4+Pj4gICAgI2luY2x1
ZGUgPHRyYWNlL2V2ZW50cy9kZXZmcmVxLmg+Cj4+Pj4+ICAgIAo+Pj4+PiArI2RlZmluZSBIWl9Q
RVJfS0haCTEwMDAKPj4+Pj4gKwo+Pj4+PiAgICBzdGF0aWMgc3RydWN0IGNsYXNzICpkZXZmcmVx
X2NsYXNzOwo+Pj4+PiAgICAKPj4+Pj4gICAgLyoKPj4+Pj4gICAgICogZGV2ZnJlcSBjb3JlIHBy
b3ZpZGVzIGRlbGF5ZWQgd29yayBiYXNlZCBsb2FkIG1vbml0b3JpbmcgaGVscGVyCj4+Pj4+ICAg
ICAqIGZ1bmN0aW9ucy4gR292ZXJub3JzIGNhbiB1c2UgdGhlc2Ugb3IgY2FuIGltcGxlbWVudCB0
aGVpciBvd24KPj4+Pj4gQEAgLTEwOSwxMCArMTEyLDExIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25n
IGZpbmRfYXZhaWxhYmxlX21heF9mcmVxKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxKQo+Pj4+PiAg
ICBzdGF0aWMgdm9pZCBnZXRfZnJlcV9yYW5nZShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPj4+
Pj4gICAgCQkJICAgdW5zaWduZWQgbG9uZyAqbWluX2ZyZXEsCj4+Pj4+ICAgIAkJCSAgIHVuc2ln
bmVkIGxvbmcgKm1heF9mcmVxKQo+Pj4+PiAgICB7Cj4+Pj4+ICAgIAl1bnNpZ25lZCBsb25nICpm
cmVxX3RhYmxlID0gZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4+Pj4gKwl1bnNpZ25l
ZCBsb25nIHFvc19taW5fZnJlcSwgcW9zX21heF9mcmVxOwo+Pj4+PiAgICAKPj4+Pj4gICAgCWxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxvY2spOwo+Pj4+PiAgICAKPj4+Pj4gICAgCS8q
Cj4+Pj4+ICAgIAkgKiBJbml0IG1pbi9tYXggZnJlcXVlbmN5IGZyb20gZnJlcSB0YWJsZS4KPj4+
Pj4gQEAgLTEyNSwxMCArMTI5LDE4IEBAIHN0YXRpYyB2b2lkIGdldF9mcmVxX3JhbmdlKHN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxLAo+Pj4+PiAgICAJfSBlbHNlIHsKPj4+Pj4gICAgCQkqbWluX2Zy
ZXEgPSBmcmVxX3RhYmxlW2RldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+Pj4+PiAg
ICAJCSptYXhfZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4+Pj4+ICAgIAl9Cj4+Pj4+ICAgIAo+Pj4+
PiArCS8qIGNvbnN0cmFpbnRzIGZyb20gUE0gUW9TICovCj4+Pj4KPj4+PiBBcyBJIGNvbW1lbnRl
ZCBvbiBwYXRjaDQsCj4+Pj4gJ2NvbnN0cmFpbnRzJyAtPiAnQ29uc3RyYWludCcgYmVjYXVzZSBm
aXJzdCB2ZXJiIGhhdmUgdG8gYmUgdXNlZAo+Pj4+IGFzIHRoZSBzaWd1bGFyIHZlcmJzLgo+Pj4K
Pj4+IEFscmVhZHkgZGlzY3Vzc2VkIGZvciBhbm90aGVyIHBhdGNoOyBJIHdpbGwgbW9kaWZ5IHRv
ICJBcHBseSBjb25zdHJhaW50cwo+Pj4gZnJvbSBQTSBRb1MiIGluc3RlYWQuCj4+Pgo+Pj4+IEkg
cHJlZmVyIHRvIHVzZSBmb2xsb3dpbmcgY29tbWVudHM6Cj4+Pj4KPj4+PiAJLyogQ29uc3RyYWlu
dCBtaW5pbXVtL21heGltdW0gZnJlcXVlbmN5IGZyb20gUE0gUW9TIGNvbnN0cmFpbnRzICovCj4+
Pj4KPj4+Pj4gKwlxb3NfbWluX2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+
ZGV2LnBhcmVudCwKPj4+Pj4gKwkJCQkJICAgICBERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kpOwo+
Pj4+PiArCXFvc19tYXhfZnJlcSA9IGRldl9wbV9xb3NfcmVhZF92YWx1ZShkZXZmcmVxLT5kZXYu
cGFyZW50LAo+Pj4+PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4+
ICsJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgSFpfUEVSX0tIWiAqIHFvc19taW5fZnJlcSk7
Cj4+Pj4+ICsJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwgSFpfUEVSX0tIWiAqIHFvc19tYXhf
ZnJlcSk7Cj4+Pj4+ICsKPj4+Pj4gICAgCS8qIGNvbnN0cmFpbnRzIGZyb20gc3lzZnMgKi8KPj4+
Pj4gICAgCSptaW5fZnJlcSA9IG1heCgqbWluX2ZyZXEsIGRldmZyZXEtPm1pbl9mcmVxKTsKPj4+
Pj4gICAgCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4+
Pj4gICAgCj4+Pj4+ICAgIAkvKiBjb25zdHJhaW50cyBmcm9tIE9QUCBpbnRlcmZhY2UgKi8KPj4+
Pj4gQEAgLTYwNiwxMCArNjE4LDQ5IEBAIHN0YXRpYyBpbnQgZGV2ZnJlcV9ub3RpZmllcl9jYWxs
KHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsIHVuc2lnbmVkIGxvbmcgdHlwZSwKPj4+Pj4gICAg
CW11dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+Pj4+ICAgIAo+Pj4+PiAgICAJcmV0dXJu
IHJldDsKPj4+Pj4gICAgfQo+Pj4+PiAgICAKPj4+Pj4gKy8qKgo+Pj4+PiArICogcW9zX25vdGlm
aWVyX2NhbGwoKSAtIENvbW1vbiBoYW5kbGVyIGZvciBRb1MgY29uc3RyYWludHMuCj4+Pj4+ICsg
KiBAZGV2ZnJlcTogICAgdGhlIGRldmZyZXEgaW5zdGFuY2UuCj4+Pj4+ICsgKi8KPj4+Pj4gK3N0
YXRpYyBpbnQgcW9zX25vdGlmaWVyX2NhbGwoc3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4+Pj4+
ICt7Cj4+Pj4+ICsJaW50IGVycjsKPj4+Pj4gKwo+Pj4+PiArCW11dGV4X2xvY2soJmRldmZyZXEt
PmxvY2spOwo+Pj4+PiArCWVyciA9IHVwZGF0ZV9kZXZmcmVxKGRldmZyZXEpOwo+Pj4+PiArCW11
dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+Pj4+ICsJaWYgKGVycikKPj4+Pj4gKwkJZGV2
X2VycihkZXZmcmVxLT5kZXYucGFyZW50LAo+Pj4+PiArCQkJCSJmYWlsZWQgdG8gdXBkYXRlIGZy
ZXF1ZW5jeSBmb3IgUE0gUW9TIGNvbnN0cmFpbnRzICglZClcbiIsCj4+Pj4KPj4+PiBJcyBpdCBu
b3Qgb3ZlciA4MCBjaGFyPwo+Pj4KPj4+IFllcyBidXQgY29kaW5nIHN0eWxlIGV4cGxpY2l0bHkg
Zm9yYmlkcyBicmVha2luZyBzdHJpbmdzLgo+Pgo+PiBJIHdhbnQgdG8gbWFrZSBpdCB3aXRoaW4g
ODAgY2hhci4gSG93IGFib3V0IGZvbGxvd2luZyBjb21tZW50Pwo+Pgo+PiAJCWRldl9lcnIoZGV2
ZnJlcS0+ZGV2LnBhcmVudCwKPj4gCQkJImZhaWxlZCB0byB1cGRhdGUgZnJlcXVlbmN5IGZyb20g
UE0gUW9TICglZClcbiIsCj4gCj4gWWVzLCBzaHJpbmtpbmcgdGhlIGNvbW1lbnQgYW5kIGFsaWdu
aW5nIHdpdGggb3BlbiBwYXJlbnRoZXNpcyBjYW4ga2VlcCAKPiBpdCB1bmRlciA4MCBjaGFycy4g
TWF5YmUgaXQgY291bGQgYmUgc2hydW5rIGZ1cnRoZXIgdG8KPiAKPiAgICAgICJmYWlsZWQgdXBk
YXRlIGZvciBQTSBRb1MiCgpJIHRoaW5rIHRoYXQgd2UgbmVlZCB0byBzcGVjaWZ5IHdoYXQgZG8g
dXBkYXRlIHNvbWV0aGluZyBsaWtlICdmcmVxdWVuY3knLgpTbywgaXQgaXMgbW9yZSBwcm9wZXIg
YXMgZm9sbG93aW5nOgoKCSJmYWlsZWQgdG8gdXBkYXRlIGZyZXF1ZW5jeSBmcm9tIFBNIFFvU1xu
IiwKCj4gCj4+Pj4+ICsJCQkJZXJyKTsKPj4+Pj4gKwo+Pj4+PiArCXJldHVybiBOT1RJRllfT0s7
Cj4+Pj4+ICt9Cj4+Pj4+ICsKPj4+Pj4gKy8qKgo+Pj4+PiArICogcW9zX21pbl9ub3RpZmllcl9j
YWxsKCkgLSBDYWxsYmFjayBmb3IgUW9TIG1pbl9mcmVxIGNoYW5nZXMuCj4+Pj4+ICsgKiBAbmI6
CQlTaG91bGQgYmUgZGV2ZnJlcS0+bmJfbWluCj4+Pj4+ICsgKi8KPj4+Pj4gK3N0YXRpYyBpbnQg
cW9zX21pbl9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCj4+Pj4+ICsJ
CQkJCSB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAqcHRyKQo+Pj4+PiArewo+Pj4+PiArCXJldHVy
biBxb3Nfbm90aWZpZXJfY2FsbChjb250YWluZXJfb2YobmIsIHN0cnVjdCBkZXZmcmVxLCBuYl9t
aW4pKTsKPj4+Pj4gK30KPj4+Pj4gKwo+Pj4+PiArLyoqCj4+Pj4+ICsgKiBxb3NfbWF4X25vdGlm
aWVyX2NhbGwoKSAtIENhbGxiYWNrIGZvciBRb1MgbWF4X2ZyZXEgY2hhbmdlcy4KPj4+Pj4gKyAq
IEBuYjoJCVNob3VsZCBiZSBkZXZmcmVxLT5uYl9tYXgKPj4+Pj4gKyAqLwo+Pj4+PiArc3RhdGlj
IGludCBxb3NfbWF4X25vdGlmaWVyX2NhbGwoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKPj4+
Pj4gKwkJCQkJIHVuc2lnbmVkIGxvbmcgdmFsLCB2b2lkICpwdHIpCj4+Pj4+ICt7Cj4+Pj4+ICsJ
cmV0dXJuIHFvc19ub3RpZmllcl9jYWxsKGNvbnRhaW5lcl9vZihuYiwgc3RydWN0IGRldmZyZXEs
IG5iX21heCkpOwo+Pj4+PiArfQo+Pj4+PiArCj4+Pj4+ICAgIC8qKgo+Pj4+PiAgICAgKiBkZXZm
cmVxX2Rldl9yZWxlYXNlKCkgLSBDYWxsYmFjayBmb3Igc3RydWN0IGRldmljZSB0byByZWxlYXNl
IHRoZSBkZXZpY2UuCj4+Pj4+ICAgICAqIEBkZXY6CXRoZSBkZXZmcmVxIGRldmljZQo+Pj4+PiAg
ICAgKgo+Pj4+PiAgICAgKiBSZW1vdmUgZGV2ZnJlcSBmcm9tIHRoZSBsaXN0IGFuZCByZWxlYXNl
IGl0cyByZXNvdXJjZXMuCj4+Pj4+IEBAIC02MjAsMTAgKzY3MSwxNSBAQCBzdGF0aWMgdm9pZCBk
ZXZmcmVxX2Rldl9yZWxlYXNlKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+Pj4gICAgCj4+Pj4+ICAg
IAltdXRleF9sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+Pj4+ICAgIAlsaXN0X2RlbCgmZGV2
ZnJlcS0+bm9kZSk7Cj4+Pj4+ICAgIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsK
Pj4+Pj4gICAgCj4+Pj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVfbm90aWZpZXIoZGV2ZnJlcS0+ZGV2
LnBhcmVudCwgJmRldmZyZXEtPm5iX21heCwKPj4+Pj4gKwkJCURFVl9QTV9RT1NfTUFYX0ZSRVFV
RU5DWSk7Cj4+Pj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVfbm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBh
cmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4+Pj4gKwkJCURFVl9QTV9RT1NfTUlOX0ZSRVFVRU5D
WSk7Cj4+Pj4+ICsKPj4+Pgo+Pj4+IEp1c3QgcHJpbnQgZXJyb3Igd2l0aCBkZXZfZXJyKCkgd2l0
aG91dCBzdG9wcGluZyB0aGUgcmVsZWFzZSBzdGVwLgo+Pj4+Cj4+Pj4gSSBwcmVmZXIgdG8gaGFu
ZGxlIHRoZSByZXR1cm4gdmFsdWUgaWYga2VybmVsIEFQSSBwcm92aWRlcwo+Pj4+IHRoZSBlcnJv
ciBjb2RlLgo+Pj4+Cj4+Pj4+ICAgIAlpZiAoZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdCkKPj4+Pj4g
ICAgCQlkZXZmcmVxLT5wcm9maWxlLT5leGl0KGRldmZyZXEtPmRldi5wYXJlbnQpOwo+Pj4+PiAg
ICAKPj4+Pj4gICAgCWtmcmVlKGRldmZyZXEtPnRpbWVfaW5fc3RhdGUpOwo+Pj4+PiAgICAJa2Zy
ZWUoZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+Pj4+PiBAQCAtNzMzLDEwICs3ODksMjggQEAgc3Ry
dWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+Pj4+
ICAgIAlpZiAoZXJyKSB7Cj4+Pj4+ICAgIAkJcHV0X2RldmljZSgmZGV2ZnJlcS0+ZGV2KTsKPj4+
Pj4gICAgCQlnb3RvIGVycl9vdXQ7Cj4+Pj4+ICAgIAl9Cj4+Pj4+ICAgIAo+Pj4+PiArCS8qCj4+
Pj4+ICsJICogUmVnaXN0ZXIgbm90aWZpZXJzIGZvciB1cGRhdGVzIHRvIG1pbi9tYXhfZnJlcSBh
ZnRlciBkZXZpY2UgaXMKPj4+Pj4gKwkgKiBpbml0aWFsaXplZCAoYW5kIHdlIGNhbiBoYW5kbGUg
bm90aWZpY2F0aW9ucykgYnV0IGJlZm9yZSB0aGUKPj4+Pj4gKwkgKiBnb3Zlcm5vciBpcyBzdGFy
dGVkICh3aGljaCBzaG91bGQgZG8gYW4gaW5pdGlhbCBlbmZvcmNlbWVudCBvZgo+Pj4+PiArCSAq
IGNvbnN0cmFpbnRzKS4KPj4+Pj4gKwkgKi8KPj4+Pgo+Pj4+IE15IHByZXZpb3VzIGNvbW1lbnQg
aXMgbm90IGVub3VnaCB3aHkgSSBwcmVmZXIgdG8gcmVtb3ZlIGl0LiBTb3JyeS4KPj4+PiBBY3R1
YWxseSwgdW50aWwgbm93LCB0aGUgZGV2ZnJlcV9hZGRfZGV2aWNlKCkgZG9uJ3QgaGF2ZSB0aGUg
ZGV0YWlsZWQKPj4+PiBjb21tZW50cyBiZWNhdXNlIHRoZSBsaW5lIGNvZGUgaXMgbm90IHRvbyBs
b25nLiBCdXQsIGF0IHRoZSBwcmVzZW50IHRpbWUsCj4+Pj4gZGV2ZnJlcV9hZGRfZGV2aWNlKCkg
aXMgdG9vIGxvbmcuIEl0IG1lYW5zIHRoYXQgdGhlIGRldGFpbGVkIGNvbW1lbnQKPj4+PiBhcmUg
bmVjZXNzYXJ5Lgo+Pj4+Cj4+Pj4gU28sIEknbGwgYWRkIHRoZSBkZXRhaWxlZCBjb21tZW50IGZv
ciBlYWNoIHN0ZXAgb2YgZGV2ZnJlcV9hZGRfZGV2aWNlKCkKPj4+PiBvbiBzZXBhcmF0ZSBwYXRj
aCB0byBrZWVwIHRoZSBzYW1lIHN0eWxlLiBJJ2xsIHNlbmQgdGhlIHBhdGNoIHRvIHlvdQo+Pj4+
IGZvciB0aGUgcmV2aWV3Lgo+Pj4KPj4+IFRoaXMgaXMgdmVyeSBsaWtlbHkgdG8gcmVzdWx0IGlu
IG1lcmdlIGNvbmZsaWN0cywgbWF5YmUgd2FpdCBmb3IgbXkKPj4+IHNlcmllcyB0byBnbyBpbiBm
aXJzdD8KPj4+Cj4+Pj4+ICsJZGV2ZnJlcS0+bmJfbWluLm5vdGlmaWVyX2NhbGwgPSBxb3NfbWlu
X25vdGlmaWVyX2NhbGw7Cj4+Pj4+ICsJZXJyID0gZGV2X3BtX3Fvc19hZGRfbm90aWZpZXIoZGV2
ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4+Pj4gKwkJCQkgICAgICBERVZf
UE1fUU9TX01JTl9GUkVRVUVOQ1kpOwo+Pj4+PiArCWlmIChlcnIpCj4+Pj4+ICsJCWdvdG8gZXJy
X2RldmZyZXE7Cj4+Pj4+ICsKPj4+Pj4gKwlkZXZmcmVxLT5uYl9tYXgubm90aWZpZXJfY2FsbCA9
IHFvc19tYXhfbm90aWZpZXJfY2FsbDsKPj4+Pj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9ub3Rp
ZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWF4LAo+Pj4+PiArCQkJCSAg
ICAgIERFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWSk7Cj4+Pj4+ICsJaWYgKGVycikKPj4+Pj4gKwkJ
Z290byBlcnJfZGV2ZnJlcTsKPj4+Pj4gKwo+Pj4+PiAgICAJbXV0ZXhfbG9jaygmZGV2ZnJlcV9s
aXN0X2xvY2spOwo+Pj4+PiAgICAKPj4+Pj4gICAgCWdvdmVybm9yID0gdHJ5X3RoZW5fcmVxdWVz
dF9nb3Zlcm5vcihkZXZmcmVxLT5nb3Zlcm5vcl9uYW1lKTsKPj4+Pj4gICAgCWlmIChJU19FUlIo
Z292ZXJub3IpKSB7Cj4+Pj4+ICAgIAkJZGV2X2VycihkZXYsICIlczogVW5hYmxlIHRvIGZpbmQg
Z292ZXJub3IgZm9yIHRoZSBkZXZpY2VcbiIsCj4+Pj4+IEBAIC03NjAsMTAgKzgzNCwxMSBAQCBz
dHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4+
Pj4gICAgCj4+Pj4+ICAgIAlyZXR1cm4gZGV2ZnJlcTsKPj4+Pj4gICAgCj4+Pj4+ICAgIGVycl9p
bml0Ogo+Pj4+PiAgICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+Pj4+ICtl
cnJfZGV2ZnJlcToKPj4+Pj4gICAgCWRldmZyZXFfcmVtb3ZlX2RldmljZShkZXZmcmVxKTsKPj4+
Pj4gICAgCXJldHVybiBFUlJfUFRSKGVycik7Cj4+Pj4+ICAgIAo+Pj4+PiAgICBlcnJfZGV2Ogo+
Pj4+PiAgICAJLyoKPj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oIGIv
aW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4+Pj4gaW5kZXggYzNjYmMxNWZkZjA4Li5kYWMwZGZm
ZWFiYjQgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+Pj4+ICsr
KyBiL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+Pj4+IEBAIC0xMzQsMTAgKzEzNCwxMiBAQCBz
dHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSB7Cj4+Pj4+ICAgICAqIEB0b3RhbF90cmFuczoJTnVt
YmVyIG9mIGRldmZyZXEgdHJhbnNpdGlvbnMKPj4+Pj4gICAgICogQHRyYW5zX3RhYmxlOglTdGF0
aXN0aWNzIG9mIGRldmZyZXEgdHJhbnNpdGlvbnMKPj4+Pj4gICAgICogQHRpbWVfaW5fc3RhdGU6
CVN0YXRpc3RpY3Mgb2YgZGV2ZnJlcSBzdGF0ZXMKPj4+Pj4gICAgICogQGxhc3Rfc3RhdF91cGRh
dGVkOglUaGUgbGFzdCB0aW1lIHN0YXQgdXBkYXRlZAo+Pj4+PiAgICAgKiBAdHJhbnNpdGlvbl9u
b3RpZmllcl9saXN0OiBsaXN0IGhlYWQgb2YgREVWRlJFUV9UUkFOU0lUSU9OX05PVElGSUVSIG5v
dGlmaWVyCj4+Pj4+ICsgKiBAbmJfbWluOgkJTm90aWZpZXIgYmxvY2sgZm9yIERFVl9QTV9RT1Nf
TUlOX0ZSRVFVRU5DWQo+Pj4+PiArICogQG5iX21heDoJCU5vdGlmaWVyIGJsb2NrIGZvciBERVZf
UE1fUU9TX01BWF9GUkVRVUVOQ1kKPj4+Pj4gICAgICoKPj4+Pj4gICAgICogVGhpcyBzdHJ1Y3R1
cmUgc3RvcmVzIHRoZSBkZXZmcmVxIGluZm9ybWF0aW9uIGZvciBhIGdpdmUgZGV2aWNlLgo+Pj4+
PiAgICAgKgo+Pj4+PiAgICAgKiBOb3RlIHRoYXQgd2hlbiBhIGdvdmVybm9yIGFjY2Vzc2VzIGVu
dHJpZXMgaW4gc3RydWN0IGRldmZyZXEgaW4gaXRzCj4+Pj4+ICAgICAqIGZ1bmN0aW9ucyBleGNl
cHQgZm9yIHRoZSBjb250ZXh0IG9mIGNhbGxiYWNrcyBkZWZpbmVkIGluIHN0cnVjdAo+Pj4+PiBA
QCAtMTc2LDEwICsxNzgsMTMgQEAgc3RydWN0IGRldmZyZXEgewo+Pj4+PiAgICAJdW5zaWduZWQg
aW50ICp0cmFuc190YWJsZTsKPj4+Pj4gICAgCXVuc2lnbmVkIGxvbmcgKnRpbWVfaW5fc3RhdGU7
Cj4+Pj4+ICAgIAl1bnNpZ25lZCBsb25nIGxhc3Rfc3RhdF91cGRhdGVkOwo+Pj4+PiAgICAKPj4+
Pj4gICAgCXN0cnVjdCBzcmN1X25vdGlmaWVyX2hlYWQgdHJhbnNpdGlvbl9ub3RpZmllcl9saXN0
Owo+Pj4+PiArCj4+Pj4+ICsJc3RydWN0IG5vdGlmaWVyX2Jsb2NrIG5iX21pbjsKPj4+Pj4gKwlz
dHJ1Y3Qgbm90aWZpZXJfYmxvY2sgbmJfbWF4Owo+Pj4+PiAgICB9Owo+Pj4+PiAgICAKPj4+Pj4g
ICAgc3RydWN0IGRldmZyZXFfZnJlcXMgewo+Pj4+PiAgICAJdW5zaWduZWQgbG9uZyBvbGQ7Cj4+
Pj4+ICAgIAl1bnNpZ25lZCBsb25nIG5ldzsKPj4+Pj4KPj4+Pgo+Pj4+Cj4+Pgo+Pgo+Pgo+IAoK
Ci0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
