Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D081CBBD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 02:36:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=io3HkTwT/Rp6hirs/gE0DiBPycHBNPzIeJTMk/XEzIg=; b=Yp3d8e1fm2JJ3N
	kJtZp6lWGtFQJuXOBOYI/MwiODM2bRdkhk9T6GP3sMQ8hKZQiCmko1in3eEFh6hKnT9zapYKGn7fv
	MHb5Gi2KUGrP8XagvdWlz3Uq684qdSv9TYkNlmAT5yjNiSp+KBVAb9OKlTGuUc1SnM68W7hDtGGVS
	TDnZtlKthQsBtE0qnVTvonnQfaNVtqzFAVDIuciUU+d/Yhx58HVaXlpe786DWrk9e+GhmcmcIr7mm
	ilCaHlAcYL5BWDLOThK/TSpkFZPFZXJkZHhQh8W4eN1HQnTVENpBAk2Ivly6iGM3RiwzfU1OTPhhI
	OD0zbWAOr8XYCNUWsxuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXDTj-0007MJ-N8; Sat, 09 May 2020 00:36:31 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXDTa-0007Lf-A4
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 00:36:24 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200509003617epoutp03a4301dfbbe2b080ccf48e3565444e1e9~NNQ3pUsVx2954629546epoutp03F
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  9 May 2020 00:36:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200509003617epoutp03a4301dfbbe2b080ccf48e3565444e1e9~NNQ3pUsVx2954629546epoutp03F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588984577;
 bh=dlOOLufDeg99NYiBMXLuCCLPr1sINIot7eHDqZu/lJc=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=YiTlflKbHNgy/NR7HAZmiAAznR1kxCXHN9zD8eSqnfGDZiJSpzdyTYCmQj5Oot6qa
 K5OpI5ZCWGX9pkzLIg1afzepzr/9DUrLSjgYXt90/zV5m/JRx+nkr68DLHoHnRWykD
 48+wpkH/ffMKDbFmNi3LLikr14BHKapwjUeXor0Q=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200509003616epcas5p2b3225e9b3de1025e352c09357cd74b2f~NNQ2tFXFt0795707957epcas5p2q;
 Sat,  9 May 2020 00:36:16 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6B.BB.23569.00BF5BE5; Sat,  9 May 2020 09:36:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200509003615epcas5p38e36fa225186103d1158bdc16aa0ec0e~NNQ1f7CPs1946519465epcas5p3-;
 Sat,  9 May 2020 00:36:15 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200509003615epsmtrp26ec80a06ab964cfa41b2048be6f47dd0~NNQ1eyo1q1992219922epsmtrp2s;
 Sat,  9 May 2020 00:36:15 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-88-5eb5fb003fd2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 16.CC.18461.EFAF5BE5; Sat,  9 May 2020 09:36:14 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200509003611epsmtip1f8a8c89552403ae0a2b5ae3fa4852119~NNQymPHSw2460824608epsmtip1O;
 Sat,  9 May 2020 00:36:11 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
In-Reply-To: <20200505155611.GA23690@bogus>
Subject: RE: [PATCH v7 06/10] dt-bindings: phy: Document Samsung UFS PHY
 bindings
Date: Sat, 9 May 2020 06:06:10 +0530
Message-ID: <006801d62599$d8761690$896243b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQINaKJiJYqhfY8pF8dQGQjTbFgO/QHYsHSaAmfiCw4BzArg0Kf//KSQ
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7bCmli7D761xBrPOClq8/HmVzeLT+mWs
 FvOPnGO1OH9+A7vFzS1HWSw2Pb7GanF51xw2ixnn9zFZdF/fwWax/Pg/Jov/e3awWyzdepPR
 gcfjcl8vk8emVZ1sHpuX1Hu0nNzP4vHx6S0Wj74tqxg9Pm+S82g/0M0UwBHFZZOSmpNZllqk
 b5fAlXGm8QVLwV2jiteNJ9kbGG8ZdDFyckgImEgc/jufrYuRi0NIYDejxK3FqxhBEkICnxgl
 zu7wgUh8Y5T41zmDCaajdc8+JojEXkaJP3seskI4bxglJrRvZgapYhPQldixuI0NxBYRUJVo
 mvWABaSIWeA4k8TjjltgozgFtCWaL25gAbGFBYIlvkyZDNbAIqAi8fPjGbBBvAKWEk9fb2GD
 sAUlTs58AlbPDNS7bOFrZoiTFCR+Pl0GdAUH0DI3ifZmY4gScYmjP3uYQfZKCFzgkNg+6QQL
 RL2LxN2PN6HeEZZ4dXwLO4QtJfH53V42kDkSAtkSPbuMIcI1EkvnHYNqtZc4cGUOC0gJs4Cm
 xPpd+hCr+CR6fz9hgujklehoE4KoVpVofncVqlNaYmJ3NytEiYfE0k6nCYyKs5C8NQvJW7OQ
 3D8LYdcCRpZVjJKpBcW56anFpgVGeanlesWJucWleel6yfm5mxjBCU3Lawfjwwcf9A4xMnEw
 HmKU4GBWEuGdWLElTog3JbGyKrUoP76oNCe1+BCjNAeLkjhvUiNQSiA9sSQ1OzW1ILUIJsvE
 wSnVwDQt5XOwu7l5KPfaALeH36ovbT3SYGQuqD3lzgpdWbmy5k11wik8vUUTLx1V77qy/MaL
 bwV8DO+nPzym8eLS98f3TKP+/Z/NGFho94dx+rLCbRc9U56bv3iS9nzvZ645eR9Z4tZ1nj7x
 /dHDkGWCOub3JhzZPNs9IOTNguiqBa9W9ZjPjT1wW9j4/r0rf/WiDIMkz3rpzv79Sc2c4UwE
 09/KxJ4Pyt6FoqsnLJjT9mH1g08mbGYvRLeX2rwVf18bGle2Pn1LwVyP0v1TdZdFdgcq1xy9
 fmni7qke9dvm/hadb8v/xn27Ud8540knYm9f3dr2+OoRfq41caUxWu47Ms6Vza89G9W3YM7T
 xokqxvNfKrEUZyQaajEXFScCAEjSJGjXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsWy7bCSnO6/X1vjDHrf21i8/HmVzeLT+mWs
 FvOPnGO1OH9+A7vFzS1HWSw2Pb7GanF51xw2ixnn9zFZdF/fwWax/Pg/Jov/e3awWyzdepPR
 gcfjcl8vk8emVZ1sHpuX1Hu0nNzP4vHx6S0Wj74tqxg9Pm+S82g/0M0UwBHFZZOSmpNZllqk
 b5fAlfFxy2XGglVKFZf+/2RqYNwg1cXIySEhYCLRumcfE4gtJLCbUWLPLhmIuLTE9Y0T2CFs
 YYmV/54D2VxANa8YJWbM+MMKkmAT0JXYsbiNDcQWEVCVaJr1gAWkiFngMpPEkTcv2CA67jFK
 7Oj8AraCU0BbovniBhYQW1ggUOJ2/wNGEJtFQEXi58czzCA2r4ClxNPXW9ggbEGJkzOfgNUz
 A/X2PmxlhLGXLXzNDHGegsTPp8uALuIAusJNor3ZGKJEXOLozx7mCYzCs5BMmoVk0iwkk2Yh
 aVnAyLKKUTK1oDg3PbfYsMAwL7Vcrzgxt7g0L10vOT93EyM4OrU0dzBuX/VB7xAjEwfjIUYJ
 DmYlEd6JFVvihHhTEiurUovy44tKc1KLDzFKc7AoifPeKFwYJySQnliSmp2aWpBaBJNl4uCU
 amAyLT9msSQ/wvbRE55D4QJH5gnpzdONb548vVhMZCLX/DPcK7sy7795w6d1O8ZP9EUUW4LW
 w3XF8w79XH3YJdXP8ss9/WYT7pVeN9v/yD5oCeNIv2Dak77JrPDvl55k01/lThUii+bsmMDK
 wb0mbfdGDjdR9+jV+nLz3xvs3GkftXFZUuBePvOJipudGV99tFiZqdvoFaZk7Xr7KHNIWaTZ
 fQc26/R1Of2L9a4sMZszu2QGy7U85qPLf/WXX1E8eXLC4cVvN5ZvWbul9fLDmTfu7pANbXm2
 futaPeXg5ynNOhcFWT/7X2H9I+Fz50wE7/ssvyPd7fVy1cpJF69uPs2pt4U/KPCNmUCd6aSp
 y12VWIozEg21mIuKEwEjBPjwPQMAAA==
X-CMS-MailID: 20200509003615epcas5p38e36fa225186103d1158bdc16aa0ec0e
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174215epcas5p3e87abccf47976f6318eb470efef9db39
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174215epcas5p3e87abccf47976f6318eb470efef9db39@epcas5p3.samsung.com>
 <20200426173024.63069-7-alim.akhtar@samsung.com>
 <20200505155611.GA23690@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_173622_524375_41E32E51 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogUm9iIEhlcnJpbmcg
PHJvYmhAa2VybmVsLm9yZz4KPiBTZW50OiAwNSBNYXkgMjAyMCAyMToyNgo+IFRvOiBBbGltIEFr
aHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+Cj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC1zY3NpQHZnZXIua2VybmVsLm9yZzsga3J6a0BrZXJuZWwub3JnOwo+IGF2
cmkuYWx0bWFuQHdkYy5jb207IG1hcnRpbi5wZXRlcnNlbkBvcmFjbGUuY29tOwo+IGt3bWFkLmtp
bUBzYW1zdW5nLmNvbTsgc3RhbmxleS5jaHVAbWVkaWF0ZWsuY29tOwo+IGNhbmdAY29kZWF1cm9y
YS5vcmc7IGxpbnV4LXNhbXN1bmctc29jQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLQo+IGtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4g
U3ViamVjdDogUmU6IFtQQVRDSCB2NyAwNi8xMF0gZHQtYmluZGluZ3M6IHBoeTogRG9jdW1lbnQg
U2Ftc3VuZyBVRlMgUEhZCj4gYmluZGluZ3MKPiAKPiBPbiBTdW4sIEFwciAyNiwgMjAyMCBhdCAx
MTowMDoyMFBNICswNTMwLCBBbGltIEFraHRhciB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggZG9jdW1l
bnRzIFNhbXN1bmcgVUZTIFBIWSBkZXZpY2UgdHJlZSBiaW5kaW5ncwo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiA+IFRlc3RlZC1i
eTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICAuLi4vYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sICAgICAgICAgfCA3
NCArKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3NCBpbnNlcnRpb25z
KCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiA+IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwNCj4gPg0KPiA+IGRpZmYgLS1naXQN
Cj4gPiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMt
cGh5LnlhbWwNCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ft
c3VuZyx1ZnMtcGh5LnlhbWwNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAw
MDAwMDAwMDAwMC4uMzUyZDVkZGEzMjBkDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwN
Cj4gPiBAQCAtMCwwICsxLDc0IEBADQo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UgJVlBTUwgMS4yDQo+ID4gKy0tLQ0KPiA+ICskaWQ6
DQo+ID4gK2h0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9NWMzNWRmMGEtMDFmZmVh
YmQtNWMzNDU0NDUtMGNjNDdhMw0KPiA+ICswMDNlOC0NCj4gYWE2Yzk4MGRhYjJiYTMzYSZxPTEm
dT1odHRwJTNBJTJGJTJGZGV2aWNldHJlZS5vcmclMkZzY2hlbWFzJTJGDQo+ID4gK3BoeSUyRnNh
bXN1bmclMkN1ZnMtcGh5LnlhbWwlMjMNCj4gPiArJHNjaGVtYToNCj4gPiAraHR0cHM6Ly9wcm90
ZWN0Mi5maXJlZXllLmNvbS91cmw/az05NzM0ZmM1ZS1jYWZlYzllOS05NzM1NzcxMS0wY2M0N2Ez
DQo+ID4gKzAwM2U4LQ0KPiA3OWQxNzZiOTkyNzc0MzM5JnE9MSZ1PWh0dHAlM0ElMkYlMkZkZXZp
Y2V0cmVlLm9yZyUyRm1ldGEtc2NoZW0NCj4gPiArYXMlMkZjb3JlLnlhbWwlMjMNCj4gPiArDQo+
ID4gK3RpdGxlOiBTYW1zdW5nIFNvQyBzZXJpZXMgVUZTIFBIWSBEZXZpY2UgVHJlZSBCaW5kaW5n
cw0KPiA+ICsNCj4gPiArbWFpbnRhaW5lcnM6DQo+ID4gKyAgLSBBbGltIEFraHRhciA8YWxpbS5h
a2h0YXJAc2Ftc3VuZy5jb20+DQo+ID4gKw0KPiA+ICtwcm9wZXJ0aWVzOg0KPiA+ICsgICIjcGh5
LWNlbGxzIjoNCj4gPiArICAgIGNvbnN0OiAwDQo+ID4gKw0KPiA+ICsgIGNvbXBhdGlibGU6DQo+
ID4gKyAgICBlbnVtOg0KPiA+ICsgICAgICAtIHNhbXN1bmcsZXh5bm9zNy11ZnMtcGh5DQo+ID4g
Kw0KPiA+ICsgIHJlZzoNCj4gPiArICAgIG1heEl0ZW1zOiAxDQo+ID4gKyAgICBkZXNjcmlwdGlv
bjogUEhZIGJhc2UgcmVnaXN0ZXIgYWRkcmVzcw0KPiANCj4gQ2FuIGRyb3AgdGhlIGRlc2NyaXB0
aW9uLiBEb2Vzbid0IGFkZCBhbnl0aGluZyBzcGVjaWFsLg0KPiANCj4gPiArDQo+ID4gKyAgcmVn
LW5hbWVzOg0KPiA+ICsgICAgaXRlbXM6DQo+ID4gKyAgICAgIC0gY29uc3Q6IHBoeS1wbWENCj4g
PiArDQo+ID4gKyAgY2xvY2tzOg0KPiA+ICsgICAgaXRlbXM6DQo+ID4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IFBMTCByZWZlcmVuY2UgY2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogc3lt
Ym9sIGNsb2NrIGZvciBpbnB1dCBzeW1ib2wgKCByeDAtY2gwIHN5bWJvbCBjbG9jaykNCj4gPiAr
ICAgICAgLSBkZXNjcmlwdGlvbjogc3ltYm9sIGNsb2NrIGZvciBpbnB1dCBzeW1ib2wgKCByeDEt
Y2gxIHN5bWJvbCBjbG9jaykNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogc3ltYm9sIGNsb2Nr
IGZvciBvdXRwdXQgc3ltYm9sICggdHgwIHN5bWJvbA0KPiA+ICsgY2xvY2spDQo+ID4gKw0KPiA+
ICsgIGNsb2NrLW5hbWVzOg0KPiA+ICsgICAgaXRlbXM6DQo+ID4gKyAgICAgIC0gY29uc3Q6IHJl
Zl9jbGsNCj4gPiArICAgICAgLSBjb25zdDogcngxX3N5bWJvbF9jbGsNCj4gPiArICAgICAgLSBj
b25zdDogcngwX3N5bWJvbF9jbGsNCj4gPiArICAgICAgLSBjb25zdDogdHgwX3N5bWJvbF9jbGsN
Cj4gPiArDQo+ID4gKyAgc2Ftc3VuZyxwbXUtc3lzY29uOg0KPiA+ICsgICAgJHJlZjogJy9zY2hl
bWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUnDQo+ID4gKyAgICBkZXNjcmlwdGlv
bjogcGhhbmRsZSBmb3IgUE1VIHN5c3RlbSBjb250cm9sbGVyIGludGVyZmFjZSwgdXNlZCB0bw0K
PiA+ICsgICAgICAgICAgICAgICAgIGNvbnRyb2wgcG11IHJlZ2lzdGVycyBiaXRzIGZvciB1ZnMg
bS1waHkNCj4gPiArDQo+ID4gK3JlcXVpcmVkOg0KPiA+ICsgIC0gIiNwaHktY2VsbHMiDQo+ID4g
KyAgLSBjb21wYXRpYmxlDQo+ID4gKyAgLSByZWcNCj4gPiArICAtIHJlZy1uYW1lcw0KPiA+ICsg
IC0gY2xvY2tzDQo+ID4gKyAgLSBjbG9jay1uYW1lcw0KPiA+ICsgIC0gc2Ftc3VuZyxwbXUtc3lz
Y29uDQo+IA0KPiBBZGQ6DQo+IA0KPiBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UNCj4gDQo+
IFdpdGggdGhhdCwNCj4gDQpXaWxsIHVwZGF0ZSB0aGUgZG9jdW1lbnRhdGlvbiBhcyBwZXIgeW91
ciBzdWdnZXN0aW9uDQoNCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5v
cmc+DQo+DQpUaGFua3MgZm9yIHJldmlldyBjb21tZW50cy4gQWZ0ZXIgZml4aW5nLCB3aWxsIGFk
ZCB5b3VyIHJldmlldyB0YWcuDQogDQo+ID4gKw0KPiA+ICtleGFtcGxlczoNCj4gPiArICAtIHwN
Cj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9leHlub3M3LWNsay5oPg0KPiA+
ICsNCj4gPiArICAgIHVmc19waHk6IHVmcy1waHlAMTU1NzE4MDAgew0KPiA+ICsgICAgICAgIGNv
bXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M3LXVmcy1waHkiOw0KPiA+ICsgICAgICAgIHJlZyA9
IDwweDE1NTcxODAwIDB4MjQwPjsNCj4gPiArICAgICAgICByZWctbmFtZXMgPSAicGh5LXBtYSI7
DQo+ID4gKyAgICAgICAgc2Ftc3VuZyxwbXUtc3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xs
ZXI+Ow0KPiA+ICsgICAgICAgICNwaHktY2VsbHMgPSA8MD47DQo+ID4gKyAgICAgICAgY2xvY2tz
ID0gPCZjbG9ja19mc3lzMSBTQ0xLX0NPTUJPX1BIWV9FTUJFRERFRF8yNk0+LA0KPiA+ICsgICAg
ICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JYMV9TWU1CT0xfVVNFUj4s
DQo+ID4gKyAgICAgICAgICAgICAgICAgPCZjbG9ja19mc3lzMSBQSFlDTEtfVUZTMjBfUlgwX1NZ
TUJPTF9VU0VSPiwNCj4gPiArICAgICAgICAgICAgICAgICA8JmNsb2NrX2ZzeXMxIFBIWUNMS19V
RlMyMF9UWDBfU1lNQk9MX1VTRVI+Ow0KPiA+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gInJlZl9j
bGsiLCAicngxX3N5bWJvbF9jbGsiLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgInJ4MF9z
eW1ib2xfY2xrIiwgInR4MF9zeW1ib2xfY2xrIjsNCj4gPiArDQo+ID4gKyAgICB9Ow0KPiA+ICsu
Li4NCj4gPiAtLQ0KPiA+IDIuMTcuMQ0KPiA+DQoNCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
