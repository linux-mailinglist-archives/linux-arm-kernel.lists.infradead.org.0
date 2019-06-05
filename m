Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6261C3664B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWlWnha2l2msdSQAZRvzcMHbh04ffH6Etf4Dt0sE5Iw=; b=UcKdRjsvq4mgbE
	AfWDfgteVRuIzXGRuVEQK4yM0FvKyXV4f8mpc9T2+duSSjNjyzmET/GhLrP2kyUagyO5znTJDXF0p
	WA6lti34xJ2U4K7RPfa6ffEUf27dwDNTB/cwFBlLMRU9kcWOyDPbIWVx6eUb0Z9YqodLHDBzFNJF/
	Ro1TVeD0Y8JqizEB1httN7bUT70zPvBQlH5eD7l7I4XNb9/xTVzU/zCNHokzTv6CHtSBCcxMfu9/5
	NDs7ZPnQOCH7F3vfmjr77vFEiNcTdDVRVaUhpQikTimI6NypshsZUB+CSxpquBgeBn5POCQ3MLPOM
	bdRa3WrxeyXfvNa1b7Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYd8W-0001tE-V0; Wed, 05 Jun 2019 21:07:56 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYd8P-0001sV-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:07:51 +0000
Received: from collins (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1E24924000B;
 Wed,  5 Jun 2019 21:07:33 +0000 (UTC)
Message-ID: <870e55d3697583841700258b184ed4f5f3a8fb03.camel@bootlin.com>
Subject: Re: [PATCH 4/7] media: cedrus: Remove dst_bufs from context
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>, maxime.ripard@bootlin.com
Date: Wed, 05 Jun 2019 23:07:33 +0200
In-Reply-To: <20190530211516.1891-5-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-5-jernej.skrabec@siol.net>
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_140750_075208_A8047AC7 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBqZXVkaSAzMCBtYWkgMjAxOSDDoCAyMzoxNSArMDIwMCwgSmVybmVqIFNrcmFiZWMg
YSDDqWNyaXQgOgo+IFRoaXMgYXJyYXkgaXMganVzdCBkdXBsaWNhdGVkIGNhcHR1cmUgYnVmZmVy
IHF1ZXVlLiBSZW1vdmUgaXQgYW5kIGFkanVzdAo+IGNvZGUgdG8gbG9vayBpbnRvIGNhcHR1cmUg
YnVmZmVyIHF1ZXVlIGluc3RlYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMg
PGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWNrZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxw
YXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KCkNoZWVycyBhbmQgdGhhbmtzLAoKUGF1bAoK
PiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuaCAgIHwg
IDQgKy0tLQo+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAg
fCAgNCArKy0tCj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8u
YyB8IDIyIC0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDI3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhp
L2NlZHJ1cy9jZWRydXMuaAo+IGluZGV4IDNmNDc2ZDBmZDk4MS4uZDhlNjc3N2U1ZTI3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmgKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oCj4gQEAgLTEw
MCw4ICsxMDAsNiBAQCBzdHJ1Y3QgY2VkcnVzX2N0eCB7Cj4gIAlzdHJ1Y3QgdjRsMl9jdHJsX2hh
bmRsZXIJaGRsOwo+ICAJc3RydWN0IHY0bDJfY3RybAkJKipjdHJsczsKPiAgCj4gLQlzdHJ1Y3Qg
dmIyX2J1ZmZlcgkJKmRzdF9idWZzW1ZJREVPX01BWF9GUkFNRV07Cj4gLQo+ICAJdW5pb24gewo+
ICAJCXN0cnVjdCB7Cj4gIAkJCXZvaWQJCSptdl9jb2xfYnVmOwo+IEBAIC0xODcsNyArMTg1LDcg
QEAgc3RhdGljIGlubGluZSBkbWFfYWRkcl90IGNlZHJ1c19kc3RfYnVmX2FkZHIoc3RydWN0IGNl
ZHJ1c19jdHggKmN0eCwKPiAgCWlmIChpbmRleCA8IDApCj4gIAkJcmV0dXJuIDA7Cj4gIAo+IC0J
YnVmID0gY3R4LT5kc3RfYnVmc1tpbmRleF07Cj4gKwlidWYgPSBjdHgtPmZoLm0ybV9jdHgtPmNh
cF9xX2N0eC5xLmJ1ZnNbaW5kZXhdOwo+ICAJcmV0dXJuIGJ1ZiA/IGNlZHJ1c19idWZfYWRkcihi
dWYsICZjdHgtPmRzdF9mbXQsIHBsYW5lKSA6IDA7Cj4gIH0KPiAgCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IGluZGV4IGQwZWUzZjkw
ZmY0Ni4uYjIyOTBmOThkODFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IEBAIC0xMTksNyArMTE5LDcgQEAgc3RhdGljIHZv
aWQgY2VkcnVzX3dyaXRlX2ZyYW1lX2xpc3Qoc3RydWN0IGNlZHJ1c19jdHggKmN0eCwKPiAgCQlp
ZiAoYnVmX2lkeCA8IDApCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiAtCQljZWRydXNfYnVmID0gdmIy
X3RvX2NlZHJ1c19idWZmZXIoY3R4LT5kc3RfYnVmc1tidWZfaWR4XSk7Cj4gKwkJY2VkcnVzX2J1
ZiA9IHZiMl90b19jZWRydXNfYnVmZmVyKGNhcF9xLT5idWZzW2J1Zl9pZHhdKTsKPiAgCQlwb3Np
dGlvbiA9IGNlZHJ1c19idWYtPmNvZGVjLmgyNjQucG9zaXRpb247Cj4gIAkJdXNlZF9kcGJzIHw9
IEJJVChwb3NpdGlvbik7Cj4gIAo+IEBAIC0xOTQsNyArMTk0LDcgQEAgc3RhdGljIHZvaWQgX2Nl
ZHJ1c193cml0ZV9yZWZfbGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+ICAJCWlmIChidWZf
aWR4IDwgMCkKPiAgCQkJY29udGludWU7Cj4gIAo+IC0JCXJlZl9idWYgPSB0b192YjJfdjRsMl9i
dWZmZXIoY3R4LT5kc3RfYnVmc1tidWZfaWR4XSk7Cj4gKwkJcmVmX2J1ZiA9IHRvX3ZiMl92NGwy
X2J1ZmZlcihjYXBfcS0+YnVmc1tidWZfaWR4XSk7Cj4gIAkJY2VkcnVzX2J1ZiA9IHZiMl92NGwy
X3RvX2NlZHJ1c19idWZmZXIocmVmX2J1Zik7Cj4gIAkJcG9zaXRpb24gPSBjZWRydXNfYnVmLT5j
b2RlYy5oMjY0LnBvc2l0aW9uOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiBpbmRleCBlMmI1MzBiMWE5NTYuLjY4MWRmZTMz
NjdhNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1c192aWRlby5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYwo+IEBAIC00MTEsMjYgKzQxMSw2IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19x
dWV1ZV9jbGVhbnVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLCB1MzIgc3RhdGUpCj4gIAl9Cj4gIH0K
PiAgCj4gLXN0YXRpYyBpbnQgY2VkcnVzX2J1Zl9pbml0KHN0cnVjdCB2YjJfYnVmZmVyICp2YikK
PiAtewo+IC0Jc3RydWN0IHZiMl9xdWV1ZSAqdnEgPSB2Yi0+dmIyX3F1ZXVlOwo+IC0Jc3RydWN0
IGNlZHJ1c19jdHggKmN0eCA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+IC0KPiAtCWlmICghVjRM
Ml9UWVBFX0lTX09VVFBVVCh2cS0+dHlwZSkpCj4gLQkJY3R4LT5kc3RfYnVmc1t2Yi0+aW5kZXhd
ID0gdmI7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2b2lkIGNlZHJ1c19i
dWZfY2xlYW51cChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gLXsKPiAtCXN0cnVjdCB2YjJfcXVl
dWUgKnZxID0gdmItPnZiMl9xdWV1ZTsKPiAtCXN0cnVjdCBjZWRydXNfY3R4ICpjdHggPSB2YjJf
Z2V0X2Rydl9wcml2KHZxKTsKPiAtCj4gLQlpZiAoIVY0TDJfVFlQRV9JU19PVVRQVVQodnEtPnR5
cGUpKQo+IC0JCWN0eC0+ZHN0X2J1ZnNbdmItPmluZGV4XSA9IE5VTEw7Cj4gLX0KPiAtCj4gIHN0
YXRpYyBpbnQgY2VkcnVzX2J1Zl9vdXRfdmFsaWRhdGUoc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+
ICB7Cj4gIAlzdHJ1Y3QgdmIyX3Y0bDJfYnVmZmVyICp2YnVmID0gdG9fdmIyX3Y0bDJfYnVmZmVy
KHZiKTsKPiBAQCAtNTE3LDggKzQ5Nyw2IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19idWZfcmVxdWVz
dF9jb21wbGV0ZShzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gIHN0YXRpYyBzdHJ1Y3QgdmIyX29w
cyBjZWRydXNfcW9wcyA9IHsKPiAgCS5xdWV1ZV9zZXR1cAkJPSBjZWRydXNfcXVldWVfc2V0dXAs
Cj4gIAkuYnVmX3ByZXBhcmUJCT0gY2VkcnVzX2J1Zl9wcmVwYXJlLAo+IC0JLmJ1Zl9pbml0CQk9
IGNlZHJ1c19idWZfaW5pdCwKPiAtCS5idWZfY2xlYW51cAkJPSBjZWRydXNfYnVmX2NsZWFudXAs
Cj4gIAkuYnVmX3F1ZXVlCQk9IGNlZHJ1c19idWZfcXVldWUsCj4gIAkuYnVmX291dF92YWxpZGF0
ZQk9IGNlZHJ1c19idWZfb3V0X3ZhbGlkYXRlLAo+ICAJLmJ1Zl9yZXF1ZXN0X2NvbXBsZXRlCT0g
Y2VkcnVzX2J1Zl9yZXF1ZXN0X2NvbXBsZXRlLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
