Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7927511CC4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qSUeDWkj+42bf0QQgNAjKCWeFylXbSTeFKQhgTb/X34=; b=kFS7vEP+DP2p0VfHMxf8Bp7k0
	tZfgWDZJ9qehvlkRL9cWy0WPNWC8v2cLEDk+MCiqgQ/dHGa+sqjovKK0RpIzjJGgTvOd+YMLGv8uR
	MTH9Uzy9z5Vt0u6S3CsY5ANVgK30kqlJVnNhxxnVr3A8kr8X27A6sWYAm5kv9tECYqMqmd0jI0fjq
	P9UlvDajZFCkYMsMWqSXwG9DTQFDt+tr9sIKgTYUjb2LkXkOcnOIZfvk1uCb7WLzQ8V4qAqoXI3My
	OC2uEOz88eFNDUlXiaGchg/PQq4GhOvxdxBtKSt8CJRo2rXz9+5h6hh0smR9mEber+nTZyqC2K5ht
	gKoLQ5jBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMjW-0001ct-1h; Thu, 12 Dec 2019 11:34:14 +0000
Received: from pio-pvt-msa2.bahnhof.se ([79.136.2.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMj7-0001WI-U2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:33:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 1F5F43F26D;
 Thu, 12 Dec 2019 12:33:47 +0100 (CET)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=KNdoCX78; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lVmIvZW3qp8P; Thu, 12 Dec 2019 12:33:46 +0100 (CET)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id BBCC13F260;
 Thu, 12 Dec 2019 12:33:42 +0100 (CET)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id E08613621B7;
 Thu, 12 Dec 2019 12:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1576150422; bh=j+eZpqHQB3Fw6vN5gPAYjZGzDln9/TW6yi+1c53Ud3s=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=KNdoCX78D1HbeR+xToPzg2mJbPz6wjJPjDEQEQ52UZaJwdyDy3+Z0KvmHWDn3zLgX
 wQL2+nf0yms8GAk3wQ9STIOAjhr2665XcT+S6WoGFE+vpqB/qUYM4zJtemeV6M9mG1
 UoMNK4wLqkbbpG8BBjfClh+E+jwqtrhyQt3/BKrM=
Subject: Re: [PATCH v16 11/25] mm: pagewalk: Add p4d_entry() and pgd_entry()
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
To: Steven Price <steven.price@arm.com>
References: <20191206135316.47703-1-steven.price@arm.com>
 <20191206135316.47703-12-steven.price@arm.com>
 <13280f9e-6f03-e1fd-659a-31462ba185b0@shipmail.org>
Organization: VMware Inc.
Message-ID: <7fd20e9f-822a-897d-218e-bddf135fd33d@shipmail.org>
Date: Thu, 12 Dec 2019 12:33:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <13280f9e-6f03-e1fd-659a-31462ba185b0@shipmail.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_033350_390815_BC4E0D11 
X-CRM114-Status: GOOD (  27.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [79.136.2.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Zong Li <zong.li@sifive.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTIvMTkgMTI6MjMgUE0sIFRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUpIHdyb3RlOgo+
IE9uIDEyLzYvMTkgMjo1MyBQTSwgU3RldmVuIFByaWNlIHdyb3RlOgo+PiBwZ2RfZW50cnkoKSBh
bmQgcHVkX2VudHJ5KCkgd2VyZSByZW1vdmVkIGJ5IGNvbW1pdCAwYjFmYmZlNTAwMDZjNDEwCj4+
ICgibW0vcGFnZXdhbGs6IHJlbW92ZSBwZ2RfZW50cnkoKSBhbmQgcHVkX2VudHJ5KCkiKSBiZWNh
dXNlIHRoZXJlIHdlcmUKPj4gbm8gdXNlcnMuIFdlJ3JlIGFib3V0IHRvIGFkZCB1c2VycyBzbyBy
ZWludHJvZHVjZSB0aGVtLCBhbG9uZyB3aXRoCj4+IHA0ZF9lbnRyeSgpIGFzIHdlIG5vdyBoYXZl
IDUgbGV2ZWxzIG9mIHRhYmxlcy4KPj4KPj4gTm90ZSB0aGF0IGNvbW1pdCBhMDBjYzdkOWRkOTNk
NjZhICgibW0sIHg4NjogYWRkIHN1cHBvcnQgZm9yCj4+IFBVRC1zaXplZCB0cmFuc3BhcmVudCBo
dWdlcGFnZXMiKSBhbHJlYWR5IHJlLWFkZGVkIHB1ZF9lbnRyeSgpIGJ1dCB3aXRoCj4+IGRpZmZl
cmVudCBzZW1hbnRpY3MgdG8gdGhlIG90aGVyIGNhbGxiYWNrcy4gU2luY2UgdGhlcmUgaGF2ZSBu
ZXZlcgo+PiBiZWVuIHVwc3RyZWFtIHVzZXJzIG9mIHRoaXMsIHJldmVydCB0aGUgc2VtYW50aWNz
IGJhY2sgdG8gbWF0Y2ggdGhlCj4+IG90aGVyIGNhbGxiYWNrcy4gVGhpcyBtZWFucyBwdWRfZW50
cnkoKSBpcyBjYWxsZWQgZm9yIGFsbCBlbnRyaWVzLCBub3QKPj4ganVzdCB0cmFuc3BhcmVudCBo
dWdlIHBhZ2VzLgo+Cj4gQWN0dWFsbHksIHRoZXJlIGFyZSB0d28gdXNlcnMgb2YgcHVkX2VudHJ5
KCksIGluIGhtbS5jIGFuZCBzaW5jZSAKPiA1LjVyYzEgYWxzbyBtYXBwaW5nX2RpcnR5X2hlbHBl
cnMuYy4gVGhlIGxhdHRlciBvbmUgaXMgdW5wcm9ibGVtYXRpYyAKPiBhbmQgcmVxdWlyZXMgbm8g
YXR0ZW50aW9uIGJ1dCB0aGUgb25lIGluIGhtbS5jIGlzIHByb2JhYmx5IGxhcmdlbHkgCj4gdW50
ZXN0ZWQsIGFuZCBzZWVtcyB0byBhc3N1bWUgaXQgd2FzIGNhbGxlZCBvdXRzaWRlIG9mIHRoZSBz
cGlubG9jay4KPgo+IFRoZSBwcm9ibGVtIHdpdGggdGhlIGN1cnJlbnQgcGF0Y2ggaXMgdGhhdCB0
aGUgaG1tIHB1ZF9lbnRyeSB3aWxsIAo+IHRyYXZlcnNlIGFsc28gcG1kcywgc28gdGhhdCB3aWxs
IGJlIGRvbmUgdHdpY2Ugbm93Lgo+Cj4gSW4gYW5vdGhlciB0aHJlYWQgd2Ugd2VyZSBkaXNjdXNz
aW5nIGEgbWVhbnMgb2YgcmVydW5uaW5nIHRoZSBsZXZlbCAKPiAoaW4gY2FzZSBvZiBhIHJhY2Up
LCBvciBjb250aW51aW5nIGFmdGVyIGEgbGV2ZWwsIGJhc2VkIG9uIHRoZSByZXR1cm4gCj4gdmFs
dWUgYWZ0ZXIgdGhlIGNhbGxiYWNrLiBUaGUgY2hhbmdlIHdhcyBmYWlybHkgaW52YXNpdmUsCj4K
SG1tLiBGb3Jnb3QgdG8gcmVtb3ZlIHRoZSBhYm92ZSB0ZXh0IHRoYXQgYXBwZWFycyB0d2ljZS4g
OiguIFRoZSBjb3JyZWN0IApvbmUgaXMgaW5saW5lIGJlbG93LgoKPgo+PiBUZXN0ZWQtYnk6IFpv
bmcgTGkgPHpvbmcubGlAc2lmaXZlLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogU3RldmVuIFByaWNl
IDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4KPj4gLS0tCj4+IMKgIGluY2x1ZGUvbGludXgvcGFnZXdh
bGsuaCB8IDE5ICsrKysrKysrKysrKystLS0tLS0KPj4gwqAgbW0vcGFnZXdhbGsuY8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfCAyNyArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPj4gwqAgMiBm
aWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGFnZXdhbGsuaCBiL2luY2x1ZGUvbGludXgvcGFnZXdh
bGsuaAo+PiBpbmRleCA2ZWM4MmU5MmM4N2YuLjA2NzkwZjIzOTU3ZiAxMDA2NDQKPj4gLS0tIGEv
aW5jbHVkZS9saW51eC9wYWdld2Fsay5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvcGFnZXdhbGsu
aAo+PiBAQCAtOCwxNSArOCwxNSBAQCBzdHJ1Y3QgbW1fd2FsazsKPj4gwqAgwqAgLyoqCj4+IMKg
wqAgKiBtbV93YWxrX29wcyAtIGNhbGxiYWNrcyBmb3Igd2Fsa19wYWdlX3JhbmdlCj4+IC0gKiBA
cHVkX2VudHJ5OsKgwqDCoMKgwqDCoMKgIGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0
eSBQVUQgCj4+ICgybmQtbGV2ZWwpIGVudHJ5Cj4+IC0gKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dGhpcyBoYW5kbGVyIHNob3VsZCBvbmx5IGhhbmRsZSBwdWRfdHJhbnNfaHVnZSgpIHB1ZHMuCj4+
IC0gKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhlIHBtZF9lbnRyeSBvciBwdGVfZW50cnkgY2Fs
bGJhY2tzIHdpbGwgYmUgdXNlZCBmb3IKPj4gLSAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1
bGFyIFBVRHMuCj4+IC0gKiBAcG1kX2VudHJ5OsKgwqDCoMKgwqDCoMKgIGlmIHNldCwgY2FsbGVk
IGZvciBlYWNoIG5vbi1lbXB0eSBQTUQgCj4+ICgzcmQtbGV2ZWwpIGVudHJ5Cj4+ICsgKiBAcGdk
X2VudHJ5OsKgwqDCoMKgwqDCoMKgIGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQ
R0QgCj4+ICh0b3AtbGV2ZWwpIGVudHJ5Cj4+ICsgKiBAcDRkX2VudHJ5OsKgwqDCoMKgwqDCoMKg
IGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQNEQgZW50cnkKPj4gKyAqIEBwdWRf
ZW50cnk6wqDCoMKgwqDCoMKgwqAgaWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFBV
RCBlbnRyeQo+PiArICogQHBtZF9lbnRyeTrCoMKgwqDCoMKgwqDCoCBpZiBzZXQsIGNhbGxlZCBm
b3IgZWFjaCBub24tZW1wdHkgUE1EIGVudHJ5Cj4+IMKgwqAgKsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdGhpcyBoYW5kbGVyIGlzIHJlcXVpcmVkIHRvIGJlIGFibGUgdG8gaGFuZGxlCj4+IMKgwqAg
KsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG1kX3RyYW5zX2h1Z2UoKSBwbWRzLsKgIFRoZXkgbWF5
IHNpbXBseSBjaG9vc2UgdG8KPj4gwqDCoCAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcGxpdF9o
dWdlX3BhZ2UoKSBpbnN0ZWFkIG9mIGhhbmRsaW5nIGl0IGV4cGxpY2l0bHkuCj4+IC0gKiBAcHRl
X2VudHJ5OsKgwqDCoMKgwqDCoMKgIGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQ
VEUgCj4+ICg0dGgtbGV2ZWwpIGVudHJ5Cj4+ICsgKiBAcHRlX2VudHJ5OsKgwqDCoMKgwqDCoMKg
IGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQVEUgCj4+IChsb3dlc3QtbGV2ZWwp
Cj4+ICsgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW50cnkKPj4gwqDCoCAqIEBwdGVfaG9sZTrC
oMKgwqDCoMKgwqDCoCBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBob2xlIGF0IGFsbCBsZXZlbHMK
Pj4gwqDCoCAqIEBodWdldGxiX2VudHJ5OsKgwqDCoCBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBo
dWdldGxiIGVudHJ5Cj4+IMKgwqAgKiBAdGVzdF93YWxrOsKgwqDCoMKgwqDCoMKgIGNhbGxlciBz
cGVjaWZpYyBjYWxsYmFjayBmdW5jdGlvbiB0byAKPj4gZGV0ZXJtaW5lIHdoZXRoZXIKPj4gQEAg
LTI3LDggKzI3LDE1IEBAIHN0cnVjdCBtbV93YWxrOwo+PiDCoMKgICogQHByZV92bWE6wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpZiBzZXQsIGNhbGxlZCBiZWZvcmUgc3RhcnRpbmcgd2FsayBvbiBh
IAo+PiBub24tbnVsbCB2bWEuCj4+IMKgwqAgKiBAcG9zdF92bWE6wqDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgc2V0LCBjYWxsZWQgYWZ0ZXIgYSB3YWxrIG9uIGEgbm9uLW51bGwgCj4+IHZtYSwgcHJv
dmlkZWQKPj4gwqDCoCAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHRoYXQgQHByZV92bWEgYW5kIHRoZSB2bWEgd2FsayBzdWNjZWVkZWQuCj4+ICsgKgo+PiArICog
cD9kX2VudHJ5IGNhbGxiYWNrcyBhcmUgY2FsbGVkIGV2ZW4gaWYgdGhvc2UgbGV2ZWxzIGFyZSBm
b2xkZWQgb24gYQo+PiArICogcGFydGljdWxhciBhcmNoaXRlY3R1cmUvY29uZmlndXJhdGlvbi4K
Pj4gwqDCoCAqLwo+PiDCoCBzdHJ1Y3QgbW1fd2Fsa19vcHMgewo+PiArwqDCoMKgIGludCAoKnBn
ZF9lbnRyeSkocGdkX3QgKnBnZCwgdW5zaWduZWQgbG9uZyBhZGRyLAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgbmV4dCwgc3RydWN0IG1tX3dhbGsgKndhbGspOwo+
PiArwqDCoMKgIGludCAoKnA0ZF9lbnRyeSkocDRkX3QgKnA0ZCwgdW5zaWduZWQgbG9uZyBhZGRy
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgbmV4dCwgc3RydWN0
IG1tX3dhbGsgKndhbGspOwo+PiDCoMKgwqDCoMKgIGludCAoKnB1ZF9lbnRyeSkocHVkX3QgKnB1
ZCwgdW5zaWduZWQgbG9uZyBhZGRyLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVu
c2lnbmVkIGxvbmcgbmV4dCwgc3RydWN0IG1tX3dhbGsgKndhbGspOwo+PiDCoMKgwqDCoMKgIGlu
dCAoKnBtZF9lbnRyeSkocG1kX3QgKnBtZCwgdW5zaWduZWQgbG9uZyBhZGRyLAo+PiBkaWZmIC0t
Z2l0IGEvbW0vcGFnZXdhbGsuYyBiL21tL3BhZ2V3YWxrLmMKPj4gaW5kZXggZWEwYjllNjA2YWQx
Li5jMDg5Nzg2ZTdhN2YgMTAwNjQ0Cj4+IC0tLSBhL21tL3BhZ2V3YWxrLmMKPj4gKysrIGIvbW0v
cGFnZXdhbGsuYwo+PiBAQCAtOTQsMTUgKzk0LDkgQEAgc3RhdGljIGludCB3YWxrX3B1ZF9yYW5n
ZShwNGRfdCAqcDRkLCB1bnNpZ25lZCAKPj4gbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChvcHMt
PnB1ZF9lbnRyeSkgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcGlubG9ja190ICpwdGwg
PSBwdWRfdHJhbnNfaHVnZV9sb2NrKHB1ZCwgd2Fsay0+dm1hKTsKPj4gLQo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAocHRsKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZXJyID0gb3BzLT5wdWRfZW50cnkocHVkLCBhZGRyLCBuZXh0LCB3YWxrKTsKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcGluX3VubG9jayhwdGwpOwo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChlcnIpCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb250aW51ZTsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlcnIgPSBvcHMtPnB1ZF9lbnRyeShwdWQsIGFkZHIsIG5leHQsIHdhbGspOwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZXJyKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGJyZWFrOwo+Cj4gQWN0dWFsbHksIHRoZXJlIGFyZSB0d28gY3VycmVudCB1
c2VycyBvZiBwdWRfZW50cnkoKSwgaW4gaG1tLmMgYW5kIAo+IHNpbmNlIDUuNXJjMSBhbHNvIG1h
cHBpbmdfZGlydHlfaGVscGVycy5jLiBUaGUgbGF0dGVyIG9uZSBpcyAKPiB1bnByb2JsZW1hdGlj
IGFuZCByZXF1aXJlcyBubyBhdHRlbnRpb24gYnV0IHRoZSBvbmUgaW4gaG1tLmMgaXMgCj4gcHJv
YmFibHkgbGFyZ2VseSB1bnRlc3RlZCwgYW5kIHNlZW1zIHRvIGFzc3VtZSBpdCB3YXMgY2FsbGVk
IG91dHNpZGUgCj4gb2YgdGhlIHNwaW5sb2NrLgo+Cj4gVGhlIHByb2JsZW0gd2l0aCB0aGUgY3Vy
cmVudCBwYXRjaCBpcyB0aGF0IHRoZSBobW0gcHVkX2VudHJ5IHdpbGwgCj4gdHJhdmVyc2UgYWxz
byBwbWRzLCBzbyB0aGF0IHdpbGwgbm93IGJlIGRvbmUgdHdpY2UuCj4KPiAvVGhvbWFzCj4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
