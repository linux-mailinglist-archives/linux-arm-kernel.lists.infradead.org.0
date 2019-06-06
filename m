Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86787373BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hI4eVWa2oL5Sh0+IwWTAUZ8ewVGPc0oLJ+NGD7mqn3k=; b=h9Spj4wQPCJEso
	+NXbix/vvt09aN14wIhHCQYai6PPa95RKrDKYQ61dLi4E7MvGfJ6wZ0lC0TU/9CxM7uZCO8ADbnwO
	NDlAo9F6C4yqgAiGdlBmYqaPdpzoHuLBGz5QSKgpQX//00Kh7ACMMs14/TdLdb3UczwrM0IIXRy4x
	x+obsVmrppc9dW7QSLgFWh1udFhCDEiHZgt5cDkViCHuNblqCfFjjbPxRTI2FxoE0CyPBdyzWb+su
	9zDifUbjmOSziraT8q3GZigxAk30zxW2YX/cbFEa0dPf1KpJHwpNDLyP1l+F/bXL45on3TqGB8wfG
	nzyTNVnH0EmNoo4XhwJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYr8J-0001Eh-OV; Thu, 06 Jun 2019 12:04:39 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYr8C-0001EI-GI
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:04:34 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56C4Q8r021326;
 Thu, 6 Jun 2019 07:04:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559822666;
 bh=AvzxyZQyViAqtwQYq7pnaktuRRb4B8pnvEPR+rdnJvU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Q8uBqHnU3UExbGChb9DO4sjnnhugmJsFrBP9iCTlHMLDf+xbcSW6AE99IIiCiqDJF
 Q9S3YKLmZfzTaVwlDUpPnzpF3UlZaqnM1sXs8nwWQdT/D+pe7ihHLHIDcbkfIGSrt2
 gdlF0IQQDu+iHtutHyDFYkRAKPN6moljaKzPs/Lo=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56C4QpG010887
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 07:04:26 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 07:04:26 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 07:04:26 -0500
Received: from [192.168.2.10] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56C4N15062131;
 Thu, 6 Jun 2019 07:04:23 -0500
Subject: Re: [PATCH 01/16] firmware: ti_sci: Add resource management APIs for
 ringacc, psi-l and udma
To: Lokesh Vutla <lokeshvutla@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-2-peter.ujfalusi@ti.com>
 <f2056b18-3f65-b7ae-90ba-5ebf9ac425bc@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <78a2d824-d730-4174-e80b-4153a2744427@ti.com>
Date: Thu, 6 Jun 2019 15:04:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f2056b18-3f65-b7ae-90ba-5ebf9ac425bc@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_050432_625523_CA2EE1EE 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, tony@atomide.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9rZXNoLAoKT24gMDYvMDYvMjAxOSA5LjAwLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4gSGkg
UGV0ZXIsCj4gCj4gT24gMDYvMDUvMTkgNjowNCBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+
IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4g
Cj4gUGF0Y2ggaGFzIHRoZSBmb2xsb3dpbmcgY2hlY2twYXRjaCB3YXJuaW5ncyBhbmQgY2hlY2tz
IHdoaWNoIGNhbiBiZSBmaXhlZDoKPiAKPiBXQVJOSU5HOiBNaXNzaW5nIGNvbW1pdCBkZXNjcmlw
dGlvbiAtIEFkZCBhbiBhcHByb3ByaWF0ZSBvbmUKCkhvdyBkaWQgSSBtaXNzZWQgaXQ/Cgo+IENI
RUNLOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCj4gIzI2MjogRklMRTogZHJpdmVy
cy9maXJtd2FyZS90aV9zY2kuYzoyMjg2Ogo+ICtzdGF0aWMgaW50IHRpX3NjaV9jbWRfcm1fdWRt
YXBfdHhfY2hfY2ZnKAo+IAo+IENIRUNLOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygn
Cj4gIzMyMzogRklMRTogZHJpdmVycy9maXJtd2FyZS90aV9zY2kuYzoyMzQ3Ogo+ICtzdGF0aWMg
aW50IHRpX3NjaV9jbWRfcm1fdWRtYXBfcnhfY2hfY2ZnKAo+IAo+IENIRUNLOiBMaW5lcyBzaG91
bGQgbm90IGVuZCB3aXRoIGEgJygnCj4gIzM4MzogRklMRTogZHJpdmVycy9maXJtd2FyZS90aV9z
Y2kuYzoyNDA3Ogo+ICtzdGF0aWMgaW50IHRpX3NjaV9jbWRfcm1fdWRtYXBfcnhfZmxvd19jZmcx
KAo+IAo+IENIRUNLOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCj4gIzE0MTQ6IEZJ
TEU6IGluY2x1ZGUvbGludXgvc29jL3RpL3RpX3NjaV9wcm90b2NvbC5oOjQ1NToKPiArCWludCAo
KnJ4X2Zsb3dfY2ZnKSgKPiAKPiB0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDQgY2hlY2tz
LCAxMzk5IGxpbmVzIGNoZWNrZWQKClRoZXJlIG11c3QgYmUgYSByZWFzb24gd2h5IHRoZXNlIGxl
ZnQsIGJ1dCBJIHdpbGwgdGFrZSBhbm90aGVyIGxvb2suCgo+PiAtLS0KPj4gIGRyaXZlcnMvZmly
bXdhcmUvdGlfc2NpLmMgICAgICAgICAgICAgIHwgNDM5ICsrKysrKysrKysrKysrKwo+PiAgZHJp
dmVycy9maXJtd2FyZS90aV9zY2kuaCAgICAgICAgICAgICAgfCA3MDQgKysrKysrKysrKysrKysr
KysrKysrKysrKwo+PiAgaW5jbHVkZS9saW51eC9zb2MvdGkvdGlfc2NpX3Byb3RvY29sLmggfCAy
MTYgKysrKysrKysKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTM1OSBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jIGIvZHJpdmVycy9maXJtd2Fy
ZS90aV9zY2kuYwo+PiBpbmRleCA2NGQ4OTViODBiYzMuLmFmM2ViY2RlYWIxOCAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9maXJtd2FyZS90aV9zY2kuYwo+PiArKysgYi9kcml2ZXJzL2Zpcm13YXJl
L3RpX3NjaS5jCj4gCj4gWy4uc25pcC5dCj4gCj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgdGlf
c2NpX2NtZF9ybV9wc2lsX3BhaXIoY29uc3Qgc3RydWN0IHRpX3NjaV9oYW5kbGUgKmhhbmRsZSwK
Pj4gKwkJCQkgICB1MzIgbmF2X2lkLCB1MzIgc3JjX3RocmVhZCwgdTMyIGRzdF90aHJlYWQpCj4+
ICt7Cj4gCj4gQWxsIHRoZSBwc2lsIG9wcyBkb2Vzbid0IGhhdmUgdGhlICBrZXJuZWwtZG9jIGZ1
bmN0aW9uIGNvbW1lbnRzLiBKdXN0IGJlCj4gY29uc2lzdGVudCB3aXRoIG90aGVyIGZ1bmN0aW9u
cyA6KQoKT0suCgo+PiArCXN0cnVjdCB0aV9zY2lfbXNnX2hkciAqcmVzcDsKPj4gKwlzdHJ1Y3Qg
dGlfc2NpX21zZ19wc2lsX3BhaXIgKnJlcTsKPj4gKwlzdHJ1Y3QgdGlfc2NpX3hmZXIgKnhmZXI7
Cj4+ICsJc3RydWN0IHRpX3NjaV9pbmZvICppbmZvOwo+PiArCXN0cnVjdCBkZXZpY2UgKmRldjsK
Pj4gKwlpbnQgcmV0ID0gMDsKPj4gKwo+PiArCWlmIChJU19FUlIoaGFuZGxlKSkKPj4gKwkJcmV0
dXJuIFBUUl9FUlIoaGFuZGxlKTsKPj4gKwlpZiAoIWhhbmRsZSkKPj4gKwkJcmV0dXJuIC1FSU5W
QUw7Cj4+ICsKPj4gKwlpbmZvID0gaGFuZGxlX3RvX3RpX3NjaV9pbmZvKGhhbmRsZSk7Cj4+ICsJ
ZGV2ID0gaW5mby0+ZGV2Owo+PiArCj4+ICsJeGZlciA9IHRpX3NjaV9nZXRfb25lX3hmZXIoaW5m
bywgVElfU0NJX01TR19STV9QU0lMX1BBSVIsCj4+ICsJCQkJICAgVElfU0NJX0ZMQUdfUkVRX0FD
S19PTl9QUk9DRVNTRUQsCj4+ICsJCQkJICAgc2l6ZW9mKCpyZXEpLCBzaXplb2YoKnJlc3ApKTsK
Pj4gKwlpZiAoSVNfRVJSKHhmZXIpKSB7Cj4+ICsJCXJldCA9IFBUUl9FUlIoeGZlcik7Cj4+ICsJ
CWRldl9lcnIoZGV2LCAiUk1fUFNJTDpNZXNzYWdlIHJlY29uZmlnIGZhaWxlZCglZClcbiIsIHJl
dCk7Cj4+ICsJCXJldHVybiByZXQ7Cj4+ICsJfQo+PiArCXJlcSA9IChzdHJ1Y3QgdGlfc2NpX21z
Z19wc2lsX3BhaXIgKil4ZmVyLT54ZmVyX2J1ZjsKPj4gKwlyZXEtPm5hdl9pZCA9IG5hdl9pZDsK
Pj4gKwlyZXEtPnNyY190aHJlYWQgPSBzcmNfdGhyZWFkOwo+PiArCXJlcS0+ZHN0X3RocmVhZCA9
IGRzdF90aHJlYWQ7Cj4+ICsKPj4gKwlyZXQgPSB0aV9zY2lfZG9feGZlcihpbmZvLCB4ZmVyKTsK
Pj4gKwlpZiAocmV0KSB7Cj4+ICsJCWRldl9lcnIoZGV2LCAiUk1fUFNJTDpNYm94IHNlbmQgZmFp
bCAlZFxuIiwgcmV0KTsKPj4gKwkJZ290byBmYWlsOwo+PiArCX0KPj4gKwo+PiArCXJlc3AgPSAo
c3RydWN0IHRpX3NjaV9tc2dfaGRyICopeGZlci0+eGZlcl9idWY7Cj4+ICsJcmV0ID0gdGlfc2Np
X2lzX3Jlc3BvbnNlX2FjayhyZXNwKSA/IDAgOiAtRUlOVkFMOwo+PiArCj4+ICtmYWlsOgo+PiAr
CXRpX3NjaV9wdXRfb25lX3hmZXIoJmluZm8tPm1pbmZvLCB4ZmVyKTsKPj4gKwo+PiArCXJldHVy
biByZXQ7Cj4+ICt9Cj4+ICsKPiAKPiBbLi5zbmlwLi5dCj4gCj4+ICsgKi8KPj4gK3N0cnVjdCB0
aV9zY2lfbXNnX3JtX3JpbmdfY2ZnX3JlcSB7Cj4+ICsJc3RydWN0IHRpX3NjaV9tc2dfaGRyIGhk
cjsKPj4gKwl1MzIgdmFsaWRfcGFyYW1zOwo+PiArCXUxNiBuYXZfaWQ7Cj4+ICsJdTE2IGluZGV4
Owo+PiArCXUzMiBhZGRyX2xvOwo+PiArCXUzMiBhZGRyX2hpOwo+PiArCXUzMiBjb3VudDsKPj4g
Kwl1OCBtb2RlOwo+PiArCXU4IHNpemU7Cj4+ICsJdTggb3JkZXJfaWQ7Cj4+ICt9IF9fcGFja2Vk
Owo+PiArCj4+ICsvKioKPj4gKyAqIHN0cnVjdCB0aV9zY2lfbXNnX3JtX3JpbmdfY2ZnX3Jlc3Ag
LSBSZXNwb25zZSB0byBjb25maWd1cmluZyBhIHJpbmcuCj4+ICsgKgo+PiArICogQGhkcjoJR2Vu
ZXJpYyBIZWFkZXIKPj4gKyAqLwo+PiArc3RydWN0IHRpX3NjaV9tc2dfcm1fcmluZ19jZmdfcmVz
cCB7Cj4+ICsJc3RydWN0IHRpX3NjaV9tc2dfaGRyIGhkcjsKPj4gK30gX19wYWNrZWQ7Cj4gCj4g
SWYgaXQgaXMgYSBnZW5lcmljIEFDSywgTkFDSyByZXNwb25zZSwganVzdCB1c2UgdGhlIGhlYWRl
ciBkaXJlY3RseS4KClN1cmUsIEknbGwgZml4IGl0IGFuZCBvdGhlciBwbGFjZXMgaWYgYW55LgoK
PiAKPiBbLi5zbmlwLi5dCj4gCj4+ICsgKi8KPj4gK3N0cnVjdCB0aV9zY2lfbXNnX3JtX3VkbWFw
X3J4X2NoX2NmZ19yZXEgewo+PiArCXN0cnVjdCB0aV9zY2lfbXNnX2hkciBoZHI7Cj4+ICsJdTMy
IHZhbGlkX3BhcmFtczsKPj4gKwl1MTYgbmF2X2lkOwo+PiArCXUxNiBpbmRleDsKPj4gKwl1MTYg
cnhfZmV0Y2hfc2l6ZTsKPj4gKwl1MTYgcnhjcV9xbnVtOwo+PiArCXU4IHJ4X3ByaW9yaXR5Owo+
PiArCXU4IHJ4X3FvczsKPj4gKwl1OCByeF9vcmRlcmlkOwo+PiArCXU4IHJ4X3NjaGVkX3ByaW9y
aXR5Owo+PiArCXUxNiBmbG93aWRfc3RhcnQ7Cj4+ICsJdTE2IGZsb3dpZF9jbnQ7Cj4+ICsJdTgg
cnhfcGF1c2Vfb25fZXJyOwo+PiArCXU4IHJ4X2F0eXBlOwo+PiArCXU4IHJ4X2NoYW5fdHlwZTsK
Pj4gKwl1OCByeF9pZ25vcmVfc2hvcnQ7Cj4+ICsJdTggcnhfaWdub3JlX2xvbmc7Cj4+ICsJdTgg
cnhfYnVyc3Rfc2l6ZTsKPj4gKwo+IAo+IGV4dHJhIGxpbmU/CgpXaWxsIHJlbW92ZSBpdC4KPiAK
Pj4gK30gX19wYWNrZWQ7Cj4+ICsKPj4gKy8qKgo+IAo+IAo+IFRoYW5rcyBhbmQgcmVnYXJkcywK
PiBMb2tlc2gKPiAKClRoYW5rcywKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQg
T3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJ
RDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
