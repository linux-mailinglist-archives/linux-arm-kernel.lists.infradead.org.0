Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169641DD359
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+O3DihYTBKxdb+DoofvdAURWNPoceZl2LwlHnVhED9o=; b=qliLO+4ToP7neH
	b7v7pTGdHt05UpUKQv7KXk89X+W9yZlLgZ6XL0AzXiC/DMHk0Qz9tBuRNWU9ie3/4pJg4HNM61/26
	ijjtVFc8ZZ3hQ8th+May1tsqcAwmF8KGNB26gT86bOclB/N66RVNt+dNlfcQXsOZJbME3P1QSSQip
	G6NY30VQ3TBuhbBFw/STqT2jR3XtCmO5YF+q0Xa/q6i6/uXcDIekFElRbR/Wn8/vgLzmohJ0Sl32/
	SeDGwe4DLBEPrmnDkvvYzLmNInk4pHTozQUeTS0huCR2fjLarFx0f4O3IHH4E7uYjhI+3GNb3H/eN
	lJQ2HtxqL0UFSutvwKVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jboOI-0000Gz-PI; Thu, 21 May 2020 16:49:54 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jboO9-0000Fd-C1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 16:49:46 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200521164940epoutp033046732b36f4a96f32e486afa1e335a5~RGSLYZlKT0896408964epoutp03G
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 16:49:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200521164940epoutp033046732b36f4a96f32e486afa1e335a5~RGSLYZlKT0896408964epoutp03G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590079780;
 bh=BxuoQ2bDUpnmdDK6AiDLxEreiEN3dox/04SRxbRcCYA=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=cNsvMwGtBAQWZTwMObO6pkorv80dvbg1A/JLDet1c9smnBWcHUT5JTob5yuQwrp+a
 DJnEiLhwVUvUfzrH2lmMUhq0+xdSLetcZen44l6i/DFc973RBTHoHLZ1IWBp0admFS
 FerNPHd3w+w3dYTOKLgJJbM06C5rBi5QVLur49fk=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200521164940epcas5p315923a6e098754aec537394f45aa5b65~RGSKjw7Gf3196531965epcas5p3M;
 Thu, 21 May 2020 16:49:40 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 39.C8.23389.321B6CE5; Fri, 22 May 2020 01:49:39 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200521164938epcas5p332682bce7ac711559181361ec1868fc5~RGSJdDMoW3194731947epcas5p3Q;
 Thu, 21 May 2020 16:49:38 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200521164938epsmtrp18f1d4d5ab8ed32dbf03a57f61aade580~RGSJcHLaZ3131231312epsmtrp1v;
 Thu, 21 May 2020 16:49:38 +0000 (GMT)
X-AuditID: b6c32a4b-7adff70000005b5d-37-5ec6b123febc
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 1E.6E.25866.221B6CE5; Fri, 22 May 2020 01:49:38 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200521164935epsmtip2385e245437ef260d48f6c6b07e5b015e~RGSGl6sca1862918629epsmtip2x;
 Thu, 21 May 2020 16:49:35 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200519071636.GA6971@kozik-lap>
Subject: RE: [PATCH v9 10/10] arm64: dts: Add node for ufs exynos7
Date: Thu, 21 May 2020 22:19:33 +0530
Message-ID: <018f01d62f8f$d0b993a0$722cbae0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQDj7nWNOwhaAxvEU9bpCgUI3fQKTQLlQRCoAnN8e0wCOeNtTKparPXQ
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGKsWRmVeSWpSXmKPExsWy7bCmhq7yxmNxBlPemVu8/HmVzeLT+mWs
 FvOPnGO1OH9+A7vFzS1HWSw2Pb7GanF51xw2ixnn9zFZdF/fwWax/Pg/Jov/e3awWyzdepPR
 gcfjcl8vk8emVZ1sHpuX1Hu0nNzP4vHx6S0Wj74tqxg9Pm+S82g/0M0UwBHFZZOSmpNZllqk
 b5fAlfHz4xSmgn88FauPv2FtYPzP3cXIySEhYCLxYEMncxcjF4eQwG5Gid7Vl5hBEkICnxgl
 li33gkh8ZpRouzqZBabj2oYHrBCJXYwS83rPQLW/YZT49/otO0gVm4CuxI7FbWwgtgiQvfnG
 cnaQImaBk0wSR/p6mEASnAJ6Eh9nvgSzhQWcJN6fmgu2m0VAVaJx3Q9GEJtXwFLi/eu/7BC2
 oMTJmU/AzmAW0JZYtvA1M8RJChI/ny5jhVjmJjHnJUQvs4C4xNGfPWDXSQic4ZA4eOoaVIOL
 xO2m32wQtrDEq+Nb2CFsKYmX/W1ANgeQnS3Rs8sYIlwjsXTeMaj37SUOXJnDAlLCLKApsX6X
 PsQqPone30+YIDp5JTrahCCqVSWa312F6pSWmNjdzQphe0jMbnjPOIFRcRaSx2YheWwWkgdm
 ISxbwMiyilEytaA4Nz212LTAOC+1XK84Mbe4NC9dLzk/dxMjOKlpee9gfPTgg94hRiYOxkOM
 EhzMSiK8C/mPxgnxpiRWVqUW5ccXleakFh9ilOZgURLnfdy4JU5IID2xJDU7NbUgtQgmy8TB
 KdXApN2tk+G0xCugU/B0a/G8a/cVK9nUZ88WYTYP0DjSdCM2y79CPvrhoy9f/ku6Fja901Z4
 f9iG+VbzonfsXX8v1kuoZrfNcdvkPvPXPoHy90vdjh/g19JxKGKqPMAQLV/fc63ylk/uDtPr
 HjaRGaxaWaaLFq2RF2x2DX4e+EGuSi+R6eq5HdVBqyd1LdBuf6Vffu1PfaCE8ZQsjVefTP9K
 i++Qay9ftfMnu85er++PImYdOh3k+DK4W3tdX87H2XzPA2545M9P+J+90farp3LK/L8+V/mW
 uM4w2eP5UDl4/p+30869OvjyW5dKvcCx9fIclkcKdjxwlJuS/VD1xQm1wNqrbafzMoOsFHM4
 JpcpsRRnJBpqMRcVJwIAibESidkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsWy7bCSvK7SxmNxBp9Wa1q8/HmVzeLT+mWs
 FvOPnGO1OH9+A7vFzS1HWSw2Pb7GanF51xw2ixnn9zFZdF/fwWax/Pg/Jov/e3awWyzdepPR
 gcfjcl8vk8emVZ1sHpuX1Hu0nNzP4vHx6S0Wj74tqxg9Pm+S82g/0M0UwBHFZZOSmpNZllqk
 b5fAlbF380v2gmNcFRNv7GdrYLzL0cXIySEhYCJxbcMD1i5GLg4hgR2MEmvO/2CDSEhLXN84
 gR3CFpZY+e85O0TRK0aJKZN6WUESbAK6EjsWt4E1iADZm28sBytiFrjMJPFn6VpGiI5HjBJt
 /2cxgVRxCuhJfJz5EswWFnCSeH9qLjOIzSKgKtG47gcjiM0rYCnx/vVfdghbUOLkzCcsIDaz
 gLZE78NWRhh72cLXzBDnKUj8fLqMFeIKN4k5L39A1YhLHP3ZwzyBUXgWklGzkIyahWTULCQt
 CxhZVjFKphYU56bnFhsWGOWllusVJ+YWl+al6yXn525iBEeoltYOxj2rPugdYmTiYDzEKMHB
 rCTCu5D/aJwQb0piZVVqUX58UWlOavEhRmkOFiVx3q+zFsYJCaQnlqRmp6YWpBbBZJk4OKUa
 mPg0o+TshF/VdRiZr/O7NYtnWzK7fkiT6nT5mO+KiXELDKuFvr/qq6/Klj55kEvj3dq8zSLL
 2O4qcp+/cqqv+NXxF49O/WG4V+ojdvRy3ok7NYea54ax8aqsXXLv7q9V3+IKetjv64kkSIbN
 flhU3TKn8N+kLYt2FQnYh86xfBR3ND6r/IHFr2MKzW+vyYupRgo2SXCJqp/sv82yxStymdL5
 w0Zvl3JLxFyYFPDxDQN3yp0Ozl3itysfT1/qt8++x3rnkpTsh4zP5wm0TPlt1XDnh1SZO6O9
 ve+tut+fGFUibTfZ3Dkr9cuN5TXP+tpF0ic2T1Pe7pWs4mNe7FBlaLA7sInv94Fvui2hS6Kv
 KbEUZyQaajEXFScCAIfNOYg/AwAA
X-CMS-MailID: 20200521164938epcas5p332682bce7ac711559181361ec1868fc5
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec@epcas5p3.samsung.com>
 <20200514003914.26052-11-alim.akhtar@samsung.com>
 <20200519071636.GA6971@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_094945_659886_88036D80 
X-CRM114-Status: UNSURE (   9.59  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPgo+IFNlbnQ6IDE5IE1heSAyMDIwIDEyOjQ3Cj4gVG86IEFsaW0g
QWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiBDYzogcm9iaEBrZXJuZWwub3JnOyBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtc2NzaUB2Z2VyLmtlcm5lbC5vcmc7Cj4g
YXZyaS5hbHRtYW5Ad2RjLmNvbTsgbWFydGluLnBldGVyc2VuQG9yYWNsZS5jb207Cj4ga3dtYWQu
a2ltQHNhbXN1bmcuY29tOyBzdGFubGV5LmNodUBtZWRpYXRlay5jb207Cj4gY2FuZ0Bjb2RlYXVy
b3JhLm9yZzsgbGludXgtc2Ftc3VuZy1zb2NAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0tCj4g
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
PiBTdWJqZWN0OiBSZTogW1BBVENIIHY5IDEwLzEwXSBhcm02NDogZHRzOiBBZGQgbm9kZSBmb3Ig
dWZzIGV4eW5vczcKPiAKPiBPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCAwNjowOToxNEFNICswNTMw
LCBBbGltIEFraHRhciB3cm90ZToKPiA+IEFkZGluZyBkdCBub2RlIGZvZSBVRlMgYW5kIFVGUy1Q
SFkgZm9yIGV4eW5vczcgU29DLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFsaW0gQWtodGFyIDxh
bGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiA+IFRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3
ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vYm9vdC9kdHMv
ZXh5bm9zL2V4eW5vczctZXNwcmVzc28uZHRzICAgICAgfCAgNCArKw0KPiA+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kgICAgICAgfCA0MyArKysrKysrKysrKysrKysr
KystDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IEkgd2lsbCBwaWNrIGl0IHVwIGFmdGVyIGFsbCBiaW5kaW5ncyBnZXQgUm9iJ3Mg
YWNrIChvciBhcmUgcGlja2VkIHVwIGFzIHdlbGwpLiAgVGhlDQo+IHNlY29uZCBiaW5kaW5ncyBw
YXRjaCBhcmUgc3RpbGwgcGVuZGluZyBvbiB0aGF0Lg0KPiANClRoYW5rIEtyenlzenRvZiwNClll
cywgb25lIGJpbmRpbmcgc3RpbGwgYXdhaXRpbmcgUm9iJ3MgYWNrLCBJIGhhdmUgYWRkcmVzc2Vk
IGhpcyBjb21tZW50IGluIHRoaXMgdjkgc2VyaWVzLg0KSG9waW5nIGhlIHdpbGwgZmluZCBzb21l
IHRpbWUgdG8gcmV2aWV3IHRoZSBzYW1lLg0KDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9m
DQoNCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
