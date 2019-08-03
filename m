Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E9C807C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 20:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZNMedpf12RRNZmRbXmPl+NID5DZZuLPRVdPQXJbfow=; b=IGcMtBN+FVSMTg
	Ejla0sQhUV02RH0HPdd4EoO8NCQq06+V5dO6hyPNGtGKYFWDJgdmNKmjd5bkjHXPy3ohJVnwhAXWk
	FekaKFu2arNvmFXfZmX5UeJ1UVOCr+g8qBHJQw9fj6oiWzIvZRPkCYEN9O5AqK9D5A5ycK3v48Iod
	1Hi1LcQjWVykWb4DiW+drDpz63VEHQOnYiWyE9U1immgofZGfW6/W3wa38EX3lgdvmo6cWklWzZqc
	rtqV48Boo7nYw0NZN8outWT2dSbdXRm/NcgAKHeze0rsOd3rheuYeQpuHqgrD+Xblb4WmUayHrBAm
	Cze+HWd5/c7jsu8/kRhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htyrp-00066v-G6; Sat, 03 Aug 2019 18:34:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htyrN-0005tI-P6; Sat, 03 Aug 2019 18:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9M2MLeUnlkFI+r7V5jW757xqZ1JZIPJo/ExJUeqgiJ0=; b=dhCjxP1ZD5hspyeRKNOBJahqAN
 SyZcXf2GlXCQZpho8ysccaeEPWQ9BQArXRLlFmSMaa7rJhAqFRaOMunEBlqkxe0NfCsB4rIB9r5C/
 6bOuh6s4Foanl+nGjiKbrsvtLdxpXs3RrUVHQ/W1PL2OAHi8NrkrGv9xaOplzAVz25dUFE1TNMWlE
 D5JhvdOaEEzCiOBuaJkpWkVpzeYSRxgiKyz23ijfHuA8i7tnn95UxIogpRybJqFzm0ncEPtLW9rcc
 Wg8dsq1Y1qQueayrEyWt/ZftqASLsN1wbCUlhBqWuzTtskV/sS2zVLuBwLvtwpQaJGv50sdk5Rtp4
 hSaqRpwA==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=[192.168.1.17])
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htyrE-00072c-JW; Sat, 03 Aug 2019 18:34:20 +0000
Subject: Re: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
To: Nathan Chancellor <natechancellor@gmail.com>
References: <20190731185023.20954-1-natechancellor@gmail.com>
 <20190803060155.89548-1-natechancellor@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <11bf2f76-1487-7831-e6df-dbec632b3f34@infradead.org>
Date: Sat, 3 Aug 2019 11:34:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803060155.89548-1-natechancellor@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, willy@infradead.org, broonie@kernel.org,
 linux-next@vger.kernel.org, netdev@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8yLzE5IDExOjAxIFBNLCBOYXRoYW4gQ2hhbmNlbGxvciB3cm90ZToKPiBBZnRlciBjb21t
aXQgMTcxYTliYWU2OGM3ICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRlc3QgYnVpbGQgb24KPiAh
TUlQUyIpLCB0aGUgZm9sbG93aW5nIGNvbWJpbmF0aW9uIG9mIGNvbmZpZ3MgY2F1c2UgYSBmZXcg
S2NvbmZpZwo+IHdhcm5pbmdzIGFuZCBidWlsZCBlcnJvcnMgKGRpc3RpbGxlZCBmcm9tIGFybSBh
bGx5ZXNjb25maWcgYW5kIFJhbmR5J3MKPiByYW5kY29uZmlnIGJ1aWxkcyk6Cj4gCj4gICAgIENP
TkZJR19ORVRERVZJQ0VTPXkKPiAgICAgQ09ORklHX1NUQUdJTkc9eQo+ICAgICBDT05GSUdfQ09N
UElMRV9URVNUPXkKPiAKPiBhbmQgQ09ORklHX09DVEVPTl9FVEhFUk5FVCBhcyBlaXRoZXIgYSBt
b2R1bGUgb3IgYnVpbHQtaW4uCj4gCj4gV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2ll
cyBkZXRlY3RlZCBmb3IgTURJT19PQ1RFT04KPiAgIERlcGVuZHMgb24gW25dOiBORVRERVZJQ0VT
IFs9eV0gJiYgTURJT19ERVZJQ0UgWz15XSAmJiBNRElPX0JVUyBbPXldCj4gJiYgNjRCSVQgWz1u
XSAmJiBIQVNfSU9NRU0gWz15XSAmJiBPRl9NRElPIFs9bl0KPiAgIFNlbGVjdGVkIGJ5IFt5XToK
PiAgIC0gT0NURU9OX0VUSEVSTkVUIFs9eV0gJiYgU1RBR0lORyBbPXldICYmIChDQVZJVU1fT0NU
RU9OX1NPQyB8fAo+IENPTVBJTEVfVEVTVCBbPXldKSAmJiBORVRERVZJQ0VTIFs9eV0KPiAKPiBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmM6MTQ6
Cj4gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmg6MTExOjM2OiBlcnJvcjogaW1wbGlj
aXQgZGVjbGFyYXRpb24gb2YKPiBmdW5jdGlvbiDigJh3cml0ZXHigJk7IGRpZCB5b3UgbWVhbiDi
gJh3cml0ZWzigJk/Cj4gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4g
ICAxMTEgfCAjZGVmaW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2
b2lkICopYWRkcikKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn5+Cj4gCj4gQ09ORklHXzY0QklUIGlzIG5vdCBzdHJpY3RseSBuZWNlc3NhcnkgaWYgdGhl
IHByb3BlciByZWFkcS93cml0ZXEKPiBkZWZpbml0aW9ucyBhcmUgaW5jbHVkZWQgZnJvbSBpby02
NC1ub25hdG9taWMtbG8taGkuaC4KPiAKPiBDT05GSUdfT0ZfTURJTyBpcyBub3QgbmVlZGVkIHdo
ZW4gQ09ORklHX0NPTVBJTEVfVEVTVCBpcyBlbmFibGVkIGJlY2F1c2UKPiBvZiBjb21taXQgZjlk
YzlhYzUxNjEwICgib2YvbWRpbzogQWRkIGR1bW15IGZ1bmN0aW9ucyBpbiBvZl9tZGlvLmguIiku
Cj4gCj4gRml4ZXM6IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0ZXN0IGJ1
aWxkIG9uICFNSVBTIikKPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRl
bC5jb20+Cj4gUmVwb3J0ZWQtYnk6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBS
ZXBvcnRlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KCldv
cmtzIGZvciBtZS4gRml4ZXMgdGhlIHJlcG9ydGVkIGJ1aWxkIGVycm9ycy4gIFRoYW5rcy4KCkFj
a2VkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4gIyBidWlsZC10ZXN0
ZWQKCj4gLS0tCj4gCj4gdjEgLT4gdjI6Cj4gCj4gKiBBZGRyZXNzIFJhbmR5J3MgcmVwb3J0ZWQg
ZmFpbHVyZSBoZXJlOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvYjM0NDQyODMtN2E3
Ny1lY2U4LTdhYzYtNDE3NTZhYTdkYzYwQGluZnJhZGVhZC5vcmcvCj4gICBieSBub3QgcmVxdWly
aW5nIENPTkZJR19PRl9NRElPIHdoZW4gQ09ORklHX0NPTVBJTEVfVEVTVCBpcyBzZXQuCj4gCj4g
KiBJbXByb3ZlIGNvbW1pdCBtZXNzYWdlCj4gCj4gIGRyaXZlcnMvbmV0L3BoeS9LY29uZmlnICAg
ICAgIHwgNCArKy0tCj4gIGRyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oIHwgMiArKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L0tjb25maWcgYi9kcml2ZXJzL25ldC9waHkvS2NvbmZp
Zwo+IGluZGV4IDIwZjE0YzVmYmI3ZS4uMGUzZDllM2QzNTMzIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L3BoeS9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9uZXQvcGh5L0tjb25maWcKPiBAQCAt
MTU5LDggKzE1OSw4IEBAIGNvbmZpZyBNRElPX01TQ0NfTUlJTQo+ICAKPiAgY29uZmlnIE1ESU9f
T0NURU9OCj4gIAl0cmlzdGF0ZSAiT2N0ZW9uIGFuZCBzb21lIFRodW5kZXJYIFNPQ3MgTURJTyBi
dXNlcyIKPiAtCWRlcGVuZHMgb24gNjRCSVQKPiAtCWRlcGVuZHMgb24gSEFTX0lPTUVNICYmIE9G
X01ESU8KPiArCWRlcGVuZHMgb24gKDY0QklUICYmIE9GX01ESU8pIHx8IENPTVBJTEVfVEVTVAo+
ICsJZGVwZW5kcyBvbiBIQVNfSU9NRU0KPiAgCXNlbGVjdCBNRElPX0NBVklVTQo+ICAJaGVscAo+
ICAJICBUaGlzIG1vZHVsZSBwcm92aWRlcyBhIGRyaXZlciBmb3IgdGhlIE9jdGVvbiBhbmQgVGh1
bmRlclggTURJTwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9waHkvbWRpby1jYXZpdW0uaCBi
L2RyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oCj4gaW5kZXggZWQ1ZjliYjU0NDhkLi5iN2Y4
OWFkMjc0NjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmgKPiAr
KysgYi9kcml2ZXJzL25ldC9waHkvbWRpby1jYXZpdW0uaAo+IEBAIC0xMDgsNiArMTA4LDggQEAg
c3RhdGljIGlubGluZSB1NjQgb2N0X21kaW9fcmVhZHEodTY0IGFkZHIpCj4gIAlyZXR1cm4gY3Zt
eF9yZWFkX2NzcihhZGRyKTsKPiAgfQo+ICAjZWxzZQo+ICsjaW5jbHVkZSA8bGludXgvaW8tNjQt
bm9uYXRvbWljLWxvLWhpLmg+Cj4gKwo+ICAjZGVmaW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFk
ZHIpCXdyaXRlcSh2YWwsICh2b2lkICopYWRkcikKPiAgI2RlZmluZSBvY3RfbWRpb19yZWFkcShh
ZGRyKQkJcmVhZHEoKHZvaWQgKilhZGRyKQo+ICAjZW5kaWYKPiAKCgotLSAKflJhbmR5CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
