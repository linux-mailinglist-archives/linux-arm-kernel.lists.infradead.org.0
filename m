Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21207EA931
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 03:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzHcuHJeh19/0rt9aZ/JUAlF2sGdZ70gI9f4hEn7wNk=; b=C6oXH/LTisqU5h
	mzGDW4aFOn09ZaL2wovF2VYlKgc/2mKmpSnxcLCNZdUVX1lwj32QuCBnsko8X20d/d03GKonOy3sD
	comrOqzzQIbLNA/w/EdBh39hksdx2nCd+5+5pPeC2yD3xaxgildVcCTdY6D0BQ5NqMl+oDZaE95z6
	aB3aNusXGymhvdLW3V+nowxJUPVORMsf1SSI1iTIePIa8D8hdO/jHNRnnQjRj4n4fwEQyrpI1QxB7
	STEpmzBxx1RQVEm39L+X+uBfEIFeQ+vP8fsrr+hwfrqiJf+GokbBPKyLYBzSuTt1y4GIpdn5u2jfN
	WA+BRJMzqebccH8jHhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ00x-0000qR-FK; Thu, 31 Oct 2019 02:16:43 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ00l-0000pb-U7
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 02:16:33 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191031021626epoutp02bf4c174c7640bead1a96893a4d8be33a~Smay23tXg0882008820epoutp02W
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 02:16:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191031021626epoutp02bf4c174c7640bead1a96893a4d8be33a~Smay23tXg0882008820epoutp02W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572488187;
 bh=0gRbLXMZAt8FFWMG14xAWn8mAiyTn1jsY/Zr+NtuseM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=SLfwxIrAzlZXsitHy24KSfWP/srf3/dU3kiUF24cJbvvSDCT4ODF9kLozE8YR+gHR
 j0gVIKux8QYWofuPL6d4PIZr8wtAzuy0/lQ2CzrEynBLbd7MpImGNWupHCEgZXwePI
 C/ydXe0ti8Z+kGFG09sbEvLfvP5GNi7A8+Wy97bk=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191031021626epcas1p45f68e04392fae54eac85ab23787559ec~SmayMC8Wm1510915109epcas1p4I;
 Thu, 31 Oct 2019 02:16:26 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 473TTM3bBFzMqYkf; Thu, 31 Oct
 2019 02:16:23 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 BE.7C.04068.7F34ABD5; Thu, 31 Oct 2019 11:16:23 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191031021622epcas1p32a10d0435e0a6c4dd42ef1e5fec50da1~SmavDm8NL1928919289epcas1p3R;
 Thu, 31 Oct 2019 02:16:22 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191031021622epsmtrp21d748d3f271fc3f64fe1f22edc90a7e2~SmavCrCf52146121461epsmtrp2W;
 Thu, 31 Oct 2019 02:16:22 +0000 (GMT)
X-AuditID: b6c32a39-f5fff70000000fe4-aa-5dba43f74692
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D7.AA.25663.6F34ABD5; Thu, 31 Oct 2019 11:16:22 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191031021622epsmtip1bad6ebd4622149580a9eb0178904ba9a~Smaupuiwr2460524605epsmtip11;
 Thu, 31 Oct 2019 02:16:22 +0000 (GMT)
Subject: Re: [PATCH v9 3/8] PM / devfreq: Set scaling_max_freq to max on OPP
 notifier error
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <802a29ac-d98e-db0b-0e6f-95d02a53d3b5@samsung.com>
Date: Thu, 31 Oct 2019 11:21:54 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bee69d4635f83d8812fedbc108beb6c51ac9d4e7.1570044052.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmru53512xBlfnSFgcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU
 8hJzU22VXHwCdN0yc4AeUVIoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfm
 Fpfmpesl5+daGRoYGJkCFSZkZ3yYcp+54CdXxdpH91gaGBs4uxg5OSQETCTW9X5i7mLk4hAS
 2MEose7PFXYI5xOjxKy+LSwQzjdGiU/rXrLDtEyYMosJIrGXUWLFzF9QzntGifV/JzGBVAkL
 xEos/X6YBcQWEaiTuLX4BNgSZoGJLBL/f3WBJdgEtCT2v7jBBmLzCyhKXP3xmBHE5hWwk3h1
 7T+YzSKgKrH1XzNrFyMHh6hAhMTpr4kQJYISJ2c+ARvDKRAnseHwTDCbWUBc4taT+UwQtrxE
 89bZYHslBC6xS3xfepsF4gUXiRXbulkhbGGJV8e3QL0mJfH53V42CLtaYuXJI2wQzR2MElv2
 X4BqMJbYv3QyE8hBzAKaEut36UOEFSV2/p7LCLGYT+Ld1x6wmyUEeCU62oQgSpQlLj+4ywRh
 S0osbu9km8CoNAvJO7OQvDALyQuzEJYtYGRZxSiWWlCcm55abFhgihzdmxjBqVzLcgfjsXM+
 hxgFOBiVeHgnlO2MFWJNLCuuzD3EKMHBrCTC+80GKMSbklhZlVqUH19UmpNafIjRFBjYE5ml
 RJPzgXkmryTe0NTI2NjYwsTQzNTQUEmc13H50lghgfTEktTs1NSC1CKYPiYOTqkGxvwbm+ZU
 Z+h8qYnNaXiQ5j47+Xt50+28G2GS4u82dgft177st6BZd8O6gjzLpmPOZYmT590/lCGzclGy
 QxzHg6YJHOkGgdn6xq5zJqj90H8rvXi51xev28XnO+XSz0z6s297Y/bLbQceXF773NWv1H99
 ssCOzTsU1U38G3wvN63TX7OqvHRXiRJLcUaioRZzUXEiADtBGzv7AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsWy7bCSnO43512xBr+e6VkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orhsUlJzMstSi/TtErgyPky5z1zwk6ti7aN7LA2MDZxdjJwc
 EgImEhOmzGLqYuTiEBLYzShx9M95doiEpMS0i0eZuxg5gGxhicOHiyFq3jJKvO16ygpSIywQ
 K7H0+2EWEFtEoE7iz/N9YIOYBSazSBw8uo8RouMRo8TL523MIFVsAloS+1/cYAOx+QUUJa7+
 eMwIYvMK2Em8uvYfzGYRUJXY+q8ZbIOoQITE8+03oGoEJU7OfAK2jVMgTmLD4ZlgNrOAusSf
 eZeYIWxxiVtP5jNB2PISzVtnM09gFJ6FpH0WkpZZSFpmIWlZwMiyilEytaA4Nz232LDAKC+1
 XK84Mbe4NC9dLzk/dxMjOKq1tHYwnjgRf4hRgINRiYd3QtnOWCHWxLLiytxDjBIczEoivN9s
 gEK8KYmVValF+fFFpTmpxYcYpTlYlMR55fOPRQoJpCeWpGanphakFsFkmTg4pRoYpy3wPLQk
 IHn97BSmu5YSd4+/i/CaY36lxvTMFsHjn7/4+LoYan5q6A935dtxhK+yVua6oOXzqRVPC0PF
 Ts3UsPovku9pl+Nhrz/jZJakae7XS6wBTzRV6nL3dGl3Pz2nvn7us019r9c3fTuvZBC91y3o
 3xfldxrfbJ95xSYXbJlcdP4be5SFEktxRqKhFnNRcSIA2OCu4eYCAAA=
X-CMS-MailID: 20191031021622epcas1p32a10d0435e0a6c4dd42ef1e5fec50da1
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191002192526epcas4p200615dced577dea9d99885b3b8b1bf36
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192526epcas4p200615dced577dea9d99885b3b8b1bf36@epcas4p2.samsung.com>
 <bee69d4635f83d8812fedbc108beb6c51ac9d4e7.1570044052.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_191632_307126_DD2515F1 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDEwLiAzLiDsmKTsoIQgNDoyNSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IFRoZSBk
ZXZmcmVxX25vdGlmaWVyX2NhbGwgZnVuY3Rpb25zIHdpbGwgdXBkYXRlIHNjYWxpbmdfbWluX2Zy
ZXEgYW5kCj4gc2NhbGluZ19tYXhfZnJlcSB3aGVuIHRoZSBPUFAgdGFibGUgaXMgdXBkYXRlZC4K
PiAKPiBJZiBmZXRjaGluZyB0aGUgbWF4aW11bSBmcmVxdWVuY3kgZmFpbHMgdGhlbiBzY2FsaW5n
X21heF9mcmVxIHJlbWFpbnMKPiBzZXQgdG8gemVybyB3aGljaCBpcyBjb25mdXNpbmcuIFNldCB0
byBVTE9OR19NQVggaW5zdGVhZCBzbyB3ZSBkb24ndAo+IG5lZWQgc3BlY2lhbCBoYW5kbGluZyBm
b3IgdGhpcyBjYXNlIGluIG90aGVyIHBsYWNlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJk
IENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RldmZy
ZXEvZGV2ZnJlcS5jIHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEu
YyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiBpbmRleCAzMmJiZjZlODAzODAuLjNlMGU5
MzYxODVhMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gKysrIGIv
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+IEBAIC01NTcsMTIgKzU1NywxNCBAQCBzdGF0aWMg
aW50IGRldmZyZXFfbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNp
Z25lZCBsb25nIHR5cGUsCj4gIAlkZXZmcmVxLT5zY2FsaW5nX21pbl9mcmVxID0gZmluZF9hdmFp
bGFibGVfbWluX2ZyZXEoZGV2ZnJlcSk7Cj4gIAlpZiAoIWRldmZyZXEtPnNjYWxpbmdfbWluX2Zy
ZXEpCj4gIAkJZ290byBvdXQ7Cj4gIAo+ICAJZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSA9IGZp
bmRfYXZhaWxhYmxlX21heF9mcmVxKGRldmZyZXEpOwo+IC0JaWYgKCFkZXZmcmVxLT5zY2FsaW5n
X21heF9mcmVxKQo+ICsJaWYgKCFkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxKSB7Cj4gKwkJZGV2
ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSA9IFVMT05HX01BWDsKPiAgCQlnb3RvIG91dDsKPiArCX0K
PiAgCj4gIAllcnIgPSB1cGRhdGVfZGV2ZnJlcShkZXZmcmVxKTsKPiAgCj4gIG91dDoKPiAgCW11
dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4gCgpTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHku
CgpSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+CgotLSAK
QmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
