Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8FB1E829D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t782Y7nbJnq8vuzIBpD70pefOKEMPDZz+Z7jZSc4YeA=; b=OMUgDCwTyrvKmdlH1sYJ43+GA
	CzEmEHid3fYwxPdPANePL6dSX0H1Isdh7JmpUf5BH6qtzrxlBSKzAch+9bM8rBr3GaFx6HFIlfErD
	dx5TKWCpSsJI3pLqjbD8/xQE5ndTJmQolQTaR3KPcabB82SD2iN+OFOzSMnCWfFXyHX9gBmMaIL3v
	qVmsPq3gKsaTgSY8CcwlGZq5G4TTl2oP+IV9JO5Am7yNhaDAXrMacjHsxT627YGNAIDQOQL2fTMoS
	PYahUo/cvwtwspd6EdDSSYBCyAlJevs6VNGdOicV78cFe0f+GLY5WA38fvHiMjHc94b/pk3nWO53m
	/13LVHL4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehNT-00081f-I5; Fri, 29 May 2020 15:56:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehNK-000818-8a; Fri, 29 May 2020 15:56:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9CCE2ACB8;
 Fri, 29 May 2020 15:56:48 +0000 (UTC)
Subject: Re: [PATCH 1/1] tty: serial: owl: Add support for kernel debugger
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
References: <6ee88060c129715980592a1ae33c93923916a14b.1590766726.git.cristian.ciocaltea@gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <16ff435f-9172-e01d-dfe6-7aa8575c4bd6@suse.de>
Date: Fri, 29 May 2020 17:56:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6ee88060c129715980592a1ae33c93923916a14b.1590766726.git.cristian.ciocaltea@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_085650_593112_3EFB5DEF 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSAyOS4wNS4yMCB1bSAxNzo1MCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBJ
bXBsZW1lbnQgcG9sbF9wdXRfY2hhciBhbmQgcG9sbF9nZXRfY2hhciBjYWxsYmFja3MgaW4gc3Ry
dWN0IHVhcnRfb3BzCj4gdGhhdCBlbmFibGVzIE9XTCBVQVJUIHRvIGJlIHVzZWQgZm9yIEtHREIg
ZGVidWdnaW5nIG92ZXIgc2VyaWFsIGxpbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4g
Q2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy90dHkvc2VyaWFsL293bC11YXJ0LmMgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9vd2wtdWFydC5jIGIvZHJp
dmVycy90dHkvc2VyaWFsL293bC11YXJ0LmMKPiBpbmRleCBjMmZhMmYxNWQ1MGEuLjI2ZGNjMzc0
ZGVjNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvb3dsLXVhcnQuYwo+ICsrKyBi
L2RyaXZlcnMvdHR5L3NlcmlhbC9vd2wtdWFydC5jCj4gQEAgLTEyLDYgKzEyLDcgQEAKPiAgICNp
bmNsdWRlIDxsaW51eC9jb25zb2xlLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAg
ICNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gICAj
aW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgICNp
bmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiBAQCAtMjAsMTMgKzIxLDEzIEBACj4g
ICAjaW5jbHVkZSA8bGludXgvdHR5Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvdHR5X2ZsaXAuaD4K
PiAgIAo+IC0jZGVmaW5lIE9XTF9VQVJUX1BPUlRfTlVNIDcKPiAtI2RlZmluZSBPV0xfVUFSVF9E
RVZfTkFNRSAidHR5T1dMIgo+ICsjZGVmaW5lIE9XTF9VQVJUX1BPUlRfTlVNCQk3Cj4gKyNkZWZp
bmUgT1dMX1VBUlRfREVWX05BTUUJCSJ0dHlPV0wiCj4gICAKPiAtI2RlZmluZSBPV0xfVUFSVF9D
VEwJMHgwMDAKPiAtI2RlZmluZSBPV0xfVUFSVF9SWERBVAkweDAwNAo+IC0jZGVmaW5lIE9XTF9V
QVJUX1RYREFUCTB4MDA4Cj4gLSNkZWZpbmUgT1dMX1VBUlRfU1RBVAkweDAwYwo+ICsjZGVmaW5l
IE9XTF9VQVJUX0NUTAkJCTB4MDAwCj4gKyNkZWZpbmUgT1dMX1VBUlRfUlhEQVQJCQkweDAwNAo+
ICsjZGVmaW5lIE9XTF9VQVJUX1RYREFUCQkJMHgwMDgKPiArI2RlZmluZSBPV0xfVUFSVF9TVEFU
CQkJMHgwMGMKClBsZWFzZSBkbyBub3QgdW5uZWNlc3NhcmlseSByZS1pbmRlbnQga2VybmVsIGNv
ZGUuIFlvdSBjYW4gZG8gc28gd2hlbiAKeW91J3JlIGFjdHVhbGx5IGFkZGluZyBzb21ldGhpbmcg
bmV3LgoKPiAgIAo+ICAgI2RlZmluZSBPV0xfVUFSVF9DVExfRFdMU19NQVNLCQlHRU5NQVNLKDEs
IDApCj4gICAjZGVmaW5lIE9XTF9VQVJUX0NUTF9EV0xTXzVCSVRTCQkoMHgwIDw8IDApCj4gQEAg
LTQ2MSw2ICs0NjIsMzQgQEAgc3RhdGljIHZvaWQgb3dsX3VhcnRfY29uZmlnX3BvcnQoc3RydWN0
IHVhcnRfcG9ydCAqcG9ydCwgaW50IGZsYWdzKQo+ICAgCX0KPiAgIH0KPiAgIAo+ICsjaWZkZWYg
Q09ORklHX0NPTlNPTEVfUE9MTAo+ICsKPiArc3RhdGljIGludCBvd2xfdWFydF9wb2xsX2dldF9j
aGFyKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCj4gK3sKPiArCXUzMiBjID0gTk9fUE9MTF9DSEFS
Owo+ICsKPiArCWlmICghKG93bF91YXJ0X3JlYWQocG9ydCwgT1dMX1VBUlRfU1RBVCkgJiBPV0xf
VUFSVF9TVEFUX1JGRU0pKQo+ICsJCWMgPSBvd2xfdWFydF9yZWFkKHBvcnQsIE9XTF9VQVJUX1JY
REFUKTsKPiArCj4gKwlyZXR1cm4gYzsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgb3dsX3VhcnRf
cG9sbF9wdXRfY2hhcihzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCB1bnNpZ25lZCBjaGFyIGMpCj4g
K3sKPiArCS8qIFdhaXQgd2hpbGUgVFggRklGTyBpcyBmdWxsICovCj4gKwl3aGlsZSAob3dsX3Vh
cnRfcmVhZChwb3J0LCBPV0xfVUFSVF9TVEFUKSAmIE9XTF9VQVJUX1NUQVRfVEZGVSkKPiArCQlj
cHVfcmVsYXgoKTsKPiArCj4gKwkvKiBTZW5kIHRoZSBjaGFyYWN0ZXIgb3V0ICovCj4gKwlvd2xf
dWFydF93cml0ZShwb3J0LCBjLCBPV0xfVUFSVF9UWERBVCk7Cj4gKwo+ICsJLyogV2FpdCBmb3Ig
dHJhbnNtaXR0ZXIgdG8gYmVjb21lIGVtcHR5ICovCj4gKwl3aGlsZSAob3dsX3VhcnRfcmVhZChw
b3J0LCBPV0xfVUFSVF9TVEFUKSAmIE9XTF9VQVJUX1NUQVRfVFJGTF9NQVNLKQo+ICsJCWNwdV9y
ZWxheCgpOwo+ICt9CgpIb3cgaXMgdGhpcyBkaWZmZXJlbnQgZnJvbSBlYXJseWNvbj8gSSBkaXNs
aWtlIHRoYXQgdGhpcyBpcyBiZWluZyAKb3Blbi1jb2RlZC4gUGxlYXNlIHRyeSB0byByZXVzZSBl
eGlzdGluZyBmdW5jdGlvbnMgZm9yIHRoaXMuCgpSZWdhcmRzLApBbmRyZWFzCgo+ICsKPiArI2Vu
ZGlmIC8qIENPTkZJR19DT05TT0xFX1BPTEwgKi8KPiArCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0
IHVhcnRfb3BzIG93bF91YXJ0X29wcyA9IHsKPiAgIAkuc2V0X21jdHJsID0gb3dsX3VhcnRfc2V0
X21jdHJsLAo+ICAgCS5nZXRfbWN0cmwgPSBvd2xfdWFydF9nZXRfbWN0cmwsCj4gQEAgLTQ3Niw2
ICs1MDUsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB1YXJ0X29wcyBvd2xfdWFydF9vcHMgPSB7
Cj4gICAJLnJlcXVlc3RfcG9ydCA9IG93bF91YXJ0X3JlcXVlc3RfcG9ydCwKPiAgIAkucmVsZWFz
ZV9wb3J0ID0gb3dsX3VhcnRfcmVsZWFzZV9wb3J0LAo+ICAgCS52ZXJpZnlfcG9ydCA9IG93bF91
YXJ0X3ZlcmlmeV9wb3J0LAo+ICsjaWZkZWYgQ09ORklHX0NPTlNPTEVfUE9MTAo+ICsJLnBvbGxf
Z2V0X2NoYXIJPSBvd2xfdWFydF9wb2xsX2dldF9jaGFyLAo+ICsJLnBvbGxfcHV0X2NoYXIJPSBv
d2xfdWFydF9wb2xsX3B1dF9jaGFyLAo+ICsjZW5kaWYKPiAgIH07Cj4gICAKPiAgICNpZmRlZiBD
T05GSUdfU0VSSUFMX09XTF9DT05TT0xFCj4gCgoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25z
IEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6
IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
