Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E512C6A604
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5zcJKqjmLPTE0h60Z0h9T7OlVMjVFMvmRnHDemH60g=; b=Y63tAGeX5OlN7s
	yG5VDe4jSiRMeLElQ9mn1icQF/nK/jWPX2wzVCTNvRIldY+lGiMJR/2IljhjoEDu4ceyakXMsnWXJ
	fsZt1Mn+/lYDmYIRE0uLNAeT6AmGpTNKKKpR+e2/dCwUQe5pGcrVCkdPrbMxI1Lp3DV93qjGR+5dO
	iniJVI1XDc104uYTpNysIihS0MNJOf+ZXkWxpcybdJ+ynTvlLB4DTazH75tBmeIeMSlY0NO31dMzK
	a/pTkFKm4GcJ7M80OjvzDJZzgc+gPEX9KvXUOYTZjcemthpxAPp15TILJM1ehv5UWJqd4pVr9xoUs
	ACcwNwGPxiSKByiiDMpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKE9-0003aR-EM; Tue, 16 Jul 2019 09:58:29 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKDw-0003ZV-EL
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:58:18 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190716095810epoutp04287359a58361d69f2cd3c495d5f238be~x2sZQ2Sh60637306373epoutp04N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:58:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190716095810epoutp04287359a58361d69f2cd3c495d5f238be~x2sZQ2Sh60637306373epoutp04N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563271091;
 bh=8m7yojX5VERnehuP4IDCcAS+gpljyXXgYtBRJsLnIn4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=QeHZ0RorpZs9FWRbh0uLjGMBwI4qf2R3KXRXbY9vmxM2Q6iCdWhC7dkT6OFIK5/De
 +C+VUO7xBk8WLWMxdkBM9C6WIxtf2LspvccjsMkTsp0dEvxqptwGQvzoBKaWxwnAXp
 wSrggjymoBRc3qyxmIHDNX8WC0MQLHqIBj6y2a8Q=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190716095810epcas1p29f5c6e495f69535a9e87b54ccf181655~x2sYhhVuz1876318763epcas1p2E;
 Tue, 16 Jul 2019 09:58:10 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.154]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 45nwnX0GP1zMqYkd; Tue, 16 Jul
 2019 09:58:08 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 0F.60.04066.FAF9D2D5; Tue, 16 Jul 2019 18:58:07 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190716095807epcas1p36f57bd2bd104c0c05c53db052ce8b210~x2sWKvmlN3194731947epcas1p30;
 Tue, 16 Jul 2019 09:58:07 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190716095807epsmtrp18101c7cdaf68d6f1cd11d6ebf43d71f2~x2sWJSu9X1917719177epsmtrp1L;
 Tue, 16 Jul 2019 09:58:07 +0000 (GMT)
X-AuditID: b6c32a37-e3fff70000000fe2-c9-5d2d9faff48f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 89.37.03638.FAF9D2D5; Tue, 16 Jul 2019 18:58:07 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190716095807epsmtip126140c206ac4fd539b9fc01f07544665~x2sV32aHp2724927249epsmtip1Q;
 Tue, 16 Jul 2019 09:58:07 +0000 (GMT)
Subject: Re: [PATCH v1 10/50] clk: samsung: change ACLK100_NOC clocks
 definitions Exynos5x
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <63cb24f8-5666-3fb4-0c98-ecc54cd4266f@samsung.com>
Date: Tue, 16 Jul 2019 19:01:13 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-11-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCJsWRmVeSWpSXmKPExsWy7bCmge76+bqxBhuOWVvcWneO1WLjjPWs
 FvOPAFn9j18zW5w/v4Hd4mzTG3aLWw0yFpseX2O1+Nhzj9Xi8q45bBYzzu9jslh75C67xdLr
 F5ksLp5ytbjduILNonXvEXaLw2/aWS3+XdvI4iDksWbeGkaP9zda2T02repk89i8pN7j4Ls9
 TB59W1YxenzeJBfAHpVtk5GamJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr
 5OIToOuWmQP0hJJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1ICWnwLJArzgxt7g0L10v
 OT/XytDAwMgUqDAhO2PqxjOMBWflKrYs3sjSwHhAsouRk0NCwERi95tGxi5GLg4hgR2MEl+n
 HWWGcD4xSvzvX8oC4XxjlNhz+SQ7TMvdeVugWvYySvRt/A3V8p5R4tnqNcwgVcICMRKnJnQz
 gtgiAucYJTqeSoPYzALTmCRmzRMFsdkEtCT2v7jBBmLzCyhKXP3xGKyeV8BO4s+tXWBzWARU
 JY7OagKLiwpESJw6Mo8FokZQ4uTMJ2A2p4CDxKdZXYwQ88Ulbj2ZzwRhy0s0b50NdpyEwCl2
 iUdfm5ggXnCR2D3vCNQ7whKvjm+BsqUkXva3QdnVEitPHmGDaO5glNiy/wIrRMJYYv/SyUCD
 OIA2aEqs36UPEVaU2Pl7LtQRfBLvvvawgpRICPBKdLQJQZQoS1x+cBfqBEmJxe2dbBMYlWYh
 eWcWkhdmIXlhFsKyBYwsqxjFUguKc9NTiw0LjJGjexMjOIVrme9g3HDO5xCjAAejEg/viT06
 sUKsiWXFlbmHGCU4mJVEeG2/ascK8aYkVlalFuXHF5XmpBYfYjQFhvZEZinR5HxgfskriTc0
 NTI2NrYwMTQzNTRUEued90czVkggPbEkNTs1tSC1CKaPiYNTqoGxSFndZJ47e+HzQ8XLr60y
 vuW96EjWwX1MEwuDyqaxNFycV5BypTJy813XKSL1fa9drFjamnxCiv1vvhYr+MPpvXS7yeUW
 Vq3OpIYVEadsLVf6y+f1+tSs6PJj4TCU265v4s0YWsAVNSHs21XhB8z7A/62GU6Zx7XxTDTD
 gVMbsnwXnjwnwKvEUpyRaKjFXFScCABuWLF89wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsWy7bCSnO76+bqxBgcWKFjcWneO1WLjjPWs
 FvOPAFn9j18zW5w/v4Hd4mzTG3aLWw0yFpseX2O1+Nhzj9Xi8q45bBYzzu9jslh75C67xdLr
 F5ksLp5ytbjduILNonXvEXaLw2/aWS3+XdvI4iDksWbeGkaP9zda2T02repk89i8pN7j4Ls9
 TB59W1YxenzeJBfAHsVlk5Kak1mWWqRvl8CVMXXjGcaCs3IVWxZvZGlgPCDZxcjJISFgInF3
 3hbGLkYuDiGB3YwSp1e+ZYFISEpMu3iUuYuRA8gWljh8uBii5i2jxNyri5hBaoQFYiROTegG
 axYROMco0ff3LDtIgllgGpPEifVgRUICJxgl9m8qBbHZBLQk9r+4wQZi8wsoSlz98ZgRxOYV
 sJP4c2sXWD2LgKrE0VlNYHFRgQiJSdd2skDUCEqcnPkEzOYUcJD4NKuLEWKXusSfeZeYIWxx
 iVtP5jNB2PISzVtnM09gFJ6FpH0WkpZZSFpmIWlZwMiyilEytaA4Nz232LDAKC+1XK84Mbe4
 NC9dLzk/dxMjOJa1tHYwnjgRf4hRgINRiYf3xB6dWCHWxLLiytxDjBIczEoivLZftWOFeFMS
 K6tSi/Lji0pzUosPMUpzsCiJ88rnH4sUEkhPLEnNTk0tSC2CyTJxcEo1MFpkyOdeXqd5VbPF
 icvlaUyJW6L4i5Xen1J6A88Icp98vlS74PjcD7vzr2lsa5poMStRdX7rUbtgF5MNUlLHXf9V
 LUqK5k4yb30TWXwkRDzW7Jz7k9eZt/RcQ4RPmJ5fonv7zd5bn5d3i1oktLZ8PyV7PFr0t79s
 IUfFm3o31U0zH8/LmmW+VomlOCPRUIu5qDgRAEAwu8XhAgAA
X-CMS-MailID: 20190716095807epcas1p36f57bd2bd104c0c05c53db052ce8b210
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102@eucas1p2.samsung.com>
 <20190715124417.4787-11-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_025816_822587_5AFADC6B 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGksCgpJIGNoZWNrZWQgdGhlIHJhbmdlIG9mIHJhdGlvIGFzIGZvbGxvd2luZzogTG9va3MgZ29v
ZCB0byBtZS4KQnV0LCB5b3UgYmV0dGVyIHRvIG1ha2UgaXQgdG8gZml4IHRoZSByYXRpbyByYW5n
ZSB3aXRob3V0IGFkZGluZyBJRC4KUGxlYXNlIG1lcmdlIHRoZSBjb2RlIHJlbGF0ZWQgdG8gYWRk
aW5nIElEcyBpbnRvIG9uZSBwYXRjaC4KLSBFeHlub3M1NDIyIFRSTSBBQ0xLXzEwMF9OT0NfUkFU
SU8gWzIzOjIwXQotIEV4eW5vczU0MjAgVFJNIEFDTEtfMTAwX05PQ19SQVRJTyBbMjI6MjBdCgpP
biAxOS4gNy4gMTUuIOyYpO2bhCA5OjQzLCBMdWthc3ogTHViYSB3cm90ZToKPiBUaGUgQUNMSzEw
MF9OT0MgaGFzIGRpZmZlcmVudCB0b3BvbG9neSBpbiBFeHlub3M1NDIwIGFuZCA1NDIyLzU4MDAu
ICBJbgo+IEV4eW5vczU0MjAgdGhpcyBjbG9jayBkaXZpZGVyIGhhcyAzIGJpdHMgd2hpbGUgaW4g
NTQyMi81ODAwIGhhcyA0IGJpdHMuCj4gVGhlIHBhdGNoIGFkZHMgbmVlZGVkIGRpdmlkZXJzIGlu
IHRoZSBleHlub3M1ODAwX2Rpdl9jbGtzLCB1cGRhdGVzCj4gZXh5bm9zNXhfZGl2X2Nsa3MgYW5k
IGV4eW5vczU0MjBfZGl2X2Nsa3MgcHJvcGVybHkuIEl0IGFsc28gYWRkcyBJRHMgdG8KPiBtYW5h
Z2UgY2xvY2tzIGZyb20gRFQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHVi
YUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1l
eHlub3M1NDIwLmMgfCAxMiArKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvc2Ft
c3VuZy9jbGstZXh5bm9zNTQyMC5jIGIvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQy
MC5jCj4gaW5kZXggNjE2NGQwY2E3NWUwLi5jMTNmMzRkM2Q5YTEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jCj4gKysrIGIvZHJpdmVycy9jbGsvc2Ft
c3VuZy9jbGstZXh5bm9zNTQyMC5jCj4gQEAgLTQ3MSw3ICs0NzEsOCBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHNhbXN1bmdfbXV4X2Nsb2NrIGV4eW5vczU4MDBfbXV4X2Nsa3NbXSBfX2luaXRjb25z
dCA9IHsKPiAgCQkJU1JDX1RPUDAsIDQsIDMpLAo+ICAJTVVYKENMS19NT1VUX0FDTEs0MDBfV0NP
UkUsICJtb3V0X2FjbGs0MDBfd2NvcmUiLCBtb3V0X2dyb3VwMl81ODAwX3AsCj4gIAkJCVNSQ19U
T1AwLCAxNiwgMyksCj4gLQlNVVgoMCwgIm1vdXRfYWNsazEwMF9ub2MiLCBtb3V0X2dyb3VwMV81
ODAwX3AsIFNSQ19UT1AwLCAyMCwgMiksCj4gKwlNVVgoQ0xLX01PVVRfQUNMSzEwMF9OT0MsICJt
b3V0X2FjbGsxMDBfbm9jIiwgbW91dF9ncm91cDFfNTgwMF9wLAo+ICsJCQlTUkNfVE9QMCwgMjAs
IDIpLAoKUGxlYXNlIHNxdWFzaCB0aGlzIGNvZGUgdG8gdGhlIHBhdGNoIHdoaWNoIGFkZCB0aGUg
SURzLgpBY3R1YWxseSwgaXQgaXMgbm90IHJlbGF0ZWQgdG8gZml4IHRoZSByYXRlIHJhbmdlIG9m
IGNsb2NrLgoKPiAgCj4gIAlNVVgoMCwgIm1vdXRfYWNsazMzM180MzJfZ3NjbCIsIG1vdXRfZ3Jv
dXA2XzU4MDBfcCwgU1JDX1RPUDEsIDAsIDIpLAo+ICAJTVVYKDAsICJtb3V0X2FjbGszMzNfNDMy
X2lzcCIsIG1vdXRfZ3JvdXA2XzU4MDBfcCwgU1JDX1RPUDEsIDQsIDIpLAo+IEBAIC01MzQsNiAr
NTM1LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1ODAw
X211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3Vu
Z19kaXZfY2xvY2sgZXh5bm9zNTgwMF9kaXZfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+ICAJRElW
KENMS19ET1VUX0FDTEs0MDBfV0NPUkUsICJkb3V0X2FjbGs0MDBfd2NvcmUiLAo+ICAJCQkibW91
dF9hY2xrNDAwX3djb3JlIiwgRElWX1RPUDAsIDE2LCAzKSwKPiArCURJVihDTEtfRE9VVF9BQ0xL
MTAwX05PQywgImRvdXRfYWNsazEwMF9ub2MiLCAibW91dF9hY2xrMTAwX25vYyIsCj4gKwkJCQlE
SVZfVE9QMCwgMjAsIDQpLAoKPiAgCURJVihDTEtfRE9VVF9BQ0xLMjY2X0lTUCwgImRvdXRfYWNs
azI2Nl9pc3AiLCAibW91dF9hY2xrMjY2X2lzcCIsCj4gIAkJCQlESVZfVE9QOCwgMTIsIDMpLAo+
ICAJRElWKDAsICJkb3V0X2FjbGs1NTBfY2FtIiwgIm1vdXRfYWNsazU1MF9jYW0iLAo+IEBAIC01
NjksNyArNTcyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlu
b3M1NDIwX211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4gIAkJCVNSQ19UT1AwLCA0LCAyKSwK
PiAgCU1VWChDTEtfTU9VVF9BQ0xLNDAwX1dDT1JFLCAibW91dF9hY2xrNDAwX3djb3JlIiwgbW91
dF9ncm91cDFfcCwKPiAgCQkJU1JDX1RPUDAsIDE2LCAyKSwKPiAtCU1VWCgwLCAibW91dF9hY2xr
MTAwX25vYyIsIG1vdXRfZ3JvdXAxX3AsIFNSQ19UT1AwLCAyMCwgMiksCj4gKwlNVVgoQ0xLX01P
VVRfQUNMSzEwMF9OT0MsICJtb3V0X2FjbGsxMDBfbm9jIiwgbW91dF9ncm91cDFfcCwKPiArCQkJ
U1JDX1RPUDAsIDIwLCAyKSwKCmRpdHRvLgpQbGVhc2Ugc3F1YXNoIHRoaXMgY29kZSB0byB0aGUg
cGF0Y2ggd2hpY2ggYWRkIHRoZSBJRHMuCkFjdHVhbGx5LCBpdCBpcyBub3QgcmVsYXRlZCB0byBm
aXggdGhlIHJhdGUgcmFuZ2Ugb2YgY2xvY2suCgo+ICAKPiAgCU1VWCgwLCAibW91dF9hY2xrMzMz
XzQzMl9nc2NsIiwgbW91dF9ncm91cDRfcCwgU1JDX1RPUDEsIDAsIDIpLAo+ICAJTVVYKDAsICJt
b3V0X2FjbGszMzNfNDMyX2lzcCIsIG1vdXRfZ3JvdXA0X3AsCj4gQEAgLTYwMCw2ICs2MDQsOCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfbXV4X2Nsb2NrIGV4eW5vczU0MjBfbXV4X2Ns
a3NbXSBfX2luaXRjb25zdCA9IHsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX2Rpdl9j
bG9jayBleHlub3M1NDIwX2Rpdl9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4gIAlESVYoQ0xLX0RP
VVRfQUNMSzQwMF9XQ09SRSwgImRvdXRfYWNsazQwMF93Y29yZSIsCj4gIAkJCSJtb3V0X2FjbGs0
MDBfd2NvcmUiLCBESVZfVE9QMCwgMTYsIDMpLAo+ICsJRElWKENMS19ET1VUX0FDTEsxMDBfTk9D
LCAiZG91dF9hY2xrMTAwX25vYyIsICJtb3V0X2FjbGsxMDBfbm9jIiwKPiArCQkJRElWX1RPUDAs
IDIwLCAzKSwKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19nYXRlX2Ns
b2NrIGV4eW5vczU0MjBfZ2F0ZV9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4gQEAgLTc5OCw4ICs4
MDQsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfZGl2X2Nsb2NrIGV4eW5vczV4X2Rp
dl9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4gIAkJCURJVl9UT1AwLCA4LCAzKSwKPiAgCURJVihD
TEtfRE9VVF9BQ0xLMjAwX0ZTWVMyLCAiZG91dF9hY2xrMjAwX2ZzeXMyIiwgIm1vdXRfYWNsazIw
MF9mc3lzMiIsCj4gIAkJCURJVl9UT1AwLCAxMiwgMyksCj4gLQlESVYoQ0xLX0RPVVRfQUNMSzEw
MF9OT0MsICJkb3V0X2FjbGsxMDBfbm9jIiwgIm1vdXRfYWNsazEwMF9ub2MiLAo+IC0JCQlESVZf
VE9QMCwgMjAsIDMpLAo+ICAJRElWKENMS19ET1VUX1BDTEsyMDBfRlNZUywgImRvdXRfcGNsazIw
MF9mc3lzIiwgIm1vdXRfcGNsazIwMF9mc3lzIiwKPiAgCQkJRElWX1RPUDAsIDI0LCAzKSwKPiAg
CURJVihDTEtfRE9VVF9BQ0xLMjAwX0ZTWVMsICJkb3V0X2FjbGsyMDBfZnN5cyIsICJtb3V0X2Fj
bGsyMDBfZnN5cyIsCj4gCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBF
bGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
