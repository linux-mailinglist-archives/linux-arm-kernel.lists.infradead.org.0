Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42211CF2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:05:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QxbT2EYINF9755RWO2nj/+vMkPzK1dhB6roPu/aUyt0=; b=guvIfHTaTNWG21G2RKaAxucf9
	48FapxNlqkynLvIwMbJCkkoAfQdwmefwhM6Fz42VT7Y4rls6SGmII3lSUjKZ7uDDCS8ybDWkDkBgJ
	1BlH1R7O/e7zRjxMnehEOTmeBhAVmTliaMzXYn01sUesdUIbBwmuj9RkK8+KwXRFvv8RSum9aj/Z3
	iyXwk+l+Z5JEGPtlVmgX/+yf29Z1Qh5zXq7cBfvMq0DkIiGatAaHxif1aDSbN3Gpsy/kMLiE5qlRd
	OHPfN8AYWpwuJGY329OkRlfstuKgWApFA2ZYwMF8kc/RpLec3tZS13yrrQnFnq4OecB0cmoCqMd2G
	HdjgMhGzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifP5L-0000Yf-Lb; Thu, 12 Dec 2019 14:04:55 +0000
Received: from pio-pvt-msa2.bahnhof.se ([79.136.2.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifP58-0000XV-JJ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:04:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id F285A3F6E0;
 Thu, 12 Dec 2019 15:04:38 +0100 (CET)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=DzhFO2Cz; 
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
 with ESMTP id Q3s48xuWPFsv; Thu, 12 Dec 2019 15:04:33 +0100 (CET)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 2F78D3F617;
 Thu, 12 Dec 2019 15:04:30 +0100 (CET)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 13DC43621B7;
 Thu, 12 Dec 2019 15:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1576159470; bh=+81VifpPufQx1Ghf7UgamHghIAtblxqdt1z4rpeKwjw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=DzhFO2Czsj4dlxMRNekZ5HARyubeVf/Z0IFsk9SHs7ghuuNJfX/lCADJRkbNKu9Xc
 chbNsFXIChLsKn2EMmrTWPks59Fk6Fc5P78vIRgrPvZQpWVKd2JOGzA2NNOUv4e8Ig
 IMiWhXAy3y1WXfta2R8hBYxsV4ji02fQFhFx/csY=
Subject: Re: [PATCH v16 11/25] mm: pagewalk: Add p4d_entry() and pgd_entry()
To: Steven Price <steven.price@arm.com>
References: <20191206135316.47703-1-steven.price@arm.com>
 <20191206135316.47703-12-steven.price@arm.com>
 <13280f9e-6f03-e1fd-659a-31462ba185b0@shipmail.org>
 <7fd20e9f-822a-897d-218e-bddf135fd33d@shipmail.org>
 <a5bb53f1-dd40-f32c-917b-a1ae1a49e5b2@arm.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
Organization: VMware Inc.
Message-ID: <16b2ecbc-316a-33f8-ace2-e54cd8001b24@shipmail.org>
Date: Thu, 12 Dec 2019 15:04:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a5bb53f1-dd40-f32c-917b-a1ae1a49e5b2@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_060443_025463_65A17824 
X-CRM114-Status: GOOD (  28.06  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Zong Li <zong.li@sifive.com>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTIvMTkgMjoxNSBQTSwgU3RldmVuIFByaWNlIHdyb3RlOgo+IE9uIDEyLzEyLzIwMTkg
MTE6MzMsIFRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUpIHdyb3RlOgo+PiBPbiAxMi8xMi8xOSAx
MjoyMyBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gKFZNd2FyZSkgd3JvdGU6Cj4+PiBPbiAxMi82LzE5
IDI6NTMgUE0sIFN0ZXZlbiBQcmljZSB3cm90ZToKPj4+PiBwZ2RfZW50cnkoKSBhbmQgcHVkX2Vu
dHJ5KCkgd2VyZSByZW1vdmVkIGJ5IGNvbW1pdCAwYjFmYmZlNTAwMDZjNDEwCj4+Pj4gKCJtbS9w
YWdld2FsazogcmVtb3ZlIHBnZF9lbnRyeSgpIGFuZCBwdWRfZW50cnkoKSIpIGJlY2F1c2UgdGhl
cmUgd2VyZQo+Pj4+IG5vIHVzZXJzLiBXZSdyZSBhYm91dCB0byBhZGQgdXNlcnMgc28gcmVpbnRy
b2R1Y2UgdGhlbSwgYWxvbmcgd2l0aAo+Pj4+IHA0ZF9lbnRyeSgpIGFzIHdlIG5vdyBoYXZlIDUg
bGV2ZWxzIG9mIHRhYmxlcy4KPj4+Pgo+Pj4+IE5vdGUgdGhhdCBjb21taXQgYTAwY2M3ZDlkZDkz
ZDY2YSAoIm1tLCB4ODY6IGFkZCBzdXBwb3J0IGZvcgo+Pj4+IFBVRC1zaXplZCB0cmFuc3BhcmVu
dCBodWdlcGFnZXMiKSBhbHJlYWR5IHJlLWFkZGVkIHB1ZF9lbnRyeSgpIGJ1dCAKPj4+PiB3aXRo
Cj4+Pj4gZGlmZmVyZW50IHNlbWFudGljcyB0byB0aGUgb3RoZXIgY2FsbGJhY2tzLiBTaW5jZSB0
aGVyZSBoYXZlIG5ldmVyCj4+Pj4gYmVlbiB1cHN0cmVhbSB1c2VycyBvZiB0aGlzLCByZXZlcnQg
dGhlIHNlbWFudGljcyBiYWNrIHRvIG1hdGNoIHRoZQo+Pj4+IG90aGVyIGNhbGxiYWNrcy4gVGhp
cyBtZWFucyBwdWRfZW50cnkoKSBpcyBjYWxsZWQgZm9yIGFsbCBlbnRyaWVzLCBub3QKPj4+PiBq
dXN0IHRyYW5zcGFyZW50IGh1Z2UgcGFnZXMuCj4KPiBXaGVuIEkgd3JvdGUgdGhhdCB0aGVyZSB3
ZXJlIG5vIHVwc3RyZWFtIHVzZXJzLCB3aGljaCBzYWRseSBzaG93cyBob3cKPiBsb25nIGFnbyB0
aGF0IHdhcyA6KAo+Cj4+PiBBY3R1YWxseSwgdGhlcmUgYXJlIHR3byB1c2VycyBvZiBwdWRfZW50
cnkoKSwgaW4gaG1tLmMgYW5kIHNpbmNlIAo+Pj4gNS41cmMxIGFsc28gbWFwcGluZ19kaXJ0eV9o
ZWxwZXJzLmMuIFRoZSBsYXR0ZXIgb25lIGlzIHVucHJvYmxlbWF0aWMgCj4+PiBhbmQgcmVxdWly
ZXMgbm8gYXR0ZW50aW9uIGJ1dCB0aGUgb25lIGluIGhtbS5jIGlzIHByb2JhYmx5IGxhcmdlbHkg
Cj4+PiB1bnRlc3RlZCwgYW5kIHNlZW1zIHRvIGFzc3VtZSBpdCB3YXMgY2FsbGVkIG91dHNpZGUg
b2YgdGhlIHNwaW5sb2NrLgo+Pj4KPj4+IFRoZSBwcm9ibGVtIHdpdGggdGhlIGN1cnJlbnQgcGF0
Y2ggaXMgdGhhdCB0aGUgaG1tIHB1ZF9lbnRyeSB3aWxsIAo+Pj4gdHJhdmVyc2UgYWxzbyBwbWRz
LCBzbyB0aGF0IHdpbGwgYmUgZG9uZSB0d2ljZSBub3cuCj4+Pgo+Pj4gSW4gYW5vdGhlciB0aHJl
YWQgd2Ugd2VyZSBkaXNjdXNzaW5nIGEgbWVhbnMgb2YgcmVydW5uaW5nIHRoZSBsZXZlbCAKPj4+
IChpbiBjYXNlIG9mIGEgcmFjZSksIG9yIGNvbnRpbnVpbmcgYWZ0ZXIgYSBsZXZlbCwgYmFzZWQg
b24gdGhlIAo+Pj4gcmV0dXJuIHZhbHVlIGFmdGVyIHRoZSBjYWxsYmFjay4gVGhlIGNoYW5nZSB3
YXMgZmFpcmx5IGludmFzaXZlLAo+Pj4KPj4gSG1tLiBGb3Jnb3QgdG8gcmVtb3ZlIHRoZSBhYm92
ZSB0ZXh0IHRoYXQgYXBwZWFycyB0d2ljZS4gOiguIFRoZSAKPj4gY29ycmVjdCBvbmUgaXMgaW5s
aW5lIGJlbG93Lgo+Pgo+Pj4KPj4+PiBUZXN0ZWQtYnk6IFpvbmcgTGkgPHpvbmcubGlAc2lmaXZl
LmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0u
Y29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGluY2x1ZGUvbGludXgvcGFnZXdhbGsuaCB8IDE5ICsrKysr
KysrKysrKystLS0tLS0KPj4+PiDCoCBtbS9wYWdld2Fsay5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDI3ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+Pj4+IMKgIDIgZmlsZXMgY2hhbmdl
ZCwgMjkgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9wYWdld2Fsay5oIGIvaW5jbHVkZS9saW51eC9wYWdld2Fsay5oCj4+
Pj4gaW5kZXggNmVjODJlOTJjODdmLi4wNjc5MGYyMzk1N2YgMTAwNjQ0Cj4+Pj4gLS0tIGEvaW5j
bHVkZS9saW51eC9wYWdld2Fsay5oCj4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9wYWdld2Fsay5o
Cj4+Pj4gQEAgLTgsMTUgKzgsMTUgQEAgc3RydWN0IG1tX3dhbGs7Cj4+Pj4gwqAgwqAgLyoqCj4+
Pj4gwqDCoCAqIG1tX3dhbGtfb3BzIC0gY2FsbGJhY2tzIGZvciB3YWxrX3BhZ2VfcmFuZ2UKPj4+
PiAtICogQHB1ZF9lbnRyeTrCoMKgwqDCoMKgwqDCoCBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBu
b24tZW1wdHkgUFVEIAo+Pj4+ICgybmQtbGV2ZWwpIGVudHJ5Cj4+Pj4gLSAqwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB0aGlzIGhhbmRsZXIgc2hvdWxkIG9ubHkgaGFuZGxlIHB1ZF90cmFuc19odWdl
KCkgcHVkcy4KPj4+PiAtICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoZSBwbWRfZW50cnkgb3Ig
cHRlX2VudHJ5IGNhbGxiYWNrcyB3aWxsIGJlIHVzZWQgZm9yCj4+Pj4gLSAqwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZWd1bGFyIFBVRHMuCj4+Pj4gLSAqIEBwbWRfZW50cnk6wqDCoMKgwqDCoMKg
wqAgaWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFBNRCAKPj4+PiAoM3JkLWxldmVs
KSBlbnRyeQo+Pj4+ICsgKiBAcGdkX2VudHJ5OsKgwqDCoMKgwqDCoMKgIGlmIHNldCwgY2FsbGVk
IGZvciBlYWNoIG5vbi1lbXB0eSBQR0QgCj4+Pj4gKHRvcC1sZXZlbCkgZW50cnkKPj4+PiArICog
QHA0ZF9lbnRyeTrCoMKgwqDCoMKgwqDCoCBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBub24tZW1w
dHkgUDREIGVudHJ5Cj4+Pj4gKyAqIEBwdWRfZW50cnk6wqDCoMKgwqDCoMKgwqAgaWYgc2V0LCBj
YWxsZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFBVRCBlbnRyeQo+Pj4+ICsgKiBAcG1kX2VudHJ5OsKg
wqDCoMKgwqDCoMKgIGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQTUQgZW50cnkK
Pj4+PiDCoMKgICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoaXMgaGFuZGxlciBpcyByZXF1aXJl
ZCB0byBiZSBhYmxlIHRvIGhhbmRsZQo+Pj4+IMKgwqAgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cG1kX3RyYW5zX2h1Z2UoKSBwbWRzLsKgIFRoZXkgbWF5IHNpbXBseSBjaG9vc2UgdG8KPj4+PiDC
oMKgICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwbGl0X2h1Z2VfcGFnZSgpIGluc3RlYWQgb2Yg
aGFuZGxpbmcgaXQgZXhwbGljaXRseS4KPj4+PiAtICogQHB0ZV9lbnRyeTrCoMKgwqDCoMKgwqDC
oCBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBub24tZW1wdHkgUFRFIAo+Pj4+ICg0dGgtbGV2ZWwp
IGVudHJ5Cj4+Pj4gKyAqIEBwdGVfZW50cnk6wqDCoMKgwqDCoMKgwqAgaWYgc2V0LCBjYWxsZWQg
Zm9yIGVhY2ggbm9uLWVtcHR5IFBURSAKPj4+PiAobG93ZXN0LWxldmVsKQo+Pj4+ICsgKsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZW50cnkKPj4+PiDCoMKgICogQHB0ZV9ob2xlOsKgwqDCoMKgwqDC
oMKgIGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIGhvbGUgYXQgYWxsIGxldmVscwo+Pj4+IMKgwqAg
KiBAaHVnZXRsYl9lbnRyeTrCoMKgwqAgaWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggaHVnZXRsYiBl
bnRyeQo+Pj4+IMKgwqAgKiBAdGVzdF93YWxrOsKgwqDCoMKgwqDCoMKgIGNhbGxlciBzcGVjaWZp
YyBjYWxsYmFjayBmdW5jdGlvbiB0byAKPj4+PiBkZXRlcm1pbmUgd2hldGhlcgo+Pj4+IEBAIC0y
Nyw4ICsyNywxNSBAQCBzdHJ1Y3QgbW1fd2FsazsKPj4+PiDCoMKgICogQHByZV92bWE6wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpZiBzZXQsIGNhbGxlZCBiZWZvcmUgc3RhcnRpbmcgd2FsayBvbiBh
IAo+Pj4+IG5vbi1udWxsIHZtYS4KPj4+PiDCoMKgICogQHBvc3Rfdm1hOsKgwqDCoMKgwqDCoMKg
wqDCoMKgIGlmIHNldCwgY2FsbGVkIGFmdGVyIGEgd2FsayBvbiBhIG5vbi1udWxsIAo+Pj4+IHZt
YSwgcHJvdmlkZWQKPj4+PiDCoMKgICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdGhhdCBAcHJlX3ZtYSBhbmQgdGhlIHZtYSB3YWxrIHN1Y2NlZWRlZC4KPj4+PiAr
ICoKPj4+PiArICogcD9kX2VudHJ5IGNhbGxiYWNrcyBhcmUgY2FsbGVkIGV2ZW4gaWYgdGhvc2Ug
bGV2ZWxzIGFyZSBmb2xkZWQgCj4+Pj4gb24gYQo+Pj4+ICsgKiBwYXJ0aWN1bGFyIGFyY2hpdGVj
dHVyZS9jb25maWd1cmF0aW9uLgo+Pj4+IMKgwqAgKi8KPj4+PiDCoCBzdHJ1Y3QgbW1fd2Fsa19v
cHMgewo+Pj4+ICvCoMKgwqAgaW50ICgqcGdkX2VudHJ5KShwZ2RfdCAqcGdkLCB1bnNpZ25lZCBs
b25nIGFkZHIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIG5l
eHQsIHN0cnVjdCBtbV93YWxrICp3YWxrKTsKPj4+PiArwqDCoMKgIGludCAoKnA0ZF9lbnRyeSko
cDRkX3QgKnA0ZCwgdW5zaWduZWQgbG9uZyBhZGRyLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdW5zaWduZWQgbG9uZyBuZXh0LCBzdHJ1Y3QgbW1fd2FsayAqd2Fsayk7Cj4+Pj4gwqDC
oMKgwqDCoCBpbnQgKCpwdWRfZW50cnkpKHB1ZF90ICpwdWQsIHVuc2lnbmVkIGxvbmcgYWRkciwK
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgbmV4dCwgc3Ry
dWN0IG1tX3dhbGsgKndhbGspOwo+Pj4+IMKgwqDCoMKgwqAgaW50ICgqcG1kX2VudHJ5KShwbWRf
dCAqcG1kLCB1bnNpZ25lZCBsb25nIGFkZHIsCj4+Pj4gZGlmZiAtLWdpdCBhL21tL3BhZ2V3YWxr
LmMgYi9tbS9wYWdld2Fsay5jCj4+Pj4gaW5kZXggZWEwYjllNjA2YWQxLi5jMDg5Nzg2ZTdhN2Yg
MTAwNjQ0Cj4+Pj4gLS0tIGEvbW0vcGFnZXdhbGsuYwo+Pj4+ICsrKyBiL21tL3BhZ2V3YWxrLmMK
Pj4+PiBAQCAtOTQsMTUgKzk0LDkgQEAgc3RhdGljIGludCB3YWxrX3B1ZF9yYW5nZShwNGRfdCAq
cDRkLCB1bnNpZ25lZCAKPj4+PiBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgZW5kLAo+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChvcHMtPnB1
ZF9lbnRyeSkgewo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5sb2NrX3QgKnB0bCA9
IHB1ZF90cmFuc19odWdlX2xvY2socHVkLCB3YWxrLT52bWEpOwo+Pj4+IC0KPj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpZiAocHRsKSB7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBlcnIgPSBvcHMtPnB1ZF9lbnRyeShwdWQsIGFkZHIsIG5leHQsIHdhbGspOwo+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2socHRsKTsKPj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChlcnIpCj4+Pj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IG9wcy0+cHVkX2VudHJ5KHB1ZCwgYWRk
ciwgbmV4dCwgd2Fsayk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVycikKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4KPj4+IEFjdHVhbGx5
LCB0aGVyZSBhcmUgdHdvIGN1cnJlbnQgdXNlcnMgb2YgcHVkX2VudHJ5KCksIGluIGhtbS5jIGFu
ZCAKPj4+IHNpbmNlIDUuNXJjMSBhbHNvIG1hcHBpbmdfZGlydHlfaGVscGVycy5jLiBUaGUgbGF0
dGVyIG9uZSBpcyAKPj4+IHVucHJvYmxlbWF0aWMgYW5kIHJlcXVpcmVzIG5vIGF0dGVudGlvbiBi
dXQgdGhlIG9uZSBpbiBobW0uYyBpcyAKPj4+IHByb2JhYmx5IGxhcmdlbHkgdW50ZXN0ZWQsIGFu
ZCBzZWVtcyB0byBhc3N1bWUgaXQgd2FzIGNhbGxlZCBvdXRzaWRlIAo+Pj4gb2YgdGhlIHNwaW5s
b2NrLgo+Cj4gVGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dCwgSSBndWVzcyB0aGUgc2ltcGxl
c3QgZml4IHdvdWxkIGJlIHRvCj4gc3F1YXNoIGluIHNvbWV0aGluZyBsaWtlIHRoZSBiZWxvdyB3
aGljaCBzaG91bGQgcmVzdG9yZSB0aGUgb2xkCj4gYmVoYXZpb3VyIGZvciBobW0uYyB3aXRob3V0
IGFmZmVjdGluZyBvdGhlcnMuCj4KPiBTdGV2ZSAKCkknbSBub3QgZnVsbHkgc3VyZSB0aGF0IHRo
ZSBvbGQgYmVoYXZpb3VyIGlzIHRoZSBjb3JyZWN0IG9uZSwgYnV0IGRlZmluaXRlbHkgaG1tJ3Mg
cHVkX2VudHJ5IG5lZWRzIHNvbWUgZml4aW5nLgpJJ20gbW9yZSBjb25jZXJuZWQgd2l0aCB0aGUg
cGFnZXdhbGsgY29kZS4gV2l0aCB5b3VyIHBhdGNoIGl0IGFjdHVhbGx5IHNwbGl0cyBhbGwgaHVn
ZSBwdWRzIHByZXNlbnQgaW4gdGhlIHBhZ2UtdGFibGUKb24gZWFjaCBwYWdlIHdhbGsgd2hpY2gg
aXMgbm90IHdoYXQgd2Ugd2FudC4KCk9uZSBpZGVhIHdvdWxkIGJlIHRvIGFkZCBhIG5ldyBtZW1i
ZXIgdG8gc3RydWN0X21tX3dhbGs6CgplbnVtIHBhZ2Vfd2Fsa19yZXRfYWN0aW9uIHsKCUFDVElP
Tl9TVUJUUkVFID0gMCwKCUFDVElPTl9DT05USU5VRSA9IDEsCglBQ1RJT05fQUdBSU4gPSAyIC8q
IE9ubHkgZm9yIGxldmVscyB0aGF0IHRoYXZlIHA/ZF91bnN0YWJsZSAqLwp9OwoKc3RydWN0IG1t
X3dhbGsgewoJLi4uCgllbnVtIHBhZ2Vfd2Fsa19yZXRfYWN0aW9uIGFjdGlvbjsgLyogb3IgcGVy
aGFwcyBhcyBhbiBlbnVtICovCn07CgoKaWYgKG9wcy0+cHVkX2VudHJ5KSB7Cgl3YWxrLT5hY3Rp
b24gPSBBQ1RJT05fU1VCVFJFRTsKCS4uLgoJLi4uCgkuLi4KCWlmICh3YWxrLT5hY3Rpb24gPT0g
QUNUSU9OX0FHQUlOKSAgLyogQ2FsbGJhY2sgdHJpZWQgdG8gc3BsaXQgaHVnZSBlbnRyeSwgYnV0
IGZhaWxlZCAqLwoJCWdvdG8gYWdhaW47CgllbHNlIGlmICh3YWxrLT5hY3Rpb24gPT0gQUNUSU9O
X0NPTlRJTlVFKSAvKiBEb25lIHdpdGggdGhpcyBzdWJ0cmVlLiBQcm9iYWJseSBodWdlIGVudHJ5
IGhhbmRsZWQuICovCgkJY29udGludWU7CgkvKiBBQ1RJT05fU1VCVFJFRSBmYWxscyB0aHJvdWdo
ICovCn0KCndlIGRpc2N1c3NlZCBzb21ldGhpbmcgc2ltaWxhciBiZWZvcmUgb24gbGludXgtbW0s
IGJ1dCB0aGUgaWRlYSB0aGVuIHdhcyB0byByZWRlZmluZQp0aGUgcG9zaXRpdmUgcmV0dXJuIHZh
bHVlIG9mIHRoZSBjYWxsYmFjayB0byB0aGUgYWN0aW9uLCBidXQgdGhhdCBtZWFudCBjaGFuZ2lu
ZyB0aG9zZSBleGlzdGluZyBjYWxsYmFja3MgdGhhdCByZWxpZWQgb24KYSBwb3NpdGl2ZSByZXR1
cm4gdmFsdWUuIFRoZSBhYm92ZSB3b3VsZCBiZSBoZWxwZnVsIGFsc28gZm9yIHBtZF9lbnRyeS4K
Ci9UaG9tYXMKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
