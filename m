Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF23BC0A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBUCn2CEJTTHGvqubMiVkkSz6IKo0/2iVAlT5/pd2vs=; b=MGUTgjxN8Ru48U
	zkkUXbYYFDxGl1a1EoFXx29fdRzhzFiTdxiGimcCsua6VWWJmprG5+uq6NZjryJZAsJVG1x6mzYpD
	Sp65ag2OOGrioRYuwY1CCUvgNaIw6rhcKt+iXyKkvJ5YodV/ujF2APmuuwJkfRZkSTLBBXsGP8PXq
	Fy2arT/cGvIH09epakcU/RUtQI5PXKZ0ligiovRIZRCFxzCMerx0vvRfPC9IVsc3HoGJyZBz3tK8u
	JxAfF4vMCq/QPYfp7x2DzZitGfvP3ihMqY8Pn3ANBhvv57K10Kr7/fi3xmDqXIWB8/k6shzKO2W2J
	yd4OOa5NrCMFkxF99uXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbD3-0002vy-8b; Tue, 24 Sep 2019 03:09:49 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbCv-0002vS-KN
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:09:43 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190924030934epoutp036c5c4e0d31f67aec01dd99eac5454989~HQRm-h1fp1602616026epoutp034
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 03:09:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190924030934epoutp036c5c4e0d31f67aec01dd99eac5454989~HQRm-h1fp1602616026epoutp034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569294574;
 bh=mJXjiFUB/srxNukytd2vImwQP8kSBRRW/h908Xv64us=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lSO3LRVgkccCIWCqBqMON73c95ORuwtRjfXEpgYj9xZWiOGQ3q7vAUNNOeo5A74w7
 WYJ7CcySnMQuevju0t7qcuZccroTj2h0LHhToz+xKzDzkag4ek0njKAtPmqluPfW+O
 RPnqU7m1UfGZQCrwCVq8Ea/NAJHe9ljhDFEWd21o=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190924030933epcas1p49702e4acf7d058d718a3fabaa27be501~HQRmSw1h80069600696epcas1p4c;
 Tue, 24 Sep 2019 03:09:33 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46cmPl0XShzMqYkX; Tue, 24 Sep
 2019 03:09:31 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 72.E7.04068.AE8898D5; Tue, 24 Sep 2019 12:09:31 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190924030930epcas1p40a8ec5b455fda0bdfea49bce09003e45~HQRjT-ywD2442824428epcas1p4B;
 Tue, 24 Sep 2019 03:09:30 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190924030930epsmtrp2556ddba13d2cbbd01e1201e946b93632~HQRjTGniq1481314813epsmtrp2J;
 Tue, 24 Sep 2019 03:09:30 +0000 (GMT)
X-AuditID: b6c32a39-f47ff70000000fe4-f1-5d8988ea17a7
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EB.43.03889.9E8898D5; Tue, 24 Sep 2019 12:09:29 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190924030929epsmtip24e03530731068a4464e1fb3d03f7f56e~HQRjGFgDx0266802668epsmtip2-;
 Tue, 24 Sep 2019 03:09:29 +0000 (GMT)
Subject: Re: [PATCH v7 3/6] PM / devfreq: Don't take lock in devfreq_add_device
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <03c0f372-930c-bb4e-6bc4-27366e20bc52@samsung.com>
Date: Tue, 24 Sep 2019 12:13:54 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a88e8c73679fa01264732fe163704a0e748b5235.1569272883.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Te0xbZRz16320HdZdOnC/NUbhOv+gCayX0vlhBjFK3E3EBTUmatLhDb0p
 hL7S2y5jmlCn1NIMVzSKK2M2YVsYLNlaOtMhhKwwdDODbUqD7OEGU4ePEtugZj5iy2WR/875
 fed8J+d7qAhthtapWhwe0e0QbCy9gfxsoqyi/OdAp9mwfFuBk1NnlHjlq4sIH796HuGesRiN
 Z2ZOK/Gl/b8o8bzvETxw4zcKxxZTFA7eO0HgbNckwqmBbgpnTy8ifO3tARoPTZ+jcTD5D42j
 K/zThfzyXIeS7/VdIflIzMvHBjtp/npqlOaHj7bz0XRCwZ9Ljyr4exPF/PvxQcRnY482FLze
 uqNZFCyiu0R0NDktLQ5rDfv8y43PNpq2G7hyrho/yZY4BLtYw9bVN5Q/12LLNWJL9gg2b27U
 IEgSu612h9vp9YglzU7JU8OKLovNVe2qkAS75HVYK5qc9qc4g6HSlBO+0dqc8h1Wujp0e6Pz
 V5APLRUFkVoFTBV82z1KB9EGlZZJIBjbn1gjGQT+2Qglk98RfB6PoPuWuZUvkbwwhmD6m+tr
 ZBnBoXSIDCKVahPzIgRG6vLzImYIwbvHZBHBdJGQ+C5A5reiGT2M352j83gjUwqzfy6uRmiY
 Wri57F/VkMwTMB4fVuRxMfMqZG5NULKmEC4curOqUTO7Yenjg8o8JpjNMH/nU4WMH4N3zvQS
 +WBgFpTQH/qRkjvUwR/DUwoZb4KfvogrZayDbHqMlvGbcOLCJC2bAwji45fXzEYYP/ahIl+T
 YMrg1Mg2eVwKZ//qQ3LwQ5BeOUDlJcBoIODXypLH4etbN9Zit0D/e510CLHhdXXC6yqE11UI
 /x8WQeQgelh0SXarKHEu0/r7jqHV966vTqCp6fokYlSIfVDjSgTMWkrYI7XZkwhUBFukien9
 Zq3GIrTtE93ORrfXJkpJZMqddjehK25y5n6Pw9PImSqNRiOu4rabOI7drOGtPrOWsQoesVUU
 XaL7vk+hUut8iIrvu/RMF3HkeObfcCZ0+5ONs6cuniS3GrU7nTfrU1toyysZfXu0l+qonTq8
 Wx3exfW8NNnT7o/2F1y2B6TKpRcO+NXnC/Y6UgtbUf1sn/0at6vU0DfSOnHX5Ow/+Npb36c/
 Cj2wdPXXv6uyc2VDP5iPniyPcDM9nQvDhUfazn6wkyWlZoHTE25J+A8DvL/uBQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsWy7bCSvO7Ljs5YgwXTbCwOHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi2oqJrBaf
 NzxmtLjduILNYvW5g2wWXYf+slls/OrhIOjx/kYru8fshossHgs2lXpsWtXJ5nHn2h42j81L
 6j02vtvB5HHw3R4mj1+HRT36tqxi9Pi8SS6AO4rLJiU1J7MstUjfLoEr41rDHPaCVqmKjbcu
 MjYwvhTpYuTkkBAwkbjx9QQjiC0ksJtRYtFie4i4pMS0i0eZuxg5gGxhicOHi7sYuYBK3jJK
 TO26ywoSFxYIlOjY5QJSLiKwllFiznkHkBpmgV4WiaaDK9ghGh4xSnStvwy2gE1AS2L/ixts
 IDa/gKLE1R+PweK8AnYS9963sYDYLAKqEvu3bGYCsUUFIiQO75gFVSMocXLmE7AaToE4iZfT
 +tlBbGYBdYk/8y4xQ9jiEreezGeCsOUlmrfOZp7AKDwLSfssJC2zkLTMQtKygJFlFaNkakFx
 bnpusWGBUV5quV5xYm5xaV66XnJ+7iZGcIxrae1gPHEi/hCjAAejEg+vxLaOWCHWxLLiytxD
 jBIczEoivJu02mKFeFMSK6tSi/Lji0pzUosPMUpzsCiJ88rnH4sUEkhPLEnNTk0tSC2CyTJx
 cEo1MC7MOvmkWGEF0wSXf4w73rBb7dvNvK0z5k5SYNPk6nm+SzSDM5aGeotWMkT8VPPUufVD
 5+M7VjFLvjiDsxUbGQ/8WrHjouvMdXXSwuVH4pgfvZ5U+0pzQWacxw+lv5lLGI9WX/ps5rg/
 4tKcKxcfmM6qnxLbHucUdCG3je1Z9t+MrBVb5pjP36rEUpyRaKjFXFScCACeGl1E7QIAAA==
X-CMS-MailID: 20190924030930epcas1p40a8ec5b455fda0bdfea49bce09003e45
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923211044epcas5p38cc23699dc8bbb3effee58229d4a19ec
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211044epcas5p38cc23699dc8bbb3effee58229d4a19ec@epcas5p3.samsung.com>
 <a88e8c73679fa01264732fe163704a0e748b5235.1569272883.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_200941_996777_13411ADD 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Martin Kepplinger <martink@posteo.de>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjQuIOyYpOyghCA2OjEwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
QSBkZXZpY2UgdXN1YWxseSBkb2Vzbid0IG5lZWQgdG8gbG9jayBpdHNlbGYgZHVyaW5nIGluaXRp
YWxpemF0aW9uCj4gYmVjYXVzZSBpdCBpcyBub3QgeWV0IHJlYWNoYWJsZSBmcm9tIG90aGVyIHRo
cmVhZHMuCj4gCj4gVGhpcyBzaW1wbGlmaWVzIHRoZSBjb2RlIGFuZCBoZWxwcyBhdm9pZCByZWN1
cnNpdmUgbG9jayB3YXJuaW5ncy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0ZXog
PGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNr
ZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyB8
IDEwIC0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2Rl
dmZyZXEuYwo+IGluZGV4IDhiYmNkNGVmYTA5Zi4uMWNlYzgxNmQzZDAwIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJl
cS5jCj4gQEAgLTYzNCwxMSArNjM0LDEwIEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9k
ZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+ICAJCWVyciA9IC1FTk9NRU07Cj4gIAkJZ290byBl
cnJfb3V0Owo+ICAJfQo+ICAKPiAgCW11dGV4X2luaXQoJmRldmZyZXEtPmxvY2spOwo+IC0JbXV0
ZXhfbG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4gIAlkZXZmcmVxLT5kZXYucGFyZW50ID0gZGV2Owo+
ICAJZGV2ZnJlcS0+ZGV2LmNsYXNzID0gZGV2ZnJlcV9jbGFzczsKPiAgCWRldmZyZXEtPmRldi5y
ZWxlYXNlID0gZGV2ZnJlcV9kZXZfcmVsZWFzZTsKPiAgCUlOSVRfTElTVF9IRUFEKCZkZXZmcmVx
LT5ub2RlKTsKPiAgCWRldmZyZXEtPnByb2ZpbGUgPSBwcm9maWxlOwo+IEBAIC02NDcsMjggKzY0
NiwyNCBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2Ug
KmRldiwKPiAgCWRldmZyZXEtPmxhc3Rfc3RhdHVzLmN1cnJlbnRfZnJlcXVlbmN5ID0gcHJvZmls
ZS0+aW5pdGlhbF9mcmVxOwo+ICAJZGV2ZnJlcS0+ZGF0YSA9IGRhdGE7Cj4gIAlkZXZmcmVxLT5u
Yi5ub3RpZmllcl9jYWxsID0gZGV2ZnJlcV9ub3RpZmllcl9jYWxsOwo+ICAKPiAgCWlmICghZGV2
ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlICYmICFkZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxl
KSB7Cj4gLQkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAgCQllcnIgPSBzZXRfZnJl
cV90YWJsZShkZXZmcmVxKTsKPiAgCQlpZiAoZXJyIDwgMCkKPiAgCQkJZ290byBlcnJfZGV2Owo+
IC0JCW11dGV4X2xvY2soJmRldmZyZXEtPmxvY2spOwo+ICAJfQo+ICAKPiAgCWRldmZyZXEtPnNj
YWxpbmdfbWluX2ZyZXEgPSBmaW5kX2F2YWlsYWJsZV9taW5fZnJlcShkZXZmcmVxKTsKPiAgCWlm
ICghZGV2ZnJlcS0+c2NhbGluZ19taW5fZnJlcSkgewo+IC0JCW11dGV4X3VubG9jaygmZGV2ZnJl
cS0+bG9jayk7Cj4gIAkJZXJyID0gLUVJTlZBTDsKPiAgCQlnb3RvIGVycl9kZXY7Cj4gIAl9Cj4g
IAlkZXZmcmVxLT5taW5fZnJlcSA9IGRldmZyZXEtPnNjYWxpbmdfbWluX2ZyZXE7Cj4gIAo+ICAJ
ZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSA9IGZpbmRfYXZhaWxhYmxlX21heF9mcmVxKGRldmZy
ZXEpOwo+ICAJaWYgKCFkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxKSB7Cj4gLQkJbXV0ZXhfdW5s
b2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAgCQllcnIgPSAtRUlOVkFMOwo+ICAJCWdvdG8gZXJyX2Rl
djsKPiAgCX0KPiAgCWRldmZyZXEtPm1heF9mcmVxID0gZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJl
cTsKPiAgCj4gQEAgLTY3OSwyMCArNjc0LDE4IEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2Fk
ZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+ICAJCQlhcnJheTNfc2l6ZShzaXplb2YodW5z
aWduZWQgaW50KSwKPiAgCQkJCSAgICBkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUsCj4gIAkJ
CQkgICAgZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlKSwKPiAgCQkJR0ZQX0tFUk5FTCk7Cj4g
IAlpZiAoIWRldmZyZXEtPnRyYW5zX3RhYmxlKSB7Cj4gLQkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVx
LT5sb2NrKTsKPiAgCQllcnIgPSAtRU5PTUVNOwo+ICAJCWdvdG8gZXJyX2RldjsKPiAgCX0KPiAg
Cj4gIAlkZXZmcmVxLT50aW1lX2luX3N0YXRlID0ga2NhbGxvYyhkZXZmcmVxLT5wcm9maWxlLT5t
YXhfc3RhdGUsCj4gIAkJCQkJIHNpemVvZih1bnNpZ25lZCBsb25nKSwKPiAgCQkJCQkgR0ZQX0tF
Uk5FTCk7Cj4gIAlpZiAoIWRldmZyZXEtPnRpbWVfaW5fc3RhdGUpIHsKPiAtCQltdXRleF91bmxv
Y2soJmRldmZyZXEtPmxvY2spOwo+ICAJCWVyciA9IC1FTk9NRU07Cj4gIAkJZ290byBlcnJfZGV2
Owo+ICAJfQo+ICAKPiAgCWRldmZyZXEtPmxhc3Rfc3RhdF91cGRhdGVkID0gamlmZmllczsKPiBA
QCAtNzAxLDE3ICs2OTQsMTQgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShz
dHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAo+ICAJZGV2X3NldF9uYW1lKCZkZXZmcmVxLT5kZXYsICJk
ZXZmcmVxJWQiLAo+ICAJCQkJYXRvbWljX2luY19yZXR1cm4oJmRldmZyZXFfbm8pKTsKPiAgCWVy
ciA9IGRldmljZV9yZWdpc3RlcigmZGV2ZnJlcS0+ZGV2KTsKPiAgCWlmIChlcnIpIHsKPiAtCQlt
dXRleF91bmxvY2soJmRldmZyZXEtPmxvY2spOwo+ICAJCXB1dF9kZXZpY2UoJmRldmZyZXEtPmRl
dik7Cj4gIAkJZ290byBlcnJfb3V0Owo+ICAJfQo+ICAKPiAtCW11dGV4X3VubG9jaygmZGV2ZnJl
cS0+bG9jayk7Cj4gLQo+ICAJbXV0ZXhfbG9jaygmZGV2ZnJlcV9saXN0X2xvY2spOwo+ICAKPiAg
CWdvdmVybm9yID0gdHJ5X3RoZW5fcmVxdWVzdF9nb3Zlcm5vcihkZXZmcmVxLT5nb3Zlcm5vcl9u
YW1lKTsKPiAgCWlmIChJU19FUlIoZ292ZXJub3IpKSB7Cj4gIAkJZGV2X2VycihkZXYsICIlczog
VW5hYmxlIHRvIGZpbmQgZ292ZXJub3IgZm9yIHRoZSBkZXZpY2VcbiIsCj4gCgpSZXZpZXdlZC1i
eTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+CgotLSAKQmVzdCBSZWdhcmRz
LApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
