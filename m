Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D203124421
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqdR3JvVX3EkVZaVkzrf43T6BA0gDBYkF2cIryCYlco=; b=BRt1eE55kROAfu
	3Ex1XeHj1V+pRytI930KDwZHIuHSeymVUVo3P46E4f8omxlbWmEA5okwuSwKA2aKN2XLAupAKWln3
	UIA5C4ewtGHq6U6tMbEcF+1SBSBpXBcoSItBsBj5D7yy/fONsvQaWV9Ao5FmhkYS7W9f/7zDK4eXI
	egQOrfnDHzwwWkIJDUTyNZNAEu4Q85mJo4qJFEM8DdC3FXCDv/8+Vw6q6vAeYkV9OYLKC65oFz8/k
	0wad4sK4oDboOCCH9/gK4uC/BaBDYtzSPuJG7KzBRjvCY0K97l/5yS1NM/Q3oWacw+E2Dbz3AU0I+
	V1S8mDP/Sr/0rq7wtTog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWOt-0004da-Pg; Wed, 18 Dec 2019 10:17:51 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWOk-0004cK-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:17:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191218101738euoutp01563c256bcf383a0901fcf72d39cb4e54~hb8ovsqBD2916329163euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 10:17:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191218101738euoutp01563c256bcf383a0901fcf72d39cb4e54~hb8ovsqBD2916329163euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576664258;
 bh=bwThtk0xrgCsolgLeuyMVr0819OsND3qMnr6RqwdLMI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=p5MfTccR7x2zDiVthDlRg0OA59ALTtVDv/9uyDrQ9mgRbJAuR6jkp2Kk5VOqn5D5F
 FBXKEcXBbOrlb4mcfs9w7M0g7WC3GeTk6U8WXP3KsX/UOuby1YnorMw63Qn3T5jGuS
 dFZglzpM+DMU13wmLJCksvvfTBk7cKOf7h22fj6s=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191218101738eucas1p2100dfedc2594bf3efb8d9e38a2824564~hb8oejBVD2968829688eucas1p28;
 Wed, 18 Dec 2019 10:17:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 01.33.61286.2CCF9FD5; Wed, 18
 Dec 2019 10:17:38 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191218101738eucas1p1b3abcd2bb6c825e6fb27b77df48d0100~hb8oIAUqA2842828428eucas1p1-;
 Wed, 18 Dec 2019 10:17:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191218101738eusmtrp139b535987309e190528b9eb39679ce25~hb8oHBlKA2290422904eusmtrp1p;
 Wed, 18 Dec 2019 10:17:38 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-2a-5df9fcc2122a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 3C.DC.07950.1CCF9FD5; Wed, 18
 Dec 2019 10:17:37 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20191218101737eusmtip17fd69f11846ed085ae840ddc8c972528~hb8nc9z0T0982809828eusmtip1q;
 Wed, 18 Dec 2019 10:17:37 +0000 (GMT)
Message-ID: <2008dca684ccb1dd740e6e6b88e56727d0d1c435.camel@samsung.com>
Subject: Re: [RFC PATCH v2 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 18 Dec 2019 11:17:36 +0100
In-Reply-To: <eecc5d38-f6ab-b1ea-1a08-0afb2dcddbef@samsung.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SaUhUYRSG++Yucx0a/RzDOWgYTavSotSPT6zMCLmBRRBBBKZjXibJUZnr
 UhK4JKKWYmppJhQtJlaok5pjKzYmmSaZ2NRoVqaSoeZWjWXm7Rr17znvOe9Z4HCUpo3x4KJi
 4gVTjD5ax6ro+ieO5+ubfjpCfX/kupOakiqGvJoaYshF63OGdE2PsaT4vpklBX35NOnoqFaS
 it5xhpj7uxnysrGMJZO5VkRKOh4oyC1rr5LY0ypYUlL4id3uwpsrs1m+p/sey/edalHwt6+m
 8DWjDQo+r7YS8ZNmr73Kg6otkUJ0VKJg2rgtXHXk2t1bbNw732P2dAubil6vzEFOHODNcMU2
 QOcgFafBFQg6782wcjCFIG3q80JmEsGs4xT6a2l9+JaSWIOvI2ht95WLBhFUT0zTUkKNeWie
 nPljcMMGeJU9oZCYxYHQbv+qkAxL8CiCjw+/UFJA4ScI7vc4/rhpvAoq31jm3RznNO9oHPaX
 J6+DkdY8WpLV2BVmG9wkmcLL4GTdBUouGVeCpYjIvBP6bd2MzG4w3FKrlHkpPCs8TcsswoCl
 j5FWAJyKwFxuXWgUAI9bXjDSLAp7Q1XjRlkOgsybxUpJBuwMthFXeQVnKKgvpmRZDVmZGhl1
 0HjeWTYCpN/oXujNw3R2myIfLS/9d0rpf6eU/pt6CVGVSCskiEaDIPrFCEkbRL1RTIgxbDgc
 azSj+R979qtlogFNd0Y0Icwh3WK17yJHqIbRJ4rHjU0IOEq3RG3PmpfUkfrjyYIpNsyUEC2I
 TciTo3Va9abLn0I12KCPF44KQpxg+ptVcE4eqWh1lEW7ddzf4b42Ir/9TlpXPeudnNwTGGz3
 /uDZY7i55vJ+5eCJtqFvqt1J+/Jc8aGA2NQk0h6eUp5eu+J9c1hNRHhpK6LOuZwJnRujI4ML
 8dlHc8bv2qKqwAfFwSHjL4+eu8T5dBKvrh0CVaa1HXganBG0p8gYbdtVN+ESkmHV0eIRvZ8P
 ZRL1vwHzZKQfXwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xu7oH//yMNbi/y8pi44z1rBbXvzxn
 tZh/5ByrxZWv79kspu/dxGYx6f4EFovz5zewW6y4+5HVYtPja6wWl3fNYbP43HuE0WLG+X1M
 FmuP3GW3uN24gs1ixuSXbA78HptWdbJ53Lm2h83jfvdxJo/NS+o9Nr7bweTRt2UVo8fnTXIB
 7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GUt3
 r2UreGBQcbtpJ1sD402VLkZODgkBE4lT++8xdzFycQgJLGWUWDbhGDtEQkLi4/obrBC2sMSf
 a11sEEVPGCU+nroIluAV8JA4+vkXI4gtLJAucb3zExOIzSZgL3H29jcmkAYRgfeMEh+2v2MH
 cZgFTjBK7Lz2nA2kikVAVWLVrZ1A3RwcnEAdu15ZQmxYySSx4kQfM0gNs4CmROv231An6Ui8
 PdXHAlLPKyAo8XeHMESJvETz1tnMExgFZyHpmIVQNQtJ1QJG5lWMIqmlxbnpucVGesWJucWl
 eel6yfm5mxiBcbrt2M8tOxi73gUfYhTgYFTi4b3x90esEGtiWXFl7iFGCQ5mJRHe2x0/Y4V4
 UxIrq1KL8uOLSnNSiw8xmgK9M5FZSjQ5H5hC8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQn
 lqRmp6YWpBbB9DFxcEo1MKbWbxbuPFLAMentsYdGCiocjuIzXpkWSbplsJxhnWSk3bX9oZVM
 yssVR7XeJ/zoKnyQnnDG1aZPQ9nyTe+OOJXDRYmX+qecObBJrMT6+TupL2dWVXKaGzdx7ll7
 dkUl4/fjHxgncWzfIbNwzx0XzzNT/m/QWdt3pDx5f+i7LGWb+83qcxJSwpRYijMSDbWYi4oT
 AUu4vzbpAgAA
X-CMS-MailID: 20191218101738eucas1p1b3abcd2bb6c825e6fb27b77df48d0100
X-Msg-Generator: CA
X-RootMTR: 20190919142329eucas1p299762f99dd55a5d625633ceec84219f9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142329eucas1p299762f99dd55a5d625633ceec84219f9
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142329eucas1p299762f99dd55a5d625633ceec84219f9@eucas1p2.samsung.com>
 <20190919142236.4071-9-a.swigon@samsung.com>
 <693e250d-9656-df67-9685-188020b43542@samsung.com>
 <eecc5d38-f6ab-b1ea-1a08-0afb2dcddbef@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021743_186323_9F75304A 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDIwMTktMTItMTYgYXQgMTE6NTkgKzA5MDAsIENoYW53b28gQ2hvaSB3cm90
ZToKPiBIaSwKPiAKPiBPbiAxMi8xNi8xOSA5OjUxIEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4g
PiBPbiA5LzE5LzE5IDExOjIyIFBNLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiA+ID4gRnJvbTog
QXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gPiA+IAo+ID4g
PiBUaGlzIHBhdGNoIGFkZHMgdHdvIGZpZWxkcyB0byB0aGUgRXh5bm9zNDQxMiBEVFM6Cj4gPiA+
ICAgLSBwYXJlbnQ6IHRvIGRlY2xhcmUgY29ubmVjdGlvbnMgYmV0d2VlbiBub2RlcyB0aGF0IGFy
ZSBub3QgaW4gYQo+ID4gPiAgICAgcGFyZW50LWNoaWxkIHJlbGF0aW9uIGluIGRldmZyZXE7Cj4g
PiA+ICAgLSAjaW50ZXJjb25uZWN0LWNlbGxzOiByZXF1aXJlZCBieSB0aGUgaW50ZXJjb25uZWN0
IGZyYW1ld29yay4KPiA+ID4gCj4gPiA+IFBsZWFzZSBub3RlIHRoYXQgI2ludGVyY29ubmVjdC1j
ZWxscyBpcyBhbHdheXMgemVybyBhbmQgbm9kZSBJRHMgYXJlIG5vdAo+ID4gPiBoYXJkY29kZWQg
YW55d2hlcmUuIFRoZSBhYm92ZS1tZW50aW9uZWQgcGFyZW50LWNoaWxkIHJlbGF0aW9uIGluIGRl
dmZyZXEKPiA+ID4gbWVhbnMgdGhhdCB0aGVyZSBpcyBhIHNoYXJlZCBwb3dlciBsaW5lICgnZGV2
ZnJlcScgcHJvcGVydHkpLiBUaGUgJ3BhcmVudCcKPiA+ID4gcHJvcGVydHkgb25seSBzaWduaWZp
ZXMgYW4gaW50ZXJjb25uZWN0IGNvbm5lY3Rpb24uCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSB8
IDEgKwo+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpICAgICAgICAgICAg
ICAgfCA5ICsrKysrKysrKwo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
Cj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1v
ZHJvaWQtY29tbW9uLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1j
b21tb24uZHRzaQo+ID4gPiBpbmRleCBlYTU1ZjM3N2QxN2MuLmJkZDYxYWU4NjEwMyAxMDA2NDQK
PiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0
c2kKPiA+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9u
LmR0c2kKPiA+ID4gQEAgLTEwNiw2ICsxMDYsNyBAQAo+ID4gPiAgJmJ1c19sZWZ0YnVzIHsKPiA+
ID4gIAlkZXZmcmVxLWV2ZW50cyA9IDwmcHBtdV9sZWZ0YnVzXzM+LCA8JnBwbXVfcmlnaHRidXNf
Mz47Cj4gPiA+ICAJdmRkLXN1cHBseSA9IDwmYnVjazNfcmVnPjsKPiA+ID4gKwlwYXJlbnQgPSA8
JmJ1c19kbWM+Owo+ID4gCj4gPiBBcyBJIG1lbnRpb25lZCBvbiBvdGhlciByZXBseSwKPiA+IEkn
bSBub3Qgc3VyZSB0byB1c2UgdGhlIHNwZWNpZmljICdwYXJlbnQnIHByb3BlcnR5IHRvIG1ha2UK
PiA+IHRoZSBjb25uZWN0aW9uIGJldHdlZW4gYnVzZXMuIElmIHBvc3NpYmxlLCB5b3UgYmV0dGVy
IHRvCj4gPiB1c2UgdGhlIHN0YW5kYXJkIHdheSBsaWtlIE9GIGdyYXBoLiBFeGNlcHQgZm9yIG1h
a2luZwo+ID4gdGhlIGNvbm5lY3Rpb24gYmV0d2VlbiBidXNlcyBieSAncGFyZW50JyBwcm9wZXJ0
eSwKPiA+IGxvb2tzIGdvb2QgdG8gbWUuCj4gCj4gSSB0cmllZCB0byB0aGluayBpdCBjb250aW51
b3VzbHkuIEkgd2l0aGRyYXcgdGhlIG15IG9waW5pb24KPiB1c2luZyBPRiBncmFwaC4gSWYgeW91
IG1ha2UgdGhlIHByb3BlcnR5IG5hbWUgbGlrZSB0aGUgZm9sbG93aW5nCj4gZXhhbXBsZSwgaXQg
aXMgcG9zc2libGUgZm9yIGV4eW5vcy4KPiAtIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5v
ZGUgPSA8JmJ1c19kbWM+OyBvciBvdGhlciBwcm9wZXIgbmFtZS4KPiAKPiBSZWdhcmRsZXNzIG9m
IGV4aXN0aW5nICdkZXZmcmVxJyBwcm9wZXJ0eSwgSSB0aGluayB5b3UgYmV0dGVyIHRvCj4gbWFr
ZSB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1c2VzIGZvciBvbmx5IGludGVyY29ubmVjdCBhcyBm
b2xsb3dpbmcKPiBleGFtcGxlOiBUaGlzIG1ha2UgaXQgcG9zc2libGUgdXNlciBjYW4gZHJhdyB0
aGUgY29ycmVjdCB0cmVlIGJ5IHRyYWNraW5nCj4gdGhlICdleHlub3MsaW50ZXJjb25uZWN0LXBh
cmVudC1ub2RlJyB2YWx1ZS4KCk9LLCBmb3IgdjMgSSB3aWxsIGFkZCAnZXh5bm9zLGludGVyY29u
bmVjdC1wYXJlbnQtbm9kZScgdG8gYnVzX2RtYywKYnVzX2xlZnRidXMgYW5kIGJ1c19kaXNwbGF5
IGFzIHlvdSBzdWdnZXN0ZWQgYmVsb3cgYW5kIGNoYW5nZSB0aGUgY29kZQpzbyB0aGF0IHRoZSAn
ZGV2ZnJlcScgKG9yIHRoZSB1cGNvbWluZyAnZXh5bm9zLHBhcmVudC1idXMnKSBwcm9wZXJ0eSBp
cwpub3QgdGFrZW4gaW50byBhY2NvdW50LgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlu
b3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+IGluZGV4IGVhNTVmMzc3ZDE3Yy4uNTNmODdmNDZl
MTYxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNv
bW1vbi5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29t
bW9uLmR0c2kKPiBAQCAtOTAsNiArOTAsNyBAQAo+ICAmYnVzX2RtYyB7Cj4gICAgICAgICBkZXZm
cmVxLWV2ZW50cyA9IDwmcHBtdV9kbWMwXzM+LCA8JnBwbXVfZG1jMV8zPjsKPiAgICAgICAgIHZk
ZC1zdXBwbHkgPSA8JmJ1Y2sxX3JlZz47Cj4gKyAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0g
PDA+Owo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiBAQCAtMTA2LDYgKzEw
Nyw4IEBACj4gICZidXNfbGVmdGJ1cyB7Cj4gICAgICAgICBkZXZmcmVxLWV2ZW50cyA9IDwmcHBt
dV9sZWZ0YnVzXzM+LCA8JnBwbXVfcmlnaHRidXNfMz47Cj4gICAgICAgICB2ZGQtc3VwcGx5ID0g
PCZidWNrM19yZWc+Owo+ICsgICAgICAgZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZSA9
IDwmYnVzX2RtYz47Cj4gKyAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAgICAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiBAQCAtMTE2LDYgKzExOSw4IEBACj4gIAo+
ICAmYnVzX2Rpc3BsYXkgewo+ICAgICAgICAgZGV2ZnJlcSA9IDwmYnVzX2xlZnRidXM+Owo+ICsg
ICAgICAgZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZSA9IDwmYnVzX2xlZnRidXM+Owo+
ICsgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgICAgICAgIHN0YXR1cyA9ICJv
a2F5IjsKPiAgfTsKPiAKPiAKPiA+IAo+ID4gCj4gPiA+ICAJc3RhdHVzID0gIm9rYXkiOwo+ID4g
PiAgfTsKPiA+ID4gIAo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NDQxMi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4gPiA+IGluZGV4
IGQyMGRiMmRmZThlMi4uYTcwYTY3MWFjYWNkIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybS9i
b290L2R0cy9leHlub3M0NDEyLmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNDQxMi5kdHNpCj4gPiA+IEBAIC0zOTAsNiArMzkwLDcgQEAKPiA+ID4gIAkJCWNsb2NrcyA9
IDwmY2xvY2sgQ0xLX0RJVl9ETUM+Owo+ID4gPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+
ID4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNfb3BwX3RhYmxlPjsKPiA+ID4g
KwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiA+ICAJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ID4gPiAgCQl9Owo+ID4gPiAgCj4gPiA+IEBAIC0zOTgsNiArMzk5LDcgQEAKPiA+ID4g
IAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9BQ1A+Owo+ID4gPiAgCQkJY2xvY2stbmFtZXMg
PSAiYnVzIjsKPiA+ID4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19hY3Bfb3BwX3Rh
YmxlPjsKPiA+ID4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiA+ICAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiAgCQl9Owo+ID4gPiAgCj4gPiA+IEBAIC00MDYsNiArNDA4
LDcgQEAKPiA+ID4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9DMkM+Owo+ID4gPiAgCQkJ
Y2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1
c19kbWNfb3BwX3RhYmxlPjsKPiA+ID4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4g
PiA+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiAgCQl9Owo+ID4gPiAgCj4gPiA+IEBA
IC00NTksNiArNDYyLDcgQEAKPiA+ID4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9HREw+
Owo+ID4gPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gIAkJCW9wZXJhdGluZy1wb2lu
dHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJsZT47Cj4gPiA+ICsJCQkjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+ID4gPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gIAkJfTsK
PiA+ID4gIAo+ID4gPiBAQCAtNDY3LDYgKzQ3MSw3IEBACj4gPiA+ICAJCQljbG9ja3MgPSA8JmNs
b2NrIENMS19ESVZfR0RSPjsKPiA+ID4gIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gPiA+ICAJ
CQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfbGVmdGJ1c19vcHBfdGFibGU+Owo+ID4gPiAr
CQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gIAkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gPiA+ICAJCX07Cj4gPiA+ICAKPiA+ID4gQEAgLTQ3NSw2ICs0ODAsNyBAQAo+ID4gPiAg
CQkJY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzE2MD47Cj4gPiA+ICAJCQljbG9jay1uYW1lcyA9
ICJidXMiOwo+ID4gPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Rpc3BsYXlfb3Bw
X3RhYmxlPjsKPiA+ID4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gPiA+ICAJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiAgCQl9Owo+ID4gPiAgCj4gPiA+IEBAIC00ODMsNiAr
NDg5LDcgQEAKPiA+ID4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0FDTEsxMzM+Owo+ID4gPiAg
CQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8
JmJ1c19mc3lzX29wcF90YWJsZT47Cj4gPiA+ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+
Owo+ID4gPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gIAkJfTsKPiA+ID4gIAo+ID4g
PiBAQCAtNDkxLDYgKzQ5OCw3IEBACj4gPiA+ICAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19BQ0xL
MTAwPjsKPiA+ID4gIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gPiA+ICAJCQlvcGVyYXRpbmct
cG9pbnRzLXYyID0gPCZidXNfcGVyaV9vcHBfdGFibGU+Owo+ID4gPiArCQkJI2ludGVyY29ubmVj
dC1jZWxscyA9IDwwPjsKPiA+ID4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICAJCX07
Cj4gPiA+ICAKPiA+ID4gQEAgLTQ5OSw2ICs1MDcsNyBAQAo+ID4gPiAgCQkJY2xvY2tzID0gPCZj
bG9jayBDTEtfU0NMS19NRkM+Owo+ID4gPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4g
IAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJsZT47Cj4gPiA+
ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiAgCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKPiA+ID4gIAkJfTsKPiA+ID4gIAo+ID4gPiAKPiA+IAo+ID4gCj4gCgpCZXN0IHJlZ2Fy
ZHMsCi0tIApBcnR1ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1
bmcgRWxlY3Ryb25pY3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
