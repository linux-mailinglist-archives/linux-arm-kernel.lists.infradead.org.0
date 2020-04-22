Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9C71B439F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vtKHjMN3ufD0vFwlLFJdWyBYYL2lqqKEicsSfK9Ogk=; b=mugqKOpJcrDGjM
	CGUqPFq8Ed5E46HM4uUsPkapNONNb08HQqUJMLRloLEBpUZVNA2Bp+CHBVKFCAsnYvowuBdC1wJo8
	8SDcAFJqxD+ijVZ31GKlAnn41jv4IvF8b9vjb673ERJ1Jbhi2kmBtYOEIiz3SIV2iW6ScJXuhMuhs
	UWILiGrma7VU5LelY5Q79TINBbQQBlAYvej3AVaoFY02VCAylWWCxB8npeyMaU88/7dI9IpEV6ar6
	QE6/vehSzZe3Du8EugOHxtaNsi1lcWpOr8zYI2HsNSAm5VWBEYGjkStwDCNjob8zVBf8740+KF6by
	ZLGF8U9ZzcgAM8nUB7dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE19-0000Cv-DB; Wed, 22 Apr 2020 11:58:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE0z-0000CG-Q3
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:58:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CE4531B;
 Wed, 22 Apr 2020 04:58:05 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0BFB3F6CF;
 Wed, 22 Apr 2020 04:58:04 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 7871C682F37; Wed, 22 Apr 2020 12:58:03 +0100 (BST)
Date: Wed, 22 Apr 2020 12:58:03 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 14/17] bus: vexpress-config: simplify config bus probing
Message-ID: <20200422115803.GY364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-15-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-15-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_045805_937167_B4D34749 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDdQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVGhlIHZleHByZXNzLWNvbmZpZyBpbml0aWFsaXphdGlvbiBpcyBkZXBlbmRlbnQgb24g
dGhlIHZleHByZXNzLXN5c2NmZwo+IGRyaXZlciBwcm9iaW5nLiBBcyB2ZXhwcmVzcy1jb25maWcg
d2FzIG5vdCBhIGRyaXZlciwgZGVmZXJyZWQgcHJvYmUKPiBjb3VsZCBub3QgYmUgdXNlZCBhbmQg
aW5zdGVhZCBpbml0Y2FsbCBvcmRlcmluZyB3YXMgcmVsaWVkIHVwb24uIFRoaXMgaXMKPiBmcmFn
aWxlIGFuZCBkb2Vzbid0IHdvcmsgZm9yIG1vZHVsZXMuCj4gCj4gTGV0J3MgbW92ZSB0aGUgY29u
ZmlnIGJ1cyBpbml0IGludG8gdGhlIHZleHByZXNzLXN5c2NmZyBwcm9iZS4gVGhpcwo+IGVsaW1p
bmF0ZXMgdGhlIGluaXRjYWxsIG9yZGVyaW5nIHJlcXVpcmVtZW50IGFuZCB0aGUgbmVlZCB0byBj
cmVhdGUgYQo+IHN0cnVjdCBkZXZpY2UgYW5kIHRoZSAidmV4cHJlc3MtY29uZmlnIiBjbGFzcy4K
PiAKPiBDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+CgpBY2tlZC1ieTogTGl2
aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+Cgo+IENjOiBTdWRlZXAgSG9sbGEgPHN1ZGVl
cC5ob2xsYUBhcm0uY29tPgo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxp
c2lAYXJtLmNvbT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3Jn
Pgo+IENjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+IENjOiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBI
ZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvYnVzL3ZleHByZXNzLWNv
bmZpZy5jIHwgMTE4ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDk3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2J1cy92ZXhwcmVzcy1jb25maWcuYyBiL2RyaXZlcnMvYnVzL3ZleHByZXNz
LWNvbmZpZy5jCj4gaW5kZXggNDNmNWJlYWM5ODExLi40M2RlYjRkZjE0MGIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9idXMvdmV4cHJlc3MtY29uZmlnLmMKPiArKysgYi9kcml2ZXJzL2J1cy92ZXhw
cmVzcy1jb25maWcuYwo+IEBAIC01Niw3ICs1Niw2IEBAIHN0cnVjdCB2ZXhwcmVzc19jb25maWdf
YnJpZGdlIHsKPiAgCj4gIAo+ICBzdGF0aWMgREVGSU5FX01VVEVYKHZleHByZXNzX2NvbmZpZ19t
dXRleCk7Cj4gLXN0YXRpYyBzdHJ1Y3QgY2xhc3MgKnZleHByZXNzX2NvbmZpZ19jbGFzczsKPiAg
c3RhdGljIHUzMiB2ZXhwcmVzc19jb25maWdfc2l0ZV9tYXN0ZXIgPSBWRVhQUkVTU19TSVRFX01B
U1RFUjsKPiAgCj4gIAo+IEBAIC0xMjEsOSArMTIwLDYgQEAgc3RydWN0IHJlZ21hcCAqZGV2bV9y
ZWdtYXBfaW5pdF92ZXhwcmVzc19jb25maWcoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJc3RydWN0
IHJlZ21hcCAqcmVnbWFwOwo+ICAJc3RydWN0IHJlZ21hcCAqKnJlczsKPiAgCj4gLQlpZiAoV0FS
Tl9PTihkZXYtPnBhcmVudC0+Y2xhc3MgIT0gdmV4cHJlc3NfY29uZmlnX2NsYXNzKSkKPiAtCQly
ZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKPiAtCj4gIAlicmlkZ2UgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2LT5wYXJlbnQpOwo+ICAJaWYgKFdBUk5fT04oIWJyaWRnZSkpCj4gIAkJcmV0dXJuIEVSUl9Q
VFIoLUVJTlZBTCk7Cj4gQEAgLTE0Niw5NCArMTQyLDYgQEAgc3RydWN0IHJlZ21hcCAqZGV2bV9y
ZWdtYXBfaW5pdF92ZXhwcmVzc19jb25maWcoc3RydWN0IGRldmljZSAqZGV2KQo+ICB9Cj4gIEVY
UE9SVF9TWU1CT0xfR1BMKGRldm1fcmVnbWFwX2luaXRfdmV4cHJlc3NfY29uZmlnKTsKPiAgCj4g
LXN0YXRpYyBzdHJ1Y3QgZGV2aWNlICp2ZXhwcmVzc19jb25maWdfYnJpZGdlX3JlZ2lzdGVyKHN0
cnVjdCBkZXZpY2UgKnBhcmVudCwKPiAtCQlzdHJ1Y3QgdmV4cHJlc3NfY29uZmlnX2JyaWRnZV9v
cHMgKm9wcywgdm9pZCAqY29udGV4dCkKPiAtewo+IC0Jc3RydWN0IGRldmljZSAqZGV2Owo+IC0J
c3RydWN0IHZleHByZXNzX2NvbmZpZ19icmlkZ2UgKmJyaWRnZTsKPiAtCj4gLQlpZiAoIXZleHBy
ZXNzX2NvbmZpZ19jbGFzcykgewo+IC0JCXZleHByZXNzX2NvbmZpZ19jbGFzcyA9IGNsYXNzX2Ny
ZWF0ZShUSElTX01PRFVMRSwKPiAtCQkJCSJ2ZXhwcmVzcy1jb25maWciKTsKPiAtCQlpZiAoSVNf
RVJSKHZleHByZXNzX2NvbmZpZ19jbGFzcykpCj4gLQkJCXJldHVybiAodm9pZCAqKXZleHByZXNz
X2NvbmZpZ19jbGFzczsKPiAtCX0KPiAtCj4gLQlkZXYgPSBkZXZpY2VfY3JlYXRlKHZleHByZXNz
X2NvbmZpZ19jbGFzcywgcGFyZW50LCAwLAo+IC0JCQlOVUxMLCAiJXMuYnJpZGdlIiwgZGV2X25h
bWUocGFyZW50KSk7Cj4gLQo+IC0JaWYgKElTX0VSUihkZXYpKQo+IC0JCXJldHVybiBkZXY7Cj4g
LQo+IC0JYnJpZGdlID0gZGV2bV9rbWFsbG9jKGRldiwgc2l6ZW9mKCpicmlkZ2UpLCBHRlBfS0VS
TkVMKTsKPiAtCWlmICghYnJpZGdlKSB7Cj4gLQkJcHV0X2RldmljZShkZXYpOwo+IC0JCWRldmlj
ZV91bnJlZ2lzdGVyKGRldik7Cj4gLQkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gLQl9Cj4g
LQlicmlkZ2UtPm9wcyA9IG9wczsKPiAtCWJyaWRnZS0+Y29udGV4dCA9IGNvbnRleHQ7Cj4gLQo+
IC0JZGV2X3NldF9kcnZkYXRhKGRldiwgYnJpZGdlKTsKPiAtCj4gLQlkZXZfZGJnKHBhcmVudCwg
IlJlZ2lzdGVyZWQgYnJpZGdlICclcycsIHBhcmVudCBub2RlICVwXG4iLAo+IC0JCQlkZXZfbmFt
ZShkZXYpLCBwYXJlbnQtPm9mX25vZGUpOwo+IC0KPiAtCXJldHVybiBkZXY7Cj4gLX0KPiAtCj4g
LQo+IC1zdGF0aWMgaW50IHZleHByZXNzX2NvbmZpZ19ub2RlX21hdGNoKHN0cnVjdCBkZXZpY2Ug
KmRldiwgY29uc3Qgdm9pZCAqZGF0YSkKPiAtewo+IC0JY29uc3Qgc3RydWN0IGRldmljZV9ub2Rl
ICpub2RlID0gZGF0YTsKPiAtCj4gLQlkZXZfZGJnKGRldiwgIlBhcmVudCBub2RlICVwLCBsb29r
aW5nIGZvciAlcFxuIiwKPiAtCQkJZGV2LT5wYXJlbnQtPm9mX25vZGUsIG5vZGUpOwo+IC0KPiAt
CXJldHVybiBkZXYtPnBhcmVudC0+b2Zfbm9kZSA9PSBub2RlOwo+IC19Cj4gLQo+IC1zdGF0aWMg
aW50IHZleHByZXNzX2NvbmZpZ19wb3B1bGF0ZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUpCj4g
LXsKPiAtCXN0cnVjdCBkZXZpY2Vfbm9kZSAqYnJpZGdlOwo+IC0Jc3RydWN0IGRldmljZSAqcGFy
ZW50Owo+IC0JaW50IHJldDsKPiAtCj4gLQlicmlkZ2UgPSBvZl9wYXJzZV9waGFuZGxlKG5vZGUs
ICJhcm0sdmV4cHJlc3MsY29uZmlnLWJyaWRnZSIsIDApOwo+IC0JaWYgKCFicmlkZ2UpCj4gLQkJ
cmV0dXJuIC1FSU5WQUw7Cj4gLQo+IC0JcGFyZW50ID0gY2xhc3NfZmluZF9kZXZpY2UodmV4cHJl
c3NfY29uZmlnX2NsYXNzLCBOVUxMLCBicmlkZ2UsCj4gLQkJCXZleHByZXNzX2NvbmZpZ19ub2Rl
X21hdGNoKTsKPiAtCW9mX25vZGVfcHV0KGJyaWRnZSk7Cj4gLQlpZiAoV0FSTl9PTighcGFyZW50
KSkKPiAtCQlyZXR1cm4gLUVOT0RFVjsKPiAtCj4gLQlyZXQgPSBvZl9wbGF0Zm9ybV9wb3B1bGF0
ZShub2RlLCBOVUxMLCBOVUxMLCBwYXJlbnQpOwo+IC0KPiAtCXB1dF9kZXZpY2UocGFyZW50KTsK
PiAtCj4gLQlyZXR1cm4gcmV0Owo+IC19Cj4gLQo+IC1zdGF0aWMgaW50IF9faW5pdCB2ZXhwcmVz
c19jb25maWdfaW5pdCh2b2lkKQo+IC17Cj4gLQlpbnQgZXJyID0gMDsKPiAtCXN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbm9kZTsKPiAtCj4gLQkvKiBOZWVkIHRoZSBjb25maWcgZGV2aWNlcyBlYXJseSwg
YmVmb3JlIHRoZSAibm9ybWFsIiBkZXZpY2VzLi4uICovCj4gLQlmb3JfZWFjaF9jb21wYXRpYmxl
X25vZGUobm9kZSwgTlVMTCwgImFybSx2ZXhwcmVzcyxjb25maWctYnVzIikgewo+IC0JCWVyciA9
IHZleHByZXNzX2NvbmZpZ19wb3B1bGF0ZShub2RlKTsKPiAtCQlpZiAoZXJyKSB7Cj4gLQkJCW9m
X25vZGVfcHV0KG5vZGUpOwo+IC0JCQlicmVhazsKPiAtCQl9Cj4gLQl9Cj4gLQo+IC0JcmV0dXJu
IGVycjsKPiAtfQo+IC1wb3N0Y29yZV9pbml0Y2FsbCh2ZXhwcmVzc19jb25maWdfaW5pdCk7Cj4g
LQo+ICBzdGF0aWMgaW50IHZleHByZXNzX3N5c2NmZ19leGVjKHN0cnVjdCB2ZXhwcmVzc19zeXNj
ZmdfZnVuYyAqZnVuYywKPiAgCQlpbnQgaW5kZXgsIGJvb2wgd3JpdGUsIHUzMiAqZGF0YSkKPiAg
ewo+IEBAIC00MzAsNyArMzM4LDggQEAgc3RhdGljIGludCB2ZXhwcmVzc19zeXNjZmdfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+ICAJc3RydWN0IHZleHByZXNzX3N5
c2NmZyAqc3lzY2ZnOwo+ICAJc3RydWN0IHJlc291cmNlICpyZXM7Cj4gLQlzdHJ1Y3QgZGV2aWNl
ICpicmlkZ2U7Cj4gKwlzdHJ1Y3QgdmV4cHJlc3NfY29uZmlnX2JyaWRnZSAqYnJpZGdlOwo+ICsJ
c3RydWN0IGRldmljZV9ub2RlICpub2RlOwo+ICAKPiAgCXN5c2NmZyA9IGRldm1fa3phbGxvYygm
cGRldi0+ZGV2LCBzaXplb2YoKnN5c2NmZyksIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFzeXNjZmcp
Cj4gQEAgLTQ0MywxMSArMzUyLDI2IEBAIHN0YXRpYyBpbnQgdmV4cHJlc3Nfc3lzY2ZnX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJSKHN5c2NmZy0+YmFz
ZSkpCj4gIAkJcmV0dXJuIFBUUl9FUlIoc3lzY2ZnLT5iYXNlKTsKPiAgCj4gLQkvKiBNdXN0IHVz
ZSBkZXYucGFyZW50IChNRkQpLCBhcyB0aGF0J3Mgd2hlcmUgRFQgcGhhbmRsZSBwb2ludHMgYXQu
Li4gKi8KPiAtCWJyaWRnZSA9IHZleHByZXNzX2NvbmZpZ19icmlkZ2VfcmVnaXN0ZXIocGRldi0+
ZGV2LnBhcmVudCwKPiAtCQkJJnZleHByZXNzX3N5c2NmZ19icmlkZ2Vfb3BzLCBzeXNjZmcpOwo+
ICsJYnJpZGdlID0gZGV2bV9rbWFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqYnJpZGdlKSwgR0ZQ
X0tFUk5FTCk7Cj4gKwlpZiAoIWJyaWRnZSkKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwli
cmlkZ2UtPm9wcyA9ICZ2ZXhwcmVzc19zeXNjZmdfYnJpZGdlX29wczsKPiArCWJyaWRnZS0+Y29u
dGV4dCA9IHN5c2NmZzsKPiArCj4gKwlkZXZfc2V0X2RydmRhdGEoJnBkZXYtPmRldiwgYnJpZGdl
KTsKPiAgCj4gLQlyZXR1cm4gUFRSX0VSUl9PUl9aRVJPKGJyaWRnZSk7Cj4gKwlmb3JfZWFjaF9j
b21wYXRpYmxlX25vZGUobm9kZSwgTlVMTCwgImFybSx2ZXhwcmVzcyxjb25maWctYnVzIikgewo+
ICsJCXN0cnVjdCBkZXZpY2Vfbm9kZSAqYnJpZGdlX25wOwo+ICsKPiArCQlicmlkZ2VfbnAgPSBv
Zl9wYXJzZV9waGFuZGxlKG5vZGUsICJhcm0sdmV4cHJlc3MsY29uZmlnLWJyaWRnZSIsIDApOwo+
ICsJCWlmIChicmlkZ2VfbnAgIT0gcGRldi0+ZGV2LnBhcmVudC0+b2Zfbm9kZSkKPiArCQkJY29u
dGludWU7Cj4gKwo+ICsJCW9mX3BsYXRmb3JtX3BvcHVsYXRlKG5vZGUsIE5VTEwsIE5VTEwsICZw
ZGV2LT5kZXYpOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICB9Cj4gIAo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IHBsYXRmb3JtX2RldmljZV9pZCB2ZXhwcmVzc19zeXNjZmdfaWRfdGFibGVbXSA9
IHsKPiAtLSAKPiAyLjIwLjEKPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291bGQg
bGlrZSB0byB8CnwgZml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdpdmlu
ZyBtZSB0aGUgICB8CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAgwq9c
Xyjjg4QpXy/CrwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
