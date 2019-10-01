Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A815C3834
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wBLVYFsH0v3CtR3/nGLymkBYG7azE14DF4O5cThk9Q=; b=sHgyo9phnM4MVc
	U5eFyYnyIovUB/BBgPWdve6ecOaGIsl+BSHk3vNtYMEghUo31ESbm/vYApay2PkjTVpD8ewmp0icJ
	FbHcHMGQOTdFQdJ+XNyUKWviOGmKvJsW9W5le01kzCEfTiuTROVKepSGfySmxx0QkzDAPOQyJRxcM
	mSlGboi6k69wIlNzSbFNywoiLX/1FouP/3Il+6IUFmcLd0xBBshFFMkljVHeSuxIyubS66QbZyNV+
	sRDUjQP0dVcrKZAiV5k4fIJIltY+8nrPSlPWQKoVsIyNu7HC16HBTIrElmjRV5KFYZ0atbMS2XD33
	eIY8PG2X4MICQ3ZSFsjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJbW-0003hJ-Tb; Tue, 01 Oct 2019 14:58:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJbG-0003Xl-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:58:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B41E1000;
 Tue,  1 Oct 2019 07:58:02 -0700 (PDT)
Received: from [10.37.8.149] (unknown [10.37.8.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE5A73F71A;
 Tue,  1 Oct 2019 07:58:00 -0700 (PDT)
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
To: Will Deacon <will@kernel.org>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <7306ead0-a9b6-98d0-e775-c677eeeb55a5@arm.com>
Date: Tue, 1 Oct 2019 15:59:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_075802_941308_E4C16332 
X-CRM114-Status: GOOD (  17.76  )
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
Cc: ard.biesheuvel@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMS8xOSAzOjQzIFBNLCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBUdWUsIE9jdCAwMSwg
MjAxOSBhdCAwMzozNzo0OVBNICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPj4gT24g
MTAvMS8xOSAzOjIwIFBNLCBXaWxsIERlYWNvbiB3cm90ZToKPj4+IE9uIFR1ZSwgT2N0IDAxLCAy
MDE5IGF0IDAzOjIwOjM1UE0gKzAxMDAsIFZpbmNlbnpvIEZyYXNjaW5vIHdyb3RlOgo+Pj4+IE9u
IDEwLzEvMTkgMjoyNyBQTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+Pj4+PiBPbiBUdWUsIE9j
dCAwMSwgMjAxOSBhdCAwMjoxNDoyM1BNICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPj4+Pj4+
IE9uIFRodSwgU2VwIDI2LCAyMDE5IGF0IDEwOjQzOjM4UE0gKzAxMDAsIFZpbmNlbnpvIEZyYXNj
aW5vIHdyb3RlOgo+Pj4+Pj4+ICtjb25maWcgQ09NUEFUQ0NfSVNfQVJNX0dDQwo+Pj4+Pj4+ICsJ
ZGVmX2Jvb2wgJChzdWNjZXNzLCQoQ09NUEFUQ0MpIC0tdmVyc2lvbiB8IGhlYWQgLW4gMSB8IGdy
ZXAgLXEgImFybS0uKi1nY2MiKQo+Pj4+Pj4KPj4+Pj4+IEkndmUgc2VlbiB0b29sY2hhaW5zIHdo
ZXJlIHRoZSBmaXJzdCBwYXJ0IG9mIHRoZSB0dXBsZSBpcyAiYXJtdjctIiwgc28gdGhleQo+Pj4+
Pj4gd29uJ3QgZ2V0IGRldGVjdGVkIGhlcmUuIEhvd2V2ZXIsIGRvIHdlIHJlYWxseSBuZWVkIHRv
IGRldGVjdCB0aGlzPyBJZgo+Pj4+Pj4gc29tZWJvZHkgcGFzc2VzIGEgZHVmZiBjb21waWxlciwg
dGhlbiB0aGUgYnVpbGQgd2lsbCBmYWlsIGluIHRoZSBzYW1lIHdheSBhcwo+Pj4+Pj4gaWYgdGhl
eSBwYXNzZWQgaXQgdG8gQ1JPU1NfQ09NUElMRT0uCj4+Pj4+Cj4+Pj4+IE5vdCBzdXJlIHdoYXQg
aGFwcGVucyBpZiB3ZSBwYXNzIGFuIGFhcmNoNjQgY29tcGlsZXIuIENhbiB3ZSBlbmQgdXAgd2l0
aAo+Pj4+PiBhIDY0LWJpdCBjb21wYXQgdkRTTz8KPj4+Pj4KPj4+Pgo+Pj4+IEkgYWdyZWUgd2l0
aCBDYXRhbGluIGhlcmUuIFRoZSBwcm9ibGVtIGlzIG5vdCBvbmx5IHdoZW4geW91IHBhc3MgYW5k
IGFhcmNoNjQKPj4+PiB0b29sY2hhaW4gYnV0IGV2ZW4gYW4geDg2IGFuZCBzbyBvbi4KPj4+Cj4+
PiBJIGRpc2FncmVlLiBXaGF0IGhhcHBlbnMgaWYgeW91IGRvOgo+Pj4KPj4+ICQgbWFrZSBBUkNI
PWFybTY0IENST1NTX0NPTVBJTEU9eDg2XzY0LWxpbnV4LWdudS0KPj4+Cj4+PiBvbiB5b3VyIHg4
NiBib3g/Cj4+Pgo+Pgo+PiBUaGUga2VybmVsIGNvbXBpbGF0aW9uIGJyZWFrcyBhcyBmb2xsb3dz
Ogo+Pgo+PiB4ODZfNjQtbGludXgtZ251LWdjYzogZXJyb3I6IHVucmVjb2duaXplZCBjb21tYW5k
IGxpbmUgb3B0aW9uIOKAmC1tbGl0dGxlLWVuZGlhbuKAmTsKPj4gZGlkIHlvdSBtZWFuIOKAmC1m
Y29udmVydD1saXR0bGUtZW5kaWFu4oCZPwo+PiAvZGF0YTEvUHJvamVjdHMvTGludXhLZXJuZWwv
bGludXgvc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjU6IHJlY2lwZSBmb3IgdGFyZ2V0Cj4+ICdz
Y3JpcHRzL21vZC9lbXB0eS5vJyBmYWlsZWQKPj4gbWFrZVsyXTogKioqIFtzY3JpcHRzL21vZC9l
bXB0eS5vXSBFcnJvciAxCj4+IC9kYXRhMS9Qcm9qZWN0cy9MaW51eEtlcm5lbC9saW51eC9NYWtl
ZmlsZToxMTI4OiByZWNpcGUgZm9yIHRhcmdldCAncHJlcGFyZTAnIGZhaWxlZAo+PiBtYWtlWzFd
OiAqKiogW3ByZXBhcmUwXSBFcnJvciAyCj4+IG1ha2VbMV06IExlYXZpbmcgZGlyZWN0b3J5ICcv
ZGF0YTEvUHJvamVjdHMvTGludXhLZXJuZWwvbGludXgtb3V0Jwo+PiBNYWtlZmlsZToxNzk6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdzdWItbWFrZScgZmFpbGVkCj4+IG1ha2U6ICoqKiBbc3ViLW1ha2Vd
IEVycm9yIDIKPj4KPj4gU2ltaWxhciBpc3N1ZSBpbiB0aGUgY29tcGF0IHZkc28gbGlicmFyeSBj
b21waWxhdGlvbiBpZiBJIGRvICh3aXRob3V0IHRoZSBjaGVjayk6Cj4+Cj4+ICQgbWFrZSBBUkNI
PWFybTY0IENST1NTX0NPTVBJTEU9YWFyY2g2NC1saW51eC1nbnUtCj4+IENST1NTX0NPTVBJTEVf
Q09NUEFUPXg4Nl82NC1saW51eC1nbnUtCj4+Cj4+IFdpdGggdGhpcyBjaGVjayB0aGUgY29tcGls
YXRpb24gY29tcGxldGVzIGNvcnJlY3RseSBidXQgdGhlIGNvbXBhdCB2ZHNvIGRvZXMgbm90Cj4+
IGdldCBidWlsdCAodW5sZXNzIG15IGVudmlyb25tZW50IGlzIHBsYXlpbmcgbWUgdHJpY2tzIDsp
ICkuCj4gCj4gTXkgcG9pbnQgd2FzIHRoYXQgd2UgZG9uJ3QgYXR0ZW1wdCB0byBzYW5pdGlzZSB0
aGUgY29tcGlsZXIgcGFzc2VkIHZpYQo+IENST1NTX0NPTVBJTEUsIHNvIEkgZG9uJ3QgdGhpbmsg
d2Ugc2hvdWxkIGRvIGFueXRoaW5nIHNwZWNpYWwgZm9yIENPTVBBVENDCj4gZWl0aGVyLgo+CgpJ
IGFncmVlIG9uIHRoaXMsIGJ1dCB0aGUgcG9pbnQgSSB3YXMgdHJ5aW5nIHRvIG1ha2UgaXMgdGhh
dCB0aGUga2VybmVsIHNob3VsZApzdGlsbCBiZSBhYmxlIHRvIGJ1aWxkIGV2ZW4gaWYgdGhlIGNv
bXBpbGVyIGZvciBjb21wYXQgdmRzbyBpcyBub3QgY29ycmVjdC4KCkkgZG8gbm90IGhhdmUgYSBz
dHJvbmcgb3BpbmlvbiB0aG91Z2guCgo+IFdpbGwKPiAKCi0tIApSZWdhcmRzLApWaW5jZW56bwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
