Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFE012464A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xVhw4LGPgEpyDBbhotItJffg4oChio9LIUJwUPSw0ZA=; b=ru2jzjDBaEfzxNaITfrRKiPvG
	XPrEBGrZXCshdtSrBCeZrx4+6BDv2tZvtrsrcKlBKMstGjZttMwS6DjrH5x9N0kUxJlvwWbhXXd90
	vuB2agfUe5d52twJOG4BrvIXyv7r+Nj6aUG7E1H4HdgRTlnHmuOMyQOwyazDmPbapWDF3vCKZookT
	TwbBpyTUkncifryrI25Oe6lcWtkVfYhV5ImaqDY/cRpUbUhv2cmUvjia6h78fyet8al1MlRZEHDzT
	ZRB+FWRKe/UUXQoJxsNf6NYbe3MFenw2KI/EXXMCvHkWZqUI/6Jg/M8BOa5NtoLX/eIyCQ01+HBxn
	mA4s+5wDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXx0-0005ai-Vt; Wed, 18 Dec 2019 11:57:10 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXwr-0005aB-OW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:57:03 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihXwp-0007VE-C7; Wed, 18 Dec 2019 12:56:59 +0100
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 7/7] arm64: nofpsmid: Handle =?UTF-8?Q?TIF=5FFOREIG?=
 =?UTF-8?Q?N=5FFPSTATE=20flag=20cleanly?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 11:56:58 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <9e491901-b589-b486-1cad-1bd92a35da95@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-8-suzuki.poulose@arm.com>
 <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
 <9e491901-b589-b486-1cad-1bd92a35da95@arm.com>
Message-ID: <3b30d44c34bc265ce4122396077a1670@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, mark.rutland@arm.com,
 dave.martin@arm.com, catalin.marinas@arm.com, ard.biesheuvel@linaro.org,
 christoffer.dall@arm.com, marc.zyngier@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_035701_945444_F02590B8 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0xOCAxMTo0MiwgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+
IEhpIE1hcmMsCj4KPiBPbiAxNy8xMi8yMDE5IDE5OjA1LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+
IEhpIFN1enVraSwKPj4gT24gMjAxOS0xMi0xNyAxODozNCwgU3V6dWtpIEsgUG91bG9zZSB3cm90
ZToKPj4+IFdlIGRldGVjdCB0aGUgYWJzZW5jZSBvZiBGUC9TSU1EIGFmdGVyIGFuIGluY2FwYWJs
ZSBDUFUgaXMgYnJvdWdodCAKPj4+IHVwLAo+Pj4gYW5kIGJ5IHRoZW4gd2UgaGF2ZSBrZXJuZWwg
dGhyZWFkcyBydW5uaW5nIGFscmVhZHkgd2l0aAo+Pj4gVElGX0ZPUkVJR05fRlBTVEFURSBzZXQK
Pj4+IHdoaWNoIGNvdWxkIGJlIHNldCBmb3IgZWFybHkgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyAo
ZS5nLCBtb2Rwcm9iZSAKPj4+IHRyaWdnZXJlZAo+Pj4gZnJvbSBpbml0cmFtZnMpIGFuZCBpbml0
LiBUaGlzIGNvdWxkIGNhdXNlIHRoZSBhcHBsaWNhdGlvbnMgdG8gbG9vcAo+Pj4gZm9yZXZlciBp
bgo+Pj4gZG9fbm9maXR5X3Jlc3VtZSgpIGFzIHdlIG5ldmVyIGNsZWFyIHRoZSBUSUYgZmxhZywg
b25jZSB3ZSBub3cga25vdyAKPj4+IHRoYXQKPj4+IHdlIGRvbid0IHN1cHBvcnQgRlAuCj4+Pgo+
Pj4gRml4IHRoaXMgYnkgbWFraW5nIHN1cmUgdGhhdCB3ZSBjbGVhciB0aGUgVElGX0ZPUkVJR05f
RlBTVEFURSBmbGFnCj4+PiBmb3IgdGFza3Mgd2hpY2ggbWF5IGhhdmUgdGhlbSBzZXQsIGFzIHdl
IHdvdWxkIGhhdmUgZG9uZSBpbiB0aGUgCj4+PiBub3JtYWwKPj4+IGNhc2UsIGJ1dCBhdm9pZGlu
ZyB0b3VjaGluZyB0aGUgaGFyZHdhcmUgc3RhdGUgKHNpbmNlIHdlIGRvbid0IAo+Pj4gc3VwcG9y
dCBhbnkpLgo+Pj4KPj4+IEFsc28gdG8gbWFrZSBzdXJlIHdlIGhhbmRsZSB0aGUgY2FzZXMgc2Vl
bWxlc3NseSB3ZSBjYXRlZ29yaXNlIHRoZQo+Pj4gaGVscGVyIGZ1bmN0aW9ucyB0byB0d28gOgo+
Pj4gwqAxKSBIZWxwZXJzIGZvciBjb21tb24gY29yZSBjb2RlLCB3aGljaCBjYWxscyBpbnRvIHRh
a2UgYXBwcm9wcmlhdGUKPj4+IMKgwqDCoCBhY3Rpb25zIHdpdGhvdXQga25vd2luZyB0aGUgY3Vy
cmVudCBGUFNJTUQgc3RhdGUgb2YgdGhlIAo+Pj4gQ1BVL3Rhc2suCj4+Pgo+Pj4gwqDCoMKgIGUu
ZyBmcHNpbWRfcmVzdG9yZV9jdXJyZW50X3N0YXRlKCksIGZwc2ltZF9mbHVzaF90YXNrX3N0YXRl
KCksCj4+PiDCoMKgwqDCoMKgwqDCoCBmcHNpbWRfc2F2ZV9hbmRfZmx1c2hfY3B1X3N0YXRlKCku
Cj4+Pgo+Pj4gwqDCoMKgIFdlIGJhaWwgb3V0IGVhcmx5IGZvciB0aGVzZSBmdW5jdGlvbnMsIHRh
a2luZyBhbnkgYXBwcm9wcmlhdGUgCj4+PiBhY3Rpb25zCj4+PiDCoMKgwqAgKGUuZywgY2xlYXJp
bmcgdGhlIFRJRiBmbGFnKSB3aGVyZSBuZWNlc3NhcnkgdG8gaGlkZSB0aGUgCj4+PiBoYW5kbGlu
Zwo+Pj4gwqDCoMKgIGZyb20gY29yZSBjb2RlLgo+Pj4KPj4+IMKgMikgSGVscGVycyB1c2VkIHdo
ZW4gdGhlIHByZXNlbmNlIG9mIEZQL1NJTUQgaXMgYXBwYXJlbnQuCj4+PiDCoMKgwqAgaS5lLCBz
YXZlL3Jlc3RvcmUgdGhlIEZQL1NJTUQgcmVnaXN0ZXIgc3RhdGUsIG1vZGlmeSB0aGUgCj4+PiBD
UFUvdGFzawo+Pj4gwqDCoMKgIEZQL1NJTUQgc3RhdGUuCj4+PiDCoMKgwqAgZS5nLAo+Pj4KPj4+
IMKgwqDCoCBmcHNpbWRfc2F2ZSgpLCB0YXNrX2Zwc2ltZF9sb2FkKCkgLSBzYXZlL3Jlc3RvcmUg
dGFzayBGUC9TSU1EIAo+Pj4gcmVnaXN0ZXJzCj4+Pgo+Pj4gwqDCoMKgIGZwc2ltZF9iaW5kX3Rh
c2tfdG9fY3B1KCnCoCBcCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIFVwZGF0ZSB0aGUgInN0YXRlIiBtZXRhZGF0YSBm
b3IgCj4+PiBDUFUvdGFzay4KPj4+IMKgwqDCoCBmcHNpbWRfYmluZF9zdGF0ZV90b19jcHUoKSAv
Cj4+Pgo+Pj4gwqDCoMKgIGZwc2ltZF91cGRhdGVfY3VycmVudF9zdGF0ZSgpIC0gVXBkYXRlIHRo
ZSBmcC9zaW1kIHN0YXRlIGZvciAKPj4+IHRoZSBjdXJyZW50Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRh
c2sgZnJvbSBtZW1vcnkuCj4+Pgo+Pj4gwqDCoMKgIFRoZXNlIG11c3Qgbm90IGJlIGNhbGxlZCBp
biB0aGUgYWJzZW5jZSBvZiBGUC9TSU1ELiBQdXQgaW4gYSAKPj4+IFdBUk5JTkcKPj4+IMKgwqDC
oCB0byBtYWtlIHN1cmUgdGhleSBhcmUgbm90IGludm9rZWQgaW4gdGhlIGFic2VuY2Ugb2YgRlAv
U0lNRC4KPj4+Cj4+PiBLVk0gYWxzbyB1c2VzIHRoZSBUSUZfRk9SRUlHTl9GUFNUQVRFIGZsYWcg
dG8gbWFuYWdlIHRoZSBGUC9TSU1EIAo+Pj4gc3RhdGUKPj4+IG9uIHRoZSBDUFUuIEhvd2V2ZXIs
IHdpdGhvdXQgRlAvU0lNRCBzdXBwb3J0IHdlIHRyYXAgYWxsIGFjY2Vzc2VzIAo+Pj4gYW5kCj4+
PiBpbmplY3QgdW5kZWZpbmVkIGluc3RydWN0aW9uLiBUaHVzIHdlIHNob3VsZCBuZXZlciAibG9h
ZCIgZ3Vlc3QgCj4+PiBzdGF0ZS4KPj4+IEFkZCBhIHNhbml0eSBjaGVjayB0byBtYWtlIHN1cmUg
dGhpcyBpcyB2YWxpZC4KPj4gWWVzLCBidXQgbm8sIHNlZSBiZWxvdy4KPj4KPj4+Cj4+PiBGaXhl
czogODJlMDE5MWExYWExMWFiZiAoImFybTY0OiBTdXBwb3J0IHN5c3RlbXMgd2l0aG91dCBGUC9B
U0lNRCIpCj4+PiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4+IENjOiBNYXJr
IFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+Pj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8
Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+PiBDYzogTWFyYyBaeW5naWVyIDxtYXJjLnp5bmdp
ZXJAYXJtLmNvbT4KPj4gTm8gaWRlYSB3aG8gdGhhdCBndXkgaXMuIEl0J3MgYSBmYWtlISA7LSkK
Pgo+IFNvcnJ5IGFib3V0IHRoYXQsIHdpbGwgZml4IGl0Lgo+Cj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1a2kucG91bG9zZUBhcm0uY29tPgo+Pj4gLS0tCj4+PiDC
oGFyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jwqAgfCAzMSArKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tCj4+PiDCoGFyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYyB8wqAgOSArKysrKysr
KysKPj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+Pj4KPj4gWy4uLl0KPj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9oeXAvc3dp
dGNoLmMgCj4+PiBiL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+Pj4gaW5kZXggNzJmYmJk
ODZlYjVlLi45Njk2ZWJiNWMxM2EgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2t2bS9oeXAv
c3dpdGNoLmMKPj4+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+Pj4gQEAgLTI4
LDEwICsyOCwxOSBAQAo+Pj4gwqAvKiBDaGVjayB3aGV0aGVyIHRoZSBGUCByZWdzIHdlcmUgZGly
dGllZCB3aGlsZSBpbiB0aGUgaG9zdC1zaWRlIAo+Pj4gcnVuCj4+PiBsb29wOiAqLwo+Pj4gwqBz
dGF0aWMgYm9vbCBfX2h5cF90ZXh0IHVwZGF0ZV9mcF9lbmFibGVkKHN0cnVjdCBrdm1fdmNwdSAq
dmNwdSkKPj4+IMKgewo+Pj4gK8KgwqDCoCAvKgo+Pj4gK8KgwqDCoMKgICogV2hlbiB0aGUgc3lz
dGVtIGRvZXNuJ3Qgc3VwcG9ydCBGUC9TSU1ELCB3ZSBjYW5ub3QgcmVseSBvbgo+Pj4gK8KgwqDC
oMKgICogdGhlIHN0YXRlIG9mIF9USUZfRk9SRUlHTl9GUFNUQVRFLiBIb3dldmVyLCB3ZSB3aWxs
IG5ldmVyCj4+PiArwqDCoMKgwqAgKiBzZXQgdGhlIEtWTV9BUk02NF9GUF9FTkFCTEVELCBhcyB0
aGUgRlAvU0lNRCBhY2Nlc3NlcyAKPj4+IGFsd2F5cwo+Pj4gK8KgwqDCoMKgICogaW5qZWN0IGFu
IGFib3J0IGludG8gdGhlIGd1ZXN0LiBUaHVzIHdlIGFsd2F5cyB0cmFwIHRoZQo+Pj4gK8KgwqDC
oMKgICogYWNjZXNzZXMuCj4+PiArwqDCoMKgwqAgKi8KPj4+IMKgwqDCoMKgIGlmICh2Y3B1LT5h
cmNoLmhvc3RfdGhyZWFkX2luZm8tPmZsYWdzICYgX1RJRl9GT1JFSUdOX0ZQU1RBVEUpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgIHZjcHUtPmFyY2guZmxhZ3MgJj0gfihLVk1fQVJNNjRfRlBfRU5BQkxF
RCB8Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBLVk1f
QVJNNjRfRlBfSE9TVCk7Cj4+Pgo+Pj4gK8KgwqDCoCBXQVJOX09OKCFzeXN0ZW1fc3VwcG9ydHNf
ZnBzaW1kKCkgJiYKPj4+ICvCoMKgwqDCoMKgwqDCoCAodmNwdS0+YXJjaC5mbGFncyAmIEtWTV9B
Uk02NF9GUF9FTkFCTEVEKSk7Cj4+IENhcmVmdWwsIHRoaXMgd2lsbCBwYW5pYyB0aGUgaG9zdCBp
ZiBpdCBoYXBwZW5zIG9uIGEgIVZIRSBob3N0Cj4+IChjYWxsaW5nIG5vbi1pbmxpbmUgc3R1ZmYg
ZnJvbSBhIF9faHlwX3RleHQgZnVuY3Rpb24gaXMgdXN1YWxseQo+PiBub3QgYSBnb29kIGlkZWEp
Lgo+Cj4gT3VjaCEgU29ycnkgYWJvdXQgdGhhdCBXQVJOX09OKCkhIEkgY291bGQgZHJvcCB0aGUg
d2FybmluZyBhbmQKPiBtYWtlIHRoaXMgOgo+Cj4gaWYgKCFzeXN0ZW1fc3VwcG9ydHNfZnBzaW1k
KCkgfHwKPiAgICAgKHZjcHUtPmFyY2guaG9zdF90aHJlYWRfaW5mby0+ZmxhZ3MgJiBfVElGX0ZP
UkVJR05fRlBTVEFURSkpCj4gCXZjcHUtPmFyY2guZmxhZ3MgJj0gfihLVk1fQVJNNjRfRlBfRU5B
QkxFRCB8Cj4gCQkJICAgICAgS1ZNX0FSTTY0X0ZQX0hPU1QpOwo+Cj4gdG8gbWFrZSBzdXJlIHdl
IG5ldmVyIHNheSBmcCBpcyBlbmFibGVkLgo+Cj4gV2hhdCBkbyB5b3UgdGhpbmsgPwoKU3VyZSwg
dGhhdCB3b3VsZCB3b3JrLiBJIGNhbid0IHJlYWxseSBzZWUgaG93IEtWTV9BUk02NF9GUF9FTkFC
TEVECndvdWxkIGdldCBzZXQgdGhvdWdoLiBCdXQgaXQgcHJvYmFibHkgZG9lc24ndCBtYXR0ZXIg
KFdURiBpcyBnb2luZwp0byBydW4gS1ZNIHdpdGggc3VjaCBicm9rZW4gSFc/KSwgYW5kIGJldHRl
ciBzYWZlIHRoYW4gc29ycnkuCgpUaGFua3MsCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3Qg
ZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
