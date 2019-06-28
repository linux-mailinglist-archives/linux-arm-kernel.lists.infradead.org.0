Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110945935E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AGoGJBWqBSBvQdb5OLlNztQE89p2jxzH5rqu6iuPnNk=; b=uDfAbEvqDTTlIalsDWwWvnWA/
	5xXaTJsA3UBKOqsFQBeVNP1yQ/h9j+2/OqhtZvCtCj0xtQZpM5p0gMZGi8xWDzHsr5Tzgq3xQRlGc
	SZ/g0xaOCGF2Y7Xu1hdEUS8IsH1kluu0nPtiHbGPzCWCfu2H6HoW6uYEOMhQDfOjGT5vqKLjQE2LX
	yU+29dOZK5pxLIhRR2xBkF+WG/0I+6gEeLpr9vwhRfT/QsCE1XB7mGaF/+YkYqeDqQkEAj/EcdoQ9
	3Hrm6N1DCpsfYU0Sun+0b5uGbf1BUA0wv2BFF9FbqQKc4mfbN+iYifDj18P7swmyTExc6+D02SBxP
	KO2cxojlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjMz-00023d-FB; Fri, 28 Jun 2019 05:24:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjMl-00023A-LU
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:24:09 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S5O2IZ033667;
 Fri, 28 Jun 2019 00:24:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561699442;
 bh=mpYlm12k50Y2IG6Z0/YvEbMsQANay4iaP7Ic4q1ygZ4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=dDcHXyNc1WQcEbS9lRFb0KSH/YJxf8Lb4OuAfR1+QS5V/TvYMhMnmmg+NoWiLQA+Y
 JqSgRsZ1ebzOMwOJrcxg3kvsKM0O1pvc8thh+lAYLDUcrI0toeqKuj2c0cWWMvpMry
 axprcIPUkMqnONDnm7p0bILfPk8cEwSde6PlaPc0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S5O2S1050156
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 00:24:02 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 00:24:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 00:24:02 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S5NwZA082212;
 Fri, 28 Jun 2019 00:23:59 -0500
Subject: Re: [RESEND PATCH 02/10] crypto: sa2ul: Add crypto driver
To: Eric Biggers <ebiggers@kernel.org>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-3-j-keerthy@ti.com>
 <20190628050756.GD673@sol.localdomain>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <e86c6c6b-116d-f065-52a4-9b4d2951d100@ti.com>
Date: Fri, 28 Jun 2019 10:54:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628050756.GD673@sol.localdomain>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_222407_786765_C6ACE220 
X-CRM114-Status: GOOD (  19.22  )
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

CgpPbiAyOC8wNi8xOSAxMDozNyBBTSwgRXJpYyBCaWdnZXJzIHdyb3RlOgo+IE9uIEZyaSwgSnVu
IDI4LCAyMDE5IGF0IDA5OjU3OjM3QU0gKzA1MzAsIEtlZXJ0aHkgd3JvdGU6Cj4+IFRoZSBTZWN1
cml0eSBBY2NlbGVyYXRvciAoU0EyX1VMKSBzdWJzeXN0ZW0gcHJvdmlkZXMgaGFyZHdhcmUKPj4g
Y3J5cHRvZ3JhcGhpYyBhY2NlbGVyYXRpb24gZm9yIHRoZSBmb2xsb3dpbmcgdXNlIGNhc2VzOgo+
PiDigKIgRW5jcnlwdGlvbiBhbmQgYXV0aGVudGljYXRpb24gZm9yIHNlY3VyZSBib290Cj4+IOKA
oiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNhdGlvbiBvZiBjb250ZW50IGluIGFwcGxpY2F0aW9u
cwo+PiAgICByZXF1aXJpbmcgRFJNIChkaWdpdGFsIHJpZ2h0cyBtYW5hZ2VtZW50KSBhbmQKPj4g
ICAgY29udGVudC9hc3NldCBwcm90ZWN0aW9uCj4+IFRoZSBkZXZpY2UgaW5jbHVkZXMgb25lIGlu
c3RhbnRpYXRpb24gb2YgU0EyX1VMIG5hbWVkIFNBMl9VTDAKPj4KPj4gU0EyX1VMIHN1cHBvcnRz
IHRoZSBmb2xsb3dpbmcgY3J5cHRvZ3JhcGhpYyBpbmR1c3RyeSBzdGFuZGFyZHMgdG8gZW5hYmxl
IGRhdGEgYXV0aGVudGljYXRpb24sIGRhdGEKPj4gaW50ZWdyaXR5IGFuZCBkYXRhIGNvbmZpZGVu
dGlhbGl0eS4KPj4KPj4gQ3J5cHRvIGZ1bmN0aW9uIGxpYnJhcnkgZm9yIHNvZnR3YXJlIGFjY2Vs
ZXJhdGlvbgo+PiBvIEFFUyBvcGVyYXRpb24KPj4gbyAzREVTIG9wZXJhdGlvbgo+PiBvIFNIQTEg
b3BlcmF0aW9uCj4+IG8gTUQ1IG9wZXJhdGlvbgo+PiBvIFNIQTIg4oCTIDIyNCwgMjU2LCAzODQs
IDUxMiBvcGVyYXRpb24KPj4KPj4gQXV0aGVudGljYXRpb24gc3VwcG9ydGVkIHZpYSBmb2xsb3dp
bmcgaGFyZHdhcmUgY29yZXMKPj4gbyBTSEExCj4+IG8gTUQ1Cj4+IG8gU0hBMiAtMjI0Cj4+IG8g
U0hBMi0yNTYKPj4gbyBTSEEyLTM4NAo+PiBvIFNIQTItNTEyCj4gCj4gV2hhdCBhYm91dCBITUFD
Pwo+IAo+IFlvdXIgYWN0dWFsIGRyaXZlciBvbmx5IGV4cG9zZXMgSE1BQy1TSEEqLCBub3QgU0hB
KiBhbnl0aGluZy4KPiAKPiBXaGF0IGRvZXMgdGhlIGhhcmR3YXJlIGFjdHVhbGx5IHN1cHBvcnQ/
CgpIYXJkd2FyZSBzdXBwb3J0cyBib3RoIFNIQSBhbmQgSE1BQy1TSEEKCj4gCj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2NyeXB0by9LY29uZmlnIGIvZHJpdmVycy9jcnlwdG8vS2NvbmZpZwo+PiBp
bmRleCA2MDM0MTNmMjhmYTMuLmI5YTNmYTAyNmM3NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9j
cnlwdG8vS2NvbmZpZwo+PiArKysgYi9kcml2ZXJzL2NyeXB0by9LY29uZmlnCj4+IEBAIC03ODUs
NCArNzg1LDIxIEBAIGNvbmZpZyBDUllQVE9fREVWX0NDUkVFCj4+ICAgCj4+ICAgc291cmNlICJk
cml2ZXJzL2NyeXB0by9oaXNpbGljb24vS2NvbmZpZyIKPj4gICAKPj4gK2NvbmZpZyBDUllQVE9f
REVWX1NBMlVMCj4+ICsJdHJpc3RhdGUgIlN1cHBvcnQgZm9yIFRJIHNlY3VyaXR5IGFjY2VsZXJh
dG9yIgo+PiArCWRlcGVuZHMgb24gQVJDSF9LMyB8fCBDT01QSUxFX1RFU1QKPj4gKwlzZWxlY3Qg
QVJNNjRfQ1JZUFRPCj4+ICsJc2VsZWN0IENSWVBUT19BRVMKPj4gKwlzZWxlY3QgQ1JZUFRPX0FF
U19BUk02NAo+PiArCXNlbGVjdCBDUllQVE9fU0hBMQo+PiArCXNlbGVjdCBDUllQVE9fTUQ1Cj4+
ICsJc2VsZWN0IENSWVBUT19BTEdBUEkKPj4gKwlzZWxlY3QgQ1JZUFRPX0FVVEhFTkMKPj4gKwlz
ZWxlY3QgSFdfUkFORE9NCj4+ICsJZGVmYXVsdCBtIGlmIEFSQ0hfSzMKPj4gKwloZWxwCj4+ICsJ
ICBLZXlzdG9uZSBkZXZpY2VzIGluY2x1ZGUgYSBzZWN1cml0eSBhY2NlbGVyYXRvciBlbmdpbmUg
dGhhdCBtYXkgYmUKPj4gKwkgIHVzZWQgZm9yIGNyeXB0byBvZmZsb2FkLiAgU2VsZWN0IHRoaXMg
aWYgeW91IHdhbnQgdG8gdXNlIGhhcmR3YXJlCj4+ICsJICBhY2NlbGVyYXRpb24gZm9yIGNyeXB0
b2dyYXBoaWMgYWxnb3JpdGhtcyBvbiB0aGVzZSBkZXZpY2VzLgo+IAo+IFRoaXMgc2hvdWxkbid0
IGJlIGVuYWJsZWQgYnkgZGVmYXVsdC4gIE5vdGUgdGhhdCBhcm02NCBkZWZjb25maWcgc2V0cyBB
UkNIX0szIGFzCj4gd2VsbCBhcyBsb3RzIG9mIG90aGVyIEFSQ0hfKiBvcHRpb25zLCBzbyBjbGVh
cmx5IGp1c3QgYmVjYXVzZSBBUkNIX0szIGlzIHNldAo+IGRvZXNuJ3QgbWVhbiB0aGUga2VybmVs
IGlzIGJlaW5nIGJ1aWx0IHNwZWNpZmljYWxseSBmb3IgeW91ciBwbGF0Zm9ybS4KCm9rYXkuIEkg
d2lsbCByZW1vdmUgdGhhdC4KCj4gCj4+ICsvKgo+PiArICogTW9kZSBDb250cm9sIEluc3RydWN0
aW9ucyBmb3IgdmFyaW91cyBLZXkgbGVuZ3RocyAxMjgsIDE5MiwgMjU2Cj4+ICsgKiBGb3IgQ0JD
IChDaXBoZXIgQmxvY2sgQ2hhaW5pbmcpIG1vZGUgZm9yIGVuY3J5cHRpb24KPj4gKyAqLwo+PiAr
c3RhdGljIHU4IG1jaV9jYmNfZW5jX2FycmF5WzNdW01PREVfQ09OVFJPTF9CWVRFU10gPSB7Cj4+
ICsJewkweDIxLCAweDAwLCAweDAwLCAweDE4LCAweDg4LCAweDBhLCAweGFhLCAweDRiLCAweDdl
LCAweDAwLAo+PiArCQkweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAw
eDAwLCAweDAwLCAweDAwLAo+PiArCQkweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAw
LCAweDAwCX0sCj4+ICsJewkweDIxLCAweDAwLCAweDAwLCAweDE4LCAweDg4LCAweDRhLCAweGFh
LCAweDRiLCAweDdlLCAweDAwLAo+PiArCQkweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAw
eDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLAo+PiArCQkweDAwLCAweDAwLCAweDAwLCAweDAw
LCAweDAwLCAweDAwLCAweDAwCX0sCj4+ICsJewkweDIxLCAweDAwLCAweDAwLCAweDE4LCAweDg4
LCAweDhhLCAweGFhLCAweDRiLCAweDdlLCAweDAwLAo+PiArCQkweDAwLCAweDAwLCAweDAwLCAw
eDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwLAo+PiArCQkweDAwLCAweDAw
LCAweDAwLCAweDAwLCAweDAwLCAweDAwLCAweDAwCX0sCj4+ICt9Owo+IAo+IFVzZSAnY29uc3Qn
IGZvciBzdGF0aWMgY29uc3RhbnRzLgoKT2theQoKPiAKPj4gK3N0YXRpYyBpbnQgc2FfYWVzX2Ni
Y19zZXRrZXkoc3RydWN0IGNyeXB0b19hYmxrY2lwaGVyICp0Zm0sIGNvbnN0IHU4ICprZXksCj4+
ICsJCQkgICAgIHVuc2lnbmVkIGludCBrZXlsZW4pCj4+ICt7Cj4+ICsJc3RydWN0IGFsZ29fZGF0
YSAqYWQgPSBremFsbG9jKHNpemVvZigqYWQpLCBHRlBfS0VSTkVMKTsKPiAKPiBOZWVkIHRvIGNo
ZWNrIGZyb20gZXJyb3IgZm9yIGFsbCBtZW1vcnkgYWxsb2NhdGlvbnMuCj4gCj4+ICtzdGF0aWMg
c3RydWN0IHNhX2FsZ190bXBsIHNhX2FsZ3NbXSA9IHsKPj4gKwl7LnR5cGUgPSBDUllQVE9fQUxH
X1RZUEVfQUJMS0NJUEhFUiwKPiAKPiBhYmxrY2lwaGVyIEFQSSBpcyBkZXByZWNhdGVkLiAgVXNl
IHNrY2lwaGVyIGluc3RlYWQuCgpPa2F5Cgo+IAo+IChUbyBiZSBjbGVhciwgdGhlc2UgYXJlIGp1
c3QgYSBmZXcgdGhpbmdzIEkgaGFwcGVuZWQgdG8gbm90aWNlIGZyb20gdmVyeSBxdWlja2x5Cj4g
c2tpbW1pbmcgdGhyb3VnaCB0aGlzIHBhdGNoLiAgSSBkb24ndCBoYXZlIHRpbWUgdG8gZG8gYSBw
cm9wZXIgcmV2aWV3IG9mIHJhbmRvbQo+IGRyaXZlcnMuKQoKSSB3aWxsIGluY29ycG9yYXRlIHRo
ZSBjb21tZW50cyBpbiB2Mi4KClRoYW5rcyBmb3IgeW91ciBxdWljayByZXZpZXcuCgo+IAo+IC0g
RXJpYwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
