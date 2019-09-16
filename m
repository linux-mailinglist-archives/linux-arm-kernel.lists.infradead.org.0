Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D8B347E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bKgm/FMCCB6y5eMPWNwv/LqIvvJZXMfx966Lk5tpu4=; b=ShPQVNqvo+A8Zy
	5ebyGboYaJL44Fr5DI0S99YtOgVUFLYwtKVkCflX/YDbRY7K08KEQbPq1Cyfez2lNCesYtBNCH41u
	ISJOuYBfv5J8h2HoKbLlAFgOXG8pUbH2HzXVT31EPn2OUFyzOyp/TpB+lKtBZddz0O8YGksAQRue6
	r2gerxoPpHq9T1Xw54huBYq+IqzyHZ7yCEjaOd+oZe4O5nifZGqujJohdNIcXb+OAdL8QMUL27PWI
	CiVM3d/b440R4XckK3ym6MqVntLl5ol/XR4QOSgsXfP02wEdhfq2HSAxZDtOwMcUif+g9Mjzb0Bib
	JRL51sedjnie7SNu63KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jq6-0000yJ-O7; Mon, 16 Sep 2019 05:46:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jpm-0000wn-GT; Mon, 16 Sep 2019 05:46:00 +0000
X-UUID: e43ba61f6687490584b44da81ff63918-20190915
X-UUID: e43ba61f6687490584b44da81ff63918-20190915
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 811570657; Sun, 15 Sep 2019 21:45:54 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Sep 2019 22:45:53 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 16 Sep 2019 13:45:48 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 13:45:47 +0800
Message-ID: <1568612747.7317.72.camel@mhfsdcap03>
Subject: Re: [PATCH v3 3/7] usb: mtu3: support ip-sleep wakeup for MT8183
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Mon, 16 Sep 2019 13:45:47 +0800
In-Reply-To: <20190911184453.GA2628@roeck-us.net>
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567150854-30033-4-git-send-email-chunfeng.yun@mediatek.com>
 <20190911184453.GA2628@roeck-us.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24914.004
X-TM-AS-Result: No-8.235300-8.000000-10
X-TMASE-MatchedRID: csPTYAMX1+HmLzc6AOD8DfHkpkyUphL9dfsypiTqGpue9toQ6h6LE2ng
 VUDf4c8Y3UJTYve4D89VVkf0bJfBjyxppiUy9o4cA9lly13c/gElWygvtTclwFGLwJXlA4mIwBI
 zUVtFoCLgRgaCjJFnr+xbYZUuzB/CsWFXqrN3c5D1WO1NzV/CYNi5W7Rf+s6QiiKPXbEds+4eMp
 1P/J9F6H2dcFgFzv71OLoOGImc4B4M8jMXjBF+sIMbH85DUZXy3QfwsVk0UbtuRXh7bFKB7lAlx
 8mk+INITqHBTq5IMRMciNlpck9RPvcGG72gNuthWClYJu9r4yY=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--8.235300-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24914.004
X-TM-SNTS-SMTP: 3242FE149AFF8C962B76284F45FA462CBA199288A603FDB43D5C66F530F60A4F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_224558_556231_CCFDF361 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA5LTExIGF0IDExOjQ0IC0wNzAwLCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+
IE9uIEZyaSwgQXVnIDMwLCAyMDE5IGF0IDAzOjQwOjUwUE0gKzA4MDAsIENodW5mZW5nIFl1biB3
cm90ZToKPiA+IFN1cHBvcnQgVVNCIHdha2V1cCBieSBpcC1zbGVlcCBtb2RlIGZvciBNVDgxODMs
IGl0J3Mgc2ltaWxhciB0bwo+ID4gTVQ4MTczCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENodW5m
ZW5nIFl1biA8Y2h1bmZlbmcueXVuQG1lZGlhdGVrLmNvbT4KPiA+IC0tLQo+ID4gdjM6IGNoYW5n
ZXMgbWljcm9zIGRlZmluZQo+ID4gCj4gPiB2Mjogbm8gY2hhbmdlcwo+ID4gLS0tCj4gPiAgZHJp
dmVycy91c2IvbXR1My9tdHUzX2hvc3QuYyB8IDE0ICsrKysrKysrKysrKystCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdXNiL210dTMvbXR1M19ob3N0LmMgYi9kcml2ZXJzL3VzYi9tdHUzL210
dTNfaG9zdC5jCj4gPiBpbmRleCBjODcxYjk0ZjNlNmYuLjRmODIwODg4NWViZCAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvdXNiL210dTMvbXR1M19ob3N0LmMKPiA+ICsrKyBiL2RyaXZlcnMvdXNi
L210dTMvbXR1M19ob3N0LmMKPiA+IEBAIC0xOCw2ICsxOCwxMiBAQAo+ID4gICNpbmNsdWRlICJt
dHUzLmgiCj4gPiAgI2luY2x1ZGUgIm10dTNfZHIuaCIKPiA+ICAKPiA+ICsvKiBtdDgxODMgZXRj
ICovCj4gPiArI2RlZmluZSBQRVJJX1dLX0NUUkwwCTB4MjAKPiA+ICsjZGVmaW5lIFdDMF9JU19D
KHgpCSgoKHgpICYgMHhmKSA8PCAyOCkgIC8qIGN5Y2xlIGRlYm91bmNlICovCj4gPiArI2RlZmlu
ZSBXQzBfSVNfUAlCSVQoMTIpCS8qIHBvbGFyaXR5ICovCj4gPiArI2RlZmluZSBXQzBfSVNfRU4J
QklUKDYpCj4gPiArCj4gCj4gRm9yIDY0LWJpdCBidWlsZHMsIHRoaXMgcmVzdWx0cyBpbjoKPiAK
PiBkcml2ZXJzL3VzYi9tdHUzL210dTNfaG9zdC5jOiBJbiBmdW5jdGlvbiDigJhzc3VzYl93YWtl
dXBfaXBfc2xlZXBfc2V04oCZOgo+IC4vaW5jbHVkZS9saW51eC9iaXRzLmg6NjoxOTogd2Fybmlu
ZzoKPiAJY29udmVyc2lvbiBmcm9tIOKAmGxvbmcgdW5zaWduZWQgaW504oCZIHRvIOKAmHUzMuKA
mSB7YWthIOKAmHVuc2lnbmVkIGludOKAmX0KPiAJY2hhbmdlcyB2YWx1ZSBmcm9tIOKAmDE4NDQ2
NzQ0MDczNDQxMTIwMzIw4oCZIHRvIOKAmDQwMjY1MzYwMDDigJkgWy1Xb3ZlcmZsb3ddCj4gCj4g
c2luY2UgV0MwX0lTX0MoKSBpcyBzaWduIGV4dGVuZGVkIHRvIDY0IGJpdCBhbmQgdGhlbiB0cnVu
Y2F0ZWQuCkdvdCBpdCwgdGhhbmtzIGEgbG90Cgo+IAo+IE9ic2VydmVkIHdpdGggZ2NjIDcuNC4w
IGFuZCA4LjMuMC4KPiAKPiBHdWVudGVyCj4gCj4gPiAgLyogbXQ4MTczIGV0YyAqLwo+ID4gICNk
ZWZpbmUgUEVSSV9XS19DVFJMMQkweDQKPiA+ICAjZGVmaW5lIFdDMV9JU19DKHgpCSgoKHgpICYg
MHhmKSA8PCAyNikgIC8qIGN5Y2xlIGRlYm91bmNlICovCj4gPiBAQCAtMzAsNyArMzYsOCBAQAo+
ID4gICNkZWZpbmUgU1NDX1NQTV9JTlRfRU4JCUJJVCgxKQo+ID4gIAo+ID4gIGVudW0gc3N1c2Jf
dXdrX3ZlcnMgewo+ID4gLQlTU1VTQl9VV0tfVjEgPSAxLAo+ID4gKwlTU1VTQl9VV0tfVjAgPSAw
LAo+ID4gKwlTU1VTQl9VV0tfVjEsCj4gPiAgCVNTVVNCX1VXS19WMiwKPiA+ICB9Owo+ID4gIAo+
ID4gQEAgLTQzLDYgKzUwLDExIEBAIHN0YXRpYyB2b2lkIHNzdXNiX3dha2V1cF9pcF9zbGVlcF9z
ZXQoc3RydWN0IHNzdXNiX210ayAqc3N1c2IsIGJvb2wgZW5hYmxlKQo+ID4gIAl1MzIgcmVnLCBt
c2ssIHZhbDsKPiA+ICAKPiA+ICAJc3dpdGNoIChzc3VzYi0+dXdrX3ZlcnMpIHsKPiA+ICsJY2Fz
ZSBTU1VTQl9VV0tfVjA6Cj4gPiArCQlyZWcgPSBzc3VzYi0+dXdrX3JlZ19iYXNlICsgUEVSSV9X
S19DVFJMMDsKPiA+ICsJCW1zayA9IFdDMF9JU19FTiB8IFdDMF9JU19DKDB4ZikgfCBXQzBfSVNf
UDsKPiA+ICsJCXZhbCA9IGVuYWJsZSA/IChXQzBfSVNfRU4gfCBXQzBfSVNfQygweDgpKSA6IDA7
Cj4gPiArCQlicmVhazsKPiA+ICAJY2FzZSBTU1VTQl9VV0tfVjE6Cj4gPiAgCQlyZWcgPSBzc3Vz
Yi0+dXdrX3JlZ19iYXNlICsgUEVSSV9XS19DVFJMMTsKPiA+ICAJCW1zayA9IFdDMV9JU19FTiB8
IFdDMV9JU19DKDB4ZikgfCBXQzFfSVNfUDsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
