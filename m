Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C563D7650C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PjG6ULWRcOD5JAispqc6WiD8Uf0R2LW+HMU1aMVy/OQ=; b=gOGG3LCURFnJll8XcT2r9FPNH
	LSU2Xbe8XvOhjbcVCCXQo2guOFlD2UpKiQsiD/tB2DiB7lDjIEVo4lyYvmZV8SnocysDDpN7JjBcs
	RcmdT175boUo0nRJHhqU6cTzfgUbc3PQNc22WmjoGBDLDarsDfyw/sqguw/h4HZlEEBF0Pwlu6RzY
	g5r7LCM/l2D/nJs5unk3462MPurxMsGCNKnzxSeyBSDl9TYHLrvKmnpxQo+21nQTTCxO8R215y8QQ
	SImI4Ik5wmAjqeQ0lS6NXzhFyDdtdZNTyjWjLaaU3+pGOTBUwtS4dihpwYrJCHJm6VuBpAcCdgNo8
	Jj7sdMzsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyv8-0001GJ-4C; Fri, 26 Jul 2019 12:01:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyuH-000102-Pg
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:01:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F185344;
 Fri, 26 Jul 2019 05:01:04 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2B983F694;
 Fri, 26 Jul 2019 05:01:03 -0700 (PDT)
Subject: Re: [PATCH] iommu: arm-smmu-v3: Mark expected switch fall-through
To: Anders Roxell <anders.roxell@linaro.org>, will@kernel.org, joro@8bytes.org
References: <20190726112821.19775-1-anders.roxell@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <522507e5-96e6-2bf4-cf91-73963a77358d@arm.com>
Date: Fri, 26 Jul 2019 13:01:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190726112821.19775-1-anders.roxell@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050106_015294_C4ED0C53 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDcvMjAxOSAxMjoyOCwgQW5kZXJzIFJveGVsbCB3cm90ZToKPiBXaGVuIGZhbGwtdGhy
b3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBkZWZhdWx0LCBjb21taXQgZDkzNTEyZWYwZjBl
CgpUaGF0IGNvbW1pdCBJRCBvbmx5IGV4aXN0cyBpbiBhIGhhbmRmdWwgb2Ygb2xkIGxpbnV4LW5l
eHQgdGFncy4KCj4gKCJNYWtlZmlsZTogR2xvYmFsbHkgZW5hYmxlIGZhbGwtdGhyb3VnaCB3YXJu
aW5nIiksIHRoZSBmb2xsb3dpbmcKPiB3YXJuaW5nIHdhcyBzdGFydGluZyB0byBzaG93IHVwOgo+
IAo+IC4uL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYzogSW4gZnVuY3Rpb24g4oCYYXJtX3Nt
bXVfd3JpdGVfc3RydGFiX2VudOKAmToKPiAuLi9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmM6
MTE4OTo3OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+ICAgdGhyb3VnaCBbLVdp
bXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gICAgICBpZiAoZGlzYWJsZV9ieXBhc3MpCj4gICAgICAg
ICBeCj4gLi4vZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jOjExOTE6Mzogbm90ZTogaGVyZQo+
ICAgICBkZWZhdWx0Ogo+ICAgICBefn5+fn5+Cj4gCj4gUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBp
bGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxsLXRocm91Z2guIE1ha2UgaXQKPiBjbGVhcmVyIGJ5
IGNhbGxpbmcgJ0JVRygpJyB3aGVuIGRpc2FibGVfYnlwYXNzIGlzIHNldCwgYW5kIGFsd2F5cwo+
ICdicmVhazsnCj4gCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyB2NC4yKwo+IEZpeGVz
OiA1YmMwYTExNjY0ZTEgKCJpb21tdS9hcm0tc21tdTogRG9uJ3QgQlVHKCkgaWYgd2UgZmluZCBh
Ym9ydGluZyBTVEVzIHdpdGggZGlzYWJsZV9ieXBhc3MiKQoKV2h5PyBUaGVyZSdzIG5vIGFjdHVh
bCBidWcsIGFuZCBub3QgZXZlbiBjdXJyZW50IGtlcm5lbHMgaGF2ZSB0aGF0IAp3YXJuaW5nIGVu
YWJsZWQuCgo+IFNpZ25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGlu
YXJvLm9yZz4KPiAtLS0KPiAgIGRyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYyB8IDUgKysrLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYyBiL2RyaXZlcnMvaW9tbXUv
YXJtLXNtbXUtdjMuYwo+IGluZGV4IGE5YTlmYWJkMzk2OC4uOGU1ZjA1NjU5OTZkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYwo+ICsrKyBiL2RyaXZlcnMvaW9tbXUv
YXJtLXNtbXUtdjMuYwo+IEBAIC0xMTg2LDggKzExODYsOSBAQCBzdGF0aWMgdm9pZCBhcm1fc21t
dV93cml0ZV9zdHJ0YWJfZW50KHN0cnVjdCBhcm1fc21tdV9tYXN0ZXIgKm1hc3RlciwgdTMyIHNp
ZCwKPiAgIAkJCXN0ZV9saXZlID0gdHJ1ZTsKPiAgIAkJCWJyZWFrOwo+ICAgCQljYXNlIFNUUlRB
Ql9TVEVfMF9DRkdfQUJPUlQ6Cj4gLQkJCWlmIChkaXNhYmxlX2J5cGFzcykKPiAtCQkJCWJyZWFr
Owo+ICsJCQlpZiAoIWRpc2FibGVfYnlwYXNzKQo+ICsJCQkJQlVHKCk7CgpZb3UgbWF5IGFzIHdl
bGwganVzdCB1c2UgQlVHX09OKCkuCgpSb2Jpbi4KCj4gKwkJCWJyZWFrOwo+ICAgCQlkZWZhdWx0
Ogo+ICAgCQkJQlVHKCk7IC8qIFNURSBjb3JydXB0aW9uICovCj4gICAJCX0KPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
