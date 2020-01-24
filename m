Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDFA148509
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 13:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:To:References:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKpOOdGqxkeb6sYlP2VJuUozXrB6dZ2AGYwvSFzlw1s=; b=L+Nqf7pLKEGCTN
	Z0flqym33XLPatJ1CdAO/Ki8+dfXRe102lKmvWGEpcyOvR7Ni1igblitm115quu4tTWKYj84Fke3Z
	rAF/If1Q8/yEkMtJNX+PGCXHsCEdScVHzTMrjOdu7R7svWCubrNcXUJGXx5pXYUPgPxSwY0vT9sef
	5gYlSljQTLL2r53RVEPUwTvaK4F7LFmExPtmi63WLYI93n73oKtRjkG9liAZwM4JQOnMe3GswP4Wb
	alu34jEW6Zg9rH2C9EcR73fnwpgeGB7P9PFclUg9MxdEt6CviioKo38mnz1onhDU0OtR2HYKbjksY
	KPucYBEet7oUsbH7dTUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxsL-0001u2-LM; Fri, 24 Jan 2020 12:15:49 +0000
Received: from plasma32.jpberlin.de ([80.241.57.8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxsB-0001sH-BB
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 12:15:41 +0000
Received: from spamfilter02.heinlein-hosting.de
 (spamfilter02.heinlein-hosting.de [80.241.56.116])
 by plasma.jpberlin.de (Postfix) with ESMTP id E797D100425;
 Fri, 24 Jan 2020 13:15:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.76])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id bJ9KJ2wKcDLt; Fri, 24 Jan 2020 13:15:25 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 453A010058D;
 Fri, 24 Jan 2020 13:15:25 +0100 (CET)
Received: from [10.25.40.95] (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 24 Jan
 2020 13:15:24 +0100
From: Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <Sudeep.Holla@arm.com>,
 "Viresh Kumar" <viresh.kumar@linaro.org>
Autocrypt: addr=peter.hilber@opensynergy.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <82e1181a-b1ff-eccc-d61d-2da0e7afec25@opensynergy.com>
Date: Fri, 24 Jan 2020 13:15:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.25.255.1]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_041539_696523_A38D969D 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.57.8 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.241.57.8 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: ALKML <linux-arm-kernel@lists.infradead.org>, peng.fan@nxp.com,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIuMDEuMjAgMDM6MzYsIFZpcmVzaCBLdW1hciB3cm90ZToKPiBUaGUgU0NNSSBzcGVjaWZp
Y2F0aW9uIGlzIGZhaXJseSBpbmRlcGVuZGVudCBvZiB0aGUgdHJhbnNwb3J0IHByb3RvY29sLAo+
IHdoaWNoIGNhbiBiZSBhIHNpbXBsZSBtYWlsYm94IChhbHJlYWR5IGltcGxlbWVudGVkKSBvciBh
bnl0aGluZyBlbHNlLgo+IFRoZSBjdXJyZW50IExpbnV4IGltcGxlbWVudGF0aW9uIGhvd2V2ZXIg
aXMgdmVyeSBtdWNoIGRlcGVuZGVudCBvbiB0aGUKPiBtYWlsYm94IHRyYW5zcG9ydCBsYXllci4K
Pgo+IFRoaXMgcGF0Y2ggbWFrZXMgdGhlIFNDTUkgY29yZSBjb2RlIChkcml2ZXIuYykgaW5kZXBl
bmRlbnQgb2YgdGhlCj4gbWFpbGJveCB0cmFuc3BvcnQgbGF5ZXIgYW5kIG1vdmVzIGFsbCBtYWls
Ym94IHJlbGF0ZWQgY29kZSB0byBhIG5ldwo+IGZpbGU6IG1haWxib3guYy4KPgo+IFdlIGNhbiBu
b3cgaW1wbGVtZW50IG1vcmUgdHJhbnNwb3J0IHByb3RvY29scyB0byB0cmFuc3BvcnQgU0NNSQo+
IG1lc3NhZ2VzLgo+Cj4gVGhlIHRyYW5zcG9ydCBwcm90b2NvbHMganVzdCBuZWVkIHRvIHByb3Zp
ZGUgc3RydWN0IHNjbWlfdHJhbnNwb3J0X29wcywKPiB3aXRoIGl0cyB2ZXJzaW9uIG9mIHRoZSBj
YWxsYmFja3MgdG8gZW5hYmxlIGV4Y2hhbmdlIG9mIFNDTUkgbWVzc2FnZXMuCgpTb3JyeSBmb3Ig
YmVpbmcgYSBiaXQgbGF0ZSB3aXRoIG15IGZlZWRiYWNrLgoKQWNjZXNzaW5nIHN0cnVjdCBzY21p
X3NoYXJlZF9tZW0gbWVtYmVycyBmcm9tIGRyaXZlci5jIGZvcmNlcyBhbnkKdHJhbnNwb3J0IHRv
IGFsc28gdXNlIHRoZSBzdHJ1Y3Qgc2NtaV9zaGFyZWRfbWVtIGxheW91dCAob3IgYXQgbGVhc3QK
cHJldGVuZCB0byBkbyBzbykuIElNSE8gdGhpcyBkb2VzIG5vdCB3b3JrIHZlcnkgd2VsbCBmb3Ig
dHJhbnNwb3J0cwp3aGljaCBhcmUgbm90IHVzaW5nIGEgZml4ZWQgbWVtb3J5IHJlZ2lvbiB0byB0
cmFuc21pdCBhbmQgcmVjZWl2ZS4gQnV0IEkKdGhpbmsgdGhlIGN1cnJlbnQgYXBwcm9hY2ggd2ls
bCBzdGlsbCB3b3JrIG91dC4KCnZpcnRpbyB0cmFuc2ZlcnMgZWFjaCBtZXNzYWdlIGluIGEgc2Vw
YXJhdGUgYnVmZmVyLCBhbmQgYWx3YXlzIHVzZXMKZGlmZmVyZW50IHBhcnRzIG9mIHRoZSBidWZm
ZXIgZm9yIHRyYW5zbWl0IGRhdGEgYW5kIHJlY2VpdmUgZGF0YSwgd2hpY2gKaXMgY29udHJhcnkg
dG8gdGhlIGFzc3VtcHRpb25zIG9mIHRoZSBzdHJ1Y3Qgc2NtaV9zaGFyZWRfbWVtLgoKVGhlIHZp
cnRpbyB0cmFuc3BvcnQgd2lsbCBwcm9iYWJseSBoYXZlIG5vIHVzZSBmb3IgdGhlIHN0cnVjdApz
Y21pX3NoYXJlZF9tZW0uY2hhbm5lbF9zdGF0dXMgYW5kIC5mbGFncy4gVGhlIGNoZWNrIGZvcgpT
Q01JX1NITUVNX0NIQU5fU1RBVF9DSEFOTkVMX0ZSRUUgaW4gc2NtaV90eF9wcmVwYXJlKCkgaXMg
bm90IHJlcXVpcmVkCmZvciB0aGUgdmlydGlvIHRyYW5zcG9ydC4KCkkgd291bGQgaGF2ZSBwcmVm
ZXJyZWQgKHRvIGhhdmUgYW4gb3B0aW9uKSB0byB1c2UgYXMgZGF0YSBwYXNzaW5nCmludGVyZmFj
ZSB0byB0aGUgdHJhbnNwb3J0IGp1c3QgdGhlIHN0cnVjdCBzY21pX3hmZXIuIEEgdHJhbnNwb3J0
IHVzaW5nCnRoaXMgb3B0aW9uIHdvdWxkIG5vdCBpbXBsZW1lbnQgb3BzIChyZWFkfHdyaXRlKTMy
IGFuZCBtZW1jcHlfKGZyb218dG8pLgpUaGUgdHJhbnNwb3J0IHdvdWxkIGFsc28gbm90IGNhbGwg
c2NtaV90eF9wcmVwYXJlKCksIGJ1dCBpbnN0ZWFkIHRha2UKZGF0YSBmcm9tIHN0cnVjdCBzY21p
X3hmZXIgZGlyZWN0bHkuIFRoZSB0cmFuc3BvcnQgd291bGQgdXNlIGEgbW9kaWZpZWQKc2NtaV9y
eF9jYWxsYmFjaygpIHRvIG5vdGlmeSB0aGF0IGl0IHVwZGF0ZWQgdGhlIHN0cnVjdCBzY21pX3hm
ZXIuIEEKaGVscGVyIHRvIGRlcml2ZSB0aGUgc3RydWN0IHNjbWlfeGZlciAqIGZyb20gdGhlIG1l
c3NhZ2UgaGVhZGVyIHdvdWxkIGJlCmV4dHJhY3RlZCBmcm9tIHNjbWlfcnhfY2FsbGJhY2soKS4g
VGhlIHNjbWlfeGZlcl9wb2xsX2RvbmUoKSB3b3VsZApiZWNvbWUgYW4gKG9wdGlvbmFsKSB0cmFu
c3BvcnQgb3AuCgpPdGhlciByZW1hcmtzOgoKSWYgc3RheWluZyB3aXRoIHRoaXMgYXBwcm9hY2gs
IGl0IHdvdWxkIGJlIG1vcmUgZWxlZ2FudCB0byBhZGQgYW4KYWJzdHJhY3Rpb24gdGhyb3VnaCB3
aGljaCB0aGUgdHJhbnNwb3J0IGNhbiBzZXQgdGhlClNDTUlfU0hNRU1fQ0hBTl9TVEFUX0NIQU5O
RUxfRlJFRSBiaXQgaW4gdGhlIHN0cnVjdCBzY21pX3NoYXJlZF9tZW0uCgpUaGUgU0NNSSBzcGVj
IGFsbG93cyBib3RoIGludGVycnVwdC1iYXNlZCBhbmQgcG9sbGluZy1iYXNlZCBjb21wbGV0aW9u
Cm5vdGlmaWNhdGlvbi4gVGhlIHRyYW5zcG9ydCBzaG91bGQgYmUgYWJsZSB0byBpbmRpY2F0ZSB3
aGljaApub3RpZmljYXRpb24gbWV0aG9kcyBpdCBzdXBwb3J0cy4gVGhlIHZpcnRpbyB0cmFuc3Bv
cnQgd291bGQgbm90IHdhbnQgdG8Kc3VwcG9ydCBwb2xsaW5nLgoKPiAtc3RhdGljIHZvaWQgc2Nt
aV9yeF9jYWxsYmFjayhzdHJ1Y3QgbWJveF9jbGllbnQgKmNsLCB2b2lkICptKQo+ICt2b2lkIHNj
bWlfcnhfY2FsbGJhY2soc3RydWN0IHNjbWlfY2hhbl9pbmZvICpjaW5mbywgc3RydWN0IHNjbWlf
eGZlciAqdCkKCnNjbWlfcnhfY2FsbGJhY2soKSBkb2Vzbid0IG5lZWQgdGhlIHN0cnVjdCBzY21p
X3hmZXIgKiBwYXJhbWV0ZXIgYW55Cm1vcmUgQVRNIChhbmQgdGhlIHRyYW5zcG9ydCBtaWdodCBh
bHNvIG5vdCBrbm93IGFib3V0IGl0KS4KCkJlc3QgcmVnYXJkcywKClBldGVyCgpQbGVhc2UgbWlu
ZCBvdXIgcHJpdmFjeSBub3RpY2U8aHR0cHM6Ly93d3cub3BlbnN5bmVyZ3kuY29tL2RhdGVuc2No
dXR6ZXJrbGFlcnVuZy9wcml2YWN5LW5vdGljZS1mb3ItYnVzaW5lc3MtcGFydG5lcnMtcHVyc3Vh
bnQtdG8tYXJ0aWNsZS0xMy1vZi10aGUtZ2VuZXJhbC1kYXRhLXByb3RlY3Rpb24tcmVndWxhdGlv
bi1nZHByLz4gcHVyc3VhbnQgdG8gQXJ0LiAxMyBHRFBSLiAvLyBVbnNlcmUgSGlud2Vpc2UgenVt
IERhdGVuc2NodXR6IGdlbS4gQXJ0LiAxMyBEU0dWTyBmaW5kZW4gU2llIGhpZXIuPGh0dHBzOi8v
d3d3Lm9wZW5zeW5lcmd5LmNvbS9kZS9kYXRlbnNjaHV0emVya2xhZXJ1bmcvZGF0ZW5zY2h1dHpo
aW53ZWlzZS1mdWVyLWdlc2NoYWVmdHNwYXJ0bmVyLWdlbS1hcnQtMTMtZHNndm8vPgoKClt0ZWNo
X2RheXNfbXVuY2hlbl0KCk9wZW5TeW5lcmd5IFRlY2hEYXkgTcO8bmNoZW4KCmFtIDExLiBGZWJy
dWFyIDIwMjAsIGFiIDEyOjAwVWhyLCBpbSBTdHVkaW8gQmFsYW4sIE1vb3NhY2hlcnN0ci4gODYu
CgpBbm1lbGR1bmcgYml0dGUgaGllcjxtYWlsdG86c2FiaW5lLm11dHVtYmFAb3BlbnN5bmVyZ3ku
Y29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
