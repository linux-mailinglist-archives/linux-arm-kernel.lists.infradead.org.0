Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D605D15F7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJFyl4bcSSw6DQjWYC9d/PzKt9aitjqpa0Sp85Z2s+k=; b=ArDN7zmw6L4l+q
	IMnxRc5dH1n2eRQrX1J2DpLZnAh3Oo2zBqJCzypYxsbQlIhp6kNSGixzw+aC3e9g+BBEe9muaOV+J
	7YotvEgPG4vAbke9u+gvi7Qn16fEzQzmTiI5Gu7/rIeiCFnXClSEaOAGV47KDwmGiamORrS2O1ogC
	cPbDBen2z99tmcpd/1bNn8UcyrKookRYR4Iq0VmVlSeSGeMhgmBRuJJHKx5cq0KMtVeeRVJlaGnt3
	0M0zWaSGbXbfBIY1S6Aea1FYR7cTdywTI0GAV/JWKAhrccGHq9/lgRFTFC2cKFRMkl4HLK0figpA7
	+EQriD4E2Xl9i5AjeTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvbi-0005hi-2u; Tue, 07 May 2019 08:37:50 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvba-0005hL-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:37:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x478bVuW127250;
 Tue, 7 May 2019 03:37:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557218251;
 bh=1FjG3j/GZXNf0sBrxxtjLhI9p1BMMNmge5pQT42QF1U=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=mvgjb4ePzxMp5mETNWkP7zsfEmppIco1QwlwsaU5kTDf/eVcGLQFht2sbXSuzQtqX
 B/NiwHuBsAjTi2h2VLJU5ZyOoq9OcMUFhgBmUo/iRg0BlobEtAFJt2R6ZovGVvaDkh
 WIM0HcK5nx4bHprUGkiTwXZheZS4oDnZU/fsROds=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x478bVh5097764
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 May 2019 03:37:31 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 7 May
 2019 03:37:30 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 7 May 2019 03:37:30 -0500
Received: from [192.168.2.10] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x478bRVX095908;
 Tue, 7 May 2019 03:37:27 -0500
Subject: Re: [PATCH 07/16] dmaengine: Add function to request slave channel
 from a dma_device
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-8-peter.ujfalusi@ti.com>
Message-ID: <89b2ded6-f1f5-dda5-9ae4-d94bcf4c041f@ti.com>
Date: Tue, 7 May 2019 11:37:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506123456.6777-8-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_013742_530965_E1DAEABB 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNi8wNS8yMDE5IDE1LjM0LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBkbWFfZ2V0X2Fu
eV9zbGF2ZV9jaGFubmVsKCkgd291bGQgc2tpcCB1c2luZyB0aGUgZmlsdGVyIGZ1bmN0aW9uLCB3
aGljaAo+IGluIHNvbWUgY2FzZXMgbmVlZGVkIHRvIGJlIGV4ZWN1dGVkIGJlZm9yZSB0aGUgYWxs
b2NfY2hhbl9yZXNvdXJjZXMKPiBjYWxsYmFjayB0byBtYWtlIHN1cmUgdGhhdCBhbGwgcGFyYW1l
dGVycyBhcmUgcHJvdmlkZWQgZm9yIHRoZSBzbGF2ZQo+IGNoYW5uZWwuCgpUaGlzIGNhbiBiZSBk
cm9wcGVkIGluIGZhdm9yIG9mCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5
MzIyOTkvCmZyb20gQmFvbGluIFdhbmdtIGFuZCB1c2luZyBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwo
KSBpbiB0aGUgazMtdWRtYSBkcml2ZXIuCgotIFDDqXRlcgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQ
ZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Rt
YS9kbWFlbmdpbmUuYyAgIHwgNyArKysrLS0tCj4gIGluY2x1ZGUvbGludXgvZG1hZW5naW5lLmgg
fCA1ICsrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9kbWFlbmdpbmUuYyBiL2RyaXZlcnMv
ZG1hL2RtYWVuZ2luZS5jCj4gaW5kZXggOGVlZDVmZjBmYzAxLi43ZWM5M2JlMTIwODggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9kbWEvZG1hZW5naW5lLmMKPiArKysgYi9kcml2ZXJzL2RtYS9kbWFl
bmdpbmUuYwo+IEBAIC02MTcsNyArNjE3LDggQEAgc3RydWN0IGRtYV9jaGFuICpkbWFfZ2V0X3Ns
YXZlX2NoYW5uZWwoc3RydWN0IGRtYV9jaGFuICpjaGFuKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xf
R1BMKGRtYV9nZXRfc2xhdmVfY2hhbm5lbCk7Cj4gIAo+IC1zdHJ1Y3QgZG1hX2NoYW4gKmRtYV9n
ZXRfYW55X3NsYXZlX2NoYW5uZWwoc3RydWN0IGRtYV9kZXZpY2UgKmRldmljZSkKPiArc3RydWN0
IGRtYV9jaGFuICpkbWFkZXZfZ2V0X3NsYXZlX2NoYW5uZWwoc3RydWN0IGRtYV9kZXZpY2UgKmRl
dmljZSwKPiArCQkJCQkgIGRtYV9maWx0ZXJfZm4gZm4sIHZvaWQgKmZuX3BhcmFtKQo+ICB7Cj4g
IAlkbWFfY2FwX21hc2tfdCBtYXNrOwo+ICAJc3RydWN0IGRtYV9jaGFuICpjaGFuOwo+IEBAIC02
MjgsMTMgKzYyOSwxMyBAQCBzdHJ1Y3QgZG1hX2NoYW4gKmRtYV9nZXRfYW55X3NsYXZlX2NoYW5u
ZWwoc3RydWN0IGRtYV9kZXZpY2UgKmRldmljZSkKPiAgCS8qIGxvY2sgYWdhaW5zdCBfX2RtYV9y
ZXF1ZXN0X2NoYW5uZWwgKi8KPiAgCW11dGV4X2xvY2soJmRtYV9saXN0X211dGV4KTsKPiAgCj4g
LQljaGFuID0gZmluZF9jYW5kaWRhdGUoZGV2aWNlLCAmbWFzaywgTlVMTCwgTlVMTCk7Cj4gKwlj
aGFuID0gZmluZF9jYW5kaWRhdGUoZGV2aWNlLCAmbWFzaywgZm4sIGZuX3BhcmFtKTsKPiAgCj4g
IAltdXRleF91bmxvY2soJmRtYV9saXN0X211dGV4KTsKPiAgCj4gIAlyZXR1cm4gSVNfRVJSKGNo
YW4pID8gTlVMTCA6IGNoYW47Cj4gIH0KPiAtRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2dldF9hbnlf
c2xhdmVfY2hhbm5lbCk7Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRtYWRldl9nZXRfc2xhdmVfY2hh
bm5lbCk7Cj4gIAo+ICAvKioKPiAgICogX19kbWFfcmVxdWVzdF9jaGFubmVsIC0gdHJ5IHRvIGFs
bG9jYXRlIGFuIGV4Y2x1c2l2ZSBjaGFubmVsCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
ZG1hZW5naW5lLmggYi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oCj4gaW5kZXggYzE0ODY1NjRh
MzE0Li40Nzc0YjY2ZjIwNjQgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUu
aAo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hZW5naW5lLmgKPiBAQCAtMTU0MSw3ICsxNTQxLDEw
IEBAIGludCBkbWFlbmdpbmVtX2FzeW5jX2RldmljZV9yZWdpc3RlcihzdHJ1Y3QgZG1hX2Rldmlj
ZSAqZGV2aWNlKTsKPiAgdm9pZCBkbWFfYXN5bmNfZGV2aWNlX3VucmVnaXN0ZXIoc3RydWN0IGRt
YV9kZXZpY2UgKmRldmljZSk7Cj4gIHZvaWQgZG1hX3J1bl9kZXBlbmRlbmNpZXMoc3RydWN0IGRt
YV9hc3luY190eF9kZXNjcmlwdG9yICp0eCk7Cj4gIHN0cnVjdCBkbWFfY2hhbiAqZG1hX2dldF9z
bGF2ZV9jaGFubmVsKHN0cnVjdCBkbWFfY2hhbiAqY2hhbik7Cj4gLXN0cnVjdCBkbWFfY2hhbiAq
ZG1hX2dldF9hbnlfc2xhdmVfY2hhbm5lbChzdHJ1Y3QgZG1hX2RldmljZSAqZGV2aWNlKTsKPiAr
c3RydWN0IGRtYV9jaGFuICpkbWFkZXZfZ2V0X3NsYXZlX2NoYW5uZWwoc3RydWN0IGRtYV9kZXZp
Y2UgKmRldmljZSwKPiArCQkJCQkgIGRtYV9maWx0ZXJfZm4gZm4sIHZvaWQgKmZuX3BhcmFtKTsK
PiArI2RlZmluZSBkbWFfZ2V0X2FueV9zbGF2ZV9jaGFubmVsKGRldmljZSkgXAo+ICsJZG1hZGV2
X2dldF9zbGF2ZV9jaGFubmVsKGRldmljZSwgTlVMTCwgTlVMTCkKPiAgI2RlZmluZSBkbWFfcmVx
dWVzdF9jaGFubmVsKG1hc2ssIHgsIHkpIF9fZG1hX3JlcXVlc3RfY2hhbm5lbCgmKG1hc2spLCB4
LCB5KQo+ICAjZGVmaW5lIGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWxfY29tcGF0KG1hc2ssIHgs
IHksIGRldiwgbmFtZSkgXAo+ICAJX19kbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsX2NvbXBhdCgm
KG1hc2spLCB4LCB5LCBkZXYsIG5hbWUpCj4gCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95
LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6
IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
