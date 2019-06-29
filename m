Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6575A957
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 08:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9IcZDM9CQJEtalM8pJDMOwM3ph9hUPg/bHDqpr4aso=; b=XD3ngdWBH6jwI7
	ooiaNfp2MMUws7bnIDdN7zJlTCyOOBkwhCBYDUuRHP4pgwjg7Sqna+hEopySe8jCxIBWgweobd8Wd
	m7xTvBYgqNJUuTeELUbjovXhLiDO7sPXi0ibZP7Bq8gbaqjmuaf6JVrWuS/qf9zM4KCo0YLPSsIqp
	6zYB3bzCJGkHPsEp9kUQx+ZK0xxDTbyO/myDObCQwsHfxvqlGAfZpz3fIKzS6BCJLtyK/MjJTiBhv
	C55U9SHm0efiQTlzlZYF+jD8nPMjzNKrFEhGjJsy851zIDKWcyzmpyYX/J6ONBnXOhHcvpj/gPd+S
	rcFBpo+2ZnQKmvVpuD5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh7J5-0001Gb-O7; Sat, 29 Jun 2019 06:57:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hh7Im-0001G9-My
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 06:57:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D3C928;
 Fri, 28 Jun 2019 23:57:34 -0700 (PDT)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2026F3F246;
 Fri, 28 Jun 2019 23:59:20 -0700 (PDT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <CGME20190628130921eucas1p239935b0771032c331911eacc1a69dd2e@eucas1p2.samsung.com>
 <1fd47b0d-f77f-8d07-c039-6ac9072834fc@samsung.com>
 <27386d82-2906-b541-f71d-3c61f5099bdf@arm.com>
 <530cd07e-0da7-1d83-be4e-b14813029424@samsung.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <06c264a8-8778-18b1-1094-4281a4a2abc9@arm.com>
Date: Sat, 29 Jun 2019 07:58:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <530cd07e-0da7-1d83-be4e-b14813029424@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_235736_843508_D7D98701 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Huw Davies <huw@codeweavers.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3lsd2VzdGVyLAoKdGhhbmsgeW91IGZvciB0aGUgcXVpY2sgdHVybiBhcm91bmQgdG8gbXkg
ZW1haWwuCgpPbiA2LzI4LzE5IDU6NTAgUE0sIFN5bHdlc3RlciBOYXdyb2NraSB3cm90ZToKPiBI
aSBWaW5jZW56bywKPiAKPiBPbiA2LzI4LzE5IDE2OjMyLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPj4gT24gNi8yOC8xOSAyOjA5IFBNLCBNYXJlayBTenlwcm93c2tpIHdyb3RlOgo+Pj4gT24g
MjAxOS0wNi0yMSAxMTo1MiwgVmluY2Vuem8gRnJhc2Npbm8gd3JvdGU6Cj4+Pj4gVG8gdGFrZSBh
ZHZhbnRhZ2Ugb2YgdGhlIGNvbW1vbmx5IGRlZmluZWQgdmRzbyBpbnRlcmZhY2UgZm9yCj4+Pj4g
Z2V0dGltZW9mZGF5IHRoZSBhcmNoaXRlY3R1cmFsIGNvZGUgcmVxdWlyZXMgYW4gYWRhcHRhdGlv
bi4KPj4+Pgo+Pj4+IFJlLWltcGxlbWVudCB0aGUgZ2V0dGltZW9mZGF5IHZkc28gaW4gQyBpbiBv
cmRlciB0byB1c2UgbGliL3Zkc28uCj4+Pj4KPj4+PiBXaXRoIHRoZSBuZXcgaW1wbGVtZW50YXRp
b24gYXJtNjQgZ2FpbnMgc3VwcG9ydCBmb3IgQ0xPQ0tfQk9PVFRJTUUKPj4+PiBhbmQgQ0xPQ0tf
VEFJLgo+Pj4+Cj4+Pj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5j
b20+Cj4+Pj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPgo+Pj4+IFNpZ25l
ZC1vZmYtYnk6IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lub0Bhcm0uY29tPgo+
Pj4+IFRlc3RlZC1ieTogU2hpaml0aCBUaG90dG9uIDxzdGhvdHRvbkBtYXJ2ZWxsLmNvbT4KPj4+
PiBUZXN0ZWQtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+Pj4+
IFNpZ25lZC1vZmYtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+
Cj4+Pgo+Pj4gVGhpcyBwYXRjaCBjYXVzZXMgc2VyaW91cyByZWdyZXNzaW9uIG9uIFNhbXN1bmcg
RXh5bm9zNTQzMyBTb0MgYmFzZWQgCj4+PiBUTTIoZSkgYm9hcmRzLiBUaGUgdGltZSBpbiB1c2Vy
c3BhY2UgaXMgYWx3YXlzIHNldCB0byBiZWdpbiBvZiB0aGUgZXBvY2g6Cj4+Pgo+Pj4gIyBkYXRl
IDA2MjgxMzE1MjAxOQo+Pj4gRnJpIEp1biAyOCAxMzoxNTowMCBVVEMgMjAxOQo+Pj4gIyBkYXRl
Cj4+PiBUaHUgSmFuwqAgMSAwMDowMDowMCBVVEMgMTk3MAo+Pj4gIyBkYXRlCj4+PiBUaHUgSmFu
wqAgMSAwMDowMDowMCBVVEMgMTk3MAo+Pj4KPj4+IEkndmUgbm90aWNlZCB0aGF0IHNpbmNlIHRo
ZSBwYXRjaCBsYW5kZWQgaW4gTGludXggbmV4dC0yMDE5MDYyNSBhbmQgCj4+PiBiaXNlY3QgaW5k
ZWVkIHBvaW50ZWQgdG8gdGhpcyBwYXRjaC4KPj4+Cj4+IFRoYW5rIHlvdSBmb3IgcmVwb3J0aW5n
IHRoaXMsIHNlZW1zIHRoYXQgdGhlIG5leHQgdGhhdCB5b3UgcG9zdGVkIGlzIG1pc3NpbmcKPj4g
c29tZSBmaXhlcyBmb3IgYXJtNjQuCj4+Cj4+IENvdWxkIHlvdSBwbGVhc2UgdHJ5IHRoZSB0cmVl
IGJlbG93Pwo+Pgo+PiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdGlwL3RpcC5naXQgdGltZXJzL3Zkc28KPj4KPj4gTGV0IHVzIGtub3cgaWYgdGhlIGZ1bmN0
aW9uYWxpdHkgaXMgcmVzdG9yZWQuIE90aGVyd2lzZSB0aGUgaXNzdWUgd2lsbCByZXF1aXJlCj4+
IGZ1cnRoZXIgaW52ZXN0aWdhdGlvbi4KPiAgCj4gTWFyZWsgaXMgYWxyZWFkeSBvdXQgZm9yIGhv
bGlkYXlzLCBJIGdhdmUgeW91ciB0cmVlIGEgdHJ5IGJ1dCBrZXJuZWwgZnJvbSAKPiB0aGF0IGJy
YW5jaCB3YXMgZmFpbGluZyB0byBib290IG9uIFRNMihlKS4gIAo+IAo+IFRoZW4gSSBoYXZlIGNo
ZXJyeS1waWNrZWQgNSBwYXRjaGVzIGZyb20gdGhlIGJyYW5jaCB0aGF0IHNlZW1lZCB0byAKPiBi
ZSBtaXNzaW5nIGluIG5leHQtMjAxOTA2Mjg6Cj4gCj4gMjgwMjhmMzE3NGNmMSAoSEVBRCkgTUFJ
TlRBSU5FUlM6IEZpeCBBbmR5J3Mgc3VybmFtZSBhbmQgdGhlIGRpcmVjdG9yeSBlbnRyaWVzIG9m
IFZEU08KPiBlYzhmOGU0YmYyMjA2IGFybTY0OiB2ZHNvOiBGaXggY29tcGlsYXRpb24gd2l0aCBj
bGFuZyBvbGRlciB0aGFuIDgKPiA3MjE4ODJlYmI1NzI5IGFybTY0OiBjb21wYXQ6IEZpeCBfX2Fy
Y2hfZ2V0X2h3X2NvdW50ZXIoKSBpbXBsZW1lbnRhdGlvbgo+IDcwMjdmZWE5NzdhM2QgYXJtNjQ6
IEZpeCBfX2FyY2hfZ2V0X2h3X2NvdW50ZXIoKSBpbXBsZW1lbnRhdGlvbgo+IDEwYjMwNTg1M2Zl
MjIgbGliL3Zkc286IE1ha2UgZGVsdGEgY2FsY3VsYXRpb24gd29yayBjb3JyZWN0bHkKPiA0ODU2
OGQ4YzdmNDc5ICh0YWc6IG5leHQtMjAxOTA2MjgsIGxpbnV4LW5leHQvbWFzdGVyKSBBZGQgbGlu
dXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxOTA2MjgKPiAKPiBXaXRoIHRob3NlIDUgYWRk
aXRpb25hbCBwYXRjaGVzIG9uIHRvcCBvZiBuZXh0LTIwMTkwNjI4IHRoZSBwcm9ibGVtCj4gaXMg
bm90IG9ic2VydmVkIGFueSBtb3JlLiBkYXRlLCBwaW5nLCBldGMuIHNlZW1zIHRvIGJlIHdvcmtp
bmcgd2VsbC4KPiAKPiAjIGRhdGUKPiBGcmkgSnVuIDI4IDE2OjM5OjIyIFVUQyAyMDE5Cj4gIwo+
ICMgc3lzdGVtY3RsIHN0b3Agc3lzdGVtZC10aW1lc3luY2QKPiAjICAKPiAjIGRhdGUgMDYyODE4
MzkyMDE5Cj4gRnJpIEp1biAyOCAxODozOTowMCBVVEMgMjAxOQo+ICMgZGF0ZQo+IEZyaSBKdW4g
MjggMTg6Mzk6MDEgVVRDIDIwMTkKPiAjIAo+ICMgZGF0ZSAwNjI4MTg0MzIwMTk7IGRhdGUKPiBG
cmkgSnVuIDI4IDE4OjQzOjAwIFVUQyAyMDE5Cj4gRnJpIEp1biAyOCAxODo0MzowMCBVVEMgMjAx
OQo+ICMgZGF0ZQo+IEZyaSBKdW4gMjggMTg6NDM6MDQgVVRDIDIwMTkKPgoKVGhpcyBzZWVtcyBv
aywgdGhhbmtzIGZvciBzcGVuZGluZyBzb21lIHRpbWUgdG8gdGVzdCBvdXIgcGF0Y2hlcyBhZ2Fp
bnN0IHlvdXIgYm9hcmQuCgpJZiBJIG1heSwgSSB3b3VsZCBsaWtlIHRvIGFzayB0byB5b3Ugb25l
IGZhdm9yLCBjb3VsZCB5b3UgcGxlYXNlIGtlZXAgYW4gZXllIG9uCm5leHQgYW5kIG9uY2UgdGhv
c2UgcGF0Y2hlcyBhcmUgbWVyZ2VkIHJlcGVhdCB0aGUgdGVzdD8KCkkgd2FudCBqdXN0IHRvIG1h
a2Ugc3VyZSB0aGF0IHRoZSByZWdyZXNzaW9uIGRvZXMgbm90IHJlYXBwZWFyLgoKSGF2ZSBhIG5p
Y2Ugd2Vla2VuZC4KCj4gLS0KPiBSZWdhcmRzLAo+IFN5bHdlc3Rlcgo+IAoKLS0gClJlZ2FyZHMs
ClZpbmNlbnpvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
