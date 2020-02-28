Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFD917405F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 20:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+W/4D6Oh+3ljESx/vujE7l1U6qcgeLWjgR3P6nhXlbs=; b=fqr6C5W+7oHyGuZAJLSgiCbB9
	3Ct69K4Bxf0Zp1j5IJT/Fs7gV9BzXRZwZAWtjQS7OOPBQ4BXtXZmKzl/gquPhJlb4TSgoOozLhK8A
	OoCj/AI6dPO7th1BbnX2xZfQCPA+yqNbnRKTGkNyGeU4VLtWoMi0tfvoWBXRJOxkCDxfXngB79CeW
	biYGKQZHLR52XlkdsNRJETRb04VL13ZYulfV3txcJSI8V4LkwJfjvPWBeLv8xL1WgBrmKp+iLL47u
	J3sJc8f5Wo8d64tZsAiHk6F32lqHylAaf3TXhSysoAuWrLceXk+3B/kA/EhLmTbwVXRvc4imcaLb0
	l7OJOF2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7lSR-0004hi-RS; Fri, 28 Feb 2020 19:37:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7lSJ-0004hJ-Ad
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 19:37:52 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B5062468E;
 Fri, 28 Feb 2020 19:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582918670;
 bh=GR2XIlY7VhwIG2Z0tuLnjCZ9twVNAAlxyjR6cCpLapc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MDC+EaNmqCEkJ+97BWWShMEb2fNu+dKrf+uEr314pT30XDXvN51eMNGx0x1pj7zcA
 j6PJ/803E6x7Gg2YjNyPEG/yDRG9A4lM4u+9tXLSxCxUkDE7pF1AMx7bjx5KR1jK17
 WhtaHaUWTauLUqNFuf/i1VYPRpA0A/RxsDQNnIC0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j7lSG-008q14-CA; Fri, 28 Feb 2020 19:37:48 +0000
MIME-Version: 1.0
Date: Fri, 28 Feb 2020 19:37:48 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 08/20] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
In-Reply-To: <3d725ede-6631-59fb-1a10-9fb9890f3df6@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-9-maz@kernel.org>
 <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
 <75597af0d2373ac4d92d8162a1338cbb@kernel.org>
 <19a7c193f0e4b97343e822a35f0911ed@kernel.org>
 <3d725ede-6631-59fb-1a10-9fb9890f3df6@huawei.com>
Message-ID: <dd9f1224b3b21ad793862406bd8855ba@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_113751_411903_3737CDEB 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0yMCAwMzoxMSwgWmVuZ2h1aSBZdSB3cm90ZToKPiBIaSBNYXJjLAo+IAo+IE9u
IDIwMjAvMi8xOCAyMzozMSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMgCj4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1n
aWMtdjMtaXRzLmMKPj4gaW5kZXggNzY1NmIzNTNhOTVmLi4wZWQyODZkYmE4MjcgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4+ICsrKyBiL2RyaXZlcnMv
aXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4+IEBAIC0xNDQsNyArMTQ0LDcgQEAgc3RydWN0IGV2
ZW50X2xwaV9tYXAgewo+PiAgwqDCoMKgwqAgdTE2wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqY29s
X21hcDsKPj4gIMKgwqDCoMKgIGlycV9od19udW1iZXJfdMKgwqDCoMKgwqDCoMKgIGxwaV9iYXNl
Owo+PiAgwqDCoMKgwqAgaW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBucl9scGlzOwo+PiAtwqDC
oMKgIHJhd19zcGlubG9ja190wqDCoMKgwqDCoMKgwqAgdmxwaV9sb2NrOwo+PiArwqDCoMKgIHJh
d19zcGlubG9ja190wqDCoMKgwqDCoMKgwqAgbWFwX2xvY2s7Cj4gCj4gU28gd2UgdXNlIG1hcF9s
b2NrIHRvIHByb3RlY3QgYm90aCBMUEkncyBhbmQgVkxQSSdzIG1hcHBpbmcgYWZmaW5pdHkgb2YK
PiBhIGRldmljZSwgYW5kIHVzZSB2cGVfbG9jayB0byBwcm90ZWN0IHZQRSdzIGFmZmluaXR5LCBP
Sy4KPiAKPj4gIMKgwqDCoMKgIHN0cnVjdCBpdHNfdm3CoMKgwqDCoMKgwqDCoCAqdm07Cj4+ICDC
oMKgwqDCoCBzdHJ1Y3QgaXRzX3ZscGlfbWFwwqDCoMKgICp2bHBpX21hcHM7Cj4+ICDCoMKgwqDC
oCBpbnTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5yX3ZscGlzOwo+PiBAQCAtMjQwLDE1ICsyNDAs
MzMgQEAgc3RhdGljIHN0cnVjdCBpdHNfdmxwaV9tYXAgKmdldF92bHBpX21hcChzdHJ1Y3QgCj4+
IGlycV9kYXRhICpkKQo+PiAgwqDCoMKgwqAgcmV0dXJuIE5VTEw7Cj4+ICDCoH0KPj4gCj4+IC1z
dGF0aWMgaW50IGlycV90b19jcHVpZChzdHJ1Y3QgaXJxX2RhdGEgKmQpCj4+ICtzdGF0aWMgaW50
IGlycV90b19jcHVpZF9sb2NrKHN0cnVjdCBpcnFfZGF0YSAqZCwgdW5zaWduZWQgbG9uZyAKPj4g
KmZsYWdzKQo+PiAgwqB7Cj4+IC3CoMKgwqAgc3RydWN0IGl0c19kZXZpY2UgKml0c19kZXYgPSBp
cnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPj4gIMKgwqDCoMKgIHN0cnVjdCBpdHNfdmxw
aV9tYXAgKm1hcCA9IGdldF92bHBpX21hcChkKTsKPj4gK8KgwqDCoCBpbnQgY3B1Owo+PiAKPj4g
LcKgwqDCoCBpZiAobWFwKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIG1hcC0+dnBlLT5jb2xf
aWR4Owo+PiArwqDCoMKgIGlmIChtYXApIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHJhd19zcGluX2xv
Y2tfaXJxc2F2ZSgmbWFwLT52cGUtPnZwZV9sb2NrLCAqZmxhZ3MpOwo+PiArwqDCoMKgwqDCoMKg
wqAgY3B1ID0gbWFwLT52cGUtPmNvbF9pZHg7Cj4+ICvCoMKgwqAgfSBlbHNlIHsKPj4gK8KgwqDC
oMKgwqDCoMKgIHN0cnVjdCBpdHNfZGV2aWNlICppdHNfZGV2ID0gaXJxX2RhdGFfZ2V0X2lycV9j
aGlwX2RhdGEoZCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByYXdfc3Bpbl9sb2NrX2lycXNhdmUoJml0
c19kZXYtPmV2ZW50X21hcC5tYXBfbG9jaywgKmZsYWdzKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGNw
dSA9IGl0c19kZXYtPmV2ZW50X21hcC5jb2xfbWFwW2l0c19nZXRfZXZlbnRfaWQoZCldOwo+PiAr
wqDCoMKgIH0KPj4gCj4+IC3CoMKgwqAgcmV0dXJuIGl0c19kZXYtPmV2ZW50X21hcC5jb2xfbWFw
W2l0c19nZXRfZXZlbnRfaWQoZCldOwo+PiArwqDCoMKgIHJldHVybiBjcHU7Cj4+ICt9Cj4gCj4g
VGhpcyBoZWxwZXIgaXMgY29ycmVjdCBmb3Igbm9ybWFsIExQSXMgYW5kIFZMUElzLCBidXQgd3Jv
bmcgZm9yIHBlci12UEUKPiBJUlEgKGRvb3JiZWxsKSBhbmQgdlNHSXMuIGlycV9kYXRhX2dldF9p
cnFfY2hpcF9kYXRhKCkgZ2V0cyBjb25mdXNlZCBieQo+IGJvdGggb2YgdGhlbS4KClllcywgSSd2
ZSBmaXhlZCB0aGF0IGluIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSB0cmVlIGxhc3Qgd2Vlay4g
RG8gaGF2ZSAKYQpsb29rIGlmIHlvdSBjYW4sIGJ1dCBpdCBzZWVtcyB0byBzdXJ2aXZlIG9uIGJv
dGggdGhlIG1vZGVsIHdpdGggdjQuMSBhbmQKbXkgRDA1LgoKWy4uLl0KCj4+IC3CoMKgwqDCoMKg
wqDCoCByZGJhc2UgPSBwZXJfY3B1X3B0cihnaWNfcmRpc3RzLT5yZGlzdCwgCj4+IHZwZS0+Y29s
X2lkeCktPnJkX2Jhc2U7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjcHUgPSBpcnFfdG9fY3B1aWRfbG9j
ayhkLCAmZmxhZ3MpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmRiYXNlID0gcGVyX2NwdV9wdHIoZ2lj
X3JkaXN0cy0+cmRpc3QsIGNwdSktPnJkX2Jhc2U7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgIGdpY193
cml0ZV9scGlyKGQtPnBhcmVudF9kYXRhLT5od2lycSwgcmRiYXNlICsgCj4+IEdJQ1JfSU5WTFBJ
Uik7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgIHdhaXRfZm9yX3N5bmNyKHJkYmFzZSk7Cj4+ICvCoMKg
wqDCoMKgwqDCoCBpcnFfdG9fY3B1aWRfdW5sb2NrKGQsIGZsYWdzKTsKPj4gIMKgwqDCoMKgIH0g
ZWxzZSB7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgIGl0c192cGVfc2VuZF9jbWQodnBlLCBpdHNfc2Vu
ZF9pbnYpOwo+PiAgwqDCoMKgwqAgfQo+IAo+IERvIHdlIHJlYWxseSBuZWVkIHRvIGdyYWIgdGhl
IHZwZV9sb2NrIGZvciB0aG9zZSB3aGljaCBhcmUgYmVsb25nIHRvCj4gdGhlIHNhbWUgaXJxY2hp
cCB3aXRoIGl0c192cGVfc2V0X2FmZmluaXR5KCk/IFRoZSBJUlEgY29yZSBjb2RlIHNob3VsZAo+
IGFscmVhZHkgZW5zdXJlIHRoZSBtdXR1YWwgZXhjbHVzaW9uIGFtb25nIHRoZW0sIHdyb25nPwoK
SSd2ZSBiZWVuIHRyeWluZyB0byB0aGluayBhYm91dCB0aGF0LCBidXQgamV0LWxhZyBrZWVwcyBn
ZXR0aW5nIGluIHRoZSAKd2F5LgpJIGVtcGlyaWNhbGx5IHRoaW5rIHRoYXQgeW91IGFyZSByaWdo
dCwgYnV0IEkgbmVlZCB0byBnbyBhbmQgY2hlY2sgdGhlIAp2YXJpb3VzCmNvZGUgcGF0aHMgdG8g
YmUgc3VyZS4gSG9wZWZ1bGx5IEknbGwgaGF2ZSBhIGJpdCBtb3JlIGJyYWluIHNwYWNlIG5leHQg
CndlZWsuCgpGb3Igc3VyZSB0aGlzIHBhdGNoIHRyaWVzIHRvIGRvIHRvbyBtYW55IHRoaW5ncyBh
dCBvbmNlLi4uCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVs
bHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
