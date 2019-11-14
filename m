Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2612EFC40B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ubh/2+rYvT712Ih/tYr40nvoF0uk9CAZa9/3Omyb4U=; b=U2p4pxuwO3Xd3X
	tUp5SB6eZa0si9ei8U4fjLcVadrZGf9P/fGdsTYFQJN+qbBCSikCfct3eaM78YFb6pHwPGhAmRN59
	d7c31l94k7Ucj4OlWm1W1u6ldXmMOHEIiMdXRGtr5Y1t/6QVUJuEowrFG4e5JE2x6gz1wGNu5hicX
	xl8P3Pzm2mqj5vQGS7gGIGv91xpv13SQ8D8Z+PL4HE05HofurJ7DnHOZsW1E5Sm0JRauqm9cwSVKf
	XMlZBPFKhB2LKgqXqo7RmaX2XC4lC/Taqki06zhrc0uh0DOJNOYgsbV6HSOO7VfhkAs4Ve5QCrQ5a
	DFGXH3ECYmkRR1YM3AZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCIV-0000j7-0p; Thu, 14 Nov 2019 10:24:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCIJ-0000hO-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:24:09 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAEANurN005852;
 Thu, 14 Nov 2019 04:23:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573727037;
 bh=2tStGcP9xDBxKwRIpbRobeYLj2PF1b/AtmDfTiE4sb4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=j34WU2ZJOLmGiYCtNPaksHWKLeugq0tr5yZ3gnraSp+XSPTecplIWF65NvKXIt30H
 BjSyVQa6nv5dngrwfh/rqaj3Tilu9/xPg36v56pN0+CFKottI8Q8nVepdWA7qVND+F
 4SyK1LyZYhdJ9PFZy0P+tLcMtynDlSiKIB8FcF7A=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAEANuci111617
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 Nov 2019 04:23:56 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 14
 Nov 2019 04:23:55 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 14 Nov 2019 04:23:55 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAEANpg5030936;
 Thu, 14 Nov 2019 04:23:52 -0600
Subject: Re: [PATCH] bus: ti-sysc: Add module enable quirk for audio AESS
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20191113173702.57107-1-tony@atomide.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <4188f17f-67ce-42f8-c9c0-b7d6c74173a1@ti.com>
Date: Thu, 14 Nov 2019 12:25:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113173702.57107-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_022407_588647_81B12CF1 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMy8xMS8yMDE5IDE5LjM3LCBUb255IExpbmRncmVuIHdyb3RlOgo+IFdlIG11c3Qgc2V0
IHRoZSBhdXRvZ2F0aW5nIGJpdCBvbiBlbmFibGUgZm9yIEFFU1MgKEF1ZGlvIEVuZ2luZSBTdWJT
eXN0ZW0pCj4gd2hlbiBwcm9iZWQgd2l0aCB0aS1zeXNjIGludGVyY29ubmVjdCB0YXJnZXQgbW9k
dWxlIGRyaXZlci4gT3RoZXJ3aXNlIGl0Cj4gd29uJ3QgaWRsZSBwcm9wZXJseS4KPiAKPiBDYzog
UGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBU
b255IExpbmRncmVuIDx0b255QGF0b21pZGUuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2J1cy90aS1z
eXNjLmMgICAgICAgICAgICAgICAgIHwgMTQgKysrKysrKysrKysrKy0KPiAgaW5jbHVkZS9saW51
eC9wbGF0Zm9ybV9kYXRhL3RpLXN5c2MuaCB8ICAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpUZXN0ZWQtYnk6IFBldGVyIFVqZmFsdXNpIDxw
ZXRlci51amZhbHVzaUB0aS5jb20+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2J1cy90aS1zeXNj
LmMgYi9kcml2ZXJzL2J1cy90aS1zeXNjLmMKPiAtLS0gYS9kcml2ZXJzL2J1cy90aS1zeXNjLmMK
PiArKysgYi9kcml2ZXJzL2J1cy90aS1zeXNjLmMKPiBAQCAtMTI0OCw2ICsxMjQ4LDggQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBzeXNjX3JldmlzaW9uX3F1aXJrIHN5c2NfcmV2aXNpb25fcXVpcmtz
W10gPSB7Cj4gIAkJICAgU1lTQ19RVUlSS19TV1NVUF9TSURMRSksCj4gIAo+ICAJLyogUXVpcmtz
IHRoYXQgbmVlZCB0byBiZSBzZXQgYmFzZWQgb24gZGV0ZWN0ZWQgbW9kdWxlICovCj4gKwlTWVND
X1FVSVJLKCJhZXNzIiwgMCwgMCwgMHgxMCwgLTEsIDB4NDAwMDAwMDAsIDB4ZmZmZmZmZmYsCj4g
KwkJICAgU1lTQ19NT0RVTEVfUVVJUktfQUVTUyksCj4gIAlTWVNDX1FVSVJLKCJoZHExdyIsIDAs
IDAsIDB4MTQsIDB4MTgsIDB4MDAwMDAwMDYsIDB4ZmZmZmZmZmYsCj4gIAkJICAgU1lTQ19NT0RV
TEVfUVVJUktfSERRMVcpLAo+ICAJU1lTQ19RVUlSSygiaGRxMXciLCAwLCAwLCAweDE0LCAweDE4
LCAweDAwMDAwMDBhLCAweGZmZmZmZmZmLAo+IEBAIC0xMjc2LDcgKzEyNzgsNiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHN5c2NfcmV2aXNpb25fcXVpcmsgc3lzY19yZXZpc2lvbl9xdWlya3NbXSA9
IHsKPiAgI2lmZGVmIERFQlVHCj4gIAlTWVNDX1FVSVJLKCJhZGMiLCAwLCAwLCAweDEwLCAtMSwg
MHg0NzMwMDAwMSwgMHhmZmZmZmZmZiwgMCksCj4gIAlTWVNDX1FVSVJLKCJhdGwiLCAwLCAwLCAt
MSwgLTEsIDB4MGEwNzAxMDAsIDB4ZmZmZmZmZmYsIDApLAo+IC0JU1lTQ19RVUlSSygiYWVzcyIs
IDAsIDAsIDB4MTAsIC0xLCAweDQwMDAwMDAwLCAweGZmZmZmZmZmLCAwKSwKPiAgCVNZU0NfUVVJ
UksoImNtIiwgMCwgMCwgLTEsIC0xLCAweDQwMDAwMzAxLCAweGZmZmZmZmZmLCAwKSwKPiAgCVNZ
U0NfUVVJUksoImNvbnRyb2wiLCAwLCAwLCAweDEwLCAtMSwgMHg0MDAwMDkwMCwgMHhmZmZmZmZm
ZiwgMCksCj4gIAlTWVNDX1FVSVJLKCJjcGdtYWMiLCAwLCAweDEyMDAsIDB4MTIwOCwgMHgxMjA0
LCAweDRlZGIxOTAyLAo+IEBAIC0xNDA4LDYgKzE0MDksMTQgQEAgc3RhdGljIHZvaWQgc3lzY19j
bGtfZW5hYmxlX3F1aXJrX2hkcTF3KHN0cnVjdCBzeXNjICpkZGF0YSkKPiAgCXN5c2Nfd3JpdGUo
ZGRhdGEsIG9mZnNldCwgdmFsKTsKPiAgfQo+ICAKPiArLyogQUVTUyAoQXVkaW8gRW5naW5lIFN1
YlN5c3RlbSkgbmVlZHMgYXV0b2dhdGluZyBzZXQgYWZ0ZXIgZW5hYmxlICovCj4gK3N0YXRpYyB2
b2lkIHN5c2NfbW9kdWxlX2VuYWJsZV9xdWlya19hZXNzKHN0cnVjdCBzeXNjICpkZGF0YSkKPiAr
ewo+ICsJaW50IG9mZnNldCA9IDB4N2M7CS8qIEFFU1NfQVVUT19HQVRJTkdfRU5BQkxFICovCj4g
Kwo+ICsJc3lzY193cml0ZShkZGF0YSwgb2Zmc2V0LCAxKTsKPiArfQo+ICsKPiAgLyogSTJDIG5l
ZWRzIGV4dHJhIGVuYWJsZSBiaXQgdG9nZ2xpbmcgZm9yIHJlc2V0ICovCj4gIHN0YXRpYyB2b2lk
IHN5c2NfY2xrX3F1aXJrX2kyYyhzdHJ1Y3Qgc3lzYyAqZGRhdGEsIGJvb2wgZW5hYmxlKQo+ICB7
Cj4gQEAgLTE0OTAsNiArMTQ5OSw5IEBAIHN0YXRpYyB2b2lkIHN5c2NfaW5pdF9tb2R1bGVfcXVp
cmtzKHN0cnVjdCBzeXNjICpkZGF0YSkKPiAgCQlyZXR1cm47Cj4gIAl9Cj4gIAo+ICsJaWYgKGRk
YXRhLT5jZmcucXVpcmtzICYgU1lTQ19NT0RVTEVfUVVJUktfQUVTUykKPiArCQlkZGF0YS0+bW9k
dWxlX2VuYWJsZV9xdWlyayA9IHN5c2NfbW9kdWxlX2VuYWJsZV9xdWlya19hZXNzOwo+ICsKPiAg
CWlmIChkZGF0YS0+Y2ZnLnF1aXJrcyAmIFNZU0NfTU9EVUxFX1FVSVJLX1NHWCkKPiAgCQlkZGF0
YS0+bW9kdWxlX2VuYWJsZV9xdWlyayA9IHN5c2NfbW9kdWxlX2VuYWJsZV9xdWlya19zZ3g7Cj4g
IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RhdGEvdGktc3lzYy5oIGIv
aW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL3RpLXN5c2MuaAo+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvcGxhdGZvcm1fZGF0YS90aS1zeXNjLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3BsYXRmb3Jt
X2RhdGEvdGktc3lzYy5oCj4gQEAgLTQ5LDYgKzQ5LDcgQEAgc3RydWN0IHN5c2NfcmVnYml0cyB7
Cj4gIAlzOCBlbXVmcmVlX3NoaWZ0Owo+ICB9Owo+ICAKPiArI2RlZmluZSBTWVNDX01PRFVMRV9R
VUlSS19BRVNTCQlCSVQoMTkpCj4gICNkZWZpbmUgU1lTQ19NT0RVTEVfUVVJUktfU0dYCQlCSVQo
MTgpCj4gICNkZWZpbmUgU1lTQ19NT0RVTEVfUVVJUktfSERRMVcJCUJJVCgxNykKPiAgI2RlZmlu
ZSBTWVNDX01PRFVMRV9RVUlSS19JMkMJCUJJVCgxNikKPiAKCi0gUMOpdGVyCgpUZXhhcyBJbnN0
cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10
dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lu
a2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
