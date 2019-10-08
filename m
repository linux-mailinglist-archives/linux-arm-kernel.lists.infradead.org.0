Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48498CFDAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sHVySSc/tK10EDO8ZagVhiDUVkYn+FJsvxfWu5BP0SU=; b=qz1AHND2YjHK+QZ4mMOa3/pgg
	2l/QUcdL2Riiw8KkzhwON1JGdiaHSSR0BeS1kUEj1qtU+X7K4Op97ycrsvCleWLsokpymqRK15KiL
	t3L1d9XZk387EKHG5Xgf3hXW4H+vOjpiyU4mvisVTINBvaOEX3Zq9v33OB4RTcFIY7EgEUvN/T+zN
	AFq31iIca7IDOpGedcK/2aFDuZKWFrTWZdsyiqiSXsX6tkNx85wPlzdZD0Gy0PcpflklMhvO93oH8
	4KemF+bnWkFX89XsXj0bFi4d839FGJWuS/SMLcED48M8a4+pVgPiUa/OxOLC83648lJtZ3Q6QTrLd
	VZM1/oz6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrTC-0003MA-2K; Tue, 08 Oct 2019 15:32:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrT4-0003LL-NE
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:32:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BC121570;
 Tue,  8 Oct 2019 08:32:04 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0E883F68E;
 Tue,  8 Oct 2019 08:32:02 -0700 (PDT)
Subject: Re: [PATCH v10 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-2-justin.he@arm.com>
 <20191001125446.gknoofnm7az4wqf5@willie-the-truck>
 <20191001141848.762296bd@why>
 <DB7PR08MB30824EFD975EE9BACAC7FD52F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <e4fc5be5-8594-121a-198b-17ca7486dd3a@arm.com>
Date: Tue, 8 Oct 2019 16:32:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <DB7PR08MB30824EFD975EE9BACAC7FD52F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_083206_840334_46B5E37C 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 James Morse <James.Morse@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOC8xMC8yMDE5IDAyOjEyLCBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSB3
cm90ZToKPiBIaSBXaWxsIGFuZCBNYXJjCj4gU29ycnkgZm9yIHRoZSBsYXRlIHJlc3BvbnNlLCBq
dXN0IGNhbWUgYmFjayBmcm9tIGEgdmFjYXRpb24uCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+IEZyb206IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+IFNlbnQ6IDIw
MTnE6jEw1MIxyNUgMjE6MTkKPj4gVG86IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+
IENjOiBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSA8SnVzdGluLkhlQGFybS5jb20+
OyBDYXRhbGluCj4+IE1hcmluYXMgPENhdGFsaW4uTWFyaW5hc0Bhcm0uY29tPjsgTWFyayBSdXRs
YW5kCj4+IDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3JzZUBh
cm0uY29tPjsKPj4gTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwg
QS4gU2h1dGVtb3YKPj4gPGtpcmlsbC5zaHV0ZW1vdkBsaW51eC5pbnRlbC5jb20+OyBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LW1tQGt2YWNrLm9yZzsgUHVuaXQgQWdyYXdhbAo+PiA8cHVuaXRhZ3Jhd2Fs
QGdtYWlsLmNvbT47IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPjsKPj4gQW5k
cmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz47IGhlamlhbmV0QGdtYWlsLmNv
bTsgS2FseQo+PiBYaW4gKEFybSBUZWNobm9sb2d5IENoaW5hKSA8S2FseS5YaW5AYXJtLmNvbT4K
Pj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MTAgMS8zXSBhcm02NDogY3B1ZmVhdHVyZTogaW50cm9k
dWNlIGhlbHBlcgo+PiBjcHVfaGFzX2h3X2FmKCkKPj4KPj4gT24gVHVlLCAxIE9jdCAyMDE5IDEz
OjU0OjQ3ICswMTAwCj4+IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+IHdyb3RlOgo+Pgo+
Pj4gT24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDk6NTc6MzhBTSArMDgwMCwgSmlhIEhlIHdyb3Rl
Ogo+Pj4+IFdlIHVuY29uZGl0aW9uYWxseSBzZXQgdGhlIEhXX0FGREJNIGNhcGFiaWxpdHkgYW5k
IG9ubHkgZW5hYmxlIGl0IG9uCj4+Pj4gQ1BVcyB3aGljaCByZWFsbHkgaGF2ZSB0aGUgZmVhdHVy
ZS4gQnV0IHNvbWV0aW1lcyB3ZSBuZWVkIHRvIGtub3cKPj4+PiB3aGV0aGVyIHRoaXMgY3B1IGhh
cyB0aGUgY2FwYWJpbGl0eSBvZiBIVyBBRi4gU28gZGVjb3VwbGUgQUYgZnJvbQo+Pj4+IERCTSBi
eSBuZXcgaGVscGVyIGNwdV9oYXNfaHdfYWYoKS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEpp
YSBIZSA8anVzdGluLmhlQGFybS5jb20+Cj4+Pj4gU3VnZ2VzdGVkLWJ5OiBTdXp1a2kgUG91bG9z
ZSA8U3V6dWtpLlBvdWxvc2VAYXJtLmNvbT4KPj4+PiBSZXZpZXdlZC1ieTogQ2F0YWxpbiBNYXJp
bmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KPj4+PiAtLS0KPj4+PiAgIGFyY2gvYXJtNjQv
aW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oIHwgMTAgKysrKysrKysrKwo+Pj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaAo+PiBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1
ZmVhdHVyZS5oCj4+Pj4gaW5kZXggOWNkZTVkMmU3NjhmLi45NDliYzdjODUwMzAgMTAwNjQ0Cj4+
Pj4gLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgKPj4+PiArKysgYi9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaAo+Pj4+IEBAIC02NTksNiArNjU5LDE2
IEBAIHN0YXRpYyBpbmxpbmUgdTMyCj4+IGlkX2FhNjRtbWZyMF9wYXJhbmdlX3RvX3BoeXNfc2hp
ZnQoaW50IHBhcmFuZ2UpCj4+Pj4gICAgZGVmYXVsdDogcmV0dXJuIENPTkZJR19BUk02NF9QQV9C
SVRTOwo+Pj4+ICAgIH0KPj4+PiAgIH0KPj4+PiArCj4+Pj4gKy8qIENoZWNrIHdoZXRoZXIgaGFy
ZHdhcmUgdXBkYXRlIG9mIHRoZSBBY2Nlc3MgZmxhZyBpcyBzdXBwb3J0ZWQgKi8KPj4+PiArc3Rh
dGljIGlubGluZSBib29sIGNwdV9oYXNfaHdfYWYodm9pZCkKPj4+PiArewo+Pj4+ICsgaWYgKElT
X0VOQUJMRUQoQ09ORklHX0FSTTY0X0hXX0FGREJNKSkKPj4+PiArICAgICAgICAgcmV0dXJuIHJl
YWRfY3B1aWQoSURfQUE2NE1NRlIxX0VMMSkgJiAweGY7Cj4+Pgo+Pj4gMHhmPyBJIHRoaW5rIHdl
IHNob3VsZCBoYXZlIGEgbWFzayBpbiBzeXNyZWcuaCBmb3IgdGhpcyBjb25zdGFudC4KPj4KPj4g
V2UgZG9uJ3QgaGF2ZSB0aGUgbWFzaywgYnV0IHdlIGNlcnRhaW5seSBoYXZlIHRoZSBzaGlmdC4K
Pj4KPj4gR0VOTUFTSyhJRF9BQTY0TU1GUjFfSEFEQlNfU0hJRlQgKyAzLAo+PiBJRF9BQTY0TU1G
UjFfSEFEQlNfU0hJRlQpIGlzIGEgYml0Cj4+IG9mIGEgbW91dGhmdWwgdGhvdWdoLiBJZGVhbGx5
LCB3ZSdkIGhhdmUgYSBoZWxwZXIgZm9yIHRoYXQuCj4+Cj4gT2ssIEkgd2lsbCBpbXBsZW1lbnQg
dGhlIGhlbHBlciBpZiB0aGVyZSBpc24ndCBzbyBmYXIuCj4gQW5kIHRoZW4gcmVwbGFjZSB0aGUg
MHhmIHdpdGggaXQuCgpPciBjb3VsZCB3ZSBzaW1wbCByZXVzZSBleGlzdGluZyBjcHVpZF9mZWF0
dXJlX2V4dHJhY3RfdW5zaWduZWRfZmllbGQoKSA/Cgp1NjQgbW1mcjEgPSByZWFkX2NwdWlkKElE
X0FBNjRNTUZSMV9FTDEpOwoKcmV0dXJuIGNwdWlkX2ZlYXR1cmVfZXh0cmFjdF91bnNpZ25lZF9m
aWVsZChtbWZyMSwgSURfQUE2NE1NRlIxX0hBREJTX1NISUZUKSA/CgpDaGVlcnMKU3V6dWtpCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
