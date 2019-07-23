Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D8771056
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 06:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=08v1o2x5XsgnGsvH06qNl6liYeM0yARm0vlCHMH6wjg=; b=rzuxd/3a4NoEoufSPiXLM76dI
	22Q5j6TgNlTU5eSnbDdIUiW56VWF0XFHG2ZLxNo7UteG6CChuiPVgMjdoIGJdyIt7k1mXSDuKVVwC
	3qKbCQvfzRmUii/VuVHfJ98mafJg5ivzXfEyWvsIjBTM8wUPoLeN7mStiFfsalAFsc6TWVnimyEcV
	Z9CBKnRkiTVuym7Cp/ULWwUooWOHEC7JcwWP4pDsIJqQpv4Lm9fYoQXQtgqEmpOJ7tIKitfDuylZ2
	R49mXqBq9xaeJ35+/moK0tP8dXq0usbe7xPSytp4Qbd4TJCWD+NRzOVRWmql+CYfdrNWth+8JdRvZ
	sPgncRJZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpm8t-0001w3-8u; Tue, 23 Jul 2019 04:11:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpm8b-0001vL-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 04:10:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6N4AcQZ084842;
 Mon, 22 Jul 2019 23:10:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563855038;
 bh=XVQwkygam6XUYEnTe8AJ648CRlJe+ilV+FEAKjn2rNk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=i2oKgZIxxAGqvixuh0zwlHSsthhL4f5ATxJn75fKFU5poGsHBBOBlUB4Uf5XnzPKg
 382ORi84YpgwMEpXRvUfkXu2QTZys2UrfnGJKw66QTRz4ABgTo1daN4PNEVVfwVcod
 ehmrKWZ9j3qflQyzW+Z65JrzTX25le7sfZqMxyOg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6N4Ac2U090509
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 23:10:38 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 23:10:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 23:10:37 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6N4AYpB052900;
 Mon, 22 Jul 2019 23:10:35 -0500
Subject: Re: [RESEND PATCH 01/10] dt-bindings: crypto: k3: Add sa2ul bindings
 documentation
To: Rob Herring <robh@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-2-j-keerthy@ti.com> <20190722182945.GA24685@bogus>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <b8712fe4-4590-fdda-8a24-bf0f135ad567@ti.com>
Date: Tue, 23 Jul 2019 09:41:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722182945.GA24685@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_211053_647905_ADAFD7D5 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMi8wNy8xOSAxMTo1OSBQTSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gRnJpLCBKdW4g
MjgsIDIwMTkgYXQgMDk6NTc6MzZBTSArMDUzMCwgS2VlcnRoeSB3cm90ZToKPj4gVGhlIHNlcmll
cyBhZGRzIENyeXB0byBoYXJkd2FyZSBhY2NlbGVyYXRvciBzdXBwb3J0IGZvciBTQTJVTC4KPj4g
U0EyVUwgc3RhbmRzIGZvciBzZWN1cml0eSBhY2NlbGVyYXRvciB1bHRyYSBsaXRlLgo+Pgo+PiBU
aGUgU2VjdXJpdHkgQWNjZWxlcmF0b3IgKFNBMl9VTCkgc3Vic3lzdGVtIHByb3ZpZGVzIGhhcmR3
YXJlCj4+IGNyeXB0b2dyYXBoaWMgYWNjZWxlcmF0aW9uIGZvciB0aGUgZm9sbG93aW5nIHVzZSBj
YXNlczoKPj4g4oCiIEVuY3J5cHRpb24gYW5kIGF1dGhlbnRpY2F0aW9uIGZvciBzZWN1cmUgYm9v
dAo+PiDigKIgRW5jcnlwdGlvbiBhbmQgYXV0aGVudGljYXRpb24gb2YgY29udGVudCBpbiBhcHBs
aWNhdGlvbnMKPj4gICAgcmVxdWlyaW5nIERSTSAoZGlnaXRhbCByaWdodHMgbWFuYWdlbWVudCkg
YW5kCj4+ICAgIGNvbnRlbnQvYXNzZXQgcHJvdGVjdGlvbgo+PiBUaGUgZGV2aWNlIGluY2x1ZGVz
IG9uZSBpbnN0YW50aWF0aW9uIG9mIFNBMl9VTCBuYW1lZCBTQTJfVUwwCj4+Cj4+IFNBMlVMIG5l
ZWRzIG9uIHR4IGNoYW5uZWwgYW5kIGEgcGFpciBvZiByeCBkbWEgY2hhbm5lbHMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEtlZXJ0aHkgPGota2VlcnRoeUB0aS5jb20+Cj4+IC0tLQo+PiAgIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQgICAgICB8IDQ3ICsrKysrKysrKysr
KysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL3Nh
MnVsLnR4dAo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2NyeXB0by9zYTJ1bC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y3J5cHRvL3NhMnVsLnR4dAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAw
MDAwMDAuLjgxY2MwMzk2NzNiNAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vc2EydWwudHh0Cj4+IEBAIC0wLDAgKzEsNDcg
QEAKPj4gK0szIFNvQyBTQTJVTCBjcnlwdG8gbW9kdWxlCj4+ICsKPj4gK1JlcXVpcmVkIHByb3Bl
cnRpZXM6Cj4+ICsKPj4gKy0gY29tcGF0aWJsZSA6IFNob3VsZCBiZToKPj4gKyAgLSAidGksc2Ey
dWwtY3J5cHRvIgo+IAo+IE5lZWRzIHRvIGJlIFNvQyBzcGVjaWZpYy4KCm9rYXkKCj4gCj4+ICst
IHJlZyA6IE9mZnNldCBhbmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlciBzZXQgZm9yIHRoZSBtb2R1
bGUKPj4gKwo+PiArLSBkbWFzOiBETUEgc3BlY2lmaWVycyBmb3IgdHggYW5kIHJ4IGRtYS4gc2Ey
dWwgbmVlZHMgb25lIHR4IGNoYW5uZWwKPj4gKwlhbmQgMiByeCBjaGFubmVscy4gRmlyc3Qgcngg
Y2hhbm5lbCBmb3IgPCAyNTYgYnl0ZXMgYW5kCj4+ICsJdGhlIG90aGVyIG9uZSBmb3IgPj0yNTYg
Ynl0ZXMuIFNlZSB0aGUgRE1BIGNsaWVudCBiaW5kaW5nLAo+PiArICAgICAgICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL2RtYS50eHQKPj4gKy0gZG1hLW5hbWVzOiBETUEg
cmVxdWVzdCBuYW1lcyBoYXMgdG8gaGF2ZSBvbmUgdHggYW5kIDIgcnggbmFtZXMKPj4gKwljb3Jy
ZXNwb25kaW5nIHRvIGRtYXMgYWJpdmUuCj4+ICstIHRpLHBzaWwtY29uZmlnKiAtIFVETUEgUFNJ
TCBuYXRpdmUgUGVyaXBoZXJhbCB1c2luZyBwYWNrZXQgbW9kZS4KPj4gKwlTQTJVTCBtdXN0IGhh
dmUgRVBJQihFeHRlbmRlZCBwcm90b2NhbCBpbmZvcm1hdGlvbiBibG9jaykKPj4gKwlhbmQgUFNE
QVRBKHByb3RvY29sIHNwZWNpZmljIGRhdGEpIHByb3BlcnRpZXMuCj4gCj4gSWYgdGksbmVlZHMt
ZXBpYiBpcyByZXF1aXJlZCwgdGhlbiB3aHkgZG8geW91IG5lZWQgdG8gc3BlY2lmeSBpdCBpbiBE
VD8KPiBJbiBhbnkgY2FzZSwgdGhpcyBhbGwgc2VlbXMgbGlrZSBjaGFubmVsIGNvbmZpZyBpbmZv
IHRoYXQgc2hvdWxkIGJlIHBhcnQKPiBvZiB0aGUgI2RtYS1jZWxscy4KCnRpLG5lZWRzLWVwaWIg
aXMgdGhlIHVkbWEgY2xpZW50KEhlcmUgc2EydWwpIGNvbnZleWluZyB0aGUgdWRtYSBsYXllci4K
Tm90IGV2ZXJ5IHVkbWEgY2xpZW50IG5lZWRzIGVwaWIuCgpQZXRlciwKCkFueSB0aG91Z2h0cyBv
biB0aGUgYWJvdmU/CgotIEtlZXJ0aHkKCj4gCj4gQWxzbywgZG9uJ3QgdXNlIHZlbmRvciBwcmVm
aXhlcyBvbiBub2RlIG5hbWVzLgoKT2theQoKPiAKPj4gKwo+PiArRXhhbXBsZSBBTTY1NCBTQTJV
TDoKPj4gK2NyeXB0bzogY3J5cHRvQDRFMDAwMDAgewo+PiArCWNvbXBhdGlibGUgPSAidGksc2Ey
dWwtY3J5cHRvIjsKPj4gKwlyZWcgPSA8MHgwIDB4NEUwMDAwMCAweDAgMHgxMjAwPjsKPj4gKwl0
aSxwc2lsLWJhc2UgPSA8MHg0MDAwPjsKPj4gKwo+PiArCWRtYXMgPSA8Jm1haW5fdWRtYXAgJmNy
eXB0byAwIFVETUFfRElSX1RYPiwKPj4gKwkJPCZtYWluX3VkbWFwICZjcnlwdG8gMCBVRE1BX0RJ
Ul9SWD4sCj4+ICsJCTwmbWFpbl91ZG1hcCAmY3J5cHRvIDEgVURNQV9ESVJfUlg+Owo+PiArCWRt
YS1uYW1lcyA9ICJ0eCIsICJyeDEiLCAicngyIjsKPj4gKwo+PiArCXRpLHBzaWwtY29uZmlnMCB7
Cj4+ICsJCWxpbnV4LHVkbWEtbW9kZSA9IDxVRE1BX1BLVF9NT0RFPjsKPj4gKwkJdGksbmVlZHMt
ZXBpYjsKPj4gKwkJdGkscHNkLXNpemUgPSA8NjQ+Owo+PiArCX07Cj4+ICsKPj4gKwl0aSxwc2ls
LWNvbmZpZzEgewo+PiArCQlsaW51eCx1ZG1hLW1vZGUgPSA8VURNQV9QS1RfTU9ERT47Cj4+ICsJ
CXRpLG5lZWRzLWVwaWI7Cj4+ICsJCXRpLHBzZC1zaXplID0gPDY0PjsKPj4gKwl9Owo+PiArCj4+
ICsJdGkscHNpbC1jb25maWcyIHsKPj4gKwkJbGludXgsdWRtYS1tb2RlID0gPFVETUFfUEtUX01P
REU+Owo+PiArCQl0aSxuZWVkcy1lcGliOwo+PiArCQl0aSxwc2Qtc2l6ZSA9IDw2ND47Cj4+ICsJ
fTsKPj4gK307Cj4+IC0tIAo+PiAyLjE3LjEKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
