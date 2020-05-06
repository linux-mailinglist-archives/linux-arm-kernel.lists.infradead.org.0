Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6911C6E20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FViEs2cAOw0279w0RWAEqBREGjC4hwist4QO7xOPduI=; b=g8I+6t/xTtB4P9NviGomgD6eq
	x46Ey1G8iG9VlKka7KPqbCnzsWTbEOSY/uEcpOdl04FnB1dtxYLxuErpNfo9w3qAFzeoGUWMAjMA7
	YgEyQdlg1r6nZUFiRiB1LSGRGH2oC4CT8hpgGCpnHB2rX2pkXWX28B04QkAZt6fLRLXdff6ezZydE
	0fjgoZ3ViS/YXxd3FBCbt6j56YEtk6xsn88Wb/KunekGRGagESx/DBpxXOD0yfDvznpesRY2NR+pF
	tusfni/oQg6IESdyLx9kayWQ1jALDTaX3dCkfWUYyyMvFVmYIMe3AQXV/jV8MQoN51XIICdxyO/SA
	DJ7wwkNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWH27-0003pt-Ma; Wed, 06 May 2020 10:12:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWH1z-0003pY-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:12:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 606342073A;
 Wed,  6 May 2020 10:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588759919;
 bh=mz5ev2R8CrXWRuZ2RcI5luPf4A4d6Xwee/lu//2Wels=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qYrfTQ6mLiPiVsER7AkHNPDAqurs2/tzfFf8okKYweCu/+/ajZnJ45lkMJtb5HAeC
 8w+DMwdTkypPcK7VgFFl6DUzZrjC5zXiB4OO6TzXWtLul+/KKT1K3XOCF9/G70KGHh
 o6XwTe8vgsbeC/r8oCJcbZHK7tsgop/ulfet/HRI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWH1x-009ulN-Nt; Wed, 06 May 2020 11:11:57 +0100
MIME-Version: 1.0
Date: Wed, 06 May 2020 11:11:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Subject: Re: [PATCH 07/16] arm64: dts: arm: Fix GIC compatible names
In-Reply-To: <72e7ca7e-003f-7edf-267c-763014f33fdc@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-8-andre.przywara@arm.com>
 <86lfm6tf1f.wl-maz@kernel.org>
 <629da7f9-9cc9-ec9e-f175-ef6c90b5e3f1@arm.com>
 <d9ebbc077d70805bed252656dede750b@kernel.org>
 <72e7ca7e-003f-7edf-267c-763014f33fdc@arm.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <cfb1e6ee9d8f41cd5332eae75eec2647@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, robh@kernel.org, liviu.dudau@arm.com,
 sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_031159_980127_79B4ED89 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0wNiAxMTowMCwgQW5kcsOpIFByenl3YXJhIHdyb3RlOgo+IE9uIDA2LzA1LzIw
MjAgMTA6MTYsIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAyMC0wNS0wNiAwOTo0NSwgQW5k
csOpIFByenl3YXJhIHdyb3RlOgo+Pj4gT24gMDUvMDUvMjAyMCAxOToyNSwgTWFyYyBaeW5naWVy
IHdyb3RlOgo+Pj4+IE9uIFR1ZSwgMDUgTWF5IDIwMjAgMTc6NTI6MDMgKzAxMDAsCj4+Pj4gQW5k
cmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+IHdyb3RlOgo+Pj4+PiAKPj4+Pj4g
VGhlIEdJQyBEVCBiaW5kaW5nIG9ubHkgYWxsb3dzIGEgY2VydGFpbiBjb21iaW5hdGlvbiBvZiBE
VCAKPj4+Pj4gY29tcGF0aWJsZQo+Pj4+PiBzdHJpbmdzLCBtb3N0bHkganVzdCBjb25zaXN0aW5n
IG9mIG9uZSBuYW1lLgo+Pj4+PiAKPj4+Pj4gRHJvcCB0aGUgY29tYmluYXRpb24gb2YgbXVsdGlw
bGUgbmFtZXMgYW5kIGdvIHdpdGggdGhlCj4+Pj4+ICJhcm0sY29ydGV4LWExNS1naWMiIG5hbWUg
Zm9yIEdJQ3YyLCBhcyB0aGlzIHNlZW1zIHRvIGJlIHRoZSBtb3N0Cj4+Pj4+IHdpZGVseQo+Pj4+
PiBhY2NlcHRlZCBzdHJpbmcuICJhcm0sZ2ljLTQwMCIgd291bGQgYmUgbW9yZSBjb3JyZWN0LCBi
dXQgd2FzCj4+Pj4+IGludHJvZHVjZWQKPj4+Pj4gbXVjaCBsYXRlciBpbnRvIHRoZSBrZXJuZWwn
cyBHSUMgZHJpdmVyLgo+Pj4+PiAKPj4+Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmUgUHJ6eXdhcmEg
PGFuZHJlLnByenl3YXJhQGFybS5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiDCoGFyY2gvYXJtNjQvYm9v
dC9kdHMvYXJtL2ZvdW5kYXRpb24tdjgtZ2ljdjIuZHRzaSB8IDIgKy0KPj4+Pj4gwqBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FybS9qdW5vLWJhc2UuZHRzacKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMiAr
LQo+Pj4+PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL3J0c21fdmUtYWVtdjhhLmR0c8KgwqDC
oMKgwqDCoCB8IDIgKy0KPj4+Pj4gwqAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPj4+Pj4gCj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0c2kKPj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0c2kKPj4+Pj4gaW5kZXggMTVmZTgxNzM4ZTk0
Li42MWExNzUwZmNkZDYgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYXJt
L2ZvdW5kYXRpb24tdjgtZ2ljdjIuZHRzaQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0c2kKPj4+Pj4gQEAgLTYsNyArNiw3IEBACj4+Pj4+
IAo+Pj4+PiDCoC8gewo+Pj4+PiDCoMKgwqDCoCBnaWM6IGludGVycnVwdC1jb250cm9sbGVyQDJj
MDAxMDAwIHsKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1h
MTUtZ2ljIiwgImFybSxjb3J0ZXgtYTktZ2ljIjsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBh
dGlibGUgPSAiYXJtLGNvcnRleC1hMTUtZ2ljIjsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCAjaW50
ZXJydXB0LWNlbGxzID0gPDM+Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxz
ID0gPDI+Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdC1jb250cm9sbGVyOwo+Pj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hcm0vanVuby1iYXNlLmR0c2kKPj4+
Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9qdW5vLWJhc2UuZHRzaQo+Pj4+PiBpbmRleCAz
ZmVlZmQ2MWViNzYuLjYyMzkyYWIxZjg4MCAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9hcm0vanVuby1iYXNlLmR0c2kKPj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9hcm0vanVuby1iYXNlLmR0c2kKPj4+Pj4gQEAgLTY5LDcgKzY5LDcgQEAKPj4+Pj4gwqDCoMKg
wqAgfTsKPj4+Pj4gCj4+Pj4+IMKgwqDCoMKgIGdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAMmMw
MTAwMDAgewo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhcm0sZ2ljLTQwMCIs
ICJhcm0sY29ydGV4LWExNS1naWMiOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9
ICJhcm0sY29ydGV4LWExNS1naWMiOwo+Pj4+IAo+Pj4+IFdoeT8gR0lDLTQwMCBpcyBkZWZpbml0
ZWx5IHRoZSBtb3N0IGNvcnJlY3QgY29tcGF0aWJsZSBzdHJpbmcuIEknZAo+Pj4+IHJhdGhlciBz
ZWUgdGhpcyBjb21wYXRpYmxlIGJlaW5nIGdlbmVyYWxpc2VkIHRvIHRoZSBtb2RlbHMgcmF0aGVy
IAo+Pj4+IHRoYW4KPj4+PiBvbmx5IHJlZmVyZW5jaW5nIHRoZSBBMTUgR0lDLgo+Pj4gCj4+PiBJ
IGFncmVlIHRoYXQgZ2ljLTQwMCBpcyB0aGUgZmFyIGJldHRlciBuYW1lLCBidXQgaXQgd2FzIG9u
bHkgCj4+PiBpbnRyb2R1Y2VkCj4+PiBpbiB2My4xNi4gU28gb21pdHRpbmcgYXJtLGNvcnRleC1h
MTUtZ2ljIHdvdWxkIGJyZWFrIGFueSBrZXJuZWxzIAo+Pj4gYmVmb3JlCj4+PiB0aGF0LCB3aGlj
aCBJIHdvdWxkIGxpa2UgdG8gYXZvaWQuCj4+IAo+PiBJIGFtIG5vdCB0YWxraW5nIGFib3V0IGRy
b3BwaW5nIHRoZSBBMTUgR0lDLiBJJ20gc2F5aW5nIHRoYXQgYm90aCAKPj4gc2hvdWxkCj4+IHN0
YXkuIElzIHRoZXJlIGFueXRoaW5nIGluIHRoZSBEVCBiaW5kaW5nIHRoYXQgZm9yYmlkcyBtdWx0
aXBsZSBuYW1lcyAKPj4gaW4KPj4gdGhlIGNvbXBhdGlibGUgcHJvcGVydHk/Cj4gCj4gV2VsbCwg
dGhlIGN1cnJlbnQgZm9ybSBvZiB0aGUgWUFNTCBiaW5kaW5ncyByZXF1aXJlIGV2ZXJ5IGNvbWJp
bmF0aW9uIAo+IG9mCj4gY29tcGF0aWJsZSBzdHJpbmdzIHRvIGJlIGxpc3RlZCwgZWl0aGVyIGV4
cGxpY2l0bHksIG9yIHVzaW5nIGFuIGxpc3Qgb2YKPiBhbGxvd2VkIHN0cmluZ3MgZm9yIGVhY2gg
cG9zaXRpb24uIFRoaXMgY29tYmluYXRpb24gaGVyZSBpcyBub3QgbGlzdGVkCj4gYXQgdGhlIG1v
bWVudC4KCkkgdGhpbmsgdGhpcyBzaG91bGQgYmUgcmVsYXhlZC4gV2hhdCB0aGUgdG9vbCBzaG91
bGQgYmUgd2FybmluZyBhZ2FpbnN0CmlzIGEgc2V0IG9mIGluY29tcGF0aWJsZSAiY29tcGF0aWJs
ZSIgc3RyaW5ncyAobGlrZSBhMTUgKyBhOSwgd2hpY2ggaXMKdG90YWxseSBib25rZXJzKS4KCj4+
PiBJdCdzIGFjdHVhbGx5IGEgcGl0eSB0aGF0IHdlIGFyZSBzbyBwaWNreSBhYm91dCB0aGUgY29t
cGF0aWJsZSAKPj4+IGxpc3RpbmdzLAo+Pj4gYmVjYXVzZSB0aGUgZXhpc3RpbmcgY29tYmluYXRp
b24gaXMgYWN0dWFsbHkgcXVpdGUgbmljZTogd2UgZ2V0Cj4+PiBjb21wYXRpYmlsaXR5IHdpdGgg
b2xkZXIgRFQgY29uc3VtZXJzLCBidXQgc3RpbGwgY2FuIHNheSB3aGF0IGl0Cj4+PiBhY3R1YWxs
eSBpcy4KPj4+IEkgd29uZGVyIGlmIEkgc2hvdWxkIGludHJvZHVjZSB0aGlzIGNvbWJpbmF0aW9u
IHRvIHRoZSBHSUMgRFQgYmluZGluZwo+Pj4gaW5zdGVhZCwgaXQgc2VlbXMgbGlrZSB0aGVyZSBh
cmUgb3RoZXIgdXNlcnMgaW4gdGhlIHRyZWUgYXMgd2VsbC4KPj4+IAo+Pj4gV2hhdCBkbyB5b3Ug
dGhpbms/Cj4+IAo+PiBJJ2Qgc2F5IHRoYXQgaWYgdGhlIGJpbmRpbmcgZm9yYmlkcyBtdWx0aXBs
ZSBjb21wYXRpYmxlIHN0cmluZ3MsIHRoZQo+PiBiaW5kaW5nIGlzIGxpa2VseSB0byBiZSB3cm9u
Zy4gV2Ugc2hvdWxkIGZpeCBpdCwgYW5kIG5vdCBtYWtlIHRoZSBEVHMKPj4gd29yc2UgYXMgYSBy
ZXN1bHQgb2YgYSBiaW5kaW5nIGlzc3VlLgo+IAo+IE9LLCB0aGFua3MgZm9yIHRoZSBjb25maXJt
YXRpb24sIGFuZCBJIGFncmVlLiBJIHdpbGwgZGl0Y2ggdGhpcyBwYXRjaAo+IGFuZCByZXBsYWNl
IGl0IHdpdGggYSByZXNwZWN0aXZlIGJpbmRpbmdzIGZpeC4KClBsZWFzZSBrZWVwIHJlbW92YWwg
b2YgdGhlIEE5IEdJQyByZWZlcmVuY2UgdGhvdWdoLCBiZWNhdXNlIGl0IGRvZXNuJ3QKbWFrZSBh
bnkgc2Vuc2UgYXMgaXQgaXMuCgpUaGFua3MsCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3Qg
ZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
