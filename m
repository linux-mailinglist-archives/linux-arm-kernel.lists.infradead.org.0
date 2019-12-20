Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CEB12787F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOGHPb/aNKp6UJKH6qazVZe+bxvsQPJhD30I8OodlRM=; b=s7TBhUCKh8obdA
	CBjlhzD57EkyCdWWnwUl510Fn/ha22nZwOXvH2i9lz7rJcMLgZCoFVkawNlUXWzC/5XeJaxZX+wR2
	bHu+Qzn0eqeOAyUYGfqNow5fyVAcjd7M4NSqAwTmvABgXuJL6UAy5chNhhe7Ys9Lb0xSI05XX0QaE
	hj9pZo4uO3fT1h/6e17L8avGcC+bqOtQfPWwbcykfMTU3grELQ8bjIRzN51Uu6aJJggRP26Bl/owp
	mBhQbwuWVwT7vEvzPxT0Wjxl0e1OaPLnMJMMLXfxwYXqIQpIrjeouUDpFDDIcqAFddUIhA/3rrSwB
	o+P4wICT09yqD95j7NBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiExC-00009I-C1; Fri, 20 Dec 2019 09:52:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEwz-00008r-FQ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:52:03 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBK9puEN043580;
 Fri, 20 Dec 2019 03:51:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576835516;
 bh=kqMZ+z+MUwo+a+ooyLFGuoxw4kbNKOy1pOOeeFzsQwM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pWf/bWLf5zxUwl/KcnGqAnzK8j+hh9Or4Vc4UI+30twtPCuJEqV5JK179kH1XA5G2
 Kb8ncQMSrKd8aPSK9dIMXHjMq+zeNHzwblkMYiqrtNJ7dpxOvfDcJQN0ojYAL45Nfa
 Z6AqtnT+CCM2Mm5TLtfsjPbHIuErmTSriJ2PDRH4=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBK9puVL025449
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 03:51:56 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 03:51:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 03:51:55 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBK9pqn5035604;
 Fri, 20 Dec 2019 03:51:52 -0600
Subject: Re: [PATCH v7 03/12] dmaengine: doc: Add sections for per descriptor
 metadata support
To: Vinod Koul <vkoul@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-4-peter.ujfalusi@ti.com>
 <20191220082810.GJ2536@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <4508bc1c-d424-3285-cb47-d32a4d25b2c9@ti.com>
Date: Fri, 20 Dec 2019 11:52:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220082810.GJ2536@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_015201_598922_010CC542 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmlub2QsCgpPbiAyMC8xMi8yMDE5IDEwLjI4LCBWaW5vZCBLb3VsIHdyb3RlOgo+IEhpIFBl
dGVyLAo+IAo+IE9uIDA5LTEyLTE5LCAxMTo0MywgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gCj4+
ICsgIE9wdGlvbmFsOiBwZXIgZGVzY3JpcHRvciBtZXRhZGF0YQo+PiArICAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gKyAgRE1BZW5naW5lIHByb3ZpZGVzIHR3byB3YXlzIGZv
ciBtZXRhZGF0YSBzdXBwb3J0Lgo+PiArCj4+ICsgIERFU0NfTUVUQURBVEFfQ0xJRU5UCj4+ICsK
Pj4gKyAgICBUaGUgbWV0YWRhdGEgYnVmZmVyIGlzIGFsbG9jYXRlZC9wcm92aWRlZCBieSB0aGUg
Y2xpZW50IGRyaXZlciBhbmQgaXQgaXMKPj4gKyAgICBhdHRhY2hlZCB0byB0aGUgZGVzY3JpcHRv
ci4KPj4gKwo+PiArICAuLiBjb2RlLWJsb2NrOjogYwo+PiArCj4+ICsgICAgIGludCBkbWFlbmdp
bmVfZGVzY19hdHRhY2hfbWV0YWRhdGEoc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpk
ZXNjLAo+PiArCQkJCSAgIHZvaWQgKmRhdGEsIHNpemVfdCBsZW4pOwo+PiArCj4+ICsgIERFU0Nf
TUVUQURBVEFfRU5HSU5FCj4+ICsKPj4gKyAgICBUaGUgbWV0YWRhdGEgYnVmZmVyIGlzIGFsbG9j
YXRlZC9tYW5hZ2VkIGJ5IHRoZSBETUEgZHJpdmVyLiBUaGUgY2xpZW50Cj4gCj4gYW5kIHdoZW4g
d291bGQgaXQgYmUgZnJlZWQ/CgpJdCBpcyBub3QgZGVmaW5lZCBhcyBpdCBjb3VsZCBiZSBkcml2
ZXIgZGVwZW5kZW50LCBidXQgYWZhaWsgd2UgaGF2ZQpkZWZpbmVkICh3aGljaCBJJ20gbm90IHN1
cmUgd2h5IGl0IGlzIG5vdCBoZXJlIG9yIGluIHRoZSBjb2RlKSB0aGF0IGluCkRFU0NfTUVUQURB
VEFfRU5HSU5FIGNhc2UgdGhlIG1ldGFkYXRhIHBvaW50ZXIgaXMgdmFsaWQgZm9yIHRoZSBjbGll
bnQKYmV0d2VlbiB0aGUgdGltZSBpdCBnb3QgdGhlIGRlc2MgKHZpYSBwcmVwIGNhbGwpIGFuZCB0
aGUgZXhlY3V0aW9uIG9mCnRoZSBjb21wbGV0aW9uIGNhbGxiYWNrLgpJb3csIERFU0NfTUVUQURB
VEFfRU5HSU5FIGRvZXMgbm90IG1ha2UgYW55IHNlbnNlIGlmIHRoZSBjbGllbnQgd2FudCB0bwpy
ZWNlaXZlIG1ldGFkYXRhIGJhY2sgYW5kIGRvZXMgbm90IHByb3ZpZGUgYSBjYWxsYmFjay4KCkkg
d2lsbCBleHRlbmQgdGhlIGRvY3VtZW50YXRpb24gYW5kIGNvbW1lbnQgaW4gdGhlIGNvZGUgdG8g
cmVmbGVjdCB0aGlzLgoKPj4gKyAgICBkcml2ZXIgY2FuIGFzayBmb3IgdGhlIHBvaW50ZXIsIG1h
eGltdW0gc2l6ZSBhbmQgdGhlIGN1cnJlbnRseSB1c2VkIHNpemUgb2YKPj4gKyAgICB0aGUgbWV0
YWRhdGEgYW5kIGNhbiBkaXJlY3RseSB1cGRhdGUgb3IgcmVhZCBpdC4KPj4gKwo+PiArICAuLiBj
b2RlLWJsb2NrOjogYwo+PiArCj4+ICsgICAgIHZvaWQgKmRtYWVuZ2luZV9kZXNjX2dldF9tZXRh
ZGF0YV9wdHIoc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpkZXNjLAo+PiArCQlzaXpl
X3QgKnBheWxvYWRfbGVuLCBzaXplX3QgKm1heF9sZW4pOwo+PiArCj4+ICsgICAgIGludCBkbWFl
bmdpbmVfZGVzY19zZXRfbWV0YWRhdGFfbGVuKHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRv
ciAqZGVzYywKPj4gKwkJc2l6ZV90IHBheWxvYWRfbGVuKTsKPj4gKwo+PiArICBDbGllbnQgZHJp
dmVycyBjYW4gcXVlcnkgaWYgYSBnaXZlbiBtb2RlIGlzIHN1cHBvcnRlZCB3aXRoOgo+PiArCj4+
ICsgIC4uIGNvZGUtYmxvY2s6OiBjCj4+ICsKPj4gKyAgICAgYm9vbCBkbWFlbmdpbmVfaXNfbWV0
YWRhdGFfbW9kZV9zdXBwb3J0ZWQoc3RydWN0IGRtYV9jaGFuICpjaGFuLAo+PiArCQllbnVtIGRt
YV9kZXNjX21ldGFkYXRhX21vZGUgbW9kZSk7Cj4+ICsKPj4gKyAgRGVwZW5kaW5nIG9uIHRoZSB1
c2VkIG1vZGUgY2xpZW50IGRyaXZlcnMgbXVzdCBmb2xsb3cgZGlmZmVyZW50IGZsb3cuCj4+ICsK
Pj4gKyAgREVTQ19NRVRBREFUQV9DTElFTlQKPj4gKwo+PiArICAgIC0gRE1BX01FTV9UT19ERVYg
LyBERVZfTUVNX1RPX01FTToKPj4gKyAgICAgIDEuIHByZXBhcmUgdGhlIGRlc2NyaXB0b3IgKGRt
YWVuZ2luZV9wcmVwXyopCj4+ICsgICAgICAgICBjb25zdHJ1Y3QgdGhlIG1ldGFkYXRhIGluIHRo
ZSBjbGllbnQncyBidWZmZXIKPj4gKyAgICAgIDIuIHVzZSBkbWFlbmdpbmVfZGVzY19hdHRhY2hf
bWV0YWRhdGEoKSB0byBhdHRhY2ggdGhlIGJ1ZmZlciB0byB0aGUKPj4gKyAgICAgICAgIGRlc2Ny
aXB0b3IKPj4gKyAgICAgIDMuIHN1Ym1pdCB0aGUgdHJhbnNmZXIKPiAKPiBUaGlzIGlzIHNpbXBs
ZXIsIHR4biBmaW5pc2hlZCB0aGUgbWV0YWRhdGEgd291bGQgYmUgZnJlZWQgdXAgcmlnaHQ/CgpJ
dCBpcyB1cCB0byB0aGUgY2xpZW50IGRyaXZlciB3aGF0IGl0IGRvZXMgd2l0aCB0aGUgcHJvdmlk
ZWQgYnVmZmVyLiBBcwpmb3Igd2hhdCB0aGUgRE1BIGRyaXZlciBkb2VzIGlzIG5vdCBkb2N1bWVu
dGVkIGFzIGl0IGlzIG5vdCByZWxldmFudCBhbmQKY2FuIGJlIGRpZmZlcmVudCBieSBkaWZmZXJl
bnQgSFcgb3IgU1cgaW1wbGVtZW50YXRpb24uCgo+PiArICAgIC0gRE1BX0RFVl9UT19NRU06Cj4+
ICsgICAgICAxLiBwcmVwYXJlIHRoZSBkZXNjcmlwdG9yIChkbWFlbmdpbmVfcHJlcF8qKQo+PiAr
ICAgICAgMi4gdXNlIGRtYWVuZ2luZV9kZXNjX2F0dGFjaF9tZXRhZGF0YSgpIHRvIGF0dGFjaCB0
aGUgYnVmZmVyIHRvIHRoZQo+PiArICAgICAgICAgZGVzY3JpcHRvcgo+PiArICAgICAgMy4gc3Vi
bWl0IHRoZSB0cmFuc2Zlcgo+PiArICAgICAgNC4gd2hlbiB0aGUgdHJhbnNmZXIgaXMgY29tcGxl
dGVkLCB0aGUgbWV0YWRhdGEgc2hvdWxkIGJlIGF2YWlsYWJsZSBpbiB0aGUKPj4gKyAgICAgICAg
IGF0dGFjaGVkIGJ1ZmZlcgo+IAo+IGFuZCB3aGVuIGFuZCBob3cgd291bGQgZHJpdmVyIGZyZWUg
dGhhdCB1cCA6KQoKSXQgaXMgdXAgdG8gdGhlIGNsaWVudCwgaXQgbWFuYWdlcyB0aGUgYnVmZmVy
LiBJdCBjYW4gcmV1c2UgaXQgYW5kCmF0dGFjaCBpdCB0byBhbm90aGVyIGRlc2NyaXB0b3Igb3Ig
ZnJlZSBpdCB1cCBvciBwYXNzIGl0IHRvIG90aGVyCmxheWVycywgcmV0dXJuIGl0IHRvIG90aGVy
IGxheWVyLgoKPj4gKwo+PiArICBERVNDX01FVEFEQVRBX0VOR0lORQo+PiArCj4+ICsgICAgLSBE
TUFfTUVNX1RPX0RFViAvIERFVl9NRU1fVE9fTUVNOgo+PiArICAgICAgMS4gcHJlcGFyZSB0aGUg
ZGVzY3JpcHRvciAoZG1hZW5naW5lX3ByZXBfKikKPj4gKyAgICAgIDIuIHVzZSBkbWFlbmdpbmVf
ZGVzY19nZXRfbWV0YWRhdGFfcHRyKCkgdG8gZ2V0IHRoZSBwb2ludGVyIHRvIHRoZQo+PiArICAg
ICAgICAgZW5naW5lJ3MgbWV0YWRhdGEgYXJlYQo+PiArICAgICAgMy4gdXBkYXRlIHRoZSBtZXRh
ZGF0YSBhdCB0aGUgcG9pbnRlcgo+PiArICAgICAgNC4gdXNlIGRtYWVuZ2luZV9kZXNjX3NldF9t
ZXRhZGF0YV9sZW4oKSAgdG8gdGVsbCB0aGUgRE1BIGVuZ2luZSB0aGUKPj4gKyAgICAgICAgIGFt
b3VudCBvZiBkYXRhIHRoZSBjbGllbnQgaGFzIHBsYWNlZCBpbnRvIHRoZSBtZXRhZGF0YSBidWZm
ZXIKPj4gKyAgICAgIDUuIHN1Ym1pdCB0aGUgdHJhbnNmZXIKPj4gKyAgICAtIERNQV9ERVZfVE9f
TUVNOgo+PiArICAgICAgMS4gcHJlcGFyZSB0aGUgZGVzY3JpcHRvciAoZG1hZW5naW5lX3ByZXBf
KikKPj4gKyAgICAgIDIuIHN1Ym1pdCB0aGUgdHJhbnNmZXIKPj4gKyAgICAgIDMuIG9uIHRyYW5z
ZmVyIGNvbXBsZXRpb24sIHVzZSBkbWFlbmdpbmVfZGVzY19nZXRfbWV0YWRhdGFfcHRyKCkgdG8g
Z2V0IHRoZQo+PiArICAgICAgICAgcG9pbnRlciB0byB0aGUgZW5naW5lJ3MgbWV0YWRhdGEgYXJl
YQo+PiArICAgICAgNC4gUmVhZCBvdXQgdGhlIG1ldGFkYXRhIGZyb20gdGhlIHBvaW50ZXIKPj4g
Kwo+PiArICAuLiBub3RlOjoKPj4gKwo+PiArICAgICBNaXhlZCB1c2Ugb2YgREVTQ19NRVRBREFU
QV9DTElFTlQgLyBERVNDX01FVEFEQVRBX0VOR0lORSBpcyBub3QgYWxsb3dlZCwKPj4gKyAgICAg
Y2xpZW50IGRyaXZlcnMgbXVzdCB1c2UgZWl0aGVyIG9mIHRoZSBtb2RlcyBwZXIgZGVzY3JpcHRv
ci4KPiAKPiBXZSBzaG91bGQgY2hlY2sgdGhhdCBpZiBub3QgZG9uZSBhbHJlYWR5IQoKWWVzLCB3
ZSBjaGVjayBpdC4KCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9y
a2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1
NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
