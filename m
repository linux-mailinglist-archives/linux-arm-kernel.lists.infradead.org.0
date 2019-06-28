Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA7B5934C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V65ajRLbUzVe4RE+zOeCanHE3DoEVF0KslX6bSbu934=; b=I09+DJ02w0Efq1QpoCdxBFIbV
	vKC7UT7OdE6OOCXFvDGp60KaH5RcEi4KjstKobOKzF/Ha4K2kM7kxdtHHdN9MbowLyNrIihCnrzGz
	eFzhsbsMbm9dYokgBRB+AbZpIdfoFMwGKoVAHGrsQMN+HxzMlxovzOhDv1N+TiJoOaZzeizxmizsI
	tVgZmVIy+XVQ7lu4dMgUR3Wp3HWNcIr8OvLYnFrfCllAtCyJ9lclf6j8fUM2cX48vwvS3ej9403fT
	ieE5OS/GJg9djtcAQm5tLSRCdl2NJ825Jc8CiAFqXFhFXnfv4lKHMareYcOyF2m1VsNllbuaUvgXh
	OsoUc2vZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjDq-0006hl-BG; Fri, 28 Jun 2019 05:14:54 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjDZ-0006h5-Dn
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:14:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S5EVJW031355;
 Fri, 28 Jun 2019 00:14:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561698871;
 bh=iF00KIo+4r+9trT3BCASF5YrDSJ/Qfa6cC6Xz6QeYK8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kNw1F7jhPm2zOvofudfNhNVNKII7XpEJ4jKfjA485+Bb49qqrdy8AFuATdH12qhks
 Rcf42sD1+0oE4tGLWfN946ZogQ5H5DQn8itlJ8JWFuqGKdIC91inDedvLzpt++WihN
 I6H7oPk/KAZ9lm0+BeoYYKuvyDlH4IfKeQDGG6Ss=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S5EVYx039798
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 00:14:31 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 00:14:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 00:14:30 -0500
Received: from [10.250.133.155] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S5EQvl015894;
 Fri, 28 Jun 2019 00:14:27 -0500
Subject: Re: [RESEND PATCH 00/10] crypto: k3: Add sa2ul driver
To: Eric Biggers <ebiggers@kernel.org>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628045318.GC673@sol.localdomain>
From: keerthy <j-keerthy@ti.com>
Message-ID: <7ca64e49-6e1f-c74e-4d8e-0e08607fe5c5@ti.com>
Date: Fri, 28 Jun 2019 10:44:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628045318.GC673@sol.localdomain>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_221437_547508_9FC6C26C 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzI4LzIwMTkgMTA6MjMgQU0sIEVyaWMgQmlnZ2VycyB3cm90ZToKPiBIaSBLZWVydGh5
LAo+IAo+IE9uIEZyaSwgSnVuIDI4LCAyMDE5IGF0IDA5OjU3OjM1QU0gKzA1MzAsIEtlZXJ0aHkg
d3JvdGU6Cj4+IFRoZSBzZXJpZXMgYWRkcyBDcnlwdG8gaGFyZHdhcmUgYWNjZWxlcmF0b3Igc3Vw
cG9ydCBmb3IgU0EyVUwuCj4+IFNBMlVMIHN0YW5kcyBmb3Igc2VjdXJpdHkgYWNjZWxlcmF0b3Ig
dWx0cmEgbGl0ZS4KPj4KPj4gVGhlIFNlY3VyaXR5IEFjY2VsZXJhdG9yIChTQTJfVUwpIHN1YnN5
c3RlbSBwcm92aWRlcyBoYXJkd2FyZQo+PiBjcnlwdG9ncmFwaGljIGFjY2VsZXJhdGlvbiBmb3Ig
dGhlIGZvbGxvd2luZyB1c2UgY2FzZXM6Cj4+IOKAoiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNh
dGlvbiBmb3Igc2VjdXJlIGJvb3QKPj4g4oCiIEVuY3J5cHRpb24gYW5kIGF1dGhlbnRpY2F0aW9u
IG9mIGNvbnRlbnQgaW4gYXBwbGljYXRpb25zCj4+ICAgIHJlcXVpcmluZyBEUk0gKGRpZ2l0YWwg
cmlnaHRzIG1hbmFnZW1lbnQpIGFuZAo+PiAgICBjb250ZW50L2Fzc2V0IHByb3RlY3Rpb24KPj4g
VGhlIGRldmljZSBpbmNsdWRlcyBvbmUgaW5zdGFudGlhdGlvbiBvZiBTQTJfVUwgbmFtZWQgU0Ey
X1VMMAo+Pgo+PiBTQTJVTCBuZWVkcyBvbiB0eCBjaGFubmVsIGFuZCBhIHBhaXIgb2YgcnggZG1h
IGNoYW5uZWxzLgo+Pgo+PiBUaGlzIHNlcmllcyBoYXMgZGVwZW5kZW5jeSBvbiBVRE1BIHNlcmll
cy4gSGVuY2UgaXMgYmFzZWQgb24gdG9wIG9mOgo+Pgo+PiBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3Byb2plY3QvbGludXgtZG1hZW5naW5lL2xpc3QvP3Nlcmllcz0xMTQxMDUKPj4KPj4g
VGhlIGFib3ZlIHNlcmllcyBhZGRzIGNvdXBsZSBvZiBkbWFlbmdpbmUgQVBJcyB0aGF0IGFyZSB1
c2VkCj4+IGJ5IHRoZSBzYTJ1bCBkcml2ZXIuIEhlbmNlIHRoZXJlIGlzIGEgaGFyZCBkZXBlbmRl
bmN5IG9uIHRoZQo+PiBhYm92ZSBzZXJpZXMuCj4+Cj4+IFJlc2VuZGluZyB3aXRoIGxpbnV4LWNy
eXB0byBsaXN0IGluIENjLgo+Pgo+PiBLZWVydGh5ICgxMCk6Cj4+ICAgIGR0LWJpbmRpbmdzOiBj
cnlwdG86IGszOiBBZGQgc2EydWwgYmluZGluZ3MgZG9jdW1lbnRhdGlvbgo+PiAgICBjcnlwdG86
IHNhMnVsOiBBZGQgY3J5cHRvIGRyaXZlcgo+PiAgICBjcnlwdG86IHNhMnVsOiBBZGQgQUVTIEVD
QiBNb2RlIHN1cHBvcnQKPj4gICAgY3J5cHRvOiBzYTJ1bDogQWRkIGFlYWQgc3VwcG9ydCBmb3Ig
aG1hYyhzaGExKWNiYyhhZXMpIGFsZ29yaXRobQo+PiAgICBjcnlwdG86IHNoYTI1Nl9nZW5lcmlj
OiBFeHBvcnQgdGhlIFRyYW5zZm9ybSBmdW5jdGlvbgo+PiAgICBjcnlwdG86IHNhMnVsOiBBZGQg
aG1hYyhzaGEyNTYpY2JjKGFlcykgQUVBRCBBbGdvIHN1cHBvcnQKPj4gICAgY3J5cHRvOiBzYTJ1
bDogQWRkIGhtYWMoc2hhMSkgSE1BQyBhbGdvcml0aG0gc3VwcG9ydAo+PiAgICBjcnlwdG86IHNh
MnVsOiBBZGQgaG1hYyhzaGEyNTYpIEhNQUMgYWxnb3JpdGhtIHN1cHBvcnQKPj4gICAgc2EydWw6
IEFkZCAzREVTIEVDQiAmIENCQyBNb2RlIHN1cHBvcnQKPj4gICAgYXJtNjQ6IGR0czogazMtYW02
OiBBZGQgY3J5cHRvIGFjY2VsYXJhdG9yIG5vZGUKPj4KPj4gICAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9jcnlwdG8vc2EydWwudHh0ICAgICAgfCAgIDQ3ICsKPj4gICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpICAgICAgfCAgIDMzICsKPj4gICBjcnlwdG8vc2hhMjU2
X2dlbmVyaWMuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgICAzICstCj4+ICAgZHJpdmVycy9j
cnlwdG8vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxNyArCj4+ICAgZHJpdmVy
cy9jcnlwdG8vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCj4+ICAgZHJp
dmVycy9jcnlwdG8vc2EydWwuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgMjIzMiArKysrKysr
KysrKysrKysrKwo+PiAgIGRyaXZlcnMvY3J5cHRvL3NhMnVsLmggICAgICAgICAgICAgICAgICAg
ICAgICB8ICAzODQgKysrCj4+ICAgaW5jbHVkZS9jcnlwdG8vc2hhLmggICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAgMSArCj4+ICAgOCBmaWxlcyBjaGFuZ2VkLCAyNzE3IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQKPj4gICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9jcnlwdG8vc2EydWwuYwo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2NyeXB0by9zYTJ1bC5oCj4gCj4gRGlkIHlvdSBydW4gdGhlIGNyeXB0byBzZWxmLXRlc3RzIG9u
IHRoaXMgZHJpdmVyPyAgaS5lLiBib290IGEga2VybmVsIHdpdGgKPiAKPiAJIyBDT05GSUdfQ1JZ
UFRPX01BTkFHRVJfRElTQUJMRV9URVNUUyBpcyBub3Qgc2V0Cj4gCUNPTkZJR19ERUJVR19LRVJO
RUw9eQo+IAlDT05GSUdfQ1JZUFRPX01BTkFHRVJfRVhUUkFfVEVTVFM9eQo+IAo+IFdoYXQgYXJl
IHRoZSByZXN1bHRzPwoKRXJpYywKClRoYW5rcyBmb3IgeW91ciByZXNwb25zZS4gSSBkaWQgdHJ5
IHdpdGggdGhhdC4gQWxsIHRlc3QgY2FzZXMKd2VyZSBwYXNzaW5nIG9uIDQuMTkga2VybmVsIGJl
Zm9yZSB0aGUgdGVzdG1nciByZXZhbXAuCgpDdXJyZW50bHkgZmV3IG9mIHRoZSB0ZXN0IGNhc2Vz
IGRvIGZhaWwuIEZvciBleDogQXBwZW5kaW5nCnRoZSBsYXN0IGl2bGVuIGJ5dGVzIG9mIGNpcGhl
ciB0ZXh0IGFzIHRoZSBJVi4KCj4gCj4gQWxzbywgdGhpcyBwYXRjaHNldCBkb2VzIG5vdCBjb21w
aWxlIGZvciBtZS4KClRoaXMgaGFzIGRlcGVuZGVuY3kgb24gVURNQSBzZXJpZXM6IApodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwOTMwOTY5LwoKCj4gCj4gRXJyb3I6IGFyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2k6MTAzLjMzLTM0IHN5bnRheCBlcnJv
cgo+IEZBVEFMIEVSUk9SOiBVbmFibGUgdG8gcGFyc2UgaW5wdXQgdHJlZQo+ICAgIERUQyAgICAg
YXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmEyMTAtcDI1NzEuZHRiCj4gbWFrZVsyXTog
KioqIFtzY3JpcHRzL01ha2VmaWxlLmxpYjoyOTQ6IGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NTQtYmFzZS1ib2FyZC5kdGJdIEVycm9yIDEKPiBtYWtlWzFdOiAqKiogW3NjcmlwdHMvTWFr
ZWZpbGUuYnVpbGQ6NDg5OiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpXSBFcnJvciAyCj4gbWFrZVsx
XTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KPiAKPiAtIEVyaWMKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
