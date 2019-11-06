Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FFCF102D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 08:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TisH0YopLk7lBss8L3b5/bvFPBf1j/Nk+t+Ois88FiU=; b=PmE6XqdJhHOHhkjTG3CNoRTDj
	53GHWtA/2Cy6Z1FzO7ekp5aPIUl3SQJVd/E1AiL61PkV3Fm8UsL5tmp2uyTPwIlv1G0k7byz/XJWE
	2RNt8br6go1wZKbS1Qf3nyendjeB3b4UbzvujDxZ8E9F+zZ2PE4sh+RECVQn77lBg5QfE1mgMQ4gv
	GIYANF2fkFRd+8MbPWsQ58O46QhFhMozvZ58kG/SA5xtxFPmWOyStnpK2Q52Am2oJkpW3g1d6xI/3
	dzT317UzTa2H95vmygCJTb+aOoOGeSxfgxBEJ+SXNM/vT9wdUJz3ApgarFtReKGEC/MJinoOH9BGE
	oyAUP8VDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSFhJ-0007p0-3u; Wed, 06 Nov 2019 07:25:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFh9-0007oN-El
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 07:25:36 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA67PQbb101819;
 Wed, 6 Nov 2019 01:25:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573025126;
 bh=dJZ3sYUnQAot2lJVFPiVqyY58bNj17rDpH/tpnzKJI0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OwHcmlJRFBVGaXR1CTf+KNdoaK5uYZZ2QZbjb/ATdmLrOrNETwj8tkr2WZNfHoF3v
 RZ4dRD0G/vqLsuPcTRBRw48HVx0yfjfHA8id6hhOPT8PxwdcQt9VOXD0bsqCeqY1hJ
 S3/CbNHLPWu8tMzj/Q2t1icaPDOFXxlvv1mkoVOw=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA67PQIB078357
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 Nov 2019 01:25:26 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 6 Nov
 2019 01:25:09 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 6 Nov 2019 01:25:24 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA67PJRS106020;
 Wed, 6 Nov 2019 01:25:22 -0600
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
To: Gilad Ben-Yossef <gilad@benyossef.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
Date: Wed, 6 Nov 2019 09:25:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_232535_600844_9DA06C3E 
X-CRM114-Status: GOOD (  26.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Eric Biggers <ebiggers@google.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMTEvMjAxOSAwODozOSwgR2lsYWQgQmVuLVlvc3NlZiB3cm90ZToKPiBIaSwKPiAKPiAK
PiBPbiBUaHUsIE9jdCAxNywgMjAxOSBhdCAzOjI2IFBNIFRlcm8gS3Jpc3RvIDx0LWtyaXN0b0B0
aS5jb20+IHdyb3RlOgo+Pgo+PiBDdXJyZW50bHkgY3J5cHRvX3dhaXRfcmVxIHdhaXRzIGluZGVm
aW5pdGVseSBmb3IgYW4gYXN5bmMgY3J5cHRvIHJlcXVlc3QKPj4gdG8gY29tcGxldGUuIFRoaXMg
aXMgYmFkIGFzIGl0IGNhbiBjYXVzZSBmb3IgZXhhbXBsZSB0aGUgY3J5cHRvIHRlc3QKPj4gbWFu
YWdlciB0byBoYW5nIHdpdGhvdXQgYW55IG5vdGlmaWNhdGlvbiBhcyB0byB3aHkgaXQgaGFzIGhh
cHBlbmVkLgo+PiBJbnN0ZWFkIG9mIHdhaXRpbmcgaW5kZWZpbml0ZWx5LCBhZGQgYSAxIHNlY29u
ZCB0aW1lb3V0IHRvIHRoZSBjYWxsLAo+PiBhbmQgcHJvdmlkZSBhIHdhcm5pbmcgcHJpbnQgaWYg
YSB0aW1lb3V0IGhhcHBlbnMuCj4gCj4gV2hpbGUgdGhlIGluY2VudGl2ZSBpcyBjbGVhciBhbmQg
cG9zaXRpdmUsIHRoaXMgc3VnZ2VzdGVkIHNvbHV0aW9uCj4gY3JlYXRlcyBwcm9ibGVtcyBvZiBp
dHMgb3duLgo+IEluIG1hbnkgKG1vc3Q/KSBjYXNlcyB3aGVyZSB3ZSBhcmUgd2FpdGluZyBoZXJl
LCB3ZSBhcmUgd2FpdGluZyBmb3IgYQo+IERNQSBvcGVyYXRpb24gdG8gZmluaXNoIGZyb20gaGFy
ZHdhcmUuCj4gRXhpdGluZyB3aGlsZSB0aGlzIHBlbmRpbmcgRE1BIG9wZXJhdGlvbiBpcyBub3Qg
ZmluaXNoZWQsIGV2ZW4gd2l0aCBhCj4gcHJvcGVyIGVycm9yIHJldHVybiB2YWx1ZSwgaXMgZGFu
Z2Vyb3VzIGJlY2F1c2UKPiB1bmxlc3MgdGhlIGNhbGxpbmcgY29kZSB0YWtlcyBncmVhdCBjYXJl
IHRvIG5vdCByZWxlYXNlIHRoZSBtZW1vcnkgdGhlCj4gRE1BIGlzIGJlaW5nIGRvbmUgZnJvbS90
bywgdGhpcyBjYW4gaGF2ZSBkaXNhc3Ryb3VzIGVmZmVjdHMuCj4gCj4gQXMgRXJpYyBoYXMgYWxy
ZWFkeSBtZW50aW9uZWQsIG9uZSBzZWNvbmQgbWlnaHQgc2VlbSBsaWtlIGEgbG9uZyB0aW1lLAo+
IGJ1dCB3ZSBkb24ndCByZWFsbHkga25vdyBpZiBpdCBpcyBlbm91Z2guCj4gCj4gSG93IGFib3V0
IGFkZGluZyBhIHNlY29uZCBBUEkgKGlnLiBjcnlwdG9fd2FpdF9yZXFfdGltZW91dCkgd2hpY2gK
PiBzdXBwb3J0cyBhIGNhbGVlIHNwZWNpZmllZCB0aW1lb3V0IHdoZXJlCj4gdGhlIGNhbGxlIGtu
b3dzIGhvdyB0byBjb3JyZWN0bHkgZGVhbCB3aXRoIHRpbWVvdXQgYW5kIHBvcnQgdGhlCj4gcmVs
ZXZhbnQgY2FsbCBzaXRlcyB0byB1c2UgdGhpcz8KClllYWgsIHRoYXQgd291bGQgd29yayBmb3Ig
bWUuIEkgZ3Vlc3Mgd2UgY291bGQganVzdCBzd2FwIHRoZSB0ZXN0bWdyIHRvIAp1c2UgdGhpcyB0
aW1lb3V0IEFQSSwgYXMgaXQgaXMgcXVpdGUgY2xlYXIgaXQgc2hvdWxkIHRpbWVvdXQgcmF0aGVy
IHRoYW4gCndhaXQgaW5kZWZpbml0ZWx5LCBhbmQgYWZhaWNzLCB0aGUgZGF0YSBidWZmZXJzIGl0
IHVzZXMgYXJlIGxpbWl0ZWQgCnNpemUuIEl0IGRvZXNuJ3QgcmVhbGx5IG1hdHRlciBmb3IgaXQg
d2hldGhlciB0aGUgdGltZW91dCBpcyAxIHNlY29uZCBvciAKMTAgc2Vjb25kcywgYXMgbG9uZyBh
cyBpdCBldmVudHVhbGx5IHRpbWVzIG91dC4KCi1UZXJvCgo+IAo+IFRoYW5rcyEKPiBHaWxhZAo+
IAo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgo+
PiAtLS0KPj4gICBpbmNsdWRlL2xpbnV4L2NyeXB0by5oIHwgOSArKysrKysrKy0KPj4gICAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2NyeXB0by5oIGIvaW5jbHVkZS9saW51eC9jcnlwdG8uaAo+PiBp
bmRleCAxOWVhM2EzNzFkN2IuLmI4ZjBlNWMzY2MwYyAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9jcnlwdG8uaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L2NyeXB0by5oCj4+IEBAIC02ODIs
OCArNjgyLDE1IEBAIHN0YXRpYyBpbmxpbmUgaW50IGNyeXB0b193YWl0X3JlcShpbnQgZXJyLCBz
dHJ1Y3QgY3J5cHRvX3dhaXQgKndhaXQpCj4+ICAgICAgICAgIHN3aXRjaCAoZXJyKSB7Cj4+ICAg
ICAgICAgIGNhc2UgLUVJTlBST0dSRVNTOgo+PiAgICAgICAgICBjYXNlIC1FQlVTWToKPj4gLSAg
ICAgICAgICAgICAgIHdhaXRfZm9yX2NvbXBsZXRpb24oJndhaXQtPmNvbXBsZXRpb24pOwo+PiAr
ICAgICAgICAgICAgICAgZXJyID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZ3YWl0LT5j
b21wbGV0aW9uLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG1zZWNzX3RvX2ppZmZpZXMoMTAwMCkpOwo+PiAgICAgICAgICAgICAgICAgIHJlaW5p
dF9jb21wbGV0aW9uKCZ3YWl0LT5jb21wbGV0aW9uKTsKPj4gKyAgICAgICAgICAgICAgIGlmICgh
ZXJyKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHByX2VycigiJXM6IHRpbWVvdXQgZm9y
ICVwXG4iLCBfX2Z1bmNfXywgd2FpdCk7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9
IC1FVElNRURPVVQ7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+PiArICAgICAg
ICAgICAgICAgfQo+PiArCj4+ICAgICAgICAgICAgICAgICAgZXJyID0gd2FpdC0+ZXJyOwo+PiAg
ICAgICAgICAgICAgICAgIGJyZWFrOwo+PiAgICAgICAgICB9Owo+PiAtLQo+PiAyLjE3LjEKPj4K
Pj4gLS0KPiAKPiAKPiAKPiAtLQo+IEdpbGFkIEJlbi1Zb3NzZWYKPiBDaGllZiBDb2ZmZWUgRHJp
bmtlcgo+IAo+IHZhbHVlcyBvZiDOsiB3aWxsIGdpdmUgcmlzZSB0byBkb20hCj4gCgotLQpUZXhh
cyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5r
aS4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTog
SGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
