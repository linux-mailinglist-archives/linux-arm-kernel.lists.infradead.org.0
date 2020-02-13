Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641E915CB48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 20:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sy77kUqHfk/M4FGpA9ONulBXHYJdbNm+fbY7+AGfIZQ=; b=hsg9hmzB+sqm8w4mji108+bf7
	Xj/MOfxHQQ+gNSwy6e2fWB9pHINvQXROsuK9ZkQLOwPFVLt/BOZxlBRVTQgzeZsie4Jg6cJbW6YjG
	nI5NlG3AoNYPXEOHNQ4o/lu0tG7CY3J7sZJT6v/lmAGZS8hW7n3r7/yEGpvjZV/SylDZJt2bsWv3G
	2xuC0UbsxQC1IxHyi5JHzRtKjszCi1Ejqi4psj0bWWf3WZd9esssAcOjT9Ky6I+4AokEYRBJO2Ilm
	x034z0D066D1FV31xaIeUY+LeKSpaHNGwacE1bB8DcvMaCwAPWpQMaQJdoz0uflEKXAzuEwlnkyWJ
	Tn19f0SEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2KM3-0002LL-75; Thu, 13 Feb 2020 19:40:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2KLv-0002KR-3X
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 19:40:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91F37328;
 Thu, 13 Feb 2020 11:40:45 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8E163F68E;
 Thu, 13 Feb 2020 11:40:43 -0800 (PST)
Subject: Re: arm64 iommu groups issue
To: John Garry <john.garry@huawei.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Guohanjun (Hanjun Guo)" <guohanjun@huawei.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
 <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
 <ddc7eaff-c3f9-4304-9b4e-75eff2c66cd5@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <be464e2a-03d5-0b2e-24ee-96d0d14fd739@arm.com>
Date: Thu, 13 Feb 2020 19:40:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ddc7eaff-c3f9-4304-9b4e-75eff2c66cd5@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_114047_237060_613C8D2B 
X-CRM114-Status: GOOD (  30.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Saravana Kannan <saravanak@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDIvMjAyMCAzOjQ5IHBtLCBKb2huIEdhcnJ5IHdyb3RlOgo+Pj4KPj4+IFRoZSB1bmRl
cmx5aW5nIGlzc3VlIGlzIHRoYXQsIGZvciBoaXN0b3JpY2FsIHJlYXNvbnMsIE9GL0lPUlQtYmFz
ZWQKPj4+IElPTU1VIGRyaXZlcnMgaGF2ZSBlbmRlZCB1cCB3aXRoIGdyb3VwIGFsbG9jYXRpb24g
YmVpbmcgdGllZCB0byBlbmRwb2ludAo+Pj4gZHJpdmVyIHByb2JpbmcgdmlhIHRoZSBkbWFfY29u
ZmlndXJlKCkgbWVjaGFuaXNtIChsb25nIHN0b3J5IHNob3J0LAo+Pj4gZHJpdmVyIHByb2JlIGlz
IHRoZSBvbmx5IHRoaW5nIHdoaWNoIGNhbiBiZSBkZWxheWVkIGluIG9yZGVyIHRvIHdhaXQgZm9y
Cj4+PiBhIHNwZWNpZmljIElPTU1VIGluc3RhbmNlIHRvIGJlIHJlYWR5KS5Ib3dldmVyLCBpbiB0
aGUgbWVhbnRpbWUsIHRoZQo+Pj4gSU9NTVUgQVBJIGludGVybmFscyBoYXZlIGV2b2x2ZWQgc3Vm
ZmljaWVudGx5IHRoYXQgSSB0aGluayB0aGVyZSdzIGEgd2F5Cj4+PiB0byByZWFsbHkgcHV0IHRo
aW5ncyByaWdodCAtIEkgaGF2ZSB0aGUgc3Bhcmsgb2YgYW4gaWRlYSB3aGljaCBJJ2xsIHRyeQo+
Pj4gdG8gc2tldGNoIG91dCBBU0FQLi4uCj4+Pgo+Pgo+PiBPSywgZ3JlYXQuCj4gCj4gSGkgUm9i
aW4sCj4gCj4gSSB3YXMgd29uZGVyaW5nIGlmIHlvdSBoYXZlIGhhZCBhIGNoYW5jZSB0byBjb25z
aWRlciB0aGlzIHByb2JsZW0gYWdhaW4/CgpZZWFoLCBzb3JyeSwgbW9yZSB0aGluZ3MgY2FtZSB1
cCBzdWNoIHRoYXQgaXQgc3RpbGwgaGFzbid0IGJlZW4gUCB5ZXQgOykKCkxvcmVuem8gYW5kIEkg
ZGlkIGdldCBhcyBmYXIgYXMgZGlzY3Vzc2luZyBpdCBhIGJpdCBtb3JlIGFuZCB3cml0aW5nIHVw
IAphIHRpY2tldCwgc28gaXQncyBmb3JtYWxseSBvbiBvdXIgaW50ZXJuYWwgcmFkYXIgbm93LCBh
dCBsZWFzdC4KCj4gT25lIHNpbXBsZSBpZGVhIGNvdWxkIGJlIHRvIGludHJvZHVjZSBhIGRldmlj
ZSBsaW5rIGJldHdlZW4gdGhlIGVuZHBvaW50IAo+IGRldmljZSBhbmQgaXRzIHBhcmVudCBicmlk
Z2UgdG8gZW5zdXJlIHRoYXQgdGhleSBwcm9iZSBpbiBvcmRlciwgYXMgCj4gZXhwZWN0ZWQgaW4g
cGNpX2RldmljZV9ncm91cCgpOgo+IAo+IFN1YmplY3Q6IFtQQVRDSF0gUENJOiBBZGQgZGV2aWNl
IGxpbmsgdG8gZW5zdXJlIGVuZHBvaW50IGRldmljZSBkcml2ZXIgCj4gcHJvYmVzIGFmdGVyIGJy
aWRnZQo+IAo+IEl0IGlzIHJlcXVpcmVkIHRvIGVuc3VyZSB0aGF0IGEgZGV2aWNlIGRyaXZlciBm
b3IgYW4gZW5kcG9pbnQgd2lsbCBwcm9iZQo+IGFmdGVyIHRoZSBwYXJlbnQgcG9ydCBkcml2ZXIs
IHNvIGFkZCBhIGRldmljZSBsaW5rIGZvciB0aGlzLgo+IAo+IC0tLQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9wcm9iZS5jIGIvZHJpdmVycy9wY2kvcHJvYmUuYwo+IGluZGV4IDUxMmNiNDMx
MmRkZC4uNGI4MzJhZDI1YjIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL3Byb2JlLmMKPiAr
KysgYi9kcml2ZXJzL3BjaS9wcm9iZS5jCj4gQEAgLTIzODMsNiArMjM4Myw3IEBAIHN0YXRpYyB2
b2lkIHBjaV9zZXRfbXNpX2RvbWFpbihzdHJ1Y3QgcGNpX2RldiAqZGV2KQo+ICDCoHZvaWQgcGNp
X2RldmljZV9hZGQoc3RydWN0IHBjaV9kZXYgKmRldiwgc3RydWN0IHBjaV9idXMgKmJ1cykKPiAg
wqB7Cj4gIMKgwqDCoMKgIGludCByZXQ7Cj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlICpwYXJlbnQ7
Cj4gCj4gIMKgwqDCoMKgIHBjaV9jb25maWd1cmVfZGV2aWNlKGRldik7Cj4gCj4gQEAgLTI0MjAs
NiArMjQyMSwxMCBAQCB2b2lkIHBjaV9kZXZpY2VfYWRkKHN0cnVjdCBwY2lfZGV2ICpkZXYsIHN0
cnVjdCAKPiBwY2lfYnVzICpidXMpCj4gIMKgwqDCoMKgIC8qIFNldCB1cCBNU0kgSVJRIGRvbWFp
biAqLwo+ICDCoMKgwqDCoCBwY2lfc2V0X21zaV9kb21haW4oZGV2KTsKPiAKPiArwqDCoMKgIHBh
cmVudCA9IGRldi0+ZGV2LnBhcmVudDsKPiArwqDCoMKgIGlmIChwYXJlbnQgJiYgcGFyZW50LT5i
dXMgPT0gJnBjaV9idXNfdHlwZSkKPiArwqDCoMKgwqDCoMKgwqAgZGV2aWNlX2xpbmtfYWRkKCZk
ZXYtPmRldiwgcGFyZW50LCBETF9GTEFHX0FVVE9QUk9CRV9DT05TVU1FUik7Cj4gKwo+ICDCoMKg
wqDCoCAvKiBOb3RpZmllciBjb3VsZCB1c2UgUENJIGNhcGFiaWxpdGllcyAqLwo+ICDCoMKgwqDC
oCBkZXYtPm1hdGNoX2RyaXZlciA9IGZhbHNlOwo+ICDCoMKgwqDCoCByZXQgPSBkZXZpY2VfYWRk
KCZkZXYtPmRldik7Cj4gLS0gCj4gCj4gVGhpcyB3b3VsZCB3b3JrLCBidXQgdGhlIHByb2JsZW0g
aXMgdGhhdCBpZiB0aGUgcG9ydCBkcml2ZXIgZmFpbHMgaW4gCj4gcHJvYmluZyAtIGFuZCBub3Qg
anVzdCBmb3IgLUVQUk9CRV9ERUZFUiAtIHRoZW4gdGhlIGNoaWxkIGRldmljZSB3aWxsIAo+IG5l
dmVyIHByb2JlLiBUaGlzIHZlcnkgdGhpbmcgaGFwcGVucyBvbiBteSBkZXYgYm9hcmQuIEhvd2V2
ZXIgd2UgY291bGQgCj4gZXhwYW5kIHRoZSBkZXZpY2UgbGlua3MgQVBJIHRvIGNvdmVyIHRoaXMg
c29ydCBvZiBzY2VuYXJpby4KClllcywgdGhhdCdzIGFuIHVuZGVzaXJhYmxlIGlzc3VlLCBidXQg
aW4gZmFjdCBJIHRoaW5rIGl0J3MgbW9zdGx5IAppbmRpY2F0aXZlIHRoYXQgaW52b2x2aW5nIGRy
aXZlcnMgaW4gc29tZXRoaW5nIHdoaWNoIGlzIGRlc2lnbmVkIHRvIApoYXBwZW4gYXQgYSBsZXZl
bCBiZWxvdyBkcml2ZXJzIGlzIHN0aWxsIGZ1bmRhbWVudGFsbHkgd3JvbmcgYW5kIGRvb21lZCAK
dG8gYmUgZnJhZ2lsZSBhdCBiZXN0LgoKQW5vdGhlciB0aG91Z2h0IHRoYXQgY3Jvc3NlcyBteSBt
aW5kIGlzIHRoYXQgd2hlbiBwY2lfZGV2aWNlX2dyb3VwKCkgCndhbGtzIHVwIHRvIHRoZSBwb2lu
dCBvZiBBQ1MgaXNvbGF0aW9uIGFuZCBkb2Vzbid0IGZpbmQgYW4gZXhpc3RpbmcgCmdyb3VwLCBp
dCBjYW4gc3RpbGwgaW5mZXIgdGhhdCBldmVyeXRoaW5nIGl0IHdhbGtlZCBwYXN0ICpzaG91bGQq
IGJlIHB1dCAKaW4gdGhlIHNhbWUgZ3JvdXAgaXQncyB0aGVuIGV2ZW50dWFsbHkgZ29pbmcgdG8g
cmV0dXJuLiBVbmZvcnR1bmF0ZWx5IEkgCmNhbid0IHNlZSBhbiBvYnZpb3VzIHdheSBmb3IgaXQg
dG8gYWN0IG9uIHRoYXQga25vd2xlZGdlLCB0aG91Z2gsIHNpbmNlIApyZWN1cnNpdmUgaW9tbXVf
cHJvYmVfZGV2aWNlKCkgaXMgdW5saWtlbHkgdG8gZW5kIHdlbGwuCgo+IEFzIGZvciBhbHRlcm5h
dGl2ZXMsIGl0IGxvb2tzIHByZXR0eSBkaWZmaWN1bHQgdG8gbWUgdG8gZGlzYXNzb2NpYXRlIHRo
ZSAKPiBncm91cCBhbGxvY2F0aW9uIGZyb20gdGhlIGRtYV9jb25maWd1cmUgcGF0aC4KCkluZGVl
ZCBpdCdzIG5vbi10cml2aWFsLCBidXQgaXQgcmVhbGx5IGRvZXMgbmVlZCBjbGVhbmluZyB1cCBh
dCBzb21lIHBvaW50LgoKSGF2aW5nIGp1c3QgaGFkIHlldCBhbm90aGVyIHNwYXJrLCBkb2VzIHNv
bWV0aGluZyBsaWtlIHRoZSB1bnRlc3RlZCAKc3VwZXItaGFjayBiZWxvdyB3b3JrIGF0IGFsbD8g
SSBkb3VidCBpdCdzIGEgdmlhYmxlIGRpcmVjdGlvbiB0byB0YWtlIGluIAppdHNlbGYsIGJ1dCBp
dCBjb3VsZCBiZSBmb29kIGZvciB0aG91Z2h0IGlmIGl0IGF0IGxlYXN0IHByb3ZlcyB0aGUgY29u
Y2VwdC4KClJvYmluLgoKLS0tLS0+OC0tLS0tCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2Fy
bS1zbW11LXYzLmMgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMKaW5kZXggYWEzYWMyYTAz
ODA3Li41NTRjZGU3NmM3NjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMu
YworKysgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMKQEAgLTM4NDEsMjAgKzM4NDEsMjAg
QEAgc3RhdGljIGludCBhcm1fc21tdV9zZXRfYnVzX29wcyhzdHJ1Y3QgaW9tbXVfb3BzIAoqb3Bz
KQogIAlpbnQgZXJyOwoKICAjaWZkZWYgQ09ORklHX1BDSQotCWlmIChwY2lfYnVzX3R5cGUuaW9t
bXVfb3BzICE9IG9wcykgeworCWlmICgxKSB7CiAgCQllcnIgPSBidXNfc2V0X2lvbW11KCZwY2lf
YnVzX3R5cGUsIG9wcyk7CiAgCQlpZiAoZXJyKQogIAkJCXJldHVybiBlcnI7CiAgCX0KICAjZW5k
aWYKICAjaWZkZWYgQ09ORklHX0FSTV9BTUJBCi0JaWYgKGFtYmFfYnVzdHlwZS5pb21tdV9vcHMg
IT0gb3BzKSB7CisJaWYgKDEpIHsKICAJCWVyciA9IGJ1c19zZXRfaW9tbXUoJmFtYmFfYnVzdHlw
ZSwgb3BzKTsKICAJCWlmIChlcnIpCiAgCQkJZ290byBlcnJfcmVzZXRfcGNpX29wczsKICAJfQog
ICNlbmRpZgotCWlmIChwbGF0Zm9ybV9idXNfdHlwZS5pb21tdV9vcHMgIT0gb3BzKSB7CisJaWYg
KDEpIHsKICAJCWVyciA9IGJ1c19zZXRfaW9tbXUoJnBsYXRmb3JtX2J1c190eXBlLCBvcHMpOwog
IAkJaWYgKGVycikKICAJCQlnb3RvIGVycl9yZXNldF9hbWJhX29wczsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaW9tbXUvaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUvaW9tbXUuYwppbmRleCA2NjBlZWE4
ZDFkMmYuLmI4MWFlMmI0ZDRmYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdS5jCisr
KyBiL2RyaXZlcnMvaW9tbXUvaW9tbXUuYwpAQCAtMTU0Miw2ICsxNTQyLDE0IEBAIHN0YXRpYyBp
bnQgaW9tbXVfYnVzX2luaXQoc3RydWN0IGJ1c190eXBlICpidXMsIApjb25zdCBzdHJ1Y3QgaW9t
bXVfb3BzICpvcHMpCiAgCXJldHVybiBlcnI7CiAgfQoKK3N0YXRpYyBpbnQgaW9tbXVfYnVzX3Jl
cGxheShzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEpCit7CisJaWYgKGRldi0+aW9tbXVf
Z3JvdXApCisJCXJldHVybiAwOworCisJcmV0dXJuIGFkZF9pb21tdV9ncm91cChkZXYsIGRhdGEp
OworfQorCiAgLyoqCiAgICogYnVzX3NldF9pb21tdSAtIHNldCBpb21tdS1jYWxsYmFja3MgZm9y
IHRoZSBidXMKICAgKiBAYnVzOiBidXMuCkBAIC0xNTY0LDYgKzE1NzIsOSBAQCBpbnQgYnVzX3Nl
dF9pb21tdShzdHJ1Y3QgYnVzX3R5cGUgKmJ1cywgY29uc3QgCnN0cnVjdCBpb21tdV9vcHMgKm9w
cykKICAJCXJldHVybiAwOwogIAl9CgorCWlmIChidXMtPmlvbW11X29wcyA9PSBvcHMpCisJCXJl
dHVybiBidXNfZm9yX2VhY2hfZGV2KGJ1cywgTlVMTCwgTlVMTCwgaW9tbXVfYnVzX3JlcGxheSk7
CisKICAJaWYgKGJ1cy0+aW9tbXVfb3BzICE9IE5VTEwpCiAgCQlyZXR1cm4gLUVCVVNZOwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
